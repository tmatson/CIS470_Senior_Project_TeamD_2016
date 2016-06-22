<%@ Page Title="" Language="C#" MasterPageFile="~/SPMasterPage.master" AutoEventWireup="true" CodeFile="pgOrderConfirm.aspx.cs" Inherits="pgOrderConfirm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="loginCenter">
        <div class="login">
            <br />
            <h1>Thank you for your Purchase!!!</h1><br />
            <h2>A confirmation e-mail has been sent to <asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label></h2><br /> 
            <h2>Your order number is #<asp:Label ID="lblOrderNum" runat="server" Text="Label"></asp:Label></h2><br />     
            <p>Print this page for your personal record. You can visit the Order Status page to check the progress 
                of your order. If you have any questions or concerns, feel free to call or e-mail us. Our contact information 
                can be found on by clicking the Contact Us link at the top of the page. Thank you again for your order and 
                have a wonderful day.
            </p>       
        </div>
    </div>
</asp:Content>

