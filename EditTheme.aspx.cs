using System;

namespace WebProjectNew
{
    public partial class EditTheme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                lblMessage.Text = "Theme updated successfully";
            }
        }
    }
}