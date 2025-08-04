using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pet_Grooming_Appointment_Reservation_System
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnInsert_Click(object sender, EventArgs e)
        {
            // Get values from input controls
            string name = txtName.Text;
            string description = txtDescription.Text;
            decimal price = Convert.ToDecimal(txtPrice.Text);
            string imagePath = txtImagePath.Text;

            // Insert into database
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\PetGroomingData.mdf;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO Products (Name, Description, Price, ImagePath) VALUES (@Name, @Description, @Price, @ImagePath)";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Name", name);
                command.Parameters.AddWithValue("@Description", description);
                command.Parameters.AddWithValue("@Price", price);
                command.Parameters.AddWithValue("@ImagePath", imagePath);

                connection.Open();
                command.ExecuteNonQuery();
            }

            // Refresh GridView to display the new product
            BindProductDetails(); // Call method to rebind the GridView
        }

        private void BindProductDetails()
        {
            SqlDataSource2.DataBind(); // Refresh the data source
            GridView1.DataBind(); // Rebind the GridView
        }

    }
}