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
    public partial class ManageAvailability : System.Web.UI.Page
    {
        // استخدام نص الاتصال الموحد في Web.config
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            // حماية الصفحة: التأكد من تسجيل دخول المستخدم
            if (Session["UserID"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(cs))
                {
                    // استعلام الحذف بناءً على التاريخ والوقت
                    string query = "DELETE FROM Availability WHERE AvailableDate=@AvailableDate AND AvailableTime=@AvailableTime";

                    SqlCommand cmd = new SqlCommand(query, con);

                    // ربط الباراميترز (تأكد من مطابقة الـ IDs في صفحة الـ aspx)
                    cmd.Parameters.AddWithValue("@AvailableDate", txtDate.Text.Trim());
                    cmd.Parameters.AddWithValue("@AvailableTime", txtTime.Text.Trim());

                    con.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();
                    con.Close();

                    if (rowsAffected > 0)
                    {
                        // رسالة نجاح باللون الأخضر وتصفير الحقول
                        lblMessage.Text = "Deleted Successfully";
                        lblMessage.ForeColor = System.Drawing.Color.Green;
                        txtDate.Text = "";
                        txtTime.Text = "";
                    }
                    else
                    {
                        // في حال لم يتطابق التاريخ والوقت مع أي سجل
                        lblMessage.Text = "No record found for this date and time.";
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }
            catch (Exception ex)
            {
                // عرض رسالة في حال وجود خطأ في قاعدة البيانات
                lblMessage.Text = "Error: " + ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}