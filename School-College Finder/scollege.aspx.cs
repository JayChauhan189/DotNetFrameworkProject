using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School_College_Finder
{
    public partial class clg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String u_name = Convert.ToString(Session["username"]);
            if (Session["username"] == null)
                Response.Redirect("default.html");
            else
            {
                username_lbl.Text = "Welcome: " + u_name;
                username.Text = u_name;
            }
                
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Cookies.Clear();
            Response.Redirect("default.html");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session["onetimeupdate"] = "1";
            Response.Redirect("updateprofile.aspx");
        }
    }
}