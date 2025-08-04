<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="Pet_Grooming_Appointment_Reservation_System.AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Page</title>
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="adminpage.css" />
</head>
<body>
    <header>
        <div class="logo">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Image/logo.png" Width="10%" /><p style="color: aqua;">Pet Pamper Pro</p>
        </div>
        <nav>
            <ul>
                
                <li><a href="ProductDetails.aspx">Product Details</a></li>
                <li><a href="UserDetails.aspx">User Details</a></li>
                <li><a href="StaffDetails.aspx">Staff Details</a></li>
                <li><a href="ServiceDetails.aspx">Service Details</a></li>
            </ul>
        </nav>
    </header>
    <form id="form1" runat="server">
        <main>
        <div class="cards">
            <div class="card-single">
                <div>
                    <h3>132</h3>
                    <span>Customers</span>
                </div>
                <div>
                    <span class="las la-users"></span>
                </div>
            </div>
            <div class="card-single">
                <div>
                    <h3>253</h3>
                    <span>Orders</span>
                </div>
                <div>
                    <span class="las la-shopping-bag"></span>
                </div>
            </div>
            <div class="card-single">
                <div>
                    <h3>RM2350</h3>
                    <span>Income</span>
                </div>
                <div>
                    <span class="las la-coins"></span>
                </div>
            </div>
        </div>
    </main>
        <h4>Purchase History</h4>
<table>
    <thead>
        <tr>
            <th>
                <asp:Label ID="orderID" runat="server" Text="Order ID"></asp:Label></th>
            <th>
                <asp:Label ID="productName" runat="server" Text="Product Name"></asp:Label></th>
            <th>
                <asp:Label ID="quantity" runat="server" Text="Quantity"></asp:Label></th>
            <th>
                <asp:Label ID="price" runat="server" Text="Price"></asp:Label></th>
            <th>
                <asp:Label ID="date" runat="server" Text="Date"></asp:Label></th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>
                <asp:TextBox ID="txtID1" runat="server"></asp:TextBox></td>
            <td>
                <asp:TextBox ID="txtName1" runat="server"></asp:TextBox></td>
            <td>
                <asp:TextBox ID="txtQty1" runat="server"></asp:TextBox></td>
            <td>
                <asp:TextBox ID="txtPrice1" runat="server"></asp:TextBox></td>
            <td>
                <asp:TextBox ID="txtDate1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtID2" runat="server"></asp:TextBox></td>
            <td>
                <asp:TextBox ID="txtName2" runat="server"></asp:TextBox></td>
            <td>
                <asp:TextBox ID="txtQty2" runat="server"></asp:TextBox></td>
            <td>
                <asp:TextBox ID="txtPrice2" runat="server"></asp:TextBox></td>
            <td>
                <asp:TextBox ID="txtDate2" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtID3" runat="server"></asp:TextBox></td>
            <td>
                <asp:TextBox ID="txtName3" runat="server"></asp:TextBox></td>
            <td>
                <asp:TextBox ID="txtQty3" runat="server"></asp:TextBox></td>
            <td>
                <asp:TextBox ID="txtPrice3" runat="server"></asp:TextBox></td>
            <td>
                <asp:TextBox ID="txtDate3" runat="server"></asp:TextBox></td>
        </tr>
    </tbody>
</table>
<footer>
    <h1>&copy; 2024 Pet Pamper Pro</h1>
</footer>
    </form>
</body>
</html>
