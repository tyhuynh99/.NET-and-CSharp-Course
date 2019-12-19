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
    public partial class admin_newAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ROLE"] != null)
            {
                LbName.Text = Session["FULLNAME"].ToString();
                LbRole.Text = Session["ROLE"].ToString();

            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("index.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //txtMess.Text = "";
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
            SqlCommand com;
            SqlDataReader dr;
            string user = username.Text.Trim();
            string pass = password.Text.Trim();
            string full = fullname.Text.Trim();
            string em = email.Text.Trim();
            string d = birthday.Text.Trim();
            string addr = Address.Text.Trim();
            string roleId = DropDownList1.SelectedValue;


            try
            {
                conn.Open();
                com = new SqlCommand("INSERT INTO Account([Username],[Password],[RoleID],[Fullname],[DOB] ,[Address],[Email],[Img]) VALUES(@username,@password,@roleId, @Fullname, @DOB, @Address, @email, 'pic-1.png' )", conn);
                com.Parameters.AddWithValue("@username", user);
                com.Parameters.AddWithValue("@password", pass);
                com.Parameters.AddWithValue("@roleId", roleId);
                com.Parameters.AddWithValue("@Fullname", full);
                com.Parameters.AddWithValue("@DOB", d);
                com.Parameters.AddWithValue("@Address", addr);
                com.Parameters.AddWithValue("@email", em);

                dr = com.ExecuteReader();
                txtMess.Text = "SUCCESS";

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