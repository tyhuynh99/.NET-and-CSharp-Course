using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Bakery.Model
{
    public class OrderDAO
    {
        public string connectionString = "Data Source=SE130040;Initial Catalog=Bakery;Integrated Security=SSPI";

        public bool checkOut(OrderDTO dto)
        {
            SqlConnection cnn = null;
            try
            {
                string sql = "insert into [dbo].[Order] values(@OrderId, @OrderDate, @Username, @Status, @Total, @Address, @PaymentId)";
                cnn = new SqlConnection(connectionString);
                SqlCommand cmd = new SqlCommand(sql, cnn);
                cmd.Parameters.AddWithValue("@OrderId", dto.OrderID);
                cmd.Parameters.AddWithValue("@OrderDate", dto.OrderDate);
                cmd.Parameters.AddWithValue("@Username", dto.Username);
                cmd.Parameters.AddWithValue("@Status", dto.Status);
                cmd.Parameters.AddWithValue("@Total", dto.Total);
                cmd.Parameters.AddWithValue("@Address", dto.Address);
                cmd.Parameters.AddWithValue("@PaymentId", dto.PaymentID);
                if (cnn.State == ConnectionState.Closed)
                {
                    cnn.Open();
                }
                int result = cmd.ExecuteNonQuery();

                return (result > 0);
            }
            finally
            {
                if (cnn.State == ConnectionState.Open)
                {
                    cnn.Close();
                }
            }
        }
    }
}