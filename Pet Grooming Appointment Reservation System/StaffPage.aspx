<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffPage.aspx.cs" Inherits="Pet_Grooming_Appointment_Reservation_System.StaffPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Staff Page</title>
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="StaffPage.css" />
</head>
<body>
    <header>
        <div class="logo">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Image/logo.png" Width="10%" /><p style="color: aqua;">Pet Pamper Pro</p>
        </div>
        <nav>
            <ul>
                <li><a href="PurchaseHistory.aspx">Purchase History</a></li>
            </ul>
        </nav>
    </header>
    <form id="form1" runat="server">
        <main>
            <div class="cards">
                <div class="card-single">
                    <div>
                        <h3>112</h3>
                        <span>Customers</span>
                    </div>
                    <div>
                        <span class="las la-users"></span>
                    </div>
                </div>
                <div class="card-single">
                    <div>
                        <h3>236</h3>
                        <span>Appointments</span>
                    </div>
                    <div>
                        <span class="las la-calendar"></span>
                    </div>
                </div>
            </div>
        </main>
        <h4>Appointment History</h4>
        <table>
            <thead>
                <tr>
                    <th>
                        <asp:Label ID="AppointmentID" runat="server" Text="Appointment ID"></asp:Label></th>
                    <th>
                        <asp:Label ID="CustomerName" runat="server" Text="Customer Name"></asp:Label></th>
                    <th>
                        <asp:Label ID="Email" runat="server" Text="Email"></asp:Label></th>
                    <th>
                        <asp:Label ID="Phone" runat="server" Text="Phone Number"></asp:Label></th>
                    <th>
                        <asp:Label ID="AppointmentDate" runat="server" Text="Appointment Date"></asp:Label></th>
                    <th>
                        <asp:Label ID="AppointmentTime" runat="server" Text="Appointment Time"></asp:Label></th>

                    <th>
                        <asp:Label ID="Status" runat="server" Text="Status"></asp:Label></th>

                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <asp:TextBox ID="txtID1" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="txtName1" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="txtEmail1" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="txtPhone1" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="txtDate1" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="txtTime1" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="txtStatus1" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtID2" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="txtName2" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="txtEmail2" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="txtPhone2" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="txtDate2" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="txtTime2" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="txtStatus2" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtID3" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="txtName3" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="txtEmail3" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="txtPhone3" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="txtDate3" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="txtTime3" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="txtStatus3" runat="server"></asp:TextBox></td>
                </tr>
            </tbody>
        </table>
        <footer>
            <h1>&copy; 2024 Pet Pamper Pro</h1>
        </footer>
    </form>
</body>
</html>
