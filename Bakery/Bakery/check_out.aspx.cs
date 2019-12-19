using Bakery.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bakery
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected float total;
        protected float tax;
        protected float BillTotal;
        protected CartObj cartObj;
        protected void Page_Load(object sender, EventArgs e)
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

        protected void linkCheckout_Click(object sender, EventArgs e)
        {
            OrderDAO orderDAO = new OrderDAO();
            ProductDAO productDAO = new ProductDAO();
            OrderDetailDAO detailDAO = new OrderDetailDAO();
            ////////////////////////////////////////////////
            string address = Request["Address"];
            string PaymentID = Request["payment"];
            string username = ((string[])Session["Account"])[0];
            string status = "Processing";
            DateTime dateNow = DateTime.Now;
            string orderDate = dateNow.ToString("yyyy - MM - dd");
            string orderID = RandomObj.RandomString(8);
            OrderDTO order = new OrderDTO(orderID, orderDate, username, status, BillTotal, address, PaymentID);
            orderDAO.checkOut(order);
            ///////////////////////////////////////////////////
            foreach(var x in cartObj.cart)
            {
                string proID = x.Key.ProID;
                int quantity = x.Value;
                OrderDetailDTO orderDetail = new OrderDetailDTO(orderID, proID, quantity, status);
                detailDAO.checkOutDetail(orderDetail);
                productDAO.UpdateQuantity(quantity, proID);
            }
            Session.Remove("CART");
            Response.Redirect("thank_you.aspx");
        }
    }
}