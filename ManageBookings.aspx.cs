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
    public partial class ManageBookings : System.Web.UI.Page
    {
        // 1. استخدام نص الاتصال الموحد ConnectionString
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            // 2. تفعيل السيشن (حماية الصفحة)
            if (Session["UserID"] == null)
            {
                // إذا حاول الدخول بدون لوق إن، يرجعه لصفحة تسجيل الدخول
                Response.Redirect("login.aspx");
            }

            if (!IsPostBack)
            {
                // هنا يمكنك وضع كود لعرض الحجوزات في GridView إذا كنت تملك واحداً
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(cs))
                {
                    // 3. استعلام الحذف (تأكد من مطابقة أسماء الجداول والأعمدة في الداتابيز لديك)
                    // ملاحظة: الأفضل دائماً الحذف باستخدام ID الحجز (BookingID)، ولكن سنلتزم بكودك الحالي
                    string query = "DELETE FROM Appointments WHERE AppointmentDate=@AppointmentDate AND AppointmentTime=@AppointmentTime";

                    SqlCommand cmd = new SqlCommand(query, con);

                    // ربط الباراميترز للحماية من SQL Injection
                    cmd.Parameters.AddWithValue("@AppointmentDate", txtThemeDate.Text.Trim());
                    cmd.Parameters.AddWithValue("@AppointmentTime", ddlTime.SelectedValue);

                    con.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();
                    con.Close();

                    // 4. التحقق من نتيجة الحذف
                    if (rowsAffected > 0)
                    {
                        // تنظيف الحقول
                        ClearFields();

                        lblMessage.Text = "Booking deleted successfully!";
                        lblMessage.ForeColor = System.Drawing.Color.Green;
                    }
                    else
                    {
                        lblMessage.Text = "No matching booking found to delete.";
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }
            catch (Exception ex)
            {
                // التعامل مع الأخطاء
                lblMessage.Text = "Error: " + ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        private void ClearFields()
        {
            txtClientName.Text = "";
            txtThemeDate.Text = "";
            if (ddlTime.Items.Count > 0) ddlTime.SelectedIndex = 0;
            if (ddlStatus.Items.Count > 0) ddlStatus.SelectedIndex = 0;
        }
    }
}