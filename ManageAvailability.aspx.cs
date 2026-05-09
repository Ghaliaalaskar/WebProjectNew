using System;

namespace WebProjectNew
{
    public partial class ManageAvailability : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            txtThemeName.Text = "";
            txtDate.Text = "";
            txtTime.Text = "";
            ddlStatus.SelectedIndex = 0;

            lblMessage.Text = "Deleted Successfully";
        }
    }
}