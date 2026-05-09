using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProjectNew
{
    public partial class mybooking : System.Web.UI.Page
    {
        string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UserID"] != null)
                {
                    BindGrid();
                }
                else
                {
                    Response.Redirect("login.aspx");
                }
            }
        }

        private void BindGrid()
        {
            using (SqlConnection con = new SqlConnection(connStr))
            {
                string query = @"SELECT A.AppointmentID, S.ServiceName, A.AppointmentDate, A.AppointmentTime 
                                 FROM Appointments A 
                                 INNER JOIN Services S ON A.ServiceID = S.ServiceID 
                                 WHERE A.UserID = @UID AND A.AppointmentDate >= CAST(GETDATE() AS DATE)
                                 ORDER BY A.AppointmentDate ASC";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@UID", Session["UserID"]);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int appID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

            using (SqlConnection con = new SqlConnection(connStr))
            {
                string query = "DELETE FROM Appointments WHERE AppointmentID = @AID";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@AID", appID);

                con.Open();
                int rows = cmd.ExecuteNonQuery();
                con.Close();

                if (rows > 0)
                {
                  Label1.Text = "Booking deleted successfully.";
                }
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}