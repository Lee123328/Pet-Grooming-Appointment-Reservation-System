<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Webassignment.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <link rel="stylesheet" type="text/css" href="Register.css" />
    <div class="container">
        <div class="formBox">
            <form id="form1" runat="server">
                <h3>User Registration</h3>
                <asp:Label ID="NameLabel" runat="server" Text="Name:"></asp:Label>
                <asp:TextBox ID="NameTextBox" runat="server" ></asp:TextBox><br />
                <asp:Label ID="AddressLabel" runat="server" Text="Address:"></asp:Label>
                <asp:TextBox ID="AddressTextBox" runat="server" ></asp:TextBox><br />
                <asp:Label ID="GenderLabel" runat="server" Text="Gender:"></asp:Label>
                <asp:RadioButtonList ID="GenderRadioButtonList" runat="server">
                    <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                    <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                </asp:RadioButtonList><br />
                <asp:Label ID="PhoneLabel" runat="server" Text="Phone:"></asp:Label>
                <asp:TextBox ID="PhoneTextBox" runat="server" ></asp:TextBox><br />
                <asp:Label ID="EmailLabel" runat="server" Text="Email:"></asp:Label>
                <asp:TextBox ID="EmailTextBox" runat="server" ></asp:TextBox><br />
                <asp:Label ID="UsernameLabel" runat="server" Text="Username:"></asp:Label>
                <asp:TextBox ID="UsernameTextBox" runat="server"></asp:TextBox><br />
                <asp:Label ID="PasswordLabel" runat="server" Text="Password:"></asp:Label>
                <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" ></asp:TextBox><br />
                <asp:Label ID="ConfirmPasswordLabel" runat="server" Text="Confirm Password:"></asp:Label>
                <asp:TextBox ID="ConfirmPasswordTextBox" runat="server" TextMode="Password" ></asp:TextBox><br />
                <asp:Button ID="RegisterButton" runat="server" Text="Register" OnClick="RegisterButton_Click" />
                </div>
           <asp:HyperLink ID="LoginAcc" runat="server" Text="Aready Have an Account ? Login Here!" NavigateUrl="Login.aspx" />
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
        </div>
    </div>

</body>
</html>
