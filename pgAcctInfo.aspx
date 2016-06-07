<%@ Page Title="" Language="C#" MasterPageFile="~/SPMasterPage.master" AutoEventWireup="true" CodeFile="pgAcctInfo.aspx.cs" Inherits="pgAcctInfo" %>
<%@ PreviousPageType VirtualPath="~/pgAcctCreate.aspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblUserInfo" runat="server" Text="User Information"></asp:Label><br />
    <strong><asp:Label ID="UserName" runat="server" Text="User Name: "></asp:Label></strong>
    <asp:Label ID="lblUserName" runat="server" Text="Label"></asp:Label><br />
    <strong><asp:Label ID="FirstName" runat="server" Text ="First Name: "></asp:Label></strong>
    <asp:Label ID="lblFirstName" runat="server" Text="Label"></asp:Label><br />
    <strong><asp:Label ID="LastName" runat="server" Text="Last Name: "></asp:Label></strong>
    <asp:Label ID="lblLastName" runat="server" Text="Label"></asp:Label><br />
    <strong><asp:Label ID="email" runat="server" Text="Email: "></asp:Label></strong>
    <asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label><br />
    <strong><asp:Label ID="Address1" runat="server" Text="Address 1: "></asp:Label></strong>
    <asp:Label ID="lblAddress1" runat="server" Text="Label"></asp:Label><br />
    <strong><asp:Label ID="Address2" runat="server" Text="Address 2: "></asp:Label></strong>
    <asp:Label ID="lblAddress2" runat="server" Text="Label"></asp:Label><br />
    <strong><asp:Label ID="City" runat="server" Text="City: "></asp:Label></strong>
    <asp:Label ID="lblCity" runat="server" Text="Label"></asp:Label><br />
    <strong><asp:Label ID="State" runat="server" Text="State: "></asp:Label></strong>
    <asp:Label ID="lblState" runat="server" Text="Label"></asp:Label><br />
    <strong><asp:Label ID ="Phone" runat="server" Text="Phone Number: "></asp:Label></strong>
    <asp:Label ID="lblPhoneNum" runat="server" Text="Label"></asp:Label><br />
    <br />
    <asp:Button ID="continue" runat="server" Text="Continue" /><br />
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
</asp:Content>

