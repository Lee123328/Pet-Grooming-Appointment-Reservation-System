<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PurchaseHistory.aspx.cs" Inherits="Pet_Grooming_Appointment_Reservation_System.PurchaseHistory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Purchase History</title>
    <link rel="stylesheet" type="text/css" href="PurchaseHistory.css" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="back" runat="server" Text="Back" PostBackUrl="StaffPage.aspx" />
        <h3>Purchase History</h3>
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
    </form>
</body>
</html>
