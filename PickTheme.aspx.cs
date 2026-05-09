using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProjectNew
{
    public partial class PickTheme : System.Web.UI.Page
    {
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
                LoadThemesFromDb();
            }
        }

        private void LoadThemesFromDb()
        {
            using (SqlConnection con = new SqlConnection(connStr))
            {
                string query = "SELECT ServiceName, theme_image, details_page_url FROM Services";

                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();

                try
                {
                    con.Open();
                    sda.Fill(dt);

                    rptUserThemes.DataSource = dt;
                    rptUserThemes.DataBind();
                }
                catch (Exception ex)
                {
                    // في حال لم يتم العثور على الجدول أو الداتابيس
                    Response.Write("<script>alert('Error loading themes: " + ex.Message + "');</script>");
                }
            }
        }

        protected void GoToBooking(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string selectedTheme = btn.CommandArgument;

            // تخزين الثيم المختار في السيزون لاستخدامه في صفحة الحجز
            Session["SelectedTheme"] = selectedTheme;

            // التوجيه لصفحة الحجز مع إرسال اسم الثيم في الرابط أيضاً كزيادة تأكيد
            Response.Redirect("BookYourAppointment.aspx?theme=" + selectedTheme);
        }
    }
}