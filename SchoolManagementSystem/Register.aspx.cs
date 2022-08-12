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
    public partial class Register : System.Web.UI.Page
    {

        //connection to db
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO [User] (UserId, Email, Password) Values( '" + ID_Number.Text.ToString()+"', '"+Email.Text.ToString()+"', '"+Password.Text.ToString()+ "');", con);
                //Response.Write("Sucess");
                cmd.ExecuteReader();
            }
            catch (Exception ex)
            {

                throw;
            }
        }

        protected void Register_Button_Click(object sender, EventArgs e)
        {
            
        }
    }
}