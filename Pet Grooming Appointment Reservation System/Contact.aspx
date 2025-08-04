<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Webassignment.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" type="text/css" href="Contact.css" />
    <div class="container">
        <div class="left"></div>
        <div class="right">
            <div class="Box">
                <div class="backBox">
                    <asp:Button ID="Back" runat="server" Text="Back" PostBackUrl="~/Home.aspx" />
                </div>
                <h3>Contact Us</h3>
                <asp:Label ID="lblName" runat="server"><p>Username:</p></asp:Label>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <asp:Label ID="lblEmail" runat="server"><p>Email:</p></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <asp:Label ID="lblMessage" runat="server"><p>Message:</p></asp:Label>
                <asp:TextBox ID="txtMessage" runat="server" textMode="MultiLine" CssClass="messageBox"></asp:TextBox>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" />

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
    </div>
</asp:Content>

