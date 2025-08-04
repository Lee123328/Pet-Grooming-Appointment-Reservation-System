using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pet_Grooming_Appointment_Reservation_System
{
    public partial class StaffLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Your initialization logic here
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;

            // Your database connection string
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\user\\source\\repos\\Pet Grooming Appointment Reservation System\\Pet Grooming Appointment Reservation System\\App_Data\\PetGroomingData.mdf\";Integrated Security=True";

            // Your SQL query to select staff by username and password
            string query = "SELECT COUNT(*) FROM Staff WHERE Name = @Name AND Password = @Password";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Name", username);
                    command.Parameters.AddWithValue("@Password", password);

                    try
                    {
                        connection.Open();
                        int count = (int)command.ExecuteScalar();

                        if (count > 0)
                        {
                            // Staff exists, login successful
                            Session["StaffUsername"] = username; // Store staff username in session for future use
                            Response.Redirect("Staffpage.aspx"); // Redirect to staff page
                        }
                        else
                        {
                            // Invalid username or password
                            string script = "alert('Invalid staff username or password. Please try again.');";
                            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                        }
                    }
                    catch (Exception ex)
                    {
                        // Handle any exceptions, such as database connection errors
                        string errorMessage = "An error occurred while processing your request. Please try again later.";
                        // You can log the exception details for debugging purposes
                        Console.WriteLine(ex.Message);
                        // Display an error message to the user
                        string script = "alert('" + errorMessage + "');";
                        ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                    }
                }

            }
        }
    }
}