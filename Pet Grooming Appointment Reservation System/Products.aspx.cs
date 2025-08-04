using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Web.UI.WebControls;
using ProductDDL;

namespace Webassignment
{
    public partial class Shop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindProducts();
            }
        }

        private void BindProducts()
        {
            DAL dal = new DAL();
            List<Product> products = dal.GetProductsFromDatabase();

            if (products != null && products.Count > 0)
            {
                Repeater1.DataSource = products;
                Repeater1.DataBind();
            }
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "AddToCart")
            {
                // Check if the user is logged in (code from previous solution)
                // Check if the user is logged in
                if (Session["Username"] == null)
                {
                    // If not logged in, redirect to login page
                    Response.Redirect("~/Login.aspx?redirectUrl=AddToCart");
                }
                else
                {
                    // If logged in, proceed to addtocart.aspx
                    // Retrieve the product name from the command argument
                    string productName = e.CommandArgument.ToString();
                    // Set the product quantity to 1 in session or any other storage mechanism
                    Session["ProductName"] = productName;
                    Session["ProductQuantity"] = 1;
                    // After setting the session variables
                    Debug.WriteLine("Product Name: " + productName);
                    Debug.WriteLine("Product Quantity: 1");

                    Response.Redirect("~/addtocart.aspx");
                }
            }

           
        }



    }
}
