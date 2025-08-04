<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Appointment.aspx.cs" Inherits="Pet_Grooming_Appointment_Reservation_System.Appointment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Make Appointment</title>
    <link rel="stylesheet" type="text/css" href="Appointment.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <div class="formBox">
                <div class="box">
    <asp:Button ID="Back" runat="server" Text="Back" PostBackUrl="Services.aspx" />
</div>
                <br /><br /><br />
                <asp:Label ID="lblTime" Label runat="server" Text="Label"></asp:Label><br />
                <center>
                <h2>Pet Grooming Appointment Form</h2>
                </center>
                <asp:Label ID="lblName" runat="server" Text="Your Name:"></asp:Label>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox><br /><br />
                <asp:Label ID="lblPhone" runat="server" Text="Phone Number:"></asp:Label>
                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox><br /><br />
                <asp:Label ID="lblEmail" runat="server" Text="Email Address:"></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br /><br />
                <asp:Label ID="lblPet" runat="server" Text="Your Pet's Name:"></asp:Label>
                <asp:TextBox ID="txtPet" runat="server"></asp:TextBox><br /><br />
                <asp:Label ID="PetLabel" runat="server" Text="Pet's Type:"></asp:Label>
                <asp:RadioButtonList ID="PetRadioButtonList" runat="server">
                    <asp:ListItem Text="Dog" Value="Dog"></asp:ListItem>
                    <asp:ListItem Text="Cat" Value="Cat"></asp:ListItem>
                </asp:RadioButtonList><br />
                <asp:Label ID="lblAppointment" runat="server" Text="Appointment Date:"></asp:Label>
                <asp:Calendar ID="calDepartDt" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                <asp:TextBox ID="txtDepartDt" runat="server" width="260px"></asp:TextBox><br /><br />
                <asp:Label ID="ServiceLabel" runat="server" Text="Which service do you want to choose?"></asp:Label>
                <asp:CheckBoxList ID="ServiceBoxList" runat="server">
                    <asp:ListItem Text="Spa & Grooming" Value="Spa"></asp:ListItem>
                    <asp:ListItem Text="Health Care" Value="Care"></asp:ListItem>
                    <asp:ListItem Text="Dog Boarding" Value="Dog"></asp:ListItem>
                    <asp:ListItem Text="Cat Boarding" Value="Cat"></asp:ListItem>
                    <asp:ListItem Text="Healthy Meal" Value="Meal"></asp:ListItem>
                    <asp:ListItem Text="Activity Exercise" Value="Exercise"></asp:ListItem>
                </asp:CheckBoxList><br />
                <asp:Label ID="VistLabel" runat="server" Text="This is your first time in our shop?"></asp:Label>
                <asp:RadioButtonList ID="VisitRadioButtonList" runat="server">
                    <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                    <asp:ListItem Text="No" Value="No"></asp:ListItem>
                </asp:RadioButtonList><br />
                <asp:Label ID="lblDetail" runat="server" Text="Please specify any additional details we should be aware of:"></asp:Label><br />
                <asp:TextBox ID="txtDetail" runat="server" textMode="MultiLine" height="60px"></asp:TextBox><br /><br />
                <asp:Label ID="lblError" runat="server" Text="Label"></asp:Label>
                <div class="confirm">
                    <center>
                    <asp:Button ID="btnConfirm" runat="server" Text="Confirm Appointment" PostBackUrl="~/Profile.aspx" />
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" PostBackUrl="~/Services.aspx" />
                    </center>
                </div>
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
    </form>
</body>
</html>
