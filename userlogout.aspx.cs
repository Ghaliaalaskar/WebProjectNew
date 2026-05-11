using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProjectNew
{
    public partial class userlogout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // حماية اختيارية: إذا لم يكن مسجل دخول أصلاً، وجهه للوجن
            if (Session["UserID"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // 1. إنهاء الجلسة ومسح كافة البيانات المخزنة (مثل UserID و Role)
            Session.Clear(); // يمسح القيم داخل السيشن
            Session.Abandon(); // ينهي السيشن بالكامل

            // 2. توجيه المستخدم لصفحة تسجيل الدخول أو الصفحة الرئيسية
            Response.Redirect("welcomepage.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}