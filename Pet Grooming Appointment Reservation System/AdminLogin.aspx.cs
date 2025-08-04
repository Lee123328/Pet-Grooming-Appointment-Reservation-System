using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace Pet_Grooming_Appointment_Reservation_System
{
    public partial class AdminLogin : Page
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
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\User\\source\\repos\\Pet Grooming Appointment Reservation System\\Pet Grooming Appointment Reservation System\\App_Data\\PetGroomingData.mdf\";Integrated Security=True";

            // Your SQL query to select admin by username and password
            string query = "SELECT COUNT(*) FROM Admin WHERE Username = @Username AND Password = @Password";

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
                            // Admin exists, login successful
                            Session["AdminUsername"] = username; // Store admin username in session for future use
                            Response.Redirect("AdminPage.aspx"); // Redirect to admin page
                        }
                        else
                        {
                            // Invalid username or password
                            string script = "alert('Invalid admin username or password. Please try again.');";
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
