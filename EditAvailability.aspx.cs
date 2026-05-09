using System;
using System.Configuration;
using System.Data.SqlClient;

namespace WebProjectNew
{
    public partial class EditAvailability : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["PartyPlannerDB"].ConnectionString;

            SqlConnection con = new SqlConnection(cs);

            string query = "UPDATE Availability SET AvailableDate=@AvailableDate, AvailableTime=@AvailableTime WHERE ServiceID=@ServiceID";

            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@AvailableDate", ddlTime.Text);
            cmd.Parameters.AddWithValue("@AvailableTime", ddlTime.SelectedValue);
            cmd.Parameters.AddWithValue("@ServiceID", ddlTheme.SelectedIndex + 1);

            con.Open();

            cmd.ExecuteNonQuery();

            con.Close();

            lblMessage.Text = "Availability updated successfully";
        }
    }
}