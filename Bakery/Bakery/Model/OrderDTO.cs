using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Bakery.Model
{
    public class OrderDTO
    {
        public string OrderID { get; set; }
        public string OrderDate { get; set; }
        public string Username { get; set; }
        public string Status { get; set; }
        public float Total { get; set; }
        public string Address { get; set; }
        public string PaymentID { get; set; }

        public OrderDTO(string orderID, string orderDate, string username, string status, float total, string address, string paymentID)
        {
            OrderID = orderID;
            OrderDate = orderDate;
            Username = username;
            Status = status;
            Total = total;
            Address = address;
            PaymentID = paymentID;
        }
    }
}