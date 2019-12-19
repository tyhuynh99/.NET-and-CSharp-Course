using Bakery.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bakery
{
    public partial class Cart : System.Web.UI.Page
    {
        protected float total;
        protected float tax;
        protected float BillTotal;
        protected CartObj cartObj;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Account"] != null)
            {
            cartObj = (CartObj)Session["CART"];
            if (cartObj == null)
            {
                cartObj = new CartObj();
            }
            Session["CART"] = cartObj;
            Dictionary<ProductDTO, int> cart = cartObj.cart;
            ///////////////////////////////////////////////////////////
            total = cartObj.Total;
            tax = total / 10;
            BillTotal = total + tax + 10;
            ///////////////////////////////////////////////////////////
            lvCart.DataSource = cart;
            lvCart.DataBind();
            }
        }


        protected void LinkRemove_Click(object sender, EventArgs e)
        {
            CartObj cart = (CartObj)Session["CART"];
            if (cart != null)
            {
                LinkButton updateButton = sender as LinkButton;
                HiddenField hiddenProductID = updateButton.NamingContainer.FindControl("txtProductID") as HiddenField;
                string productID = hiddenProductID.Value;
                cart.RemoveCart(productID);
                Session["CART"] = cart;
                Response.Redirect("cart.aspx");
            }
        }

        protected void linkUpdate_Click(object sender, EventArgs e)
        {
             cartObj = (CartObj)Session["CART"];
            if (cartObj != null)
            {
                LinkButton linkUpdate = sender as LinkButton;
                HiddenField hiddenProductID = linkUpdate.NamingContainer.FindControl("txtProductID") as HiddenField;
                string prductID = hiddenProductID.Value;
                string quantity = Request["quantity"+prductID];
                int quanti = int.Parse(quantity);
                cartObj.UpdateQuantity(prductID, quanti);
                Response.Redirect("cart.aspx");
            }
        }
    }
}