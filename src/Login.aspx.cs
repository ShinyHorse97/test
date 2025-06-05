using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JonatanShlain_Final.Proj
{
    public partial class Loginth : System.Web.UI.Page
    {
        public string msg;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (Request.Form["captcha"].ToString() != Session["captcha"].ToString())
                {
                    msg = "wrong captcha";
                }
                else
                {
                    string inputUserName = Request.Form["username"].ToString();
                    string inputUserPassword = Request.Form["password"].ToString();
                    string query = $"SELECT * FROM Users WHERE UserName = '{inputUserName}' AND UserPassword = '{inputUserPassword}'";
                    DataTable dt = Helper.ExecuteDataTable(query);
                    int len = dt.Rows.Count;
                    if (len > 0)
                    {
                        Session["isLogin"] = "true";
                        Session["userName"] = dt.Rows[0]["UserName"].ToString();
                        Response.Redirect("Main.aspx");
                    }
                    else
                    {
                        msg = "Oops try again";
                    }

                }
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