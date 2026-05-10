using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebProjectNew
{
    public partial class BookYourAppointment : System.Web.UI.Page
    {
        // نص الاتصال بقاعدة البيانات
        string connStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            // التأكد من أن المستخدم سجل دخوله
            if (Session["UserID"] == null)
            {
                Response.Redirect("login.aspx");
                return;
            }

            if (!IsPostBack)
            {
                // عرض اسم الثيم المختار من الصفحة السابقة
                if (Session["SelectedTheme"] != null)
                {
                    lblSelectedTheme.Text = Session["SelectedTheme"].ToString();
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // 1. التحقق من أن المستخدم اختار تاريخ ووقت
            if (ddlDate.SelectedValue == "0" || ddlTime.SelectedValue == "0")
            {
                Response.Write("<script>alert('Please select both date and time');</script>");
                return;
            }

            using (SqlConnection con = new SqlConnection(connStr))
            {
                // 2. جملة الإضافة لجدول Appointments
                string query = "INSERT INTO Appointments (UserID, ServiceID, AppointmentDate, AppointmentTime) VALUES (@uid, @sid, @date, @time)";

                SqlCommand cmd = new SqlCommand(query, con);

                // 3. تمرير القيم (تأكدي أن الـ Session["UserID"] يحتوي على رقم)
                cmd.Parameters.AddWithValue("@uid", Session["UserID"]);

                // نأخذ الـ ID الخاص بالثيم من السيزون، وإذا لم يوجد نضع 1 كقيمة افتراضية
                cmd.Parameters.AddWithValue("@sid", Session["SelectedServiceID"] ?? 1);

                cmd.Parameters.AddWithValue("@date", ddlDate.SelectedValue);
                cmd.Parameters.AddWithValue("@time", ddlTime.SelectedValue);

                try
                {
                    con.Open();
                    int rows = cmd.ExecuteNonQuery();

                    if (rows > 0)
                    {
                        // 4. السطر الذي طلبتهِ لتحديث القوائم فوراً
                        ddlDate.DataBind();
                        ddlTime.DataBind();

                        // 5. الانتقال لصفحة التأكيد
                        Response.Redirect("AppointmentConfirmed.aspx");
                    }
                }
                catch (Exception ex)
                {
                    // إظهار تنبيه في حال وجود خطأ في الداتابيس
                    Response.Write("<script>alert('Error: " + ex.Message.Replace("'", "") + "');</script>");
                }
            }
        }

        protected void ddlDate_SelectedIndexChanged(object sender, EventArgs e)
        {
            // هذا الحدث مطلوب لأنكِ وضعتِ AutoPostBack=True في الـ HTML
            // سيقوم الـ SqlDataSource بتحديث الأوقات تلقائياً بناءً على التاريخ المختار
        }
    }
}