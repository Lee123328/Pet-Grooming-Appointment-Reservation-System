<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="Pet_Grooming_Appointment_Reservation_System.ProductDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Product</title>
    <link rel="stylesheet" type="text/css" href="productDetails.css" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="back" runat="server" Text="Back" PostBackUrl="AdminPage.aspx" />
        <table>
            <tr>
                <td style="vertical-align: top;">
                    <div class="form-container">
                        <div class="auto-style1">
                            <h2>Add New Product</h2>
                             <li><a href="Products.aspx">Product </a></li>
                            <!-- Product Form -->
                            <asp:TextBox ID="txtName" runat="server" placeholder="Product Name"></asp:TextBox><br />
                            <br />
                            <asp:TextBox ID="txtDescription" runat="server" placeholder="Product Description"></asp:TextBox><br />
                            <br />
                            <asp:TextBox ID="txtPrice" runat="server" placeholder="Product Price"></asp:TextBox><br />
                            <br />
                            <asp:TextBox ID="txtImagePath" runat="server" placeholder="Image Path"></asp:TextBox>
                            <asp:FileUpload ID="productImage" runat="server" /><br />
                            <br />
                        </div>
                        <asp:Button ID="btnInsert" runat="server" Text="Add Product" OnClick="btnInsert_Click" />
                    </div>
                </td>
            </tr>
        </table>
        <div class="PDetails">
            <h3>Product Details</h3>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="ProductID" HeaderText="ProductID" InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="ImagePath" HeaderText="ImagePath" SortExpression="ImagePath" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Products] WHERE [ProductID] = @ProductID" InsertCommand="INSERT INTO [Products] ([Name], [Description], [Price], [ImagePath]) VALUES (@Name, @Description, @Price, @ImagePath)" SelectCommand="SELECT * FROM [Products]" UpdateCommand="UPDATE [Products] SET [Name] = @Name, [Description] = @Description, [Price] = @Price, [ImagePath] = @ImagePath WHERE [ProductID] = @ProductID">
                <DeleteParameters>
                    <asp:Parameter Name="ProductID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="Price" Type="Decimal" />
                    <asp:Parameter Name="ImagePath" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="Price" Type="Decimal" />
                    <asp:Parameter Name="ImagePath" Type="String" />
                    <asp:Parameter Name="ProductID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
