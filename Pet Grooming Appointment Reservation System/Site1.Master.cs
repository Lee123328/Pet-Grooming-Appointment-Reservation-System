using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webassignment
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                // User is logged in
                loginMenu.Visible = false;
                nameMenu.Visible = true;
                UsernameLabel.Text = Session["Username"].ToString();
            }
            else
            {
                // User is not logged in
                loginMenu.Visible = true;
                nameMenu.Visible = false;
            }

            if (Session["Username"] != null)
            {
                // If logged in, show the logout button
                logoutLi.Style["display"] = "block";
            }
            else
            {
                // If not logged in, hide the logout button
                logoutLi.Style["display"] = "none";
            }

        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
       

        }

          protected void LogoutButton_Click(object sender, EventArgs e)
        {
            // Clear the user's session
            Session.Clear();
            // Redirect the user to the login page
            Response.Redirect("Login.aspx");
        }
    }
}