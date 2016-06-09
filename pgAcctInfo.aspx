<%@ Page Title="" Language="C#" MasterPageFile="~/SPMasterPage.master" AutoEventWireup="true" CodeFile="pgAcctInfo.aspx.cs" Inherits="pgAcctInfo" %>
<%@ MasterType VirtualPath="~/SPMasterPage.master" %>
<%@ PreviousPageType VirtualPath="~/pgAcctCreate.aspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblUserInfo" runat="server" Text="User Information"></asp:Label><br />

    <strong><asp:Label ID="UserName" runat="server" Text="User Name: "></asp:Label></strong>
    <asp:Label ID="lblUserName" runat="server" Text="Label"></asp:Label><br />

    <strong><asp:Label ID="FirstName" runat="server" Text ="First Name: "></asp:Label></strong>
    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox><br />

    <strong><asp:Label ID="LastName" runat="server" Text="Last Name: "></asp:Label></strong>
    <asp:textbox ID="txtLastName" runat="server" ></asp:textbox><br />

    <strong><asp:Label ID="email" runat="server" Text="Email: "></asp:Label></strong>
    <asp:textbox ID="txtEmail" runat="server"></asp:textbox><br />

    <strong><asp:Label ID="Address1" runat="server" Text="Address 1: "></asp:Label></strong>
    <asp:textbox ID="txtAddress1" runat="server" ></asp:textbox><br />

    <strong><asp:Label ID="Address2" runat="server" Text="Address 2: "></asp:Label></strong>
    <asp:textbox ID="txtAddress2" runat="server"></asp:textbox><br />

    <strong><asp:Label ID="City" runat="server" Text="City: "></asp:Label></strong>
    <asp:textbox ID="txtCity" runat="server"></asp:textbox><br />

    <strong><asp:Label ID="State" runat="server" Text="State: "></asp:Label></strong>
    <asp:textbox ID="txtState" runat="server"></asp:textbox><br />

    <strong><asp:Label ID="ZipCode" runat="server" Text="Zip Code: "></asp:Label></strong>
    <asp:textbox ID="txtZipCode" runat="server"></asp:textbox><br />

    <strong><asp:Label ID ="Phone" runat="server" Text="Phone"></asp:Label></strong>
    <asp:textbox ID="txtPhoneNum" runat="server"></asp:textbox><br />
    <br />
    <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" /><br />    
    
</asp:Content>

