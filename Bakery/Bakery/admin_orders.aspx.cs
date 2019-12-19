using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bakery
{
    public partial class admin_orders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["ROLE"] != null)
                {
                    LbName.Text = Session["FULLNAME"].ToString();
                    LbRole.Text = Session["ROLE"].ToString();
                    GridView1.Width = 890;
                }
                else
                {
                    Response.Redirect("index.aspx");
                }

            }
            //GridView1.Columns["OrderDate"].f
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("index.aspx");
        }

        protected void DetailsView1_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
        {
        }
    }
}