using System;
using System.Collections.Generic;
using System.Data.SqlClient; 
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProjectNew
{
    public partial class login : System.Web.UI.Page
    {
        string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(connStr))
            {
               
                string query = "SELECT UserID FROM [User] WHERE Email = @Email AND Password = @Pass";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text); 
                cmd.Parameters.AddWithValue("@Pass", txtPass.Text);  

                con.Open();
                object userId = cmd.ExecuteScalar(); 
                con.Close();

                if (userId != null)
                {
                    Session["UserID"] = userId.ToString();

                    Response.Redirect("PickTheme.aspx");
                }
                else
                {
                    Label1.Text = "Invalid Email or Password!";
                    
                }
            }
        }
    }
}