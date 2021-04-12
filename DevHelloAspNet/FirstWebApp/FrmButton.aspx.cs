﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FirstWebApp
{
    public partial class FrmButton : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack) txtNum.Text = "0";
        }

        protected void btnUp_Click(object sender, EventArgs e)
        {
            txtNum.Text = Convert.ToString(Convert.ToInt32(txtNum.Text) + 1);
        }

        protected void btnDown_Click(object sender, EventArgs e)
        {
            txtNum.Text = Convert.ToString(int.Parse(txtNum.Text) - 1);
        }

        protected void lnkDotNetKorea_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://www.dotnetkorea.com/");
        }
    }
}