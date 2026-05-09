using System;
using System.Configuration;
using System.Data.SqlClient;

namespace WebProjectNew
{
    public partial class ManageBookings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["PartyPlannerDB"].ConnectionString;

            SqlConnection con = new SqlConnection(cs);

            string query = "DELETE FROM Appointments WHERE AppointmentDate=@AppointmentDate AND AppointmentTime=@AppointmentTime";

            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@AppointmentDate", txtThemeDate.Text);
            cmd.Parameters.AddWithValue("@AppointmentTime", ddlTime.SelectedValue);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            txtClientName.Text = "";
            txtThemeDate.Text = "";
            ddlTime.SelectedIndex = 0;
            ddlStatus.SelectedIndex = 0;

            lblMessage.Text = "Booking deleted successfully";
        }
    }
}