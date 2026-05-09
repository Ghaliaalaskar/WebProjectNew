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
                string query = "SELECT UserID, Role FROM [User] WHERE Email = @Email AND Password = @Pass";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                cmd.Parameters.AddWithValue("@Pass", txtPass.Text.Trim());

                con.Open();
                
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read()) 
                {
                    Session["UserID"] = dr["UserID"].ToString();
                    string userRole = dr["Role"].ToString();
                    Session["Role"] = userRole;

                    con.Close();

                    
                    if (userRole == "1") 
                    {
                        Response.Redirect("AdminDashboard.aspx");
                    }
                    else if (userRole == "2") 
                    {
                        Response.Redirect("PickTheme.aspx");
                    }
                    
                }
                else
                {
                    con.Close();
                    Label1.Text = "Invalid Email or Password!";
                }
            }
        }
    }
}