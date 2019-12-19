using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bakery
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                string Username = Request["txtUsername"];
                string Password = Request["txtPassword"];
                string Email = Request["txtEmail"];
                string Fullname = Request["txtFullname"];
                string Birthday = Request["txtBirthday"];
                string Address = Request["txtAddress"];
                string ConnString = ConfigurationManager.ConnectionStrings["Constr"].ConnectionString;
                SqlConnection conn = new SqlConnection(ConnString);
                conn.Open();
                if (Password == "" || Username == "") throw new FormatException();
                SqlCommand com = new SqlCommand("INSERT INTO Account(Username, Password, RoleID, Fullname, DOB, Address,Email,Img)"
                    + " VALUES('" + Username + "', '" + Password + "', 'user', N'" + Fullname + "', '" + Birthday + "', N'" + Address + "', '" + Email + "', 'face3.jpg')", conn);
                int count = com.ExecuteNonQuery();

                if (count == 1)
                {
                    Response.Redirect("login.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Sign Up Fail');</script>");
                }
            }
            catch (FormatException)
            {
                Response.Write("<script>alert('This Field not Empty');</script>");
            }
            catch (Exception)
            {
                Response.Write("<script>alert('Account Existed !');</script>");
            }

        }
    }
}