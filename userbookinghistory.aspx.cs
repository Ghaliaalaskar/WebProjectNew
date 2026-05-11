using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebProjectNew
{
    public partial class userbookinghistory : System.Web.UI.Page
    {
        string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UserID"] != null)
                {
                    LoadHistory();
                }
                else
                {
                    Response.Redirect("login.aspx");
                }
            }
        }

        private void LoadHistory()
        {
            using (SqlConnection con = new SqlConnection(connStr))
            {
                // تم إضافة A.AppointmentID هنا في الاستعلام
                string query = @"SELECT A.AppointmentID, S.ServiceName, A.AppointmentDate, A.AppointmentTime 
                                 FROM Appointments A 
                                 INNER JOIN Services S ON A.ServiceID = S.ServiceID 
                                 WHERE A.UserID = @UID 
                                 ORDER BY A.AppointmentDate DESC, A.AppointmentTime DESC";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@UID", Session["UserID"]);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        // الأكواد المتبقية تبقى كما هي دون تغيير
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e) { }
        protected void GridViewHistory_SelectedIndexChanged(object sender, EventArgs e) { }
        protected void Button1_Click(object sender, EventArgs e) { Response.Redirect("usercancelbooking.aspx"); }
    }
}