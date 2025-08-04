<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addtocart.aspx.cs" Inherits="Webassignment.addtocart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add To Cart</title>
    <link rel="stylesheet" type="text/css" href="addtocart.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="cart">
            <div class="box">
                <asp:Button ID="Back" runat="server" Text="Back" PostBackUrl="Products.aspx" />
            </div>
            <h2>Your Cart</h2>
            <table style="width: 100%;">
                <tr>
                    <td>Image</td>
                    <td>Product Name</td>
                    <td>Price</td>
                    <td>Quantity</td>
                    <td>Total</td>
                </tr>
                <tr>
                    <td>
                      <asp:Image ID="imgProduct1" runat="server" />
                    <td>
                        <h3>Pedigree Dog Beef 20kg</h3>
                    </td>
                    <td>
                        <h4>RM26</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="txtProduct1" runat="server"></asp:TextBox></td>
                    <td> <asp:TextBox ID="total1" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="imgProduct2" runat="server" />
                    <td>
                        <h3>Advance Breeder Bag 20kg</h3>
                    </td>
                    <td>
                        <h4>RM30</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="txtProduct2" runat="server"></asp:TextBox></td>
                    <td>  <asp:TextBox ID="Total2" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                       <asp:Image ID="imgProduct3" runat="server" />
                    <td>
                        <h3>Frontline Spray 100ML</h3>
                    </td>
                    <td>
                        <h4>RM50</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="txtProduct3" runat="server"></asp:TextBox></td>
                    <td> <asp:TextBox ID="Total3" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="imgProduct4" runat="server" />
                    <td>
                        <h3>Fido Dog Shampoo 1000ML</h3>
                    </td>
                    <td>
                        <h4>RM20</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="txtProduct4" runat="server"></asp:TextBox></td>
                    <td> <asp:TextBox ID="Total4" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                       <asp:Image ID="imgProduct5" runat="server" />
                    <td>
                        <h3>Fido Cat Shampoo 350ML</h3>
                    </td>
                    <td>
                        <h4>RM15</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="txtProduct5" runat="server"></asp:TextBox></td>
                    <td> <asp:TextBox ID="Total5" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="imgProduct6" runat="server" />
                    <td>
                        <h3>Dual Grooming Brushes</h3>
                    </td>
                    <td>
                        <h4>RM18</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="txtProduct6" runat="server"></asp:TextBox></td>
                    <td> <asp:TextBox ID="Total6" runat="server"></asp:TextBox></td>
                </tr>
            </table>
            <div class="payment-details">
            <asp:Label ID="Subtotal" runat="server" Text="Sub Total:"></asp:Label>
            <asp:TextBox ID="txtSub" runat="server"></asp:TextBox>
            <asp:Label ID="Tax" runat="server" Text="Tax:"></asp:Label>
            <asp:TextBox ID="txtTax" runat="server"></asp:TextBox>
            <asp:Label ID="Total" runat="server" Text="Total Price:"></asp:Label>
            <asp:TextBox ID="txtTotal" runat="server"></asp:TextBox>
            </div>
            <div class="payment">
                <asp:Button ID="Payment" runat="server" Text="Proceed to Payment" PostBackUrl="payment.aspx" />
            </div>
        </div>

        <!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/660dbbea1ec1082f04de9c7d/1hqiqc3oi';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->
    </form>
</body>
</html>
