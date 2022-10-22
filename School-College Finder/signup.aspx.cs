using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School_College_Finder
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString =  ConfigurationManager.ConnectionStrings["userConnection"].ConnectionString;
            String u_name = username.Text;
            String e_user = email.Text;
            String u_pass = password.Text;
            String d_user = dob.Text;
            String g_user = gender.Text;
            String n_user = number.Text;
            String t_user = acc_type.Text;
            string query = "insert into users(username,email,password,dob,gender,number,acc_type) values(@username,@email,@password,@dob,@gender,@number,@acc_type)";
            try
            {
                using(con)
                {
                    using(SqlCommand cmd = new SqlCommand(query,con))
                    {
                        cmd.Parameters.AddWithValue("@username",u_name);
                        cmd.Parameters.AddWithValue("@email", e_user);
                        cmd.Parameters.AddWithValue("@password", u_pass);
                        cmd.Parameters.AddWithValue("@dob", d_user);
                        cmd.Parameters.AddWithValue("@gender", g_user);
                        cmd.Parameters.AddWithValue("@number", n_user);
                        cmd.Parameters.AddWithValue("@acc_type", t_user);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Redirect("login.aspx");
                    }

                }
            }
            catch(Exception ex)
            {
                Response.Write("Error:" + ex.Message);
            }


        }
    }
}