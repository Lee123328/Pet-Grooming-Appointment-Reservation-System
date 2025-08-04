using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace ProductDDL
{
    public class DAL
    {
        private string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\user\source\repos\Pet Grooming Appointment Reservation System\Pet Grooming Appointment Reservation System\App_Data\PetGroomingData.mdf;Integrated Security=True";

        public List<Product> GetProductsFromDatabase()
        {
            List<Product> products = new List<Product>();

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT Name, Description, Price, ImagePath FROM Products";
                SqlCommand command = new SqlCommand(query, connection);

                try
                {
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();

                    while (reader.Read())
                    {
                        Product product = new Product();
                        product.Name = reader["Name"].ToString();
                        product.Description = reader["Description"].ToString();
                        product.Price = Convert.ToDecimal(reader["Price"]);
                        product.ImagePath = reader["ImagePath"].ToString();
                        products.Add(product);
                    }

                    reader.Close();
                }
                catch (Exception ex)
                {
                    // Handle exceptions
                }
            }

            return products;
        }
    }

    public class Product
    {
        public string Name { get; set; }
        public string Description { get; set; }
        public decimal Price { get; set; }
        public string ImagePath { get; set; }
    }
}
