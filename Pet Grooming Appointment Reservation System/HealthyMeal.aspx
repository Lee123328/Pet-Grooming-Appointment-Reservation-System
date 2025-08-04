<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HealthyMeal.aspx.cs" Inherits="Pet_Grooming_Appointment_Reservation_System.HealthyMeal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Healthy Meal</title>
    <link rel="stylesheet" type="text/css" href="HealthyMeal.css" />
</head>
<body>
    <form id="form1" runat="server">
        <h2>Healthy Meal Services</h2>
        <div class="box">
            <asp:Button ID="Back" runat="server" Text="Back" PostBackUrl="Services.aspx" />
        </div>
        <div class="container">
            <div class="video-container">
                <video src="/Video/healthymeal.mp4" controls autoplay muted loop width="500px"></video>
            </div>
            <div class="text">
                <p>
                    At Pet Pamper Pro, we're dedicated to helping you achieve your health and wellness goals through delicious and nutritious meals. 
                    Our team of chefs and nutritionists carefully craft each meal to ensure it is not only flavorful but also packed with the nutrients your body needs. 
                    Whether you're looking to lose weight, maintain a healthy lifestyle, or simply enjoy convenient and wholesome meals, we have a variety of options to suit your needs. 
                    We believe that eating well should be easy and enjoyable, which is why we take the time to source the best ingredients and create meals that you'll love. Join us on your journey to better health, one meal at a time.
                </p>
                <div class="appointment">
                    <asp:Button ID="btnAppointment" runat="server" Text="Make Appointment" PostBackUrl="Appointment.aspx"/>
                </div>
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
</html>
