using System;
using System.Configuration;
using System.Data.SqlClient;

namespace WebProjectNew
{
    public partial class ManageUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["PartyPlannerDB"].ConnectionString;

            SqlConnection con = new SqlConnection(cs);

            string query = "DELETE FROM Users WHERE Email=@Email";

            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);

            con.Open();

            cmd.ExecuteNonQuery();

            con.Close();

            txtName.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";

            //User deleted successfully
        }
    }
}