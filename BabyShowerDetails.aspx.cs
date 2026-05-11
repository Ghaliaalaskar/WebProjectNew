using System;
using System.Web.UI;

namespace WebProjectNew
{
    public partial class BabyShowerDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("login.aspx");
                return;
            }
        }

        protected void btnBook_Click(object sender, EventArgs e)
        {
            Session["SelectedTheme"] = "Baby Shower";

            Response.Redirect("BookYourAppointment.aspx?theme=BabyShower");
        }
    }
}