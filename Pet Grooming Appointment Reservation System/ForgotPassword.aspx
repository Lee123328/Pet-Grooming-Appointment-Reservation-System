<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="Pet_Grooming_Appointment_Reservation_System.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password</title>
    <link rel="stylesheet" type="text/css" href="ForgotPassword.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Reset Password</h2>
            <asp:Label ID="UsernameLabel" runat="server" Text="Username:"></asp:Label>
            <asp:TextBox ID="UsernameTextBox" runat="server"></asp:TextBox><br />
            <asp:Label ID="NewPasswordLabel" runat="server" Text="New Password:"></asp:Label>
            <asp:TextBox ID="NewPasswordTextBox" runat="server" TextMode="Password"></asp:TextBox><br />
            <asp:Label ID="ConfirmPasswordLabel" runat="server" Text="Confirm Password:"></asp:Label>
            <asp:TextBox ID="ConfirmPasswordTextBox" runat="server" TextMode="Password"></asp:TextBox><br /><br />
            <asp:Button ID="ResetPasswordButton" runat="server" Text="Reset Password" OnClick="ResetPasswordButton_Click" />
            <asp:Label ID="MessageLabel" runat="server" ForeColor="Red"></asp:Label>
        </div>
    </form>
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
</body>
</html>
