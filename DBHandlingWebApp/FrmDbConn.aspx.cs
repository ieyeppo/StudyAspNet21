using System;
using System.Configuration;
using System.Data.SqlClient;

namespace DBHandlingWebApp
{
    public partial class FrmDbConn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnConn_Click(object sender, EventArgs e)
        {
            var connString = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connString))
            {
                if (conn.State == System.Data.ConnectionState.Closed) conn.Open();

                //LblResult.Text = conn.State.ToString();

                var query = @"Insert Memos 
                                Values
                                (	
	                                '최혀나', 'hyun@naver.com', '최혀나입니다.'
	                                , GetDate(), '127.0.0.1'
                                )";
                try
                {
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.ExecuteNonQuery();
                    LblResult.Text = "데이터 저장 완료.";
                }
                catch (Exception ex)
                {
                    LblResult.Text = $"데이터 저장 오류. : {ex}";
                }
            }
        }
    }
}