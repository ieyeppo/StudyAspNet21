using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DBHandlingWebApp
{
    public partial class FrmMemoView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Request["Num"]))
            {
                Response.Write("잘못된 요청입니다.");
                Response.End();
            }
            else
            {
                DisplayData();
                LnkMemoModify.NavigateUrl = $"FrmMemoModify.aspx?Num={Request["Num"]}";
                LnkMemoDelete.NavigateUrl = $"FrmMemoDelete.aspx?Num={Request["Num"]}";
            }
        }

        private void DisplayData()
        {
            //커넥션
            var connString = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;

            using(SqlConnection conn = new SqlConnection(connString))
            {
                if (conn.State == System.Data.ConnectionState.Closed) conn.Open();

                var query = "ViewMemo";

                try
                {
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;

                    cmd.Parameters.Add("Num", SqlDbType.Int);
                    cmd.Parameters["Num"].Value = Convert.ToInt32(Request["Num"]);

                    SqlDataReader dr = cmd.ExecuteReader();

                    if (dr.Read())
                    {
                        LblNum.Text = Request["Num"];
                        LblName.Text = dr["Name"].ToString();
                        LblEmail.Text = dr[2].ToString();
                        LblTitle.Text = dr.GetString(3);
                        LblPostDate.Text = dr.GetDateTime(4).ToString();
                        LblPostIP.Text = dr.GetString(5);
                    }
                    else
                    {
                        Response.Write("없는 데이터 입니다.");
                        Response.End();
                    }

                    dr.Close();
                    conn.Close();
                }
                catch (Exception ex)
                {
                    LblError.Text = $"오류 : {ex}";
                }
            }
        }
    }
}