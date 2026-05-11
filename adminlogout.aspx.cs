using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProjectNew
{
    public partial class adminlogout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session.Clear();

            Session.Abandon();

            Response.Redirect("login.aspx");
        }
    }
}