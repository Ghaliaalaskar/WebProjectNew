using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebProjectNew
{
    public partial class usercancelbooking : System.Web.UI.Page
    {
        // نص الاتصال بقاعدة البيانات
        string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            // حماية الصفحة: تأكد أن اليوزر مسجل دخول
            if (Session["UserID"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void btnCancelBooking_Click(object sender, EventArgs e)
        {
            // جلب رقم الحجز من صندوق النص
            string appointmentID = txtBookingID.Text.Trim();

            if (string.IsNullOrEmpty(appointmentID))
            {
                lblMessage.Text = "Please enter a valid Booking ID.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            using (SqlConnection con = new SqlConnection(connStr))
            {
                // الاستعلام: حذف الحجز بشرط أن يكون الـ ID صحيحاً ومملوكاً لنفس اليوزر (لأمان أكثر)
                string query = "DELETE FROM Appointments WHERE AppointmentID = @AppID AND UserID = @UID";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@AppID", appointmentID);
                cmd.Parameters.AddWithValue("@UID", Session["UserID"].ToString());

                try
                {
                    con.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();
                    con.Close();

                    if (rowsAffected > 0)
                    {
                        lblMessage.Text = "Booking cancelled successfully!";
                        lblMessage.ForeColor = System.Drawing.Color.Green;
                        txtBookingID.Text = ""; // تفريغ الخانة
                    }
                    else
                    {
                        lblMessage.Text = "Booking ID not found or you don't have permission to cancel it.";
                        lblMessage.ForeColor = System.Drawing.Color.Red;
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
}