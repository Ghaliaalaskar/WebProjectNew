using System;
using System.Data.SqlClient;
using System.Web;

namespace WebProjectNew
{
    public partial class ManageThemes : System.Web.UI.Page
    {
        string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();

            if (Session["UserID"] == null ||Session["Role"].ToString() != "1")
            {
                Response.Redirect("login.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtThemeName.Text))
            {
                Response.Write("<script>alert('Please enter theme name');</script>");
                return;
            }

            using (SqlConnection con = new SqlConnection(connStr))
            {
                string query = "DELETE FROM [Services] WHERE ServiceName=@ThemeName";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@ThemeName", txtThemeName.Text.Trim());

                try
                {
                    con.Open();
                    int rows = cmd.ExecuteNonQuery();

                    if (rows > 0)
                    {
                        Response.Write("<script>alert('Theme deleted successfully');</script>");
                        txtThemeName.Text = "";
                    }
                    else
                    {
                        Response.Write("<script>alert('Theme not found');</script>");
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
                }
            }
        }
    }
}