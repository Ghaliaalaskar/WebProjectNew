using System;
using System.Collections.Generic;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProjectNew
{
    public partial class DiscoverThemes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadThemesMockData();
            }
        }

        private void LoadThemesMockData()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("theme_name");
            dt.Columns.Add("theme_image");
            dt.Columns.Add("details_page_url");

            dt.Rows.Add("Graduation", "grad.jpg", "GradDetailsGuest.aspx");
            dt.Rows.Add("Baby Shower", "baby.jpg", "BabyDetailsGuest.aspx");
            dt.Rows.Add("Bridal Shower", "bride.jpg", "BridalDetailsGuest.aspx");

            rptThemes.DataSource = dt;
            rptThemes.DataBind();
        }

        protected void RedirectToLogin(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}