using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace Webassignment
{
    public partial class Login : Page
    {

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string username = UsernameTextBox.Text;
            string password = PasswordTextBox.Text;

           

            // Your database connection string
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\user\\source\\repos\\Pet Grooming Appointment Reservation System\\Pet Grooming Appointment Reservation System\\App_Data\\PetGroomingData.mdf\";Integrated Security=True";

            // Your SQL query to select user by username and password
            string query = "SELECT COUNT(*) FROM Customer WHERE Username = @Username AND Password = @Password";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Username", username);
                    command.Parameters.AddWithValue("@Password", password);

                    try
                    {
                        connection.Open();
                        int count = (int)command.ExecuteScalar();

                        if (count > 0)
                        {
                            // User exists, login successful
                            Session["Username"] = username; // Store username in session for future use
                            Response.Redirect("Home.aspx"); // Redirect to welcome page or any other page
                        }
                        else
                        {
                            // Invalid username or password
                            string script = "alert('Invalid username or password. Please try again.');";
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

        protected void PasswordTextBox_TextChanged(object sender, EventArgs e)
        {

        }

        // Additional event handlers for other controls, such as text changed events, can be added here
    }
}
