using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebProjectNew
{
    public partial class userhome : System.Web.UI.Page
    {
        // استخدام نص الاتصال من الـ Web.config أفضل لتوحيد المشروع
        string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    string userId = Session["UserID"].ToString();

                    if (Session["Name"] != null)
                        lblUserName.Text = Session["Name"].ToString();

                    // استدعاء دالة الإحصائيات فقط
                    LoadStatistics(userId);
                }
            }
        }

        private void LoadStatistics(string userId)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strCon))
                {
                    con.Open();

                    // حساب إجمالي المواعيد
                    SqlCommand cmdTotal = new SqlCommand("SELECT COUNT(*) FROM Appointments WHERE UserID = @uid", con);
                    cmdTotal.Parameters.AddWithValue("@uid", userId);
                    int total = Convert.ToInt32(cmdTotal.ExecuteScalar());
                    lblTotal.Text = total.ToString();

                    // حساب المواعيد القادمة
                    SqlCommand cmdUpcoming = new SqlCommand("SELECT COUNT(*) FROM Appointments WHERE UserID = @uid AND AppointmentDate >= GETDATE()", con);
                    cmdUpcoming.Parameters.AddWithValue("@uid", userId);
                    lblUpcoming.Text = cmdUpcoming.ExecuteScalar().ToString();

                    // حساب المواعيد المكتملة (السابقة)
                    SqlCommand cmdPast = new SqlCommand("SELECT COUNT(*) FROM Appointments WHERE UserID = @uid AND AppointmentDate < GETDATE()", con);
                    cmdPast.Parameters.AddWithValue("@uid", userId);
                    lblCompleted.Text = cmdPast.ExecuteScalar().ToString();
                }
            }
            catch
            {
                lblTotal.Text = "0";
                lblUpcoming.Text = "0";
                lblCompleted.Text = "0";
            }
        }

        // تم حذف دالة LoadTableData تماماً لأن الـ GridView لم يعد موجوداً
    }
}