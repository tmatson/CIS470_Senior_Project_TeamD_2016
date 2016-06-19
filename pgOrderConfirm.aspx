<%@ Page Title="" Language="C#" MasterPageFile="~/SPMasterPage.master" AutoEventWireup="true" CodeFile="pgOrderConfirm.aspx.cs" Inherits="pgOrderConfirm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="loginCenter">
        <div class="login">
            <br />
            <h2>A confirmation e-mail has been sent to <asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label></h2> 
            <h2>Your order number is #<asp:Label ID="lblOrderNum" runat="server" Text="Label"></asp:Label></h2>
            
        </div>
    </div>
</asp:Content>

