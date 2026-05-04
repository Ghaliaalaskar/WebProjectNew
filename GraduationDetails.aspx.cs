using System;
using System.Web.UI;

namespace WebProjectNew
{
    public partial class GraduationDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnBook_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookYourAppointment.aspx?theme=Graduation");
        }
    }
}