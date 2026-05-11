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
    public partial class EditBooking : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(cs))
                {
                    string query = "UPDATE Appointments SET AppointmentDate=@AppointmentDate, AppointmentTime=@AppointmentTime WHERE ClientName=@ClientName";

                    SqlCommand cmd = new SqlCommand(query, con);

                    cmd.Parameters.AddWithValue("@AppointmentDate", txtDate.Text.Trim());
                    cmd.Parameters.AddWithValue("@AppointmentTime", ddlTime.SelectedValue);
                    cmd.Parameters.AddWithValue("@ClientName", txtClientName.Text.Trim());

                    con.Open();
                    int rowsAffected = cmd.ExecuteNonQuery(); 
                    con.Close();

                    if (rowsAffected > 0)
                    {
                        Response.Redirect("ManageBookings.aspx?msg=success");
                    }
                    else
                    {
                        lblMessage.Text = "No booking found with this client name.";
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error: " + ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}