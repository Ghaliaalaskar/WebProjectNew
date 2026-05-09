using System;

namespace WebProjectNew
{
    public partial class ManageBookings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            txtClientName.Text = "";
            txtThemeDate.Text = "";
            ddlTime.SelectedIndex = 0;
            ddlStatus.SelectedIndex = 0;

            lblMessage.Text = "Booking deleted successfully";
        }
    }
}