using System;
using System.Configuration;
using System.Data.SqlClient;

namespace WebProjectNew
{
    public partial class ManageThemes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["PartyPlannerDB"].ConnectionString;

            SqlConnection con = new SqlConnection(cs);

            string query = "DELETE FROM Services WHERE ServiceName=@ServiceName";

            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@ServiceName", txtThemeName.Text);

            con.Open();

            cmd.ExecuteNonQuery();

            con.Close();

            txtThemeName.Text = "";
            txtDuration.Text = "";
            txtPrice.Text = "";

            lblMessage.Text = "Theme deleted successfully";
        }
    }
}