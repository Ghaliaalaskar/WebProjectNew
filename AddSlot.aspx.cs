using System;
using System.Configuration;
using System.Data.SqlClient;

namespace WebProjectNew
{
    public partial class AddSlot : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string cs = ConfigurationManager.ConnectionStrings["PartyPlannerDB"].ConnectionString;

                SqlConnection con = new SqlConnection(cs);

                string query = "INSERT INTO Availability(ServiceID, AvailableDate, AvailableTime) VALUES(@ServiceID, @AvailableDate, @AvailableTime)";

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@ServiceID", ddlTheme.SelectedIndex + 1);
                cmd.Parameters.AddWithValue("@AvailableDate", txtDate.Text);
                cmd.Parameters.AddWithValue("@AvailableTime", ddlTime.SelectedValue);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                
            }
        }
    }
}