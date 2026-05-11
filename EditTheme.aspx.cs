using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web; 

namespace WebProjectNew
{
    public partial class EditTheme : System.Web.UI.Page
    {
        string strCon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null || Session["Role"] == null || Session["Role"].ToString() != "1")
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                SqlConnection con = new SqlConnection(strCon);

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