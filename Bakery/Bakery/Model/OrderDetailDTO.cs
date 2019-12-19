using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Bakery.Model
{
    public class OrderDetailDTO
    {

        public string OrderID { get; set; }
        public string ProID { get; set; }

        public int Quantity { get; set; }
        public string Status { get; set; }
        public OrderDetailDTO(string orderID, string proID, int quantity, string status)
        {
            OrderID = orderID;
            ProID = proID;
            Quantity = quantity;
            Status = status;
        }
    }
}