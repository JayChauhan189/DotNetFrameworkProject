using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School_College_Finder
{
    public partial class normaluser : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            String u_name = Convert.ToString(Session["username"]);
                
            if (Session["username"] == null)
                Response.Redirect("default.html");
            else
            {
                username_lbl.Text = "Welcome: " + u_name;
            }
            if(!IsPostBack)
            {
                displayGridData();
            }
            
        }

        private void displayGridData()
        {
            string uid = Convert.ToString(Session["id"]);
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["userConnection"].ConnectionString;
            try
            {
                using (con)
                {
                    string command = ("select branch_name,website,location,city,type,number,description,email,awards,fees from clg_branch order by branch_name");
                    using (SqlCommand cmd = new SqlCommand(command, con))
                    {
                        con.Open();
                        SqlDataAdapter ada = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        ada.Fill(dt);
                        if (dt.Rows.Count == 0)
                        {
                            GridView1.Visible = false;
                            errorlbl.Visible = true;
                        }
                        else
                        {

                            GridView1.Visible = true;
                            errorlbl.Visible = false;
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                            con.Close();
                        }
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
            Session["onetimeupdate"] = "1";
            Response.Redirect("updateprofile.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
                string uid = Convert.ToString(Session["id"]);
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["userConnection"].ConnectionString;
                try
                {
                    using (con)
                    {
                        string command = ("select branch_name,website,location,city,type,number,description,email,awards,fees from clg_branch where city = @city");
                        using (SqlCommand cmd = new SqlCommand(command, con))
                        {
                        if (DropDownList1.SelectedIndex != 0)
                        {

                            cmd.Parameters.AddWithValue("@city", DropDownList1.SelectedItem.Text);
                            con.Open();
                            SqlDataAdapter ada = new SqlDataAdapter(cmd);
                            DataTable dt = new DataTable();
                            ada.Fill(dt);
                            if (dt.Rows.Count == 0)
                            {
                                GridView1.Visible = false;
                                errorlbl.Visible = true;
                            }
                            else
                            {
                                GridView1.Visible = true;
                                errorlbl.Visible = false;

                                GridView1.DataSource = dt;
                                GridView1.DataBind();
                                con.Close();
                            }
                        }
                        else {
                            displayGridData();
                        }
                        }


                    }
                }
                catch (Exception ex)
                {
                    Response.Write("Error:" + ex.Message);
                }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            string uid = Convert.ToString(Session["id"]);
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["userConnection"].ConnectionString;
            try
            {
                if (DropDownList1.SelectedIndex == 0 && TextBox3.Text.Equals(""))
                {
                    displayGridData();
                }
                else
                {
                    using (con)
                    {
                        string command = ("select branch_name,website,location,city,type,number,description,email,awards,fees from clg_branch where branch_name = @bname");
                        int flag = 0;
                        if (DropDownList1.SelectedIndex != 0)
                        {
                            command = ("select branch_name,website,location,city,type,number,description,email,awards,fees from clg_branch where branch_name = @bname and city = @city");
                            flag = 1;
                        }
                        using (SqlCommand cmd = new SqlCommand(command, con))
                        {
                            cmd.Parameters.AddWithValue("@bname", TextBox3.Text);
                            if (flag != 0)
                            {
                                cmd.Parameters.AddWithValue("@city", DropDownList1.SelectedItem.Text);
                            }
                            con.Open();
                            SqlDataAdapter ada = new SqlDataAdapter(cmd);
                            
                            DataTable dt = new DataTable();
                            ada.Fill(dt);
                            if (dt.Rows.Count == 0)
                            {
                                GridView1.Visible = false;
                                errorlbl.Visible = true;
                            }
                            else
                            {
                                GridView1.Visible = true;
                                errorlbl.Visible = false;
                                GridView1.DataSource = dt;
                                GridView1.DataBind();
                                con.Close();
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.Message);
            }

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {

            Session.Abandon();
            Session.Clear();
            Response.Cookies.Clear();
            Response.Redirect("default.html");
        }
    }
}