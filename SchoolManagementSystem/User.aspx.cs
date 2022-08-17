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
    public partial class User : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("SELECT [User].[UserId], [User].[UserName], [User].[FailedAccessCount], [User].[LookoutEnabled], [User].[Email], [User].[UserStatus], RoleId FROM [User];");

                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        UserGrid.DataSource = dt;
                        UserGrid.DataBind();
                    }
                    con.Close();
                }


            }
            catch (Exception)
            {

                throw;
            }

        }

        protected void UserGrid_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            //NewEditIndex property used to determine the index of the row being edited.  
            UserGrid.EditIndex = e.NewEditIndex;
            ShowGrid();
        }
        protected void UserGrid_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
        {
            //Finding the controls from Gridview for the row which is going to update  
            TextBox id = UserGrid.Rows[e.RowIndex].FindControl("UserId") as TextBox;
            TextBox name = UserGrid.Rows[e.RowIndex].FindControl("txt_Name") as TextBox;
            DropDownList role = UserGrid.Rows[e.RowIndex].FindControl("txt_RoleName") as DropDownList;
            TextBox faildAccessCount = UserGrid.Rows[e.RowIndex].FindControl("txt_FailedAccessCount") as TextBox;
            DropDownList lockoutEnabled = UserGrid.Rows[e.RowIndex].FindControl("txt_LookoutEnabled") as DropDownList;
            TextBox email = UserGrid.Rows[e.RowIndex].FindControl("txt_Email") as TextBox;
            DropDownList userStatus = UserGrid.Rows[e.RowIndex].FindControl("txt_UserStatus") as DropDownList;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            //updating the record  
            SqlCommand cmd = new SqlCommand(" Update [User] set RoleId=" + role.SelectedValue + ",  FailedAccessCount=" + faildAccessCount.Text + ", LookoutEnabled='" + lockoutEnabled.SelectedValue + "', Email='" + email.Text + "', UserStatus='" + userStatus.SelectedValue + "' where  UserId=" + id.Text + ";", con);
            cmd.ExecuteNonQuery();
            con.Close();
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            UserGrid.EditIndex = -1;
            //Call ShowData method for displaying updated data  
            ShowGrid();
        }
        protected void UserGrid_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
        {
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            UserGrid.EditIndex = -1;
            ShowGrid();
        }
    }
}