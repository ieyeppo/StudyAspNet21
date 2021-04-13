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
    public partial class FrmMemoDelete : System.Web.UI.Page
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
                if (!Page.IsPostBack)
                {
                    LblNum.Text = Request["Num"];
                }
            }
        }

        protected void BtnDelete_Click(object sender, EventArgs e)
        {
            //커넥션
            var connString = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connString))
            {
                if (conn.State == System.Data.ConnectionState.Closed) conn.Open();

                var query = "DeleteMemo";

                try
                {
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;

                    cmd.Parameters.Add("Num", SqlDbType.Int);
                    cmd.Parameters["Num"].Value = Convert.ToInt32(Request["Num"]);

                    cmd.ExecuteNonQuery();

                    conn.Close();
                    Response.Redirect("FrmMemoList.aspx");
                }
                catch (Exception ex)
                {
                    LblError.Text = $"오류 : {ex}";
                }
            }
        }
    }
}