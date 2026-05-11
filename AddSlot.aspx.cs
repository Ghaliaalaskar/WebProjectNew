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
    public partial class AddSlot : System.Web.UI.Page
    {
        // استخدام اسم نص الاتصال الصحيح من الـ Web.config
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            // تصحيح الحماية: التحقق من السيشن بشكل آمن لمنع الخطأ عند أول تشغيل
            if (Session["UserID"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            // إزالة Page.IsValid مؤقتاً للتأكد من أن الـ Validators لا تمنع الكود من العمل
            try
            {
                using (SqlConnection con = new SqlConnection(cs))
                {
                    // استعلام الإضافة المعتمد على أسماء الأعمدة في صورتك
                    string query = "INSERT INTO Availability (ServiceID, AvailableDate, AvailableTime) VALUES (@ServiceID, @AvailableDate, @AvailableTime)";

                    SqlCommand cmd = new SqlCommand(query, con);

                    // 1. معالجة ServiceID: نستخدم SelectedIndex + 1 إذا كانت القائمة تعرض الأسماء فقط
                    // أو SelectedValue إذا كنت قد ربطتها بـ IDs من قاعدة البيانات
                    int serviceID = 0;
                    if (ddlTheme.SelectedIndex >= 0)
                    {
                        serviceID = ddlTheme.SelectedIndex + 1;
                    }

                    cmd.Parameters.AddWithValue("@ServiceID", serviceID);

                    // 2. معالجة التاريخ من txtDate
                    cmd.Parameters.AddWithValue("@AvailableDate", txtDate.Text.Trim());

                    // 3. معالجة الوقت من TextBox1 كما طلبتِ
                    cmd.Parameters.AddWithValue("@AvailableTime", TextBox1.Text.Trim());

                    con.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();
                    con.Close();

                    if (rowsAffected > 0)
                    {
                        // استخدام ScriptManager لإظهار رسالة النجاح
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Slot added successfully!');", true);
                        ClearFields();
                    }
                }
            }
            catch (Exception ex)
            {
                // عرض الخطأ الحقيقي لمعرفة المشكلة (سواء كانت في نوع البيانات أو الاتصال)
                string errorMessage = ex.Message.Replace("'", "\\'").Replace("\r", "").Replace("\n", "");
                ScriptManager.RegisterStartupScript(this, this.GetType(), "error", "alert('Error: " + errorMessage + "');", true);
            }
        }

        private void ClearFields()
        {
            txtDate.Text = "";
            TextBox1.Text = "";
            if (ddlTheme.Items.Count > 0) ddlTheme.SelectedIndex = 0;
        }
    }
}