using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Bakery.Model
{
    public class OrderDetailDAO
    {
        public string connectionString = "Data Source=SE130040;Initial Catalog=Bakery;Integrated Security=SSPI";

        public bool checkOutDetail(OrderDetailDTO dto)
        {
            SqlConnection cnn = null;
            try
            {
                string sql = "insert into [dbo].[OrderDetail] values(@OrderId, @ProId, @Quantity, @Status)";
                cnn = new SqlConnection(connectionString);
                SqlCommand cmd = new SqlCommand(sql, cnn);
                cmd.Parameters.AddWithValue("@OrderId", dto.OrderID);
                cmd.Parameters.AddWithValue("@ProId", dto.ProID);
                cmd.Parameters.AddWithValue("@Quantity", dto.Quantity);
                cmd.Parameters.AddWithValue("@Status", dto.Status);
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