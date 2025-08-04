 <%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Webassignment.Shop" %>


<%@ Import Namespace="ProductDDL" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" type="text/css" href="Product2.css" />
    <h2>Our Products</h2>
    <div class="product"> <!-- Add a container with the "product" class -->
        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
            <ItemTemplate>
                <div class="content">
                    <img src='<%# Eval("ImagePath") %>' width="70%" height="40%" />
                    <h3><%# Eval("Name") %></h3>
                    <p><%# Eval("Description") %></p>
                    <h4><%# Eval("Price") %></h4>
                    <asp:Button runat="server" Text="Add to Cart" CssClass="Cbutton"  CommandName="AddToCart" CommandArgument='<%# Eval("Name") %>' />
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div> <!-- Close the product container -->
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
</asp:Content>
