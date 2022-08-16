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
    public partial class EditUser : System.Web.UI.Page
    {
        //connection to db
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SchoolManagementSystem.Users users = new SchoolManagementSystem.Users();
            string id = users.userid;

            SqlConnection con = new SqlConnection(strcon);

            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT [User].[UserId], [User].[UserName], [User].[FailedAccessCount], [User].[LookoutEnabled], [User].[Email], [User].[UserStatus], [Role].RoleName FROM [User] JOIN [Role] ON [Role].[RoleId] = [User].[RoleId] Where [User].[UserId] ="+id+"");

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        usersid.Equals(id);
                    }
                }
            }
            catch (Exception)
            {

                throw;
            }

        }


    }
}