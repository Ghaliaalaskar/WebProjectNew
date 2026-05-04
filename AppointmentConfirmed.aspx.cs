using System;
using System.Web.UI;

namespace WebProjectNew
{
    public partial class AppointmentConfirmed : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnGoDetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("userbookingdetails.aspx");
        }
    }
}