using System;
using System.Collections.Generic;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProjectNew
{
    public partial class PickTheme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadThemesData();
            }
        }

        private void LoadThemesData()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("theme_name");
            dt.Columns.Add("theme_image");
            dt.Columns.Add("details_page_url");

            dt.Rows.Add("Graduation", "grad.jpg", "GraduationDetails.aspx");
            dt.Rows.Add("Baby Shower", "baby.jpg", "BabyShowerDetails.aspx");
            dt.Rows.Add("Bridal Shower", "bride.jpg", "BridalShowerDetails.aspx");

            rptUserThemes.DataSource = dt;
            rptUserThemes.DataBind();
        }

        protected void GoToBooking(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string selectedTheme = btn.CommandArgument;

            Response.Redirect("BookYourAppointment.aspx?theme=" + selectedTheme);
        }
    }
}