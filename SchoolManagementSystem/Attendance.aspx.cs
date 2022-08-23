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
    public partial class Attendance : System.Web.UI.Page
    {
        //connection to db
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowGrid();
            }

        }

        //ShowGrid method for Displaying Data in Gridview  
        private void ShowGrid()
        {
            SqlConnection con = new SqlConnection(strcon);
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT[Attendance].[StudentId], [Attendance].[Date], [Attendance].[Attended], [Attendance].[Comment], [User].[Gender], [User].[LastName], [User].[FirstName] " +
                    "FROM [Attendance] Join [User] ON [User].[UserId] = [Attendance].[StudentId]  WHERE [Attendance].[Date]='" + calendarId.SelectedDate.ToString() + "';");
                

                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        AttendanceGrid.DataSource = dt;
                        AttendanceGrid.DataBind();
                    }
                    con.Close();
                }


            }
            catch (Exception)
            {

                throw;
                
            }

        }

        protected void AttendanceGrid_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            //NewEditIndex property used to determine the index of the row being edited.  
            AttendanceGrid.EditIndex = e.NewEditIndex;
            ShowGrid();
        }
        protected void AttendanceGrid_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
        {
            //Finding the controls from Gridview for the row which is going to update  
            Label formclass = AttendanceGrid.Rows[e.RowIndex].FindControl("lbl_FormClass") as Label;
            DropDownList Attended = AttendanceGrid.Rows[e.RowIndex].FindControl("cb_Attended") as DropDownList;
            TextBox Comment = AttendanceGrid.Rows[e.RowIndex].FindControl("txt_Comment") as TextBox;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            //updating the record  
            SqlCommand cmd = new SqlCommand("UPDATE Attendance SET [Attendance].[Attended] = '" + Attended.SelectedValue + "', [Attendance].[Comment]='" + Comment.Text + "'Where [Attendance].[FormClass]=" + formclass.Text +";", con);
            cmd.ExecuteNonQuery();
            con.Close();
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            AttendanceGrid.EditIndex = -1;
            //Call ShowData method for displaying updated data  
            ShowGrid();
        }
        protected void AttendanceGrid_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
        {
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            AttendanceGrid.EditIndex = -1;
            ShowGrid();
        }

        protected void calendarId_SelectionChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);

            calenderlbl.Text = calendarId.SelectedDate.ToString() ;
            if(con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("INSERT INTO [Attendance] ([Attendance].[StudentId], [Attendance].[Date], [Attendance].[Attended], [Attendance].[FormClass]) " +
                                                        "SELECT [StudentId], '"+ calendarId.SelectedDate.ToString() + "', 'False', [FromClassId] FROM [Student]", con);
            cmd.ExecuteNonQuery();
            con.Close();
            ShowGrid();
        }
    }
}
/*
SqlCommand cmd = new SqlCommand("INSERT INTO [Attendance] ([Attendance].[StudentId], [Attendance].[Date], [Attendance].[Attended], [Attendance].[FormClass]) " +
                                                        "VALUES(,'" + calendarId.SelectedDate.ToString() + "', 'False', 1);", con);*/