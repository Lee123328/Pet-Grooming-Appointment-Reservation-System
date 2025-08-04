using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pet_Grooming_Appointment_Reservation_System
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ResetPasswordButton_Click(object sender, EventArgs e)
        {
            
                string username = UsernameTextBox.Text;
                string newPassword = NewPasswordTextBox.Text;
                string confirmPassword = ConfirmPasswordTextBox.Text;

                if (newPassword != confirmPassword)
                {
                    MessageLabel.Text = "Passwords do not match.";
                    return;
                }

                // Your database connection string
                string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\user\\source\\repos\\Pet Grooming Appointment Reservation System\\Pet Grooming Appointment Reservation System\\App_Data\\PetGroomingData.mdf\";Integrated Security=True";

                // Your SQL query to update user password
                string query = "UPDATE Customer SET Password = @Password WHERE Username = @Username";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@Username", username);
                        command.Parameters.AddWithValue("@Password", newPassword);

                        connection.Open();
                        int rowsAffected = command.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            // Password reset successful
                            MessageLabel.Text = "Password reset successful.";
                            Response.Redirect("Login.aspx");
                        }
                        else
                        {
                            // Username not found
                            MessageLabel.Text = "Username not found.";
                        }
                    }
                }
            }
        }

    }
