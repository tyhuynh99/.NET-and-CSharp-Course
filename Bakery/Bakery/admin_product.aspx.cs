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
    public partial class admin_product : System.Web.UI.Page
    {
        string[] cateList = { "Pizza", "Bread", "Burger", "Chicken" };
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["ROLE"] != null)
                {
                    LbName.Text = Session["FULLNAME"].ToString();
                    LbRole.Text = Session["ROLE"].ToString();
                }
                foreach (string item in cateList)
                {
                    cate.Items.Add(item);
                }
            }
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            string proId = txtProId.Text;
            string proName = txtProName.Text;
            double price = Double.Parse(txtPrice.Text);
            //string status = txtStatus.Text;
            string imgUrl = Image2.ImageUrl;
            string description = txtDescription.Text;
            string categoryId = cate.SelectedValue.Trim();
            Int32 quantity = Int32.Parse(txtQuantity.Text);
            conn.Open();
            try
            {
                SqlCommand com = new SqlCommand("INSERT INTO Product(ProId,ProName,Price,Status,ImgUrl,Description,CategoryId,Quantity) VALUES(@ProId, @ProName, @Price, @Status, @ImgUrl, @Description, @CategoryId, @Quantity)", conn);
                com.Parameters.AddWithValue("@ProId", proId);
                com.Parameters.AddWithValue("@ProName", proName);
                com.Parameters.AddWithValue("@Price", price);
                //com.Parameters.AddWithValue("@Status", status);
                com.Parameters.AddWithValue("@Status", "Available");
                com.Parameters.AddWithValue("@ImgUrl", imgUrl);
                com.Parameters.AddWithValue("@Description", description);
                com.Parameters.AddWithValue("@CategoryId", categoryId);
                com.Parameters.AddWithValue("@Quantity", quantity);
                int count = com.ExecuteNonQuery();
                if (count > 0)
                {
                    Response.Redirect("admin_product.aspx");
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            HttpPostedFile file = FileUpload1.PostedFile;
            if (FileUpload1.HasFile == false && file.ContentLength > 9000000)
            {
                fileError.Text = "File doesn't greater than 900 KB";
            }
            else
            {
                string strImgPath = Server.MapPath("img/" + FileUpload1.FileName);
                FileUpload1.SaveAs(strImgPath);
                Image2.ImageUrl = "img/" + FileUpload1.FileName;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("index.aspx");
        }
    }
}