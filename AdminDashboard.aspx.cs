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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDashboardStats();
            }
        }

        private void LoadDashboardStats()
        {
            try
            {
                lblTotalUsers.Text = "4";
                lblTotalBookings.Text = "2";
                lblAvailableSlots.Text = "2";
                lblTotalThemes.Text = "3";
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error loading stats: " + ex.Message + "');</script>");
            }
        }

        private int GetCountFromDb(string tableName)
        {
            string connStr = ConfigurationManager.ConnectionStrings["HealthyHubConnectionString"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "SELECT COUNT(*) FROM " + tableName;
                SqlCommand cmd = new SqlCommand(query, conn);
                conn.Open();
                return (int)cmd.ExecuteScalar();
            }
        }
    }
}