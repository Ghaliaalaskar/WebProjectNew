using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProjectNew
{
    public partial class myaccount : System.Web.UI.Page
    {
        string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UserID"] != null)
                {
                    ShowUserData();
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }

        private void ShowUserData()
        {
            using (SqlConnection con = new SqlConnection(connStr))
            {
                string query = "SELECT Name, Email, Phone FROM [User] WHERE UserID = @ID";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@ID", Session["UserID"]);

                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    TextBox1.Text = dr["Name"].ToString();
                    TextBox3.Text = dr["Email"].ToString();
                    TextBox4.Text = dr["Phone"].ToString();
                }
                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["UserID"] != null)
            {
                using (SqlConnection con = new SqlConnection(connStr))
                {
                    string query = "UPDATE [User] SET Name = @Name, Email = @Email, Phone = @Phone WHERE UserID = @ID";
                    SqlCommand cmd = new SqlCommand(query, con);

                    cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@Email", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@Phone", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@ID", Session["UserID"]);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                    Label1.Text = "Data updated successfully!";
                    Label1.ForeColor = System.Drawing.Color.Green;
                }
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ShowUserData();

          
            Label1.Text = "";
        }
    }
}