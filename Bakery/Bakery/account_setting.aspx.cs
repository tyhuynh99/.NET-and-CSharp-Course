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
    public partial class account_setting : System.Web.UI.Page
    {
        public string username, fullname, addr, email, img, role;
        public DateTime dob;
        private string[] account;
        private SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        private SqlCommand com;
        private SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            account = (string[])Session["Account"];
            username = account[0];
            role = account[2];
            loadAccount();
            Page.DataBind();
        }
        private void loadAccount()
        {
            try
            {
                conn.Open();
                com = new SqlCommand("Select Fullname, Address, Email, Img, DOB from Account Where Username = @user", conn);
                com.Parameters.AddWithValue("@user", username);
                dr = com.ExecuteReader();
                if (dr.Read())
                {
                    fullname = dr.GetString(0);
                    addr = dr.GetString(1);
                    email = dr.GetString(2);
                    img = dr.GetString(3);
                    dob = dr.GetDateTime(4);
                }
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                conn.Close();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Remove("Account");
            Response.Redirect("index.aspx");
        }
    }
}