using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace WebProjectNew
{
    public partial class BookYourAppointment : System.Web.UI.Page
    {
        // نص الاتصال بقاعدة البيانات
        string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("login.aspx");
                return;
            }

            if (!IsPostBack)
            {
                if (Session["SelectedTheme"] != null)
                {
                    lblSelectedTheme.Text = Session["SelectedTheme"].ToString();
                }
            }
        }

        protected void ddlDate_SelectedIndexChanged(object sender, EventArgs e)
        {
            // تفريغ القائمة قبل التحميل الجديد
            ddlTime.Items.Clear();
            ddlTime.Items.Add(new ListItem(" Select Time ", "0"));

            if (ddlDate.SelectedValue != "0")
            {
                using (SqlConnection con = new SqlConnection(connStr))
                {
                    // التعديل هنا: نسحب الأوقات "المتاحة فقط" من جدول المواعيد
                    // نختار الوقت الذي لم يتم حجزه بعد لهذا التاريخ
                    // افترضت هنا أن جدولك اسمه Appointments ويحتوي على الأوقات المتاحة
                    string query = "SELECT availabletime FROM Appointments WHERE availabledate = @date AND is_booked = 0";

                    // ملاحظة: إذا كان جدولك لا يحتوي على عمود is_booked، سنستخدم استعلاماً يستثني المحجوزين
                    // string query = "SELECT distinct availabletime FROM AvailabilityTable WHERE availabledate = @date";

                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@date", ddlDate.SelectedValue);

                    con.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();

                    // ربط الـ DropDown بالبيانات القادمة من الداتابيس مباشرة
                    while (rdr.Read())
                    {
                        string timeVal = rdr["availabletime"].ToString();
                        ddlTime.Items.Add(new ListItem(timeVal, timeVal));
                    }
                    con.Close();
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (ddlDate.SelectedValue == "0" || ddlTime.SelectedValue == "0") return;

            try
            {
                using (SqlConnection con = new SqlConnection(connStr))
                {
                    con.Open();

                    // 1. جلب ID الخدمة
                    int serviceId = 0;
                    string getSidQuery = "SELECT ServiceID FROM Services WHERE ServiceName = @sname";
                    SqlCommand cmdId = new SqlCommand(getSidQuery, con);
                    cmdId.Parameters.AddWithValue("@sname", lblSelectedTheme.Text);
                    object result = cmdId.ExecuteScalar();
                    if (result != null) serviceId = Convert.ToInt32(result);

                    // 2. تحديث الموعد ليصبح "محجوز" أو إضافة سجل جديد للحجز
                    string query = "INSERT INTO Appointments (service_id, availabledate, availabletime) VALUES (@sid, @date, @time)";

                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@sid", serviceId);
                    cmd.Parameters.AddWithValue("@date", ddlDate.SelectedValue);
                    cmd.Parameters.AddWithValue("@time", ddlTime.SelectedValue);

                    cmd.ExecuteNonQuery();
                    con.Close();
                }
                Response.Redirect("AppointmentConfirmed.aspx?status=success");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }
    }
}