<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CatBoarding.aspx.cs" Inherits="Pet_Grooming_Appointment_Reservation_System.CatBoarding" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cat Boarding</title>
    <link rel="stylesheet" type="text/css" href="CatBoarding.css" />
</head>
<body>
    <form id="form1" runat="server">
        <h2>Cat Boarding Services</h2>
        <div class="box">
            <asp:Button ID="Back" runat="server" Text="Back" PostBackUrl="Services.aspx" />
        </div>
        <div class="container">
            <div class="video-container">
                <video src="/Video/catboarding.mp4" controls autoplay muted loop width="500px"></video>
            </div>
            <div class="text">
                <p>
                    Our cat boarding services at Pet Pamper Pro are designed with your feline friend's comfort and happiness in mind. 
                    We provide a safe and cozy environment where cats can relax and enjoy their stay. 
                    Our dedicated staff members are experienced in caring for cats and will ensure that your pet receives the attention and affection they need. 
                    Whether your cat is staying with us for a day or a week, we strive to make their stay as pleasant as possible. 
                    With spacious accommodations, interactive toys, and personalized care, you can trust that your cat will be in good hands at Pet Pamper Pro.       
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
