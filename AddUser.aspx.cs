using System;
using System.Configuration;
using System.Data.SqlClient;

namespace WebProjectNew
{
    public partial class AddUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string cs = ConfigurationManager.ConnectionStrings["PartyPlannerDB"].ConnectionString;

                SqlConnection con = new SqlConnection(cs);

                string query = "INSERT INTO Users(Name, Email, Phone) VALUES(@Name,@Email,@Phone)";

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@Name", txtName.Text);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@Phone", txtPhone.Text);

                con.Open();

                cmd.ExecuteNonQuery();

                con.Close();

                lblMessage.Text = "User saved successfully";
            }
        }
    }
}