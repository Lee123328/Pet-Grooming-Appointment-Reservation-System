<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="Webassignment.Services" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" type="text/css" href="Services.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <h2>Our Services</h2>
    <div class="box-container">
        <div class="service">
            <i class="fas fa-bath"></i>
            <h3>Spa & Grooming</h3>
                <asp:Button ID="btnSpa" runat="server" Text="Read More" PostBackUrl="Spa.aspx" />
        </div>
        <div class="service">
            <i class="fas fa-heartbeat"></i>
            <h3>Health Care</h3>
            <asp:Button ID="btnCare" runat="server" Text="Read More" PostBackUrl="HealthCare.aspx" />
        </div>
        <div class="service">
            <i class="fas fa-dog"></i>
            <h3>Dog Boarding</h3>
            <asp:Button ID="btnDog" runat="server" Text="Read More" PostBackUrl="DogBoarding.aspx" />
        </div>
        <div class="service">
            <i class="fas fa-cat"></i>
            <h3>Cat Boarding</h3>
            <asp:Button ID="btnCat" runat="server" Text="Read More" PostBackUrl="CatBoarding.aspx" />
        </div>
        <div class="service">
            <i class="fas fa-drumstick-bite"></i>
            <h3>Healthy Meal</h3>
            <asp:Button ID="btnMeal" runat="server" Text="Read More" PostBackUrl="HealthyMeal.aspx" />
        </div>
        <div class="service">
            <i class="fas fa-baseball-ball"></i>
            <h3>Activity Exercise</h3>
            <asp:Button ID="btnExercise" runat="server" Text="Read More" PostBackUrl="ActivityExercise.aspx" />
        </div>
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
