using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FirstWebApp
{
    public partial class FrmHtmlLink : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lnkNaver.AccessKey = "D";
        }

        protected void btnChange_Click(object sender, EventArgs e)
        {
            if (DateTime.Now.Second % 2 == 0)
                imgChange.ImageUrl = "~/images/ASP-NET-Banners-01.png";
            else
                imgChange.ImageUrl = "~/images/ASP-NET-Banners-02.png";
        }
    }
}