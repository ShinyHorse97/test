using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JonatanShlain_Final.Proj
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bool isLogin = false;
            if (Session["isLogin"] != null)
            {
                isLogin = Convert.ToBoolean(Session["isLogin"]);
            }
            if (isLogin)
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}