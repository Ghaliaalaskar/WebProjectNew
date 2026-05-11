using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebProjectNew
{
    public partial class AddSlot : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    using (SqlConnection con = new SqlConnection(cs))
                    {
                        string query = "INSERT INTO Availability (ServiceID, AvailableDate, AvailableTime) " +
                                       "VALUES (@ServiceID, @AvailableDate, @AvailableTime)";

                        SqlCommand cmd = new SqlCommand(query, con);

                        cmd.Parameters.AddWithValue("@ServiceID", ddlTheme.SelectedValue);

                        cmd.Parameters.AddWithValue("@AvailableDate", txtDate.Text.Trim());

                        cmd.Parameters.AddWithValue("@AvailableTime", TextBox1.Text.Trim());

                        con.Open();
                        int rows = cmd.ExecuteNonQuery();
                        con.Close();

                        if (rows > 0)
                        {
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Slot added to Availability successfully!');", true);

                            ClearFields();
                        }
                    }
                }
                catch (Exception ex)
                {
                    string cleanError = ex.Message.Replace("'", "\\'").Replace("\r", "").Replace("\n", "");
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "error", "alert('Database Error: " + cleanError + "');", true);
                }
            }
        }

        private void ClearFields()
        {
            txtDate.Text = "";
            TextBox1.Text = "";
            if (ddlTheme.Items.Count > 0) ddlTheme.SelectedIndex = 0;
        }
    }
}