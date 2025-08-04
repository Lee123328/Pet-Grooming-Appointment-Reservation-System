<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Pet_Grooming_Appointment_Reservation_System.Payment" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Payment Form</title>
    <link href="Payment.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
            <h2>Payment Form</h2>
            <div class="input-group">
                <div class="input-box">
                    <asp:TextBox ID="txtFullName" runat="server" placeholder="Full Name" CssClass="name" Required="true"></asp:TextBox>
                    <i class="fa fa-user icon"></i>
                </div>
                <div class="input-box">
                    <asp:TextBox ID="txtNickName" runat="server" placeholder="Nick Name" CssClass="name" Required="true"></asp:TextBox>
                    <i class="fa fa-user icon"></i>
                </div>
            </div>
            
            <div class="input-group">
                <div class="input-box">
                    <asp:TextBox ID="txtEmail" runat="server" placeholder="Email Address" CssClass="name" Required="true"></asp:TextBox>
                    <i class="fa fa-envelope icon"></i>
                </div>
            </div>
                
            <div class="input-group">
                <div class="input-box">
                    <h4>Date of Birth</h4>
                    <asp:TextBox ID="txtDay" runat="server" placeholder="DD" CssClass="dob"></asp:TextBox>
                    <asp:TextBox ID="txtMonth" runat="server" placeholder="MM" CssClass="dob"></asp:TextBox>
                    <asp:TextBox ID="txtYear" runat="server" placeholder="YYYY" CssClass="dob"></asp:TextBox>
                </div>
                <div class="input-box">
                    <h4>Gender</h4>
                    <asp:RadioButton ID="rbMale" runat="server" GroupName="gender" Text="" CssClass="radio" Checked="true" />
                    <label for="rbMale" class="radio">Male&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                    &nbsp;<asp:RadioButton ID="rbFemale" runat="server" GroupName="gender" Text="" CssClass="radio"  />
                    <label for="rbFemale" class="radio">Female</label>
                </div>
            </div>
          <div class="input-group">
    <div class="input-box">
        <h4>Payment Details</h4>
        <asp:RadioButton ID="rbCreditCard" runat="server" GroupName="pay" Checked="true" CssClass="radio" Text="" />
        <asp:Label ID="lblCreditCard" runat="server" AssociatedControlID="rbCreditCard"><span> Credit Card&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></asp:Label>
        <asp:RadioButton ID="rbPaypal" runat="server" GroupName="pay" CssClass="radio" Text="" />
        PayPal</div>    
</div>

            
            <div class="input-group">
                <div class="input-box">
                    <asp:TextBox ID="txtCardNumber" runat="server" placeholder="Card Number" CssClass="name" Required="true"></asp:TextBox>
                    <i class="fa fa-credit-card icon"></i>
                </div>
            </div>
           
            <div class="input-group">
                <div class="input-box">
                    <asp:TextBox ID="txtCvc" runat="server" placeholder="Card CVC" CssClass="name" Required="true"></asp:TextBox>
                    <i class="fa fa-user icon"></i>
                </div>
                <div class="input-box">
                    <asp:DropDownList ID="ddlDay" runat="server">
                        <asp:ListItem Text="01" Value="01"></asp:ListItem>
                        <asp:ListItem Text="02" Value="02"></asp:ListItem>
                        <asp:ListItem Text="03" Value="03"></asp:ListItem>
                        <asp:ListItem Text="04" Value="04"></asp:ListItem>
                        <asp:ListItem Text="05" Value="05"></asp:ListItem>
                        <asp:ListItem Text="06" Value="06"></asp:ListItem>
                        <asp:ListItem Text="07" Value="07"></asp:ListItem>
                        <asp:ListItem Text="08" Value="08"></asp:ListItem>
                        <asp:ListItem Text="09" Value="09"></asp:ListItem>
                        <asp:ListItem Text="10" Value="10"></asp:ListItem>
                        <asp:ListItem Text="11" Value="11"></asp:ListItem>
                        <asp:ListItem Text="12" Value="12"></asp:ListItem>
                        <asp:ListItem Text="13" Value="13"></asp:ListItem>
                        <asp:ListItem Text="14" Value="14"></asp:ListItem>
                        <asp:ListItem Text="15" Value="15"></asp:ListItem>
                        <asp:ListItem Text="16" Value="16"></asp:ListItem>
                        <asp:ListItem Text="17" Value="17"></asp:ListItem>
                        <asp:ListItem Text="18" Value="18"></asp:ListItem>
                        <asp:ListItem Text="19" Value="19"></asp:ListItem>
                        <asp:ListItem Text="20" Value="20"></asp:ListItem>
                        <asp:ListItem Text="21" Value="21"></asp:ListItem>
                        <asp:ListItem Text="22" Value="22"></asp:ListItem>
                        <asp:ListItem Text="23" Value="23"></asp:ListItem>
                        <asp:ListItem Text="24" Value="24"></asp:ListItem>
                        <asp:ListItem Text="25" Value="25"></asp:ListItem>
                        <asp:ListItem Text="26" Value="26"></asp:ListItem>
                        <asp:ListItem Text="27" Value="27"></asp:ListItem>
                        <asp:ListItem Text="28" Value="28"></asp:ListItem>
                        <asp:ListItem Text="29" Value="29"></asp:ListItem>
                        <asp:ListItem Text="30" Value="30"></asp:ListItem>
                        <asp:ListItem Text="31" Value="3"></asp:ListItem>
                            </asp:DropDownList>
                    <asp:DropDownList ID="ddlMonth" runat="server">
                        <asp:ListItem Text="JAN" Value="JAN"></asp:ListItem>
                        <asp:ListItem Text="FER" Value="FER"></asp:ListItem>
                        <asp:ListItem Text="MAR" Value="MAR"></asp:ListItem>
                        <asp:ListItem Text="APR" Value="APR"></asp:ListItem>
                        <asp:ListItem Text="MAY" Value="MAY"></asp:ListItem>
                        <asp:ListItem Text="JUN" Value="JUN"></asp:ListItem>
                        <asp:ListItem Text="JUL" Value="JUL"></asp:ListItem>
                        <asp:ListItem Text="AUG" Value="AUG"></asp:ListItem>
                        <asp:ListItem Text="SEPT" Value="SEPT"></asp:ListItem>
                        <asp:ListItem Text="OCT" Value="OCT"></asp:ListItem>
                        <asp:ListItem Text="NOV" Value="NOV"></asp:ListItem>
                        <asp:ListItem Text="DEC" Value="DEC"></asp:ListItem>
                      


                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlYear" runat="server">
                        <asp:ListItem Text="2020" Value="2020"></asp:ListItem>
                        <asp:ListItem Text="2021" Value="2021"></asp:ListItem>
                        <asp:ListItem Text="2022" Value="2022"></asp:ListItem>
                        <asp:ListItem Text="2023" Value="2023"></asp:ListItem>
                        <asp:ListItem Text="2024" Value="2024"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            
            <div class="input-group">
                <div class="input-box">
                   <asp:Button ID="btnSubmit" runat="server" Text="Make Payment" CssClass="button" Style="width: 100%; background: transparent; border: none; background: #7ed321; color: #fff; padding: 15px; border-radius: 4px; font-size: 16px; transition: all 0.35s ease;" PostBackUrl="~/Receipt.aspx" />
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


