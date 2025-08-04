<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="Pet_Grooming_Appointment_Reservation_System.UserDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add User</title>
    <link rel="stylesheet" type="text/css" href="userDetails.css" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="back" runat="server" Text="Back" PostBackUrl="AdminPage.aspx" />  
        <table>
            <tr>
                <td style="vertical-align: top;">
                    <div class="form-container">
                        <div class="auto-style2">
                            <h3>Add New User</h3>
                            <!-- User Form -->
                            <asp:TextBox ID="txtUserName" runat="server" placeholder="Username"></asp:TextBox><br />
                            <br />
                            <asp:TextBox ID="txtUserAddress" runat="server" placeholder="Address"></asp:TextBox><br />
                            <br />
                            <asp:TextBox ID="txtUserGender" runat="server" placeholder="Gender"></asp:TextBox><br />
                            <br />
                            <asp:TextBox ID="txtUserPhone" runat="server" placeholder="Phone"></asp:TextBox><br />
                            <br />
                            <asp:TextBox ID="txtUserEmail" runat="server" placeholder="Email"></asp:TextBox><br />
                            <br />
                            <asp:TextBox ID="txtUserPassword" runat="server" placeholder="Password"></asp:TextBox>
                        </div>
                        <asp:Button ID="btnAddUser" runat="server" Text="Add User"/>
                    </div>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
