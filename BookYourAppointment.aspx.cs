using System;
using System.Web.UI.WebControls;

namespace WebProjectNew
{
    public partial class BookYourAppointment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["theme"] != null)
                {
                    lblSelectedTheme.Text = Request.QueryString["theme"];
                }
            }
        }

        protected void ddlDate_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlTime.Items.Clear();
            ddlTime.Items.Add(new ListItem(" Select Time ", "0"));

            if (ddlDate.SelectedValue != "0")
            {
                ddlTime.Items.Add(new ListItem("04:00 PM", "16:00"));
                ddlTime.Items.Add(new ListItem("06:00 PM", "18:00"));
                ddlTime.Items.Add(new ListItem("08:00 PM", "20:00"));
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (ddlDate.SelectedValue == "0" || ddlTime.SelectedValue == "0")
            {
                return;
            }

            string theme = lblSelectedTheme.Text;
            string date = ddlDate.SelectedValue;
            string time = ddlTime.SelectedValue;

            Response.Redirect("AppointmentConfirmed.aspx?status=success");
        }
    }
}