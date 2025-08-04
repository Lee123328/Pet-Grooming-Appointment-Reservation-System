<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Webassignment.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" type="text/css" href="home.css" />
    <div id="slider">
        <figure>
            <img src="Image/slide1.jpg" width="500px" height="630px"/>
            <img src="Image/slide2.jpg" width="500px" height="630px"/>
            <img src="Image/slide3.jpg" width="500px" height="630px"/>
            <img src="Image/slide4.jpg" width="500px" height="630px"/>
            <img src="Image/slide5.jpg" width="500px" height="630px"/>
        </figure>
    </div>
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
</asp:Content>
