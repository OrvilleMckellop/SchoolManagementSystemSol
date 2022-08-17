/*using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchoolManagementSystem
{
    public partial class Assignments : System.Web.UI.Page
    {
        private IFormatProvider culture;

        public object Duedate { get; private set; }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            StringBuilder sb = new StringBuilder();

            if (FileUpload1.HasFile)
            {
                try
                {
                    sb.AppendFormat(" Uploading file: {0}", FileUpload1.FileName);

                    //saving the file
                    FileUpload1.SaveAs("<c:\\SaveDirectory>" + FileUpload1.FileName);

                    //Showing the file information
                    sb.AppendFormat("<br/> Save As: {0}", FileUpload1.PostedFile.FileName);
                    sb.AppendFormat("<br/> File type: {0}", FileUpload1.PostedFile.ContentType);
                    sb.AppendFormat("<br/> File length: {0}", FileUpload1.PostedFile.ContentLength);
                    sb.AppendFormat("<br/> File name: {0}", FileUpload1.PostedFile.FileName);

                }
                catch (Exception ex)
                {
                    sb.Append("<br/> Error <br/>");
                    sb.AppendFormat("Unable to save file <br/> {0}", ex.Message);
                }
            }
            else
            {
                lblmessage.Text = sb.ToString();
            }

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            string AssignmentId = txtAssignmentId.Text;
            string Title = txtTitle.Text;
            string Description = txtDescription.Text;
            string File = txtFile.Text;
            string DuedDate = txtDueDate.Text;
            //DateTime tempDate = Convert.ToDateTime("1/1/2010 12:10:15 PM", culture);
            int TeacherId = Convert.ToInt32(txtTeacherId.Text);
            int AssignedClass = Convert.ToInt32(txtAssignedClass.Text);


            string cs = "data source = .; database = SchoolManagementSystemDB; Integrated security = true";


            SqlConnection con = new SqlConnection(cs);

            
            string query = string.Format("insert into assignments values('{0}','{1}',{2},{3})"
                , AssignmentId, Title, Description, File, DueDate, TeacherId, AssignedClass);


            SqlCommand cmd = new SqlCommand(query, con);


            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();


            ClientScript.RegisterClientScriptBlock(this.GetType(), "K", "swal('record inserted!...','success')", true);


            txtAssignmentId.Text = "";
            txtTitle.Text = "";
            txtDescription.Text = "";
            txtFile.Text = "";
            txtDueDate.Text = "";
            txtTeacherId.Text = "";
            txtAssignedClass.Text = "";
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string dt = Request.Form[txtDate.UniqueID];
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Selected Date: " + dt + "');", true);
        }


    }
}

*/