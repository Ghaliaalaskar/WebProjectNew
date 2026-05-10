using System;
using System.Web.UI;

namespace WebProjectNew
{
    public partial class AppointmentConfirmed : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("login.aspx");
                return;
            }

            if (!IsPostBack)
            {
                if (Session["UserName"] != null && Session["SelectedTheme"] != null)
                {
                }
            }
        }

        protected void btnGoDetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("userbookinghistory.aspx");
        }
    }
}