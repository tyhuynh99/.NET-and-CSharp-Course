using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Bakery.Model
{
    public class Product
    {
        // String ProId;
        String ProName;
        float Price;
        String status;
        String ImgUrl;
        String Description;
        String CategoryId;
        int quantity;
        public int Quantity
        {
            get
            {
                return quantity;
            }
            set
            {
                quantity = value;
            }
        }


    }

}