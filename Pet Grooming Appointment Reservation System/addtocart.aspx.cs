using ProductDDL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webassignment
{
    public partial class addtocart : System.Web.UI.Page
    {


        protected void Page_Init(object sender, EventArgs e)
        {
            // Check if the user is logged in
            if (Session["Username"] == null)
            {
                // If not logged in, redirect to the login page
                Response.Redirect("~/Login.aspx?redirectUrl=addtocart.aspx");
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Bind product data when the page is first loaded
                BindProductData();
            }
            // Calculate and display subtotal, tax, and total price
            CalculateAndDisplayTotal();

        }




        protected void Page_PreRender(object sender, EventArgs e)
        {
            // Check if the product name and quantity are set in the session
            if (Session["ProductName"] != null && Session["ProductQuantity"] != null)
            {
                // Set the corresponding product's quantity to 1
                string productName = Session["ProductName"].ToString();
                string selectedProductId = "1";

                // Set the selected product's quantity to 1 and others to 0
                switch (productName)
                {
                    case "Pedigree Dog Beef 20kg":
                        txtProduct1.Text = "1";
                        selectedProductId = "1";
                        break;
                    case "Advance Breeder Bag 20kg":
                        txtProduct2.Text = "1";
                        selectedProductId = "2";
                        break;
                    case "Frontline Spray 100ML":
                        txtProduct3.Text = "1";
                        selectedProductId = "3";
                        break;
                    case "Fido Dog Shampoo 1000ML":
                        txtProduct4.Text = "1";
                        selectedProductId = "4";
                        break;
                    case "Fido Cat Shampoo 350ML":
                        txtProduct5.Text = "1";
                        selectedProductId = "5";
                        break;
                    case "Dual Grooming Brushes":
                        txtProduct6.Text = "1";
                        selectedProductId = "6";
                        break;
                    default:
                        // Handle unexpected product names
                        // You can display an error message or redirect to another page
                        break;
                }

                // Set other product quantities to 0
                for (int i = 1; i <= 6; i++)
                {
                    if (i.ToString() != selectedProductId)
                    {
                        TextBox txtProductQuantity = FindControl("txtProduct" + i) as TextBox;
                        if (txtProductQuantity != null)
                        {
                            txtProductQuantity.Text = "0";
                        }
                    }
                }

                // Clear session variables
                Session.Remove("ProductName");
                Session.Remove("ProductQuantity");
            }
            else
            {
                // If the user is logged in but there are no product details in the session,
                // set all product quantities to 0
                for (int i = 1; i <= 6; i++)
                {
                    TextBox txtProductQuantity = FindControl("txtProduct" + i) as TextBox;
                    if (txtProductQuantity != null)
                    {
                        txtProductQuantity.Text = "0";
                    }
                }
            }
        }




        private void BindProductData()
        {
            // Assuming you have a method in DAL to retrieve product data including image paths
            DAL dal = new DAL();
            List<Product> products = dal.GetProductsFromDatabase();

            // Assuming you have TextBox controls for quantity as txtProduct1, txtProduct2, etc.
            if (products != null && products.Count > 0)
            {
                for (int i = 0; i < products.Count; i++)
                {
                    string imageSrc = products[i].ImagePath;
                    string productName = products[i].Name;
                    decimal price = products[i].Price;

                    // Bind product data to the corresponding HTML controls
                    // Assuming you have Image controls for product images as imgProduct1, imgProduct2, etc.
                    Image imgProduct = FindControl("imgProduct" + (i + 1)) as Image;
                    if (imgProduct != null)
                    {
                        imgProduct.ImageUrl = imageSrc;
                    }

                    TextBox txtProductQuantity = FindControl("txtProduct" + (i + 1)) as TextBox;
                    if (txtProductQuantity != null)
                    {
                        txtProductQuantity.Text = "1";
                    }


                    // Bind other product data (name, price) as needed
                    // Example: bind productName and price to labels
                }
            }
        }


        private void CalculateAndDisplayTotal()
        {
            decimal subtotal = 0;
            decimal taxRate = 0.06m; // 6% tax rate

            for (int i = 1; i <= 6; i++)
            {
                TextBox txtProductQuantity = FindControl("txtProduct" + i) as TextBox;
                TextBox txtProductPrice = FindControl("txtPrice" + i) as TextBox;

                if (txtProductQuantity != null && txtProductPrice != null)
                {
                    int quantity = Convert.ToInt32(txtProductQuantity.Text);
                    decimal price = Convert.ToDecimal(txtProductPrice.Text);
                    decimal totalProductPrice = quantity * price;

                    // Update the total price for this product
                    Label lblProductTotal = FindControl("lblProductTotal" + i) as Label;
                    if (lblProductTotal != null)
                    {
                        lblProductTotal.Text = totalProductPrice.ToString("C2");
                    }

                    // Add this product's total to the subtotal
                    subtotal += totalProductPrice;
                }
            }

            decimal tax = subtotal * taxRate;
            decimal totalPrice = subtotal + tax;

            // Display subtotal, tax, and total price
            txtSub.Text = subtotal.ToString("C2");
            txtTax.Text = tax.ToString("C2");
            txtTotal.Text = totalPrice.ToString("C2");
        }


        // Other methods (BindProductData, etc.) go here...
    }
    // Other methods (BindProductData, etc.) go here...
}
