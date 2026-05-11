using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProjectNew
{
    public partial class adminlogout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // التحقق من أن المستخدم أدمن بالفعل قبل محاولة تسجيل الخروج
            if (Session["UserID"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            // مسح جميع القيم المخزنة في الجلسة (UserID, Role, etc.)
            Session.Clear();

            // إنهاء الجلسة الحالية تماماً من الخادم
            Session.Abandon();

            // توجيه الأدمن إلى صفحة تسجيل الدخول
            Response.Redirect("login.aspx");
        }
    }
}