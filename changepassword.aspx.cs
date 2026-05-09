using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebProjectNew
{
    public partial class changepassword : System.Web.UI.Page
    {
        string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UserID"] == null)
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
                using (SqlConnection con = new SqlConnection(connStr))
                {
                    string query = "UPDATE [User] SET Password = @NewPass WHERE UserID = @ID AND Password = @OldPass";

                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@NewPass", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@OldPass", TextBox1.Text); 
                    cmd.Parameters.AddWithValue("@ID", Session["UserID"]);

                    con.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();
                    con.Close();

                    if (rowsAffected > 0)
                    {
                        Label1.Text = "password changed successfuly";
                        Label1.ForeColor = System.Drawing.Color.Green;

                        ClearFields();
                    }
                    else
                    {
                        Label1.Text = "Current password is incorrect!";
                        Label1.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ClearFields();
            Response.Redirect("myaccount.aspx");
        }

        
        private void ClearFields()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
    }
}