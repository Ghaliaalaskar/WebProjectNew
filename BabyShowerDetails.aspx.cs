using System;
using System.Web.UI;

namespace WebProjectNew
{
    public partial class BabyShowerDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // 1. حماية الصفحة: التأكد أن المستخدم مسجل دخول
            if (Session["UserID"] == null)
            {
                Response.Redirect("login.aspx");
                return;
            }
        }

        protected void btnBook_Click(object sender, EventArgs e)
        {
            // 2. تخزين اسم الثيم في السيزون لضمان وصوله لصفحة الحجز بشكل آمن
            Session["SelectedTheme"] = "Baby Shower";

            // التوجيه لصفحة الحجز
            Response.Redirect("BookYourAppointment.aspx?theme=BabyShower");
        }
    }
}