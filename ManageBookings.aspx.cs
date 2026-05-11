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
    public partial class ManageBookings : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("login.aspx");
            }

            if (!IsPostBack)
            {
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(cs))
                {
                    string query = "DELETE FROM Appointments WHERE AppointmentDate=@AppointmentDate AND AppointmentTime=@AppointmentTime";

                    SqlCommand cmd = new SqlCommand(query, con);

                    cmd.Parameters.AddWithValue("@AppointmentDate", txtThemeDate.Text.Trim());
                    cmd.Parameters.AddWithValue("@AppointmentTime", ddlTime.SelectedValue);

                    con.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();
                    con.Close();

                    if (rowsAffected > 0)
                    {
                        ClearFields();

                        lblMessage.Text = "Booking deleted successfully!";
                        lblMessage.ForeColor = System.Drawing.Color.Green;
                    }
                    else
                    {
                        lblMessage.Text = "No matching booking found to delete.";
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error: " + ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        private void ClearFields()
        {
            txtClientName.Text = "";
            txtThemeDate.Text = "";
            if (ddlTime.Items.Count > 0) ddlTime.SelectedIndex = 0;
            if (ddlStatus.Items.Count > 0) ddlStatus.SelectedIndex = 0;
        }
    }
}