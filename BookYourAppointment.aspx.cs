using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

namespace WebProjectNew
{
    public partial class BookYourAppointment : System.Web.UI.Page
    {
        // نص الاتصال المباشر بـ Database1
        string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            // 1. حماية الصفحة بالـ Session
            if (Session["UserID"] == null)
            {
                Response.Redirect("login.aspx");
                return;
            }

            if (!IsPostBack)
            {
                // محاولة جلب الثيم من الـ Session أولاً، ثم من الرابط (QueryString)
                if (Session["SelectedTheme"] != null)
                {
                    lblSelectedTheme.Text = Session["SelectedTheme"].ToString();
                }
                else if (Request.QueryString["theme"] != null)
                {
                    lblSelectedTheme.Text = Request.QueryString["theme"];
                }
            }
        }

        protected void ddlDate_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlTime.Items.Clear();
            ddlTime.Items.Add(new ListItem(" Select Time ", "0"));

            if (ddlDate.SelectedValue != "0")
            {
                // ملاحظة: يفضل مستقبلاً جلب الأوقات المتاحة من الداتابيس (جدول Availability)
                ddlTime.Items.Add(new ListItem("04:00 PM", "04:00 PM"));
                ddlTime.Items.Add(new ListItem("06:00 PM", "06:00 PM"));
                ddlTime.Items.Add(new ListItem("08:00 PM", "08:00 PM"));
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (ddlDate.SelectedValue == "0" || ddlTime.SelectedValue == "0")
            {
               
                return;
            }

            try
            {
                using (SqlConnection con = new SqlConnection(connStr))
                {
                    string query = "INSERT INTO Appointments (UserID, ServiceName, AvailableDate, AvailableTime) VALUES (@uid, @theme, @date, @time)";

                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@uid", Session["UserID"].ToString());
                    cmd.Parameters.AddWithValue("@theme", lblSelectedTheme.Text);
                    cmd.Parameters.AddWithValue("@date", ddlDate.SelectedValue);
                    cmd.Parameters.AddWithValue("@time", ddlTime.SelectedValue);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }

                Response.Redirect("AppointmentConfirmed.aspx?status=success");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error in booking: " + ex.Message + "');</script>");
            }
        }
    }
}