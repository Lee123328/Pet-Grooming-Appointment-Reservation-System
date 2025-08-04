<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DogBoarding.aspx.cs" Inherits="Pet_Grooming_Appointment_Reservation_System.DogBoarding" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dog Boarding</title>
    <link rel="stylesheet" type="text/css" href="DogBoarding.css" />
</head>
<body>
    <form id="form1" runat="server">
        <h2>Dog Boarding Services</h2>
        <div class="box">
            <asp:Button ID="Back" runat="server" Text="Back" PostBackUrl="Services.aspx" />
        </div>
        <div class="container">
            <div class="video-container">
                <video src="/Video/dogboarding.mp4" controls autoplay muted loop width="500px"></video>
            </div>
            <div class="text">
                <p>
                    Our dog boarding services at Pet Pamper Pro provide a safe and comfortable home away from home for your furry companions. 
                    Our facility is designed to ensure that your dog feels relaxed and happy during their stay with us. 
                    With spacious accommodations, regular exercise, and personalized attention from our caring staff, your dog will receive the love and care they deserve. 
                    Whether you're away for a day or a week, you can trust us to provide a welcoming environment where your dog can thrive.  
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

