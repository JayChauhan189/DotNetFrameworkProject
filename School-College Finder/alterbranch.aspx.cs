using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School_College_Finder
{
    public partial class alterbranch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String username = Convert.ToString(Session["username"]);
            if (Session["username"] == null)
                Response.Redirect("default.html");
            else
                username_lbl.Text = "Welcome: " + username;
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            e.Row.Cells[2].Visible = false;
            e.Row.Cells[12].Visible = false;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            Session.Abandon();
            Session.Clear();
            Response.Cookies.Clear();
            Response.Redirect("default.html");
        }

        protected void GridView1_RowDataBound1(object sender, GridViewRowEventArgs e)
        {
            //e.Row.Cells[1].Visible = false;
            //e.Row.Cells[11].Visible = false;
        }
    }
}