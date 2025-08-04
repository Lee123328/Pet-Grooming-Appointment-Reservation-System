<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="Webassignment.Aboutaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" type="text/css" href="aboutus.css" />
     <h2>Welcome to our Pet Grooming Appointment Reservation System!<br /></h2>
    <div class="container">
    <div class="video-container">
        <video src="/Video/pet.mp4" controls autoplay muted loop width="600px"></video>
    </div>
    <div class="text">
        <p>We are dedicated to providing a convenient and efficient way for pet owners to schedule grooming appointments for their beloved pets.Our team of professional groomers is passionate about animal care and well-being. We understand the importance of regular grooming for the health and happiness of your pets.
           With our online reservation system, you can easily book grooming appointments from the comfort of your home, ensuring your pets receive the care they deserve. 
           At our facility, we prioritize the safety and comfort of your pets. Our grooming services are designed to cater to the specific needs of each pet, ensuring a stress-free grooming experience. Whether your pet needs a simple bath and trim or a more specialized grooming treatment, our skilled groomers are here to help.
           We are committed to providing exceptional service and building lasting relationships with our clients and their pets. Thank you for choosing our Pet Grooming Appointment Reservation System. 
           We look forward to serving you and your furry companions!</p> </div>

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
</asp:Content>
