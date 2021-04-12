using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FirstWebApp
{
    public partial class FrmStandardControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BtnHtml.Value = "HTML 서버 컨트롤 - 버튼";
            BtnServer.Text = "표준 컨트롤 - 버튼";

            LblDateTime.Text = DateTime.Now.ToString();
        }

        protected void BtnServer_Click(object sender, EventArgs e)
        {
            BtnServer.BackColor = Color.Yellow;
        }

        protected void BtnOK_Click(object sender, EventArgs e)
        {
            string strName = TxtSingleLine.Text;
            string strIntro = TxtMultiLine.Text;
            string strPassword = TxtPassword.Text;

            Response.Write($"{strName}<br/>{strIntro}<br/>{strPassword}<br/>");
        }
    }
}