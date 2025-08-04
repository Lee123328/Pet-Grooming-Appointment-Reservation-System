<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Webassignment.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <link rel="stylesheet" type="text/css" href="Login.css" />
        <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
        <div class="container">
            <div class="left"></div>
            <div class="right">
                <div class="formBox" id="loginSection" runat="server">
                        <div class="box">
                            <asp:Button ID="Back" runat="server" Text="Back" PostBackUrl="home.aspx" />
                        </div>
                        <h3>User Login</h3>
                        <asp:Label ID="UsernameLabel" runat="server"><p>Username:</p></asp:Label>
                        <asp:TextBox ID="UsernameTextBox" runat="server" ></asp:TextBox>
                        <asp:Label ID="PasswordLabel" runat="server"><p>Password:</p></asp:Label>
                        <div class="password-container">
                            <asp:TextBox ID="PasswordTextBox" runat="server" OnTextChanged="PasswordTextBox_TextChanged" TextMode="Password" ></asp:TextBox>
                            <asp:Image ID="eyeicon" runat="server" ImageURL="Image/eye-close.png"/>
                        </div>
                        <asp:HyperLink ID="HyperLink1" runat="server" Text="Forgot Password ?" NavigateUrl="ForgotPassword.aspx" /><br />
                        <br />
                         <asp:Button ID="LoginButton" runat="server" Text="Login" OnClick="LoginButton_Click" />
                        

                        <asp:HyperLink ID="RegisterAcc" runat="server" Text="No account ? Register Now!" NavigateUrl="Register.aspx" />
                </div>
                <div class="formBox" id="nameSection" runat="server" visible="false">
                    <h3>Welcome, <asp:Label ID="NameLabel" runat="server" Text=""></asp:Label>!</h3>
                </div>
            </div>
        </div>
    </form>
    <!--Start of Tawk.to Script-->
<script type="text/javascript">
    var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date();
    (function () {
        var s1 = document.createElement("script"), s0 = document.getElementsByTagName("script")[0];
        s1.async = true;
        s1.src = 'https://embed.tawk.to/660dbbea1ec1082f04de9c7d/1hqiqc3oi';
        s1.charset = 'UTF-8';
        s1.setAttribute('crossorigin', '*');
        s0.parentNode.insertBefore(s1, s0);
    })();
</script>
<!--End of Tawk.to Script-->

</body>
  <script>
      document.addEventListener('DOMContentLoaded', function () {
          let eyeicon = document.getElementById('<%= eyeicon.ClientID %>');
        let password = document.getElementById('<%= PasswordTextBox.ClientID %>');

        eyeicon.onclick = function () {
            if (password.type === "password") {
                password.type = "text";
                eyeicon.src = "Image/eye-open.png";
            } else {
                password.type = "password";
                eyeicon.src = "Image/eye-close.png";
            }
        };
    });
  </script>



</html>
