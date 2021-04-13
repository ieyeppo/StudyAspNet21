using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace DBHandlingWebApp
{
    public partial class FrmMemoList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var connString = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;

            using(SqlConnection conn = new SqlConnection(connString))
            {
                //커넥션
                if (conn.State == System.Data.ConnectionState.Closed) conn.Open();

                var query = "ListMemo";

                try
                {
                    //커맨드
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;

                    //데이터어댑터
                    SqlDataAdapter da = new SqlDataAdapter(cmd);

                    //데이터셋
                    DataSet ds = new DataSet();
                    da.Fill(ds, "Memos");

                    //출력
                    GrdMemoList.DataSource = ds;
                    GrdMemoList.DataBind();

                    conn.Close();
                }
                catch (Exception ex)
                {
                    LblError.Text = $"오류 : {ex}";
                }
            }
        }
        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            var connString = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connString))
            {
                if (conn.State == System.Data.ConnectionState.Closed) conn.Open();

                var query = "SearchMemo";

                try
                {
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("SearchField", LstSearchField.SelectedValue);
                    cmd.Parameters.AddWithValue("SearchQuery", TxtSearchQuery.Text.Replace("--", ""));

                    SqlDataAdapter da = new SqlDataAdapter(cmd);

                    DataSet ds = new DataSet();
                    da.Fill(ds, "Memos");

                    GrdMemoList.DataSource = ds.Tables[0].DefaultView;
                    GrdMemoList.DataBind();

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