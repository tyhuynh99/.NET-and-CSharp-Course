using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Bakery.Model
{
    public class ProductDAO
    {
        public string connectionString = "Data Source=SE130040;Initial Catalog=Bakery;Integrated Security=SSPI";

        public ProductDTO GetProduct(string ProID)
        {
            SqlConnection cnn = null;
            ProductDTO product = null;
            try
            {
                string sql = "select * from Product where ProID = @ID";
                cnn = new SqlConnection(connectionString);
                SqlCommand cmd = new SqlCommand(sql, cnn);
                cmd.Parameters.AddWithValue("@ID", ProID);
                if (cnn.State == ConnectionState.Closed)
                {
                    cnn.Open();
                }
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.Read())
                {
                    string proID = rd[0].ToString();
                    string proName = rd[1].ToString();
                    float price = float.Parse(rd[2].ToString());
                    string status = rd[3].ToString();
                    string ImgUrl = rd[4].ToString();
                    string description = rd[5].ToString();
                    string categoryID = rd[6].ToString();
                    int quantity = int.Parse(rd[7].ToString());
                    product = new ProductDTO(proID, proName, price, status, ImgUrl, description, categoryID, quantity);
                    return product;
                }
                return product;
            }
            finally
            {
                if (cnn.State == ConnectionState.Open)
                {
                    cnn.Close();
                }
            }
        }

        public bool UpdateQuantity(int quantity, string proID)
        {
            ProductDTO pro = GetProduct(proID);
            int quan = pro.Quantity - quantity;
            SqlConnection cnn = null;
            try
            {
                string sql = "Update Product set quantity = @Quantity where ProID = @ProID";
                cnn = new SqlConnection(connectionString);
                SqlCommand cmd = new SqlCommand(sql, cnn);
                cmd.Parameters.AddWithValue("@ProId", proID);
                cmd.Parameters.AddWithValue("@Quantity", quan);
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