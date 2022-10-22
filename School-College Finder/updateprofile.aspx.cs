using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.AccessControl;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School_College_Finder
{
    public partial class updateprofile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String username = Convert.ToString(Session["username"]);
            if (Session["username"] == null)
                Response.Redirect("default.html");
            else
                username_lbl.Text = "Welcome: " + username;
            String onetime = Convert.ToString(Session["onetimeupdate"]);
            if (onetime.Equals("1"))
            {
                Session["onetimeupdate"] = null;
                displayData();
            }
        }

        public void displayData()
        {
            String uid = Convert.ToString(Session["id"]);
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["userConnection"].ConnectionString;
            try
            {
                using (con)
                {
                    string command = ("select * from users where Id = @uid");
                    using (SqlCommand cmd = new SqlCommand(command, con))
                    {
                        cmd.Parameters.AddWithValue("@uid", uid);
                        con.Open();
                        SqlDataReader rdr = cmd.ExecuteReader();
                        if (rdr.Read())
                        {
                            d_username.Text =  rdr.GetString(1);
                            d_email.Text = rdr.GetString(2);
                            d_password.Text = rdr.GetString(3);
                            d_dob.Text = rdr.GetString(4);
                            org_typelbl.Text = rdr.GetString(7);
                            string g = rdr.GetString(5);
                            string act = rdr.GetString(7);
                            g = g.Trim();
                            if (String.Compare(g, "Male") == 0 )
                            {
                                d_gender.Items.FindByValue("Male").Selected = true;
                            }
                            else
                                d_gender.Items.FindByValue("Female").Selected = true;

                            d_number.Text = rdr.GetString(6);
                            //d_actype.Items.FindByValue(rdr.GetString(7)).Selected = true;
                        }
                        else
                        {
                        }
                        con.Close();
                    }


                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["userConnection"].ConnectionString;
            string u_name = d_username.Text;
            string e_user = d_email.Text;
            string u_pass = d_password.Text;
            string d_user = d_dob.Text;
            string g_user = d_gender.Text;
            string n_user = d_number.Text;
            
            
            try
            {
                string query = "update users set username = @username,email = @email ,password = @password,dob = @dob,gender = @gender ,number = @number where Id = @id";
                using (con)
                {
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        Response.Write(u_name);
                        Response.Write(e_user);
                        Response.Write(u_pass);
                        Response.Write(d_user);
                        Response.Write(g_user);
                        Response.Write(n_user);
                        cmd.Parameters.AddWithValue("@username", u_name);
                        cmd.Parameters.AddWithValue("@email", e_user);
                        cmd.Parameters.AddWithValue("@password", u_pass);
                        cmd.Parameters.AddWithValue("@dob", d_user);
                        cmd.Parameters.AddWithValue("@gender", g_user);
                        cmd.Parameters.AddWithValue("@number", n_user);
                        string uid = Convert.ToString(Session["id"]);
                        Response.Write(uid);
                        cmd.Parameters.AddWithValue("@id", uid);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();

                        Session.Abandon();
                        Session.Clear();
                        Response.Cookies.Clear();
                        Response.Redirect("login.aspx");
                    }

                }
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.Message);
            }
        }

    }
}