<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffLogin.aspx.cs" Inherits="Pet_Grooming_Appointment_Reservation_System.StaffLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <link rel="stylesheet" type="text/css" href="AdminLogin.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
<asp:Button ID="BackButton" runat="server" Text="Back" PostBackUrl="Home.aspx" />

            <div class="login-container">
                <asp:Image ID="imgLogo" runat="server" ImageUrl="Image/adminloginicon.png" CssClass="admin-logo" />
                <center><h2>Staff Login</h2></center>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtUsername" Text="Username"></asp:Label>
                    <asp:TextBox runat="server" ID="txtUsername" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtPassword" Text="Password"></asp:Label>
                    <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" CssClass="form-control"></asp:TextBox>
                </div>
                <asp:Button runat="server" ID="btnLogin" Text="Login" CssClass="btn btn-primary" OnClick="btnLogin_Click" />
                <asp:Label runat="server" ID="lblMessage" CssClass="error-message"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>