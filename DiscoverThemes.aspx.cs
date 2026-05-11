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
    public partial class DiscoverThemes : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadThemes();
            }
        }

        private void LoadThemes()
        {
            using (SqlConnection con = new SqlConnection(connStr))
            {
                string query = "SELECT * FROM Services";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataTable dt = new DataTable();

                try
                {
                    da.Fill(dt);
                    rptThemes.DataSource = dt;
                    rptThemes.DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('Error loading themes');</script>");
                }
            }
        }

        protected void RedirectToLogin(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}