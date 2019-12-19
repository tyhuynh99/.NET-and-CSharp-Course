using Bakery.Model;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bakery
{
    public partial class menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            try
            {
            if (e.CommandName.Equals("addtocart1"))
            {
                String[] Account = (String[])Session["Account"];

                if (Account != null)
                {
                    String username = Account[0];
                    TextBox qtytxtbox = (TextBox)(e.Item.FindControl("Amount"));
                    int Amount = Convert.ToInt32((qtytxtbox.Text));
                    // Session.Add("AMOUNT", Amount);
                    //string ProID  
                    Label txtID = (Label)(e.Item.FindControl("Label4"));
                    String ProID = txtID.Text;
                        //Session.Add("PROID", ProID);
                        CartObj cart = (CartObj)Session["CART"];
                        if (cart == null)
                        {
                            cart = new CartObj();
                        }
                        cart.AddItemToCartWithValue(ProID, Amount);

                        Session.Add("CART", cart);
                    }
                else if (Account == null)
                {
                    Response.Redirect("login.aspx");
                }

            }
            }
            catch (Exception)
            {

            }

        }
        public void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
        {
        
            if (e.CommandName.Equals("addtocart2"))
            {
                String[] Account = (String[])Session["Account"];
                //Debug.WriteLine(Account[0]);


                if (Account != null)
                {
                    String username = Account[0];
                    TextBox qtytxtbox = (TextBox)(e.Item.FindControl("Amount"));
                    int Amount = Convert.ToInt32((qtytxtbox.Text));
                    // Session.Add("AMOUNT", Amount);
                    //string ProID  
                    Label txtID = (Label)(e.Item.FindControl("Label4"));
                    String ProID = txtID.Text;
                    //Session.Add("PROID", ProID);
                    CartObj cart = (CartObj)Session["CART"];
                    if (cart == null)
                    {
                        cart = new CartObj();
                    }
                    cart.AddItemToCartWithValue(ProID, Amount);

                    Session.Add("CART", cart);
                }
                else if (Account == null)
                {
                    Response.Redirect("login.aspx");
                }

            }
        }
        public void DataList3_ItemCommand(object source, DataListCommandEventArgs e)
        {

            if (e.CommandName.Equals("addtocart3"))
            {
                String[] Account = (String[])Session["Account"];
                if (Account != null)
                {
                    String username = Account[0];
                    TextBox qtytxtbox = (TextBox)(e.Item.FindControl("Amount"));
                    int Amount = Convert.ToInt32((qtytxtbox.Text));
                    // Session.Add("AMOUNT", Amount);
                    //string ProID  
                    Label txtID = (Label)(e.Item.FindControl("Label4"));
                    String ProID = txtID.Text;
                    //Session.Add("PROID", ProID);
                    CartObj cart = (CartObj)Session["CART"];
                    if (cart == null)
                    {
                        cart = new CartObj();
                    }
                    cart.AddItemToCartWithValue(ProID, Amount);

                    Session.Add("CART", cart);
                }
                else if (Account == null)
                {
                    Response.Redirect("login.aspx");
                }

            }
        }
        public void DataList4_ItemCommand(object source, DataListCommandEventArgs e)
        {

            if (e.CommandName.Equals("addtocart4"))
            {
                String[] Account = (String[])Session["Account"];

                if (Account != null)
                {
                    String username = Account[0];
                    TextBox qtytxtbox = (TextBox)(e.Item.FindControl("Amount"));
                    int Amount = Convert.ToInt32((qtytxtbox.Text));
                    // Session.Add("AMOUNT", Amount);
                    //string ProID  
                    Label txtID = (Label)(e.Item.FindControl("Label4"));
                    String ProID = txtID.Text;
                    //Session.Add("PROID", ProID);
                    CartObj cart = (CartObj)Session["CART"];
                    if (cart == null)
                    {
                        cart = new CartObj();
                    }
                    cart.AddItemToCartWithValue(ProID, Amount);

                    Session.Add("CART", cart);
                }
                else if (Account == null)
                {
                    Response.Redirect("login.aspx");
                }

            }
        }


    }
}