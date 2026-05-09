using System;
using System.Configuration;
using System.Data.SqlClient;

namespace WebProjectNew
{
    public partial class EditBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["PartyPlannerDB"].ConnectionString;

            SqlConnection con = new SqlConnection(cs);

            string query = "UPDATE Appointments SET AppointmentDate=@AppointmentDate, AppointmentTime=@AppointmentTime WHERE UserID=@UserID";

            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@AppointmentDate", txtDate.Text);
            cmd.Parameters.AddWithValue("@AppointmentTime", ddlTime.Text);
            cmd.Parameters.AddWithValue("@UserID", txtClientName.Text);

            con.Open();

            cmd.ExecuteNonQuery();

            con.Close();

            lblMessage.Text = "Booking updated successfully";
        }
    }
}