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
    public partial class EditAvailability : System.Web.UI.Page
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
            if (Page.IsValid)
            {
                try
                {
                    using (SqlConnection con = new SqlConnection(cs))
                    {
                        // تعديل الاستعلام ليستخدم أسماء الأعمدة الصحيحة في جدول Availability
                        // الأعمدة الصحيحة هي: ServiceID, AvailableDate, AvailableTime
                        // ملاحظة: قمت بإزالة UserID لأنه غير موجود في هذا الجدول
                        string query = "UPDATE Availability SET ServiceID=@SID, AvailableDate=@Date, AvailableTime=@Time WHERE AvailableDate=@Date AND AvailableTime=@Time";

                        SqlCommand cmd = new SqlCommand(query, con);

                        // ربط الباراميترز بالقيم من الواجهة
                        cmd.Parameters.AddWithValue("@SID", ddlTheme.SelectedValue);
                        cmd.Parameters.AddWithValue("@Date", txtDate.Text.Trim());
                        cmd.Parameters.AddWithValue("@Time", TextBox1.Text.Trim());

                        con.Open();
                        int rowsAffected = cmd.ExecuteNonQuery();
                        con.Close();

                        if (rowsAffected > 0)
                        {
                            lblMessage.Text = "Updated successfully!";
                            lblMessage.ForeColor = System.Drawing.Color.LimeGreen;
                        }
                        else
                        {
                            // إذا لم يتم التحديث، قد يكون بسبب أن التاريخ والوقت لم يتطابقا مع أي سجل
                            lblMessage.Text = "Update failed: No matching record found.";
                            lblMessage.ForeColor = System.Drawing.Color.Yellow;
                        }
                    }
                }
                catch (Exception ex)
                {
                    // تنظيف وعرض رسالة الخطأ
                    lblMessage.Text = "Database Error: " + ex.Message;
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
        }
    }
}