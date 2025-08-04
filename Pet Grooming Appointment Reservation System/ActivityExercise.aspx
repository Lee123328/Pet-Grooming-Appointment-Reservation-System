<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ActivityExercise.aspx.cs" Inherits="Pet_Grooming_Appointment_Reservation_System.ActivityExercise" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Activity Exercise</title>
    <link rel="stylesheet" type="text/css" href="ActivityExercise.css" />
</head>
<body>
    <form id="form1" runat="server">
          <h2>Activity Exercise Services</h2>
  <div class="box">
      <asp:Button ID="Back" runat="server" Text="Back" PostBackUrl="Services.aspx" />
  </div>
  <div class="container">
      <div class="video-container">
          <video src="/Video/exercise.mp4" controls autoplay muted loop width="500px"></video>
      </div>
      <div class="text">
          <p>
              At Pet Pamper Pro, we understand the importance of keeping your pets active and healthy.
              That's why we offer a range of activity and exercise services to keep your furry friends in top shape.
              Whether it's a fun game of fetch, a leisurely walk, or a stimulating play session, our trained staff ensures that your pets get the exercise they need in a safe and supervised environment. 
              We tailor our activities to suit your pet's age, breed, and energy level, ensuring that they stay happy and healthy while in our care. 
              Join us at Pet Pamper Pro and let us keep your pets active and engaged! 
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

