<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Receipt.aspx.cs" Inherits="Pet_Grooming_Appointment_Reservation_System.Receipt" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link href="receipt.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 50%; margin: 0 auto; border: 2px solid #000;background: #db9595d4; padding: 18px;">
        <div>
           <center> <h2>Pet Pamper Pro</h2></center><br />
           <center><h4>Receipt</h4></center><br />
            <hr />
            <br />
            <br />
            <br />
            <div style="text-align: center;">
            
            <br />
            <br />
            <asp:Label ID="lblreceipt" runat="server" Text="Receipt ID:"></asp:Label>
            
            <br />
            <br />
            <asp:Label ID="lbldate" runat="server" Text="Date :"></asp:Label>
            
            <br />
            <br />
            <br />
            <asp:Label ID="lblorder" runat="server" Text="Product Description"></asp:Label>
            <hr />
            <br />
            <br />
                <br />
                <hr />
            <asp:Label ID="lblprice" runat="server" Text="Subtotal:"></asp:Label>
            
            <br />
            <br />
            <asp:Label ID="lblqty" runat="server" Text="Service Tax (6%):"></asp:Label>
          
            <br />
            <br />
            <asp:Label ID="lblsubprice" runat="server" Text="Subtotal Price:"></asp:Label>
           
            <br />
            <br />
            <h3>Total:</h3>
                <hr />
            <br />
            <br />
            
        </div>
            </div>
        <p>
            <asp:Label ID="lbldesc" runat="server" Text="&quot;Your pets' happiness is our priority!&quot;"></asp:Label>
        </p>
        <p>
            <asp:Label ID="lbldesc2" runat="server" Text="&quot;Looking forward to serving you and your furry friend(s) again!&quot;"></asp:Label>
        </p>
            <br /><br />
            <center>
            <asp:Button ID="Button1" runat="server" Text="Print" CssClass="custom-button" />
            <asp:Button ID="Button2" runat="server" Text="Complete" CssClass="custom-button" PostBackUrl="~/Home.aspx" />
                </center>
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
