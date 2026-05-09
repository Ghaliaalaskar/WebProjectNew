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
    public partial class AdminDashboard : System.Web.UI.Page
    {
        string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["UserID"] == null|| Session["Role"].ToString().ToLower() != "1")

            {
                Response.Redirect("login.aspx");
                return;
            }

            if (!IsPostBack)
            {
                LoadDashboardStats();
            }
        }

        private void LoadDashboardStats()
        {
            try
            {
                lblTotalUsers.Text = GetCountFromDb("[User]").ToString();
                lblTotalBookings.Text = GetCountFromDb("Appointments").ToString();
                lblAvailableSlots.Text = GetCountFromDb("Availability").ToString();
                lblTotalThemes.Text = GetCountFromDb("Services").ToString();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error loading stats: " + ex.Message + "');</script>");
            }
        }

        private int GetCountFromDb(string tableName)
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "SELECT COUNT(*) FROM " + tableName;
                SqlCommand cmd = new SqlCommand(query, conn);
                conn.Open();

                object result = cmd.ExecuteScalar();
                conn.Close();

                return result != null ? Convert.ToInt32(result) : 0;
            }
        }
    }
}