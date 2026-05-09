using System;
using System.Data.SqlClient;

namespace WebProjectNew
{
    public partial class register : System.Web.UI.Page
    {
        string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(connStr))
            {
                string sql = "INSERT INTO [User] (Name, Email, Password, Phone) VALUES (@n, @e, @p, @ph)";
                SqlCommand cmd = new SqlCommand(sql, con);

                cmd.Parameters.AddWithValue("@n", txtName.Text.Trim());
                cmd.Parameters.AddWithValue("@e", txtEmail.Text.Trim());
                cmd.Parameters.AddWithValue("@p", txtPass.Text.Trim());
                cmd.Parameters.AddWithValue("@ph", txtPhone.Text.Trim());

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
            Response.Redirect("login.aspx");
        }
    }
}