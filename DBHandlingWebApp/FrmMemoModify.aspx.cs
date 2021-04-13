using DBHandlingWebApp.Models;
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
    public partial class FrmMemoModify : System.Web.UI.Page
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
                    DisplayDate();
                }
            }
        }

        private void DisplayDate()
        {
            //커넥션
            var connString = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connString))
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
                        TxtName.Text = dr["Name"].ToString();
                        TxtEmail.Text = dr[2].ToString();
                        TxtTitle.Text = dr.GetString(3);
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

        protected void BtnModify_Click(object sender, EventArgs e)
        {
            Memos memos = new Memos();
            memos.Num = Convert.ToInt32(Request["Num"]);
            memos.Name = TxtName.Text;
            memos.Email = TxtEmail.Text;
            memos.Title = TxtTitle.Text;

            var connString = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connString))
            {
                if (conn.State == System.Data.ConnectionState.Closed) conn.Open();

                var query = @"ModifyMemo";

                try
                {
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@Num", memos.Num);
                    cmd.Parameters.AddWithValue("@Name", memos.Name);
                    cmd.Parameters.AddWithValue("@Email", memos.Email);
                    cmd.Parameters.AddWithValue("@Title", memos.Title);

                    cmd.ExecuteNonQuery();

                    conn.Close();
                    Response.Redirect($"FrmMemoView.aspx?Num={Request["Num"]}");
                }
                catch (Exception ex)
                {
                    LblError.Text = $"오류 : {ex}";
                }
            }
        }

        protected void BtnList_Click(object sender, EventArgs e)
        {
            Response.RedirectPermanent("FrmMemoList.aspx");
        }
    }
}