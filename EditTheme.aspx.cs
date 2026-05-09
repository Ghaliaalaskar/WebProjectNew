using System;
using System.Configuration;
using System.Data.SqlClient;

namespace WebProjectNew
{
    public partial class EditTheme : System.Web.UI.Page
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

                string query = "UPDATE Services SET ServiceName=@ServiceName, Description=@Description, Duration=@Duration, Price=@Price";

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@ServiceName", ddlThemeName.Text);
                cmd.Parameters.AddWithValue("@Description", txtDescription.Text);
                cmd.Parameters.AddWithValue("@Duration", txtDuration.Text);
                cmd.Parameters.AddWithValue("@Price", txtPrice.Text);

                con.Open();

                cmd.ExecuteNonQuery();

                con.Close();

                lblMessage.Text = "Theme updated successfully";
            }
        }
    }
}