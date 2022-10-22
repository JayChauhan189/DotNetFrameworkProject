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
    public partial class login : System.Web.UI.Page
    {
        protected void login_btn_Click(object sender, EventArgs e)
        {
            String e_user = email.Text;
            String p_user = password.Text;

            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["userConnection"].ConnectionString;
            try
            {
                using(con)
                {
                    string command = ("select * from users where email = @email and password = @password" );
                    using (SqlCommand cmd = new SqlCommand(command,con))
                    {
                        cmd.Parameters.AddWithValue("@email",e_user);
                        cmd.Parameters.AddWithValue("@password", p_user);
                        con.Open();
                        SqlDataReader rdr = cmd.ExecuteReader();
                        if(rdr.Read())
                        {
                            if(rdr.GetString(2).Equals(e_user) && rdr.GetString(3).Equals(p_user) )
                            {
                                Session["username"] = rdr.GetString(1);
                                Session["id"] = Convert.ToString(rdr.GetInt32(0));
                                //String uid = Convert.ToString(Session["id"]);
                                //Response.Write(uid);
                                Response.Write(rdr.GetString(7));
                                string checkuser = rdr.GetString(7).Trim();
                                if (checkuser.Equals("Normal User"))
                                {
                                    Response.Redirect("normaluser.aspx");
                                }
                                else
                                {
                                    Response.Redirect("scollege.aspx");
                                }
                            }
                        }
                        else
                        {
                            invalid_credentials.Visible = true;
                        }
                        con.Close();
                    }
                    

                }
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }


        }
    }
}