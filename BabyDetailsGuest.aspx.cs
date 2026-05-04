using System;
using System.Web.UI;

namespace WebProjectNew
{
    public partial class BabyDetailsGuest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}