<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ServiceDetails.aspx.cs" Inherits="Pet_Grooming_Appointment_Reservation_System.ServiceDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Service</title>
    <link rel="stylesheet" type="text/css" href="serviceDetails.css" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="back" runat="server" Text="Back" PostBackUrl="AdminPage.aspx" />  
        <table>
            <tr>
                <td style="vertical-align: top;">
                    <div class="form-container">
                <div class="auto-style4">
                    <h2>Add New Service</h2>
                    <!-- Service Form -->
                    <asp:TextBox ID="txtServiceName" runat="server" placeholder="Service Name"></asp:TextBox><br />
                    <!-- FileUpload control for the video -->
                    <asp:FileUpload ID="fuServiceVideo" runat="server" /><br />
                    <br />
                    <asp:TextBox ID="txtServiceDescription" runat="server" placeholder="Service Description"></asp:TextBox><br /><br />
                </div>
                <asp:Button ID="btnAddService" runat="server" Text="Add Service" />
            </div>
        </td>
    </tr>
</table>
    </form>
</body>
</html>
