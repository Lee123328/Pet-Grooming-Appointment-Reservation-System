<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Spa.aspx.cs" Inherits="Pet_Grooming_Appointment_Reservation_System.Spa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Spa & Grooming</title>
    <link rel="stylesheet" type="text/css" href="Spa.css" />
</head>
<body>
    <form id="form1" runat="server">
        <h2>Spa & Grooming Services</h2>
        <div class="box">
            <asp:Button ID="Back" runat="server" Text="Back" PostBackUrl="Services.aspx" />
        </div>
        <div class="container">
            <div class="video-container">
                <video src="/Video/spa.mp4" controls autoplay muted loop width="500px"></video>
            </div>
            <div class="text">
                <p>
                    Welcome to Pet Pamper Pro, where we specialize in luxurious grooming services for your beloved pets. 
               Our experienced team is dedicated to providing the highest quality care, using gentle techniques and premium products to ensure your pet's comfort and well-being. 
               Whether your furry friend needs a simple bath and brush or a full spa treatment, we offer a range of services to cater to their every need. 
               At Pet Pamper Pro, we believe that every pet deserves to look and feel their best, and we're here to make that happen. 
               Visit us today and treat your pet to a relaxing spa experience they'll love.
                </p>
                <div class="appointment">
                    <asp:Button ID="btnAppointment" runat="server" Text="Make Appointment" PostBackUrl="Appointment.aspx" />
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

