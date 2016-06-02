<%@ Page Title="" Language="C#" MasterPageFile="~/SPMasterPage.master" AutoEventWireup="true" CodeFile="pgReview.aspx.cs" Inherits="pgReview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--This is just going to be a page of placeholders. When the database is somewhat complete, we can add some fake data
        in and pull that data into these labels. Basically, the username will be pulled and the username label will be
        overwritten with it, etc. - Lennon May -->
    <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Product Type Bought and Reviewed"></asp:Label>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Comment"
</asp:Content>

