using System;
using System.Web.UI;

namespace WebProjectNew
{
    public partial class BridalShowerDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // 1. حماية الصفحة: منع غير المسجلين من الدخول
            if (Session["UserID"] == null)
            {
                Response.Redirect("login.aspx");
                return;
            }
        }

        protected void btnBook_Click(object sender, EventArgs e)
        {
            // 2. تحديث السيزون ليعرف النظام أن الاختيار الحالي هو Bridal Shower
            Session["SelectedTheme"] = "Bridal Shower";

            // التوجيه لصفحة الحجز مع إرسال الثيم في الرابط (QueryString) كدعم إضافي
            Response.Redirect("BookYourAppointment.aspx?theme=BridalShower");
        }
    }
}