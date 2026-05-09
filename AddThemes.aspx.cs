using System;

namespace WebProjectNew
{
    public partial class AddThemes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                lblMessage.Text = "Theme added successfully";
            }
        }
    }
}