using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webassignment
{
    public partial class Register : System.Web.UI.Page
    {

        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            string name = NameTextBox.Text;
            string address = AddressTextBox.Text;
            string gender = GenderRadioButtonList.SelectedValue;
            string phone = PhoneTextBox.Text;
            string email = EmailTextBox.Text;
            string username = UsernameTextBox.Text;
            string password = PasswordTextBox.Text;
            string confirmPassword = ConfirmPasswordTextBox.Text;

            // Your database connection string
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\user\\source\\repos\\Pet Grooming Appointment Reservation System\\Pet Grooming Appointment Reservation System\\App_Data\\PetGroomingData.mdf\";Integrated Security=True";

            // Your SQL query to insert data into the Users table
            string query = "INSERT INTO Customer (Name, Address, Gender, Phone, Email, Username, Password) " +
                           "VALUES (@Name, @Address, @Gender, @Phone, @Email, @Username, @Password)";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Name", name);
                    command.Parameters.AddWithValue("@Address", address);
                    command.Parameters.AddWithValue("@Gender", gender);
                    command.Parameters.AddWithValue("@Phone", phone);
                    command.Parameters.AddWithValue("@Email", email);
                    command.Parameters.AddWithValue("@Username", username);
                    command.Parameters.AddWithValue("@Password", password);

                    connection.Open();
                    int rowsAffected = command.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        // Registration successful
                        string script = "alert('Register Successfull!');";
                        ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                    
                    Response.Write("Registration successful.");
                        Response.Redirect("Login.aspx");
                    }
                    else
                    {
                        // Registration failed
                        string script = "alert('Register Fail , Please try again!!');";
                        ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);

                    }
                }
            }



        }
    }
}
