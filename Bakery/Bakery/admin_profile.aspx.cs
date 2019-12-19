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
    public partial class admin_profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["ROLE"] != null)
                {
                    LbName.Text = Session["FULLNAME"].ToString();
                    LbRole.Text = Session["ROLE"].ToString();
                    Image3.ImageUrl = "/img/face/" + Session["IMG"].ToString();
                    txtPass.Text = "*******";

                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
                    con.Open();
                    SqlCommand com = new SqlCommand("Select  Fullname, Username, Password, Email, DOB, Address, Img  From Account Where Username = '" + Session["ID"].ToString() + "'", con);
                    SqlDataReader dr = com.ExecuteReader();
                    if (dr.Read())
                    {
                        txtName.Text = dr.GetString(1);


                        txtFullname.Text = dr.GetString(0);
                        string day = dr.GetDateTime(4).Year.ToString() + "-" + dr.GetDateTime(4).Month.ToString() + "-" + dr.GetDateTime(4).Day.ToString();
                        txtDOB.Text = day;

                        txtEmail.Text = dr.GetString(3);
                        txtAddress.Text = dr.GetString(5);
                        HiddenField1.Value = dr.GetString(6);

                    }
                    con.Close();

                    Image1.ImageUrl = "/img/face/" + Session["IMG"].ToString();

                }
                else
                {
                    Response.Redirect("index.aspx");
                }


            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            string name = txtFullname.Text;
            string addr = txtAddress.Text;
            string email = txtEmail.Text;
            string dob = txtDOB.Text;

            string img = HiddenField1.Value.Trim();

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
            con.Open();
            SqlCommand com = new SqlCommand("Update  Account set  Img= '" + img + "', Fullname ='" + name + "',Address = '" + addr + "',Email = '" + email + "', DOB = '" + dob + "' Where Username = '" + Session["ID"].ToString() + "'", con);

            int count = com.ExecuteNonQuery();
            if (count > 0)
            {
                success.Text = "SUCCESS !!!";
                Image3.ImageUrl = "~/img/face/" + img;
                Session["IMG"] = img;

            }
            con.Close();

            LbName.Text = name;
            Session["FULLNAME"] = name;
            txtPass.Text = "*****";

            txtPass.ReadOnly = true;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Panel1.Visible = true;
            //Button1.Visible = false;
            //Button2.Visible = false;
            //Button3.Visible = false;
            txtPass.TextMode = TextBoxMode.Password;
            txtPass.ReadOnly = false;
        }


        protected void Button3_Click(object sender, EventArgs e)
        {

            HttpPostedFile file = FileUpload1.PostedFile;
            if (FileUpload1.HasFile == false && file.ContentLength > 9000000)
            {
                fileError.Text = "File doesn't greater than 900 KB";
            }
            else
            {
                string strImgPath = Server.MapPath("~/img/face/" + FileUpload1.FileName);
                FileUpload1.SaveAs(strImgPath);
                Image1.ImageUrl = "~/img/face/" + FileUpload1.FileName;
                HiddenField1.Value = FileUpload1.FileName;

                txtPass.Text = "*****";

                txtPass.ReadOnly = true;

            }
        }



        protected void Button4_Click1(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("index.aspx");
        }
    }
}