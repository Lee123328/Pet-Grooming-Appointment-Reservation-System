using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pet_Grooming_Appointment_Reservation_System
{
    using System;
    using System.Data.SqlClient;

    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if the user is logged in
                if (Session["Username"] != null)
                {
                    string username = Session["Username"].ToString();

                    // Retrieve user data from the database
                    string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\user\\source\\repos\\Pet Grooming Appointment Reservation System\\Pet Grooming Appointment Reservation System\\App_Data\\PetGroomingData.mdf\";Integrated Security=True";
                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        connection.Open();
                        string query = "SELECT Id, Name, Address, Gender, Phone, Email FROM Customer WHERE Username = @Username";
                        SqlCommand command = new SqlCommand(query, connection);
                        command.Parameters.AddWithValue("@Username", username);
                        SqlDataReader reader = command.ExecuteReader();

                        if (reader.Read())
                        {
                            // Display user data in the page
                            lblId.Text = reader["Id"].ToString();
                            lblName.Text = reader["Name"].ToString();
                            lblAddress.Text = reader["Address"].ToString();
                            lblGender.Text = reader["Gender"].ToString();
                            lblPhone.Text = reader["Phone"].ToString();
                            lblEmail.Text = reader["Email"].ToString();
                        }

                        reader.Close();
                    }
                }
                else
                {
                    // Redirect the user to the login page if not logged in
                    Response.Redirect("~/Login.aspx");
                }
            }
        }
    }

}