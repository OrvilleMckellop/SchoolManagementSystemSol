using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchoolManagementSystem
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Home_linkBtn.Visible = true;
            Student_linkBtn.Visible = false;
            Teacher_linkBtn.Visible = false;
            Admin_linkBtn.Visible = false;
            Login_linkBtn.Visible = true;
            Button1.Visible = false;
            try
            {
                if (Session["RoleId"].Equals("1"))
                {
                    Home_linkBtn.Visible = true;
                    Student_linkBtn.Visible = true;
                    Teacher_linkBtn.Visible = false;
                    Admin_linkBtn.Visible = false;
                    Login_linkBtn.Visible = false;
                    Button1.Visible = true;
                    //usernamelbl.Text = "Hello, " + Session["username"].ToString() + "!";



                }
                else if (Session["RoleId"].Equals("2"))
                {
                    Home_linkBtn.Visible = true;
                    Student_linkBtn.Visible = false;
                    Teacher_linkBtn.Visible = true;
                    Admin_linkBtn.Visible = false;
                    Login_linkBtn.Visible = false;
                    Button1.Visible = true;
                   // usernamelbl.Text = "Hello, " + Session["username"].ToString() + "!";


                }
                else if (Session["RoleId"].Equals("3"))
                {
                    Home_linkBtn.Visible = true;
                    Student_linkBtn.Visible = false;
                    Teacher_linkBtn.Visible = false;
                    Admin_linkBtn.Visible = true;
                    Login_linkBtn.Visible = false;
                    Button1.Visible = true;
                    //usernamelbl.Text = "Hello, " + Session["username"].ToString() + "!";



                }
                else if (Session["RoleId"].Equals("0"))
                {
                    Home_linkBtn.Visible = true;
                    Student_linkBtn.Visible = false;
                    Teacher_linkBtn.Visible = false;
                    Admin_linkBtn.Visible = false;
                    Login_linkBtn.Visible = false;
                    Button1.Visible = true;
                    //usernamelbl.Text = "Hello, " + Session["username"].ToString() + "!";


                }
                else
                {
                    Home_linkBtn.Visible = true;
                    Student_linkBtn.Visible = false;
                    Teacher_linkBtn.Visible = false;
                    Admin_linkBtn.Visible = false;
                    Login_linkBtn.Visible = true;
                    Button1.Visible = false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
                //throw;
            }

        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session["RoleId"] = "0";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["RoleId"] = " ";
            Response.Redirect("Login.aspx");
        }
    }
}