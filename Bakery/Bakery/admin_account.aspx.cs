using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bakery
{
    public partial class admin_account : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ROLE"] != null)
            {
                LbName.Text = Session["FULLNAME"].ToString();
                LbRole.Text = Session["ROLE"].ToString();
                GridView1.Width = 880;
                DetailsView1.Width = 870;
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
            Response.Redirect("admin_newAccount.aspx");
        }
    }
}