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

            string query = "UPDATE Bookings SET ClientName=@ClientName, Theme=@Theme, BookingDate=@BookingDate, BookingTime=@BookingTime WHERE BookingID=1";

            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@ClientName", txtClientName.Text);
            cmd.Parameters.AddWithValue("@Theme", ddlTheme.SelectedValue);
            cmd.Parameters.AddWithValue("@BookingDate", txtDate.Text);
            cmd.Parameters.AddWithValue("@BookingTime", ddlTime.SelectedValue);

            con.Open();

            cmd.ExecuteNonQuery();

            con.Close();

            lblMessage.Text = "Booking updated successfully";
        }
    }
}