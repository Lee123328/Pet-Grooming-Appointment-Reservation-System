<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffDetails.aspx.cs" Inherits="Pet_Grooming_Appointment_Reservation_System.StaffDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Staff</title>
    <link rel="stylesheet" type="text/css" href="staffDetails.css" />
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <asp:Button ID="back" runat="server" Text="Back" PostBackUrl="AdminPage.aspx" />  
            <tr>
                <td style="vertical-align: top;">
                    <div class="form-container">
                        <div class="auto-style3">
                            <h4>Add New Staff</h4>
                            <!-- Staff Form -->
                            <asp:TextBox ID="txtStaffName" runat="server" placeholder="Staff Name"></asp:TextBox><br />
                            <br />
                            <asp:TextBox ID="txtStaffRole" runat="server" placeholder="Staff Role"></asp:TextBox><br />
                            <br />
                            <asp:TextBox ID="txtStaffEmail" runat="server" placeholder="Staff Email"></asp:TextBox><br />
                            <br />
                            <asp:TextBox ID="txtStaffPhone" runat="server" placeholder="Staff Phone"></asp:TextBox>
                        </div>
                        <asp:Button ID="btnAddStaff" runat="server" Text="Add Staff" />
                    </div>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
