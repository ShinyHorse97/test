﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JonatanShlain_Final.Proj
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["isLogin"] = null;
            Session["userName"] = null;
            Session["FullName"] = null;
            Session["Password"] = null;
            Response.Redirect("Welcome.aspx");
        }
    }
}