using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchoolManagementSystem
{
    public partial class GradeBook : System.Web.UI.Page
    {
        //connection to db
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.ShowGrid();
            }

        }

        private void ShowGrid()
        {
            SqlConnection con = new SqlConnection(strcon);
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT [Student].[StudentId], [GradeBook].[Term], [GradeBook].[Year], [GradeBook].[Grade1], [GradeBook].[Grade2], [GradeBook].[Grade3], [GradeBook].[FinalGrade], [GradeLevel].[GradeLevelName] FROM [GradeBook] JOIN [Student] ON [Student].[StudentId] = [GradeBook].[StudentId] JOIN [GradeLevel] ON [GradeLevel].[GradeLevelId] = [GradeBook].[GradeLevelId] WHERE Userid="+Session["UserId"].ToString()+";");

                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        GradebookGrid.DataSource = dt;
                        GradebookGrid.DataBind();
                    }
                    con.Close();
                }

            }
            catch (Exception)
            {

                throw;
            }

        }

        protected void GradebookGrid_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            //NewEditIndex property used to determine the index of the row being edited.  
            GradebookGrid.EditIndex = e.NewEditIndex;
            ShowGrid();
        }
        protected void GradebookGrid_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
        {
            //Finding the controls from Gridview for the row which is going to update  
            TextBox id = GradebookGrid.Rows[e.RowIndex].FindControl("UserId") as TextBox;
            TextBox userName = GradebookGrid.Rows[e.RowIndex].FindControl("lbl_UserName") as TextBox;
            TextBox gradeLevelName = GradebookGrid.Rows[e.RowIndex].FindControl("lbl_GradeLevelName") as TextBox;
            TextBox term = GradebookGrid.Rows[e.RowIndex].FindControl("lbl_Term") as TextBox;
            TextBox Year = GradebookGrid.Rows[e.RowIndex].FindControl("lbl_Year") as TextBox;
            TextBox grade1 = GradebookGrid.Rows[e.RowIndex].FindControl("txt_Grade1") as TextBox;
            TextBox grade2 = GradebookGrid.Rows[e.RowIndex].FindControl("txt_Grade2") as TextBox;
            TextBox grade3 = GradebookGrid.Rows[e.RowIndex].FindControl("txt_Grade3") as TextBox;
            TextBox finalGrade = GradebookGrid.Rows[e.RowIndex].FindControl("txt_FinalGrade") as TextBox;

            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            //updating the record  
            SqlCommand cmd = new SqlCommand("Update [GradeBook] set Grade1=" + grade1.Text + ", Grade2=" + grade2.Text + ", Grade3=" + grade3.Text + ";", con);
            cmd.ExecuteNonQuery();
            con.Close();
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            GradebookGrid.EditIndex = -1;
            //Call ShowData method for displaying updated data  
            ShowGrid();
        }
        protected void GradebookGrid_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
        {
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            GradebookGrid.EditIndex = -1;
            ShowGrid();
        }
        


    }
}
