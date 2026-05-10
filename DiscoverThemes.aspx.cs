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
    public partial class DiscoverThemes : System.Web.UI.Page
    {
        // نص الاتصال بقاعدة البيانات
        string connStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadThemes();
            }
        }

        private void LoadThemes()
        {
            using (SqlConnection con = new SqlConnection(connStr))
            {
                // جلب كل الثيمات من جدول Services لكي تظهر للزائر
                string query = "SELECT * FROM Services";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataTable dt = new DataTable();

                try
                {
                    da.Fill(dt);
                    rptThemes.DataSource = dt;
                    rptThemes.DataBind();
                }
                catch (Exception ex)
                {
                    // في حال وجود خطأ يظهر تنبيه بسيط
                    Response.Write("<script>alert('Error loading themes');</script>");
                }
            }
        }

        protected void RedirectToLogin(object sender, EventArgs e)
        {
            // بما أن هذه صفحة الزوار، أي محاولة حجز ستوجههم لإنشاء حساب أو تسجيل دخول
            Response.Redirect("login.aspx");
        }
    }
}