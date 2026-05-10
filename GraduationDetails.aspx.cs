using System;
using System.Web.UI;

namespace WebProjectNew
{
    public partial class GraduationDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // 1. حماية الصفحة: التأكد من هوية المستخدم
            if (Session["UserID"] == null)
            {
                Response.Redirect("login.aspx");
                return;
            }
        }

        protected void btnBook_Click(object sender, EventArgs e)
        {
            // 2. حفظ نوع الثيم المختار في السيزون ليمر بسلام لصفحة الحجز
            Session["SelectedTheme"] = "Graduation";

            // التوجيه لصفحة الحجز
            Response.Redirect("BookYourAppointment.aspx?theme=Graduation");
        }
    }
}