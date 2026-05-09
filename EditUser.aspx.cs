using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Xml.Linq;

namespace WebProjectNew
{
    public partial class EditUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["PartyPlannerDB"].ConnectionString;

            SqlConnection con = new SqlConnection(cs);

            string query = "UPDATE Users SET Name=@Name, Phone=@Phone WHERE Email=@Email";

            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@Name", txtName.Text);
            cmd.Parameters.AddWithValue("@Phone", txtPhone.Text);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);

            con.Open();

            cmd.ExecuteNonQuery();

            con.Close();

            lblMessage.Text = "User updated successfully";
        }

     
     
        }
    }
