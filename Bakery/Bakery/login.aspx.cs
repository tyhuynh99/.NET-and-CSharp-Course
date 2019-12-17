using System;
using System.Collections.Generic;
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
            //SqlConnection conn = new SqlConnection("Data Source=SE130040; Initial Catalog=Bakery;uid=sa;pwd=tyhuynh99");
            //conn.Open();
            //SqlCommand com = new SqlCommand("Select * from Account where Username=@user", conn);
            //com.Parameters.AddWithValue("@user",TextBox1.Text.Trim());
            //if(com.ExecuteNonQuery() > 0)
            //{
            //    Response.Redirect("index.aspx");
            //}
            //conn.Close();
        }
    }
}