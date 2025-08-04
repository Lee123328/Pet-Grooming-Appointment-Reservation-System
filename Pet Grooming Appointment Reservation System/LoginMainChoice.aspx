<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginMainChoice.aspx.cs" Inherits="Pet_Grooming_Appointment_Reservation_System.LoginMainChoice" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="loginmainchoice2.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="box">
            <div class="back">
                <asp:Button ID="Back" runat="server" Text="Back" PostBackUrl="home.aspx" />
            </div>
            <h2>Login</h2>
            <asp:Button ID="Admin" runat="server" Text="Admin Login" PostBackUrl="~/AdminLogin.aspx" /><br />
            <asp:Button ID="Staff" runat="server" Text="Staff Login" PostBackUrl="~/StaffLogin.aspx" /><br />
            <asp:Button ID="User" runat="server" Text="User Login" PostBackUrl="~/Login.aspx" />

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

