using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProjectNew
{
    public partial class userlogout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Clear(); 
            Session.Abandon(); 

            Response.Redirect("welcomepage.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}