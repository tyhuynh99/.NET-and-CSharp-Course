using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bakery
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            txtMess.Text = "";
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
            SqlCommand com;
            SqlDataReader dr;
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();
            string role, fullname;
            try
            {
                conn.Open();
                com = new SqlCommand("Select RoleId, Fullname, Img From Account Where Username = @username And Password = @password", conn);
                com.Parameters.AddWithValue("@username", username);
                com.Parameters.AddWithValue("@password", password);
                dr = com.ExecuteReader();
                if (dr.Read())
                {
                    role = dr.GetString(0).Trim();
                    fullname = dr.GetString(1).Trim();

                    //bên Thanh lấy thêm 1 số attribute
                    string img = dr.GetString(2).Trim();
                    Session.Add("ID", username);
                    Session.Add("IMG", img);
                    Session.Add("PASS", password);
                    Session.Add("FULLNAME", fullname);
                    Session.Add("ROLE", role);
                    string[] account = { username, fullname, role };
                    Session.Add("Account", account);


                    if (role.Equals("admin"))
                    {
                        Response.Redirect("admin_dashboard.aspx");
                        //document.getElementById('reg').style.display = 'none'
                    }
                    else if (role.Equals("user")) 
                    {
                        Response.Redirect("index.aspx");
                    } 
                    else
                    {
                        txtMess.Text = "This role is not supported !";
                        Session.Remove("Account");
                        string[] account1 = (string[])Session["Account"];
                    }
                }
                else
                {
                    txtMess.Text = "Incorrect username or password";
                }
            }
            catch (Exception)
            {
                txtMess.Text = "Cannot connect to Server";
            }
            finally
            {
                conn.Close();
            }
            
        }
    }
}