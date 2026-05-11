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
    public partial class BookYourAppointment : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("login.aspx");
                return;
            }

            if (!IsPostBack)
            {
                if (Session["SelectedTheme"] != null)
                {
                    lblSelectedTheme.Text = Session["SelectedTheme"].ToString();
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (ddlDate.SelectedValue == "0" || ddlTime.SelectedValue == "0")
            {
                Response.Write("<script>alert('Please select both date and time');</script>");
                return;
            }

            using (SqlConnection con = new SqlConnection(connStr))
            {
                string query = "INSERT INTO Appointments (UserID, ServiceID, AppointmentDate, AppointmentTime) VALUES (@uid, @sid, @date, @time)";

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@uid", Session["UserID"]);

                cmd.Parameters.AddWithValue("@sid", Session["SelectedServiceID"] ?? 1);

                cmd.Parameters.AddWithValue("@date", ddlDate.SelectedValue);
                cmd.Parameters.AddWithValue("@time", ddlTime.SelectedValue);

                try
                {
                    con.Open();
                    int rows = cmd.ExecuteNonQuery();

                    if (rows > 0)
                    {
                        ddlDate.DataBind();
                        ddlTime.DataBind();

                        Response.Redirect("AppointmentConfirmed.aspx");
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('Error: " + ex.Message.Replace("'", "") + "');</script>");
                }
            }
        }

        protected void ddlDate_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
    }
}