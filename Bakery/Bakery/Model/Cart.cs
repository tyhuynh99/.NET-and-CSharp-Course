using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Bakery.Model
{
    public class Cart
    {
        string username;
        public Dictionary<String, Product> cart;

        public Cart(string username)
        {
            this.username = username;
            cart = new Dictionary<string, Product>();
        }

        public void AddToCart(int Amount, String ProId)
        {
            if (cart.ContainsKey(ProId))
            {
                cart[ProId].Quantity += Amount;
                return;
            }
            cart[ProId] = new Product
            {
                Quantity = Amount
            };
        }
    }
}