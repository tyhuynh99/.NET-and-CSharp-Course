using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bakery
{
    public partial class admin_orderDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("index.aspx");
        }


        //protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        //{
        //    if (e.Row.RowType == DataControlRowType.DataRow)
        //    {
        //         orderId = GridView1.DataKeys[e.Row.RowIndex].Values[0].ToString();
        //         proId = GridView1.DataKeys[e.Row.RowIndex].Values[1].ToString();
        //    }
        //}

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}