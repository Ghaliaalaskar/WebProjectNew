using System;
using System.Configuration;
using System.Data.SqlClient;

namespace WebProjectNew
{
    public partial class AddThemes : System.Web.UI.Page
    {
        protected void btnSaveTheme_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

                SqlConnection con = new SqlConnection(cs);

                string query = "INSERT INTO Services(ServiceName, Description, Duration, Price, ServicePhoto) VALUES(@ServiceName, @Description, @Duration, @Price, @ServicePhoto)";

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@ServiceName", txtName.Text);
                cmd.Parameters.AddWithValue("@Description", txtDescription.Text);
                cmd.Parameters.AddWithValue("@Duration", txtDuration.Text);
                cmd.Parameters.AddWithValue("@Price", txtPrice.Text);
                cmd.Parameters.AddWithValue("@ServicePhoto", FileUpload1.FileName);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                lblMessage.Text = "Theme added successfully";
            }
        }
    }
}