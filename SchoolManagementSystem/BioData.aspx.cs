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
    public partial class BioData : System.Web.UI.Page
    {
        //connection to db
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            UserId.Text = Session["UserId"].ToString();
            UserName.Text = Session["UserName"].ToString();
            FName.Text = Session["FirstName"].ToString();
            lName.Text = Session["LastName"].ToString();
            gender.Text = Session["Gender"].ToString();
            role.Text = Session["RoleName"].ToString();
            email.Text = Session["Email"].ToString();
            /*telphone1.Text = Session["Telephone1"].ToString();
            telphone2.Text = Session["Telephone2"].ToString();*/
        }

        //ShowGrid method for Displaying Data in Gridview  
        /*private void ShowGrid()
        {
            SqlConnection con = new SqlConnection(strcon);
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                        
                SqlCommand cmd = new SqlCommand("SELECT * FROM [User] Where Userid="+ Session["userid"] +";", con);

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {

                        


                    }
                    con.Close();

                }
                }
            catch (Exception)
            {

                throw;
            }

        }*/
    }
}