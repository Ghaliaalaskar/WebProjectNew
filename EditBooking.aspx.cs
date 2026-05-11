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
    public partial class EditBooking : System.Web.UI.Page
    {
        // استخدام نص الاتصال الموحد
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            // نظام حماية الصفحة (Session)
            if (Session["UserID"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(cs))
                {
                    // استعلام التحديث في قاعدة البيانات
                    string query = "UPDATE Appointments SET AppointmentDate=@AppointmentDate, AppointmentTime=@AppointmentTime WHERE ClientName=@ClientName";

                    SqlCommand cmd = new SqlCommand(query, con);

                    // ربط القيم من الأدوات (TextBoxes & DropDownList)
                    cmd.Parameters.AddWithValue("@AppointmentDate", txtDate.Text.Trim());
                    cmd.Parameters.AddWithValue("@AppointmentTime", ddlTime.SelectedValue);
                    cmd.Parameters.AddWithValue("@ClientName", txtClientName.Text.Trim());

                    con.Open();
                    int rowsAffected = cmd.ExecuteNonQuery(); // تنفيذ التحديث في الداتابيز
                    con.Close();

                    // إذا تم التحديث بنجاح في قاعدة البيانات
                    if (rowsAffected > 0)
                    {
                        // التعديل المطلوب: يرسل رسالة نجاح ثم ينتقل لصفحة المانج بوكنق
                        // ملاحظة: استخدمت QueryString لإرسال رسالة نجاح للصفحة القادمة
                        Response.Redirect("ManageBookings.aspx?msg=success");
                    }
                    else
                    {
                        lblMessage.Text = "No booking found with this client name.";
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error: " + ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}