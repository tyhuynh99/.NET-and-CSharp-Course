using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bakery
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Account"] != null)
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "Javascript", "javascript:loggedDisplay(); ", true);                 
            } else
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "Javascript", "javascript:notLoggedDisplay(); ", true);
            }
        }
    }
}