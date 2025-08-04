<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Pet_Grooming_Appointment_Reservation_System.Profile" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Profile</title>
    <link rel="stylesheet" type="text/css" href="Profile.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <asp:Button ID="BackButton" runat="server" Text="Back" PostBackUrl="Home.aspx" />
            <asp:Image ID="imgLogo" runat="server" ImageUrl="Image/profilelogo.png" CssClass="admin-logo" />
            <h1>User Profile</h1>
            <hr />
            <div class="profile-table">
                <table>
                    <tr>
                        <td class="label">User ID:</td>
                        <td><asp:Label ID="lblId" runat="server" CssClass="data" /></td>
                        <td class="label">Name:</td>
                        <td><asp:Label ID="lblName" runat="server" CssClass="data" /></td>
                    </tr>
                    <tr>
                        <td class="label">Address:</td>
                        <td><asp:Label ID="lblAddress" runat="server" CssClass="data" /></td>
                        <td class="label">Gender:</td>
                        <td><asp:Label ID="lblGender" runat="server" CssClass="data" /></td>
                    </tr>
                    <tr>
                        <td class="label">Phone:</td>
                        <td><asp:Label ID="lblPhone" runat="server" CssClass="data" /></td>
                        <td class="label">Email:</td>
                        <td><asp:Label ID="lblEmail" runat="server" CssClass="data" /></td>
                    </tr>
                </table>
            </div>
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