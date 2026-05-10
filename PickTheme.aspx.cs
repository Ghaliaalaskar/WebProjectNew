using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProjectNew
{
    public partial class PickTheme : System.Web.UI.Page
    {
        string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("login.aspx");
                return;
            }

            if (!IsPostBack)
            {
                LoadThemesFromDb();
            }
        }

        private void LoadThemesFromDb()
        {
            using (SqlConnection con = new SqlConnection(connStr))
            {
                string query = "SELECT ServiceName, ServicePhoto, details_page_url FROM Services";

                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();

                try
                {
                    con.Open();
                    sda.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {
                        rptUserThemes.DataSource = dt;
                        rptUserThemes.DataBind();
                    }
                    else
                    {
                        Response.Write("<script>alert('No services found in database. Please add data to Services table.');</script>");
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('Database Error: " + ex.Message + "');</script>");
                }
            }
        }

        protected void GoToBooking(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string selectedTheme = btn.CommandArgument;

            Session["SelectedTheme"] = selectedTheme;

            Response.Redirect("BookYourAppointment.aspx?theme=" + selectedTheme);
        }
    }
}