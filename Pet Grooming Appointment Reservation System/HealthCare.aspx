<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HealthCare.aspx.cs" Inherits="Pet_Grooming_Appointment_Reservation_System.HealthCare" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Health Care</title>
    <link rel="stylesheet" type="text/css" href="HealthCare.css" />
</head>
<body>
    <form id="form1" runat="server">
        <h2>Health Care Services</h2>
        <div class="box">
            <asp:Button ID="Back" runat="server" Text="Back" PostBackUrl="Services.aspx" />
        </div>
        <div class="container">
            <div class="video-container">
                <video src="/Video/healthcare.mp4" controls autoplay muted loop width="500px"></video>
            </div>
            <div class="text">
                <p>
                   At Pet Pamper Pro, we believe in holistic pet care, which is why we offer a range of health care services to ensure your pet's well-being. 
                   Our experienced veterinarians provide routine check-ups, vaccinations, and preventative care to keep your pet healthy and happy. 
                   We also offer dental care, nutritional counseling, and senior pet care services to address your pet's specific needs at every stage of life. 
                   With a focus on compassionate care and personalized attention, we strive to be your partner in your pet's health journey.
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
