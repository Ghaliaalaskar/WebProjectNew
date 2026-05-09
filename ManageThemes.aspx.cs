using System;

namespace WebProjectNew
{
    public partial class ManageThemes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddTheme_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                lblMessage.Text = "Theme added successfully";
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            txtThemeName.Text = "";
            txtDuration.Text = "";
            txtPrice.Text = "";

            lblMessage.Text = "Theme deleted successfully";
        }
    }
}