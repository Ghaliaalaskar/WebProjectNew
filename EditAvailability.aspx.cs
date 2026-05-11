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
    public partial class EditAvailability : System.Web.UI.Page
    {
        // استخدام نص الاتصال الموحد كما في ملف Web.config
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            // 1. حماية الصفحة بالسيشن
            if (Session["UserID"] == null)
            {
                Response.Redirect("login.aspx");
            }

            // 2. عند تحميل الصفحة لأول مرة، يفضل جلب رقم الموعد من الرابط (URL)
            if (!IsPostBack)
            {
                // إذا كنت ترسل الـ ID في الرابط مثل: EditAvailability.aspx?ID=5
                if (Request.QueryString["ID"] != null)
                {
                    // هنا يمكنك إضافة كود لجلب بيانات الموعد وعرضها في الخانات
                }
            }
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            // التأكد من صحة البيانات (Validators)
            if (Page.IsValid)
            {
                try
                {
                    using (SqlConnection con = new SqlConnection(cs))
                    {
                        // استعلام التحديث: نعدل التاريخ والوقت بناءً على الـ ID الفريد للموعد
                        // ملاحظة: استخدمت AvailabilityID لأنه الضامن الوحيد لعدم تعديل مواعيد أخرى بالخطأ
                        string query = "UPDATE Availability SET AvailableDate=@AvailableDate, AvailableTime=@AvailableTime WHERE AvailabilityID=@AvailabilityID";

                        SqlCommand cmd = new SqlCommand(query, con);

                        // ربط القيم من الأدوات (TextBox و DropDownList)
                        cmd.Parameters.AddWithValue("@AvailableDate", txtDate.Text.Trim());
                        cmd.Parameters.AddWithValue("@AvailableTime", ddlTime.SelectedValue);

                        // نأخذ الـ ID من الرابط (QueryString) أو من حقل مخفي (HiddenField)
                        // سأفترض أنك ترسله في الرابط (URL)
                        string idFromUrl = Request.QueryString["ID"];
                        if (!string.IsNullOrEmpty(idFromUrl))
                        {
                            cmd.Parameters.AddWithValue("@AvailabilityID", idFromUrl);
                        }
                        else
                        {
                            // إذا لم يوجد ID، نستخدم الـ ServiceID كخيار بديل (لكنه سيعدل كل مواعيد الثيم)
                            // والأفضل دائماً التعديل بالـ AvailabilityID
                            lblMessage.Text = "Error: Appointment ID is missing!";
                            lblMessage.ForeColor = System.Drawing.Color.Red;
                            return;
                        }

                        con.Open();
                        int rowsAffected = cmd.ExecuteNonQuery();
                        con.Close();

                        if (rowsAffected > 0)
                        {
                            // رسالة نجاح باللون الأخضر والبقاء في الصفحة
                            lblMessage.Text = "Availability updated successfully!";
                            lblMessage.ForeColor = System.Drawing.Color.Green;
                        }
                        else
                        {
                            lblMessage.Text = "Update failed: Record not found.";
                            lblMessage.ForeColor = System.Drawing.Color.Red;
                        }
                    }
                }
                catch (Exception ex)
                {
                    // عرض الخطأ التقني في حال حدوثه
                    lblMessage.Text = "Database Error: " + ex.Message;
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
        }

        // زر للإلغاء والعودة لصفحة الإدارة
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageAvailability.aspx");
        }
    }
}