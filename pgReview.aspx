<%@ Page Title="" Language="C#" MasterPageFile="~/SPMasterPage.master" AutoEventWireup="true" CodeFile="pgReview.aspx.cs" Inherits="pgReview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Pretty straightforward; labels, textboxes and radio buttons in order to capture data for a review. -->
    <p>Did you like our service? Share your experience with our product!</p>
    <br />
    <asp:Label ID="lblJob" runat="server" Text="Job Type"></asp:Label>
    <asp:RadioButtonList ID="rbtnJob" runat="server">
        <asp:ListItem Text="Printing"></asp:ListItem>
        <asp:ListItem Text="Engraving"></asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <asp:Label ID="lblMedia" runat="server" Text="Media Type"></asp:Label>
    <asp:RadioButtonList ID="rbtnMedia" runat="server">
        <asp:ListItem Text="Clothing"></asp:ListItem>
        <asp:ListItem Text="Plaque"></asp:ListItem>
        <asp:ListItem Text="Trophy"></asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <asp:Label ID="lblComment" runat="server" Text="Enter Your Comment Here:"></asp:Label>
    <br />
    <asp:TextBox ID="txtComment" runat="server" Width="300" Height="150"></asp:TextBox>
    <br />
    <asp:Button ID="btnSubmitReview" runat="server" Text="Submit" OnClick="btnSubmitReview_Click" />
</asp:Content>

