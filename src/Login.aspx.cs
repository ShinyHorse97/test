using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JonatanShlain_Final.Proj
{
    public partial class Loginth : System.Web.UI.Page
    {
        public string username = "7dm";
        public string msg;
        public string password = "12345";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (Request.Form["username"] == username && Request.Form["password"] == password && Request.Form["captcha"] == Session["captcha"].ToString())
                {
                    Session["IsLogin"] = "true";
                    Response.Redirect("Welcome.aspx");
                    msg = "";
                }
                else if (Request.Form["username"] == username && Request.Form["captcha"] == Session["captcha"].ToString())
                {
                    msg = "wrong password";
                }
                else if (Request.Form["password"] == password && Request.Form["captcha"] == Session["captcha"].ToString())
                {
                    msg = "wrong username";
                }
                else if (Request.Form["username"] == username && Request.Form["password"] == password)
                {
                    CreateRandomNumber();
                    msg = "wrong captcha";
                }
                else { msg = "neither password nor username are right"; }
            }
            else
            {
                CreateRandomNumber();
                msg = "please fill the information";
            }
        }

        private void CreateRandomNumber()
        {
            Random rnd = new Random();
            int captcha = rnd.Next(100, 999);
            Session["captcha"] = captcha.ToString();
        }
        public string GenerateImg()
        {
            int meot = (int.Parse(Session["captcha"].ToString()) / 100);
            int asarot = (int.Parse(Session["captcha"].ToString()) / 10 % 10);
            int achadot = (int.Parse(Session["captcha"].ToString()) % 10);
            return DrawCaptcha(meot) + DrawCaptcha(asarot) + DrawCaptcha(achadot);
        }
        private string DrawCaptcha(int num)
        {
            return "<img src = 'Images/Images.Captcha/captcha_" + num + ".jpg'/>";
        }
    }
}