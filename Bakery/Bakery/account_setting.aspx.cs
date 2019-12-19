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
        public string username, fullname, addr, email, img, role, file;
        public DateTime dob;
        private string[] account;
        private SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);

        protected void Button2_Click(object sender, EventArgs e)
        {
            account = (string[])Session["Account"];
            username = account[0];
            string uName = txtFullname.Text;
            string uAddr = txtAddress.Text;
            string uEmail = txtEmail.Text;
            string uDob = birthday.Text;
            string uImg;
            if (Image2.ImageUrl.Contains("~"))
            {
                uImg = Image2.ImageUrl.Split('/')[3];
            } else
            {
                uImg = Image2.ImageUrl.Split('/')[2];
            }
            try
            {
                conn.Open();
                com = new SqlCommand("Update  Account set Img= '" + uImg + "', Fullname ='" + uName + "',Address = '" + uAddr + "',Email = '" + uEmail + "', DOB = '" + uDob + "' Where Username = '"+username+"'", conn);
                int count = com.ExecuteNonQuery();
                if (count > 0)
                {
                    conn.Close();
                    Response.Redirect("account_setting.aspx");
                    birthday.Text = dob.ToString("yyyy-MM-dd");
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

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("index.aspx");
        }

        private SqlCommand com;
        private SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                account = (string[])Session["Account"];
                username = account[0];
                role = account[2];
                loadAccount();
                birthday.Text = dob.ToString("yyyy-MM-dd");
                Page.DataBind();
            }
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            HttpPostedFile file = FileUpload2.PostedFile;
            if (FileUpload2.HasFile == false && file.ContentLength > 9000000)
            {
                fileError.Text = "File doesn't greater than 900 KB";
            }
            else
            {
                string strImgPath = Server.MapPath("~/img/face/" + FileUpload2.FileName);
                FileUpload2.SaveAs(strImgPath);
                Image2.ImageUrl = "~/img/face/" + FileUpload2.FileName;
            }
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
                    img = "img/face/" + dr.GetString(3);
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
    }
}