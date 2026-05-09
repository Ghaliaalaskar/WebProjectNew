using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;

namespace WebProjectNew
{
    public partial class AddUser : System.Web.UI.Page
    {
        string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null || Session["Role"] == null || Session["Role"].ToString() != "1")
            {
                Response.Redirect("login.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
                return;
            }

            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                using (SqlConnection con = new SqlConnection(connStr))
                {
                    
                    string query = "INSERT INTO [User] (Name, Email, Phone,) VALUES (@Name, @Email, @Phone,)";

                    SqlCommand cmd = new SqlCommand(query, con);

                    // استخدام القيم من التكست بوكس مع تنظيف الفراغات
                    cmd.Parameters.AddWithValue("@Name", txtName.Text.Trim());
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                    cmd.Parameters.AddWithValue("@Phone", txtPhone.Text.Trim());

                   

                    try
                    {
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();

                        lblMessage.ForeColor = System.Drawing.Color.Green;
                        lblMessage.Text = "User saved successfully!";

                        txtName.Text = "";
                        txtEmail.Text = "";
                        txtPhone.Text = "";
                    }
                    catch (Exception ex)
                    {
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                        lblMessage.Text = "Error: " + ex.Message;
                    }
                }
            }
        }
    }
}