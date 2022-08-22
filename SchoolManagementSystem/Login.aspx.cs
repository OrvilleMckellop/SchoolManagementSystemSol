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
    public partial class Login : System.Web.UI.Page
    {
        //connection to db
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void Login_Button_Clik(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM [User] WHERE [Email]= '" + Email.Text.Trim() + "' AND [Password]= '" + Password.Text.Trim() + "'", con);
                //Response.Write("Sucess");

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert(' Login Sucessful!');</script>");
                        Session["userid"] = dr.GetValue(0).ToString();
                        Session["username"] = dr.GetValue(1).ToString();
                        Session["RoleId"] = dr.GetValue( 2).ToString();
                        Session["status"] = dr.GetValue(6).ToString();

                        Session["FirstName"] = dr.GetValue(7).ToString();
                        Session["LastName"] = dr.GetValue(8).ToString();
                        Session["Gender"] = dr.GetValue(11).ToString();
                        Session["RoleName"] = dr.GetValue(0).ToString();
                        Session["Email"] = dr.GetValue(5).ToString();
                        Session["Telephone1"] = dr.GetValue(9).ToString();
                        Session["Telephone2"] = dr.GetValue(10).ToString();
                        Session["UserStatus"] = dr.GetValue(12).ToString();

                    }
                    if (Session["RoleId"].Equals("1"))
                    {
                        Response.Redirect("StudentDashboard.aspx");
                    }
                    else if (Session["RoleId"].Equals("2"))
                    {
                        Response.Redirect("TeacherDashboard.aspx");
                    }
                    else if (Session["RoleId"].Equals("3"))
                    {
                        Response.Redirect("AdministratorDashboard.aspx");
                    }
                    else
                    {
                        Response.Redirect("Index.aspx");
                    }

                }
                else
                {
                    Response.Write("<script>alert('Invalid Login ');</script>");

                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                //throw;
            }
        }
    }
}