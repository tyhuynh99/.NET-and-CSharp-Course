using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Bakery.Model
{
    public class ProductDTO
    {
        public string ProID { get; set; }
        public string ProName { get; set; }
        public float Price { get; set; }
        public string  Status { get; set; }
        public string ImgUrl { get; set; }

        public string Description { get; set; }
        public string CategoryID { get; set; }
        public int  Quantity { get; set; }

        public ProductDTO()
        {
        }

        public ProductDTO(string proID, string proName, float price, string status, string imgUrl, string description, string categoryID, int quantity)
        {
            ProID = proID;
            ProName = proName;
            Price = price;
            Status = status;
            ImgUrl = imgUrl.Replace("~/","");
            Description = description;
            CategoryID = categoryID;
            Quantity = quantity;
        }

        public override bool Equals(object obj)
        {
            return obj is ProductDTO dTO &&
                   ProID == dTO.ProID;
        }

        public override int GetHashCode()
        {
            return -1079670419 + EqualityComparer<string>.Default.GetHashCode(ProID);
        }
    }
}