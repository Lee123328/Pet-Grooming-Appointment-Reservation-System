using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pet_Grooming_Appointment_Reservation_System
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if the admin is logged in
                if (Session["AdminUsername"] == null)
                {
                    // Redirect to login page if not logged in
                    Response.Redirect("AdminLogin.aspx");
                }
                else
                {


                }
            }
        }

        // Handle logout button click
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            // Clear session variables
            Session.Clear();
            Session.Abandon();

            // Redirect to home page
            Response.Redirect("home.aspx");
        }
    }


}