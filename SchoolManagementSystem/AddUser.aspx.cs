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
    public partial class AddUser : System.Web.UI.Page
    {
        //connection to db
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        const string text = "abcdefghijklmnopqursuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ123456789!@£$%^&*()#€";
        int x = 0;
        string y = "";
        Random rand = new Random();
        protected void Createbtn_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("", con);
                //Response.Write("Sucess");
                cmd.ExecuteReader();
            }
            catch (Exception ex)
            {
                
                throw;
            }
        }

        protected void generate_Click(object sender, EventArgs e)
        {
            x = rand.Next(7, 15);
            for (int i = 0; i < x; i++)
            {
                y += text[rand.Next(text.Length)];
            }
            Password.Text = y;
        }
    }
}