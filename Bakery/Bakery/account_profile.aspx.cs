using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bakery
{
    public partial class account_profile : System.Web.UI.Page
    {
        public string username, fullname, addr, email, img, role, dob;
        //public DateTime dob;
        public double allTotal;
        public List<string[]> AllOrderList = new List<string[]>();
        private string[] account;
        private SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
        private SqlCommand com;
        private SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            account = (string[])Session["Account"];
            username = account[0];
            role = account[2];
            loadAccount();
            AllOrderList = getAllOrder();
            Page.DataBind();
        }
        private void loadAccount()
        {

            try
            {
                conn.Open();
                com = new SqlCommand("Select Fullname, Address, Email, Img, DOB from Account Where Username = @user", conn);
                com.Parameters.AddWithValue("@user", username);
                dr = com.ExecuteReader();
                if (dr.Read())
                {
                    fullname = dr.GetString(0);
                    addr = dr.GetString(1);
                    email = dr.GetString(2);
                    img ="img/face/"+ dr.GetString(3);
                    dob = dr.GetDateTime(4).ToShortDateString();
                }
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                conn.Close();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("index.aspx");
        }

        private List<string[]> getAllOrder()
        {
            allTotal = 0;
            List<string[]> allOrder = new List<string[]>();
            List<string[]> orderIdList, orderDetailList;
            string productName, quantity, status, dateOrder, total, orderId;
            orderIdList = loadOrderId(username);
            if (orderIdList.Count > 0)
            {
                foreach(string[] item in orderIdList)
                {
                    orderDetailList = loadOrderDetail(item[0]);
                    foreach(string[] subItem in orderDetailList)
                    {
                        productName = getProductName(subItem[0]);
                        quantity = subItem[1];
                        status = subItem[2];
                        dateOrder = item[1];
                        total = item[2];
                        allTotal += double.Parse(total);
                        orderId = item[0];
                        string[] order = {orderId, productName, quantity, dateOrder, total, status};
                        allOrder.Add(order);
                    }
                }
            }
            return allOrder;
        }


        private List<string[]> loadOrderId(string username)
        {
            List<string[]> orderIdList = new List<string[]>();
            try
            {
                conn.Open();
                com = new SqlCommand("Select OrderId, OrderDate, Total from [dbo].[Order] where Username = @user", conn);
                com.Parameters.AddWithValue("@user", username);
                dr = com.ExecuteReader();
                while (dr.Read())
                {
                    //Lấy danh sách các order
                    string[] order = { dr.GetString(0), dr.GetDateTime(1).ToShortDateString(), dr.GetDouble(2) + "" };
                    orderIdList.Add(order);
                }
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                conn.Close();
            }
            return orderIdList;
        }
        private List<string[]> loadOrderDetail(string orderId)
        {
            List<string[]> orderDetailList = new List<string[]>();
            try
            {
                conn.Open();
                com = new SqlCommand("Select ProId, Quantity, Status from OrderDetail where OrderId = @id", conn);
                com.Parameters.AddWithValue("@id", orderId);
                dr = com.ExecuteReader();
                while (dr.Read())
                {
                    //Lấy danh sách các order detail
                    string[] orderDetail = { dr.GetString(0), dr.GetInt32(1)+"", dr.GetString(2) };
                    orderDetailList.Add(orderDetail);
                }
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                conn.Close();
            }
            return orderDetailList;
        }
        private string getProductName(string id)
        {
            string name = "";
            try
            {
                conn.Open();
                com = new SqlCommand("Select ProName from Product Where ProId = @id", conn);
                com.Parameters.AddWithValue("@id", id);
                dr = com.ExecuteReader();
                if (dr.Read())
                {
                    name = dr.GetString(0);
                }
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                conn.Close();
            }
            return name;
        }
    }
}