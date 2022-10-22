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
    public partial class insertbranch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String username = Convert.ToString(Session["username"]);
            if (Session["username"] == null)
                Response.Redirect("default.html");
            else
                username_lbl.Text ="Welcome: "+username;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["userConnection"].ConnectionString;
            String b_name = bname.Text;
            String w_ins = website.Text;
            String loc_city = citytxt.Text;
            String loc_ins = location.Text;
            String t_ins = type.Text;
            String n_ins = number.Text;
            String d_ins = description.Text;
            String e_ins = email.Text;
            String a_ins = awards.Text;
            String f_ins = fees.Text;
            string query = "insert into clg_branch(branch_name,website,location,city,type,number,description,email,awards,fees,uid) " +
                "values(@branch,@website,@location,@city,@type,@number,@description,@email,@awards,@fees,@uid)";
            try
            {
                using (con)
                {
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@branch", b_name);
                        cmd.Parameters.AddWithValue("@website", w_ins);
                        cmd.Parameters.AddWithValue("@location", loc_ins);
                        cmd.Parameters.AddWithValue("@city", loc_city);
                        cmd.Parameters.AddWithValue("@type", t_ins);
                        cmd.Parameters.AddWithValue("@number", n_ins);
                        cmd.Parameters.AddWithValue("@description", d_ins);
                        cmd.Parameters.AddWithValue("@email", e_ins);
                        cmd.Parameters.AddWithValue("@awards", a_ins);
                        cmd.Parameters.AddWithValue("@fees", f_ins);
                        int uid_user = Convert.ToInt32(Session["id"]);
                        cmd.Parameters.AddWithValue("@uid", uid_user);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Redirect("scollege.aspx");
                    }

                }
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.Message);
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Cookies.Clear();
            Response.Redirect("default.html");
        }
    }
}