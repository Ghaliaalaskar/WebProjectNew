using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebProjectNew
{
    public partial class userhome : System.Web.UI.Page
    {
        string strCon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";

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

                    LoadStatistics(userId);
                    LoadTableData(userId);
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

                    SqlCommand cmdTotal = new SqlCommand("SELECT COUNT(*) FROM Appointments WHERE UserID = @uid", con);
                    cmdTotal.Parameters.AddWithValue("@uid", userId);
                    int total = Convert.ToInt32(cmdTotal.ExecuteScalar());
                    lblTotal.Text = total.ToString();

                    SqlCommand cmdUpcoming = new SqlCommand("SELECT COUNT(*) FROM Appointments WHERE UserID = @uid AND AppointmentDate >= GETDATE()", con);
                    cmdUpcoming.Parameters.AddWithValue("@uid", userId);
                    lblUpcoming.Text = cmdUpcoming.ExecuteScalar().ToString();

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

        private void LoadTableData(string userId)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strCon))
                {
                    string sql = "SELECT AppointmentID, AppointmentDate FROM Appointments WHERE UserID = @uid AND AppointmentDate >= GETDATE()";
                    SqlDataAdapter da = new SqlDataAdapter(sql, con);
                    da.SelectCommand.Parameters.AddWithValue("@uid", userId);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    gvUpcoming.DataSource = dt;
                    gvUpcoming.DataBind();
                }
            }
            catch { }
        }
    }
}