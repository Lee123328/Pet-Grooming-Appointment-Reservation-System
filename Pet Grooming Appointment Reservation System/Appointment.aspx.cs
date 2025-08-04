using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pet_Grooming_Appointment_Reservation_System
{
    public partial class Appointment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false) //You can also type as - if (!IsPostBack)
            {
                lblTime.Text = "You are accessing this page on " +
                DateTime.Now.ToString();
            }
        }
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtDepartDt.Text = calDepartDt.SelectedDate.ToShortDateString();
        }

    }
}