using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Bakery.Model
{
    public class CartObj
    {
        public string Username { get; set; }
        public Dictionary<ProductDTO, int> cart { get; set; }

        public CartObj()
        {
            cart = new Dictionary<ProductDTO, int>();
        }

        public float Total { get => GetTotal(); }

        public float GetTotal()
        {
            float sum = 0;
            if (cart != null)
            {
                foreach (var x in cart)
                {
                    ProductDTO p = x.Key;
                    int quantity = x.Value;
                    sum += ((p.Price) * quantity);
                }
            }
            return sum;
        }
        public void AddItemToCart(string proID)
        {
            if (cart == null)
            {
                cart = new Dictionary<ProductDTO, int>();
            }
            ProductDAO dao = new ProductDAO();
            ProductDTO pro = dao.GetProduct(proID);
            if (pro != null)
            {
                int quantity = 1;
                if (cart.ContainsKey(pro))
                {
                    quantity = cart[pro] + 1;
                    if (quantity <= pro.Quantity)
                    {
                        cart[pro] = quantity;
                    }
                }
                else
                {
                    this.cart.Add(pro, quantity);
                }
            }
        }

        public void AddItemToCartWithValue(string proID, int amount)
        {
            if (cart == null)
            {
                cart = new Dictionary<ProductDTO, int>();
            }
            ProductDAO dao = new ProductDAO();
            ProductDTO pro = dao.GetProduct(proID);
            if (pro != null)
            {
                int quantity = amount;
                if (cart.ContainsKey(pro))
                {
                    quantity += cart[pro];
                    if (quantity <= pro.Quantity)
                    {
                        cart[pro] = quantity;
                    }
                }
                else
                {
                    this.cart.Add(pro, quantity);
                }
            }
        }

        public void UpdateQuantity(string proID, int quan)
        {
            if (cart == null)
            {
                return;
            }

            ProductDAO dao = new ProductDAO();
            ProductDTO pro = dao.GetProduct(proID);
            if (pro != null)
            {
                if (this.cart.ContainsKey(pro))
                {
                    if (quan <= pro.Quantity)
                    {
                        cart[pro] = quan;
                    }
                }
            }

        }

        public void RemoveCart(string proID)
        {
            if (cart == null)
            {
                return;
            }
            ProductDAO dao = new ProductDAO();
            ProductDTO pro = dao.GetProduct(proID);
            if (this.cart.ContainsKey(pro))
            {
                this.cart.Remove(pro);
            }
        }

    }
}