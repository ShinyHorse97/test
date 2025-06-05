using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JonatanShlain_Final.Proj
{
    public partial class Register : System.Web.UI.Page
    {
        public string msg = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                msg = "Welcome to the registration page!<br /> Please fill out the form below to create a new account.";
            }
            else if (Request.Form["new_username"] == null || Request.Form["new_password"] == null || Request.Form["Fullname"] == null)
            {
                msg = "Please fill in all fields.";
            }
            else if (Request.Form["new_password"]!= Request.Form["confirm_password"])
            {
                msg = "Passwords do not match. Please try again.";
            }
            else if (Request.Form["new_username"].ToString().Length > 12 || Request.Form["new_password"].ToString().Length > 12)
            {
                msg = "Username and password must be 12 characters long max.";
            }
            else {
                TryRegister();
            }
            void TryRegister()
            {
                string inputRegisterUserName = Request.Form["new_username"].ToString();
                string inputRegisterUserPassword = Request.Form["new_password"].ToString();
                string inputRegusterUserFirstName = Request.Form["Fullname"].ToString();

                string query = $"SELECT * FROM Users WHERE UserName = '{inputRegisterUserName}'";
                DataTable dt = Helper.ExecuteDataTable(query);
                int len = dt.Rows.Count;
                if (len > 0)
                {
                    msg = "User Already Exists";
                }
                else
                {
                    msg = "User Added";
                    query = $"INSERT INTO Users (UserName, UserPassword, UserFName) VALUES ('{inputRegisterUserName}', '{inputRegisterUserPassword}', '{inputRegusterUserFirstName}')";
                    Helper.DoQuery(query);
                    Response.Redirect("Login.aspx");
                }
            }
        }
    }
}