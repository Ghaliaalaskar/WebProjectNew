using System;
using System.Data.SqlClient;
using System.Web;

namespace WebProjectNew
{
    public partial class ManageUsers : System.Web.UI.Page
    {
        string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();

            if (Session["UserID"] == null)
            {
                Response.Redirect("login.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
                return;
            }

            if (Session["Role"] == null || Session["Role"].ToString() != "1")
            {
                Response.Redirect("ManageUsers.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtEmail.Text))
            {
                Response.Write("<script>alert('Please enter an email to delete');</script>");
                return;
            }

            using (SqlConnection con = new SqlConnection(connStr))
            {
                string query = "DELETE FROM [User] WHERE Email=@Email";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());

                try
                {
                    con.Open();
                    int rows = cmd.ExecuteNonQuery();

                    if (rows > 0)
                    {
                        Response.Write("<script>alert('User deleted successfully');</script>");
                        txtName.Text = "";
                        txtEmail.Text = "";
                        txtPhone.Text = "";
                    }
                    else
                    {
                        Response.Write("<script>alert('User not found');</script>");
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
                }
                finally
                {
                    con.Close();
                }
            }
        }
    }
}