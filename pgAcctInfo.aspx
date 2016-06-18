<%@ Page Title="" Language="C#" MasterPageFile="~/SPMasterPage.master" AutoEventWireup="true" CodeFile="pgAcctInfo.aspx.cs" Inherits="pgAcctInfo" %>
<%@ MasterType VirtualPath="~/SPMasterPage.master" %>
<%@ PreviousPageType VirtualPath="~/pgAcctCreate.aspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="loginCenter">
        <div class="login">
            <asp:Label ID="lblUserInfo" runat="server" Text="User Information"></asp:Label><br />

            <strong><asp:Label ID="UserName" runat="server" Text="User Name: " Width="100px"></asp:Label></strong>
            <asp:Label ID="lblUserName" runat="server" Text="Label" Width="140px"></asp:Label><br />

            <strong><asp:Label ID="FirstName" runat="server" Text ="First Name: " Width="100px"></asp:Label></strong>
            <asp:TextBox ID="txtFirstName" runat="server" Width="140px"></asp:TextBox><br />

            <strong><asp:Label ID="LastName" runat="server" Text="Last Name: " Width="100px"></asp:Label></strong>
            <asp:textbox ID="txtLastName" runat="server" Width="140px" ></asp:textbox><br />

            <strong><asp:Label ID="email" runat="server" Text="Email: " Width="100px"></asp:Label></strong>
            <asp:textbox ID="txtEmail" runat="server" Width="140px"></asp:textbox><br />

            <strong><asp:Label ID="Address1" runat="server" Text="Address 1: " Width="100px"></asp:Label></strong>
            <asp:textbox ID="txtAddress1" runat="server" Width="140px" ></asp:textbox><br />

            <strong><asp:Label ID="Address2" runat="server" Text="Address 2: " Width="100px"></asp:Label></strong>
            <asp:textbox ID="txtAddress2" runat="server" Width="140px"></asp:textbox><br />

            <strong><asp:Label ID="City" runat="server" Text="City: " Width="100px"></asp:Label></strong>
            <asp:textbox ID="txtCity" runat="server" Width="140px"></asp:textbox><br />

            <strong><asp:Label ID="State" runat="server" Text="State: " Width="100px"></asp:Label></strong>
            <asp:textbox ID="txtState" runat="server" Width="140px"></asp:textbox><br />

            <strong><asp:Label ID="ZipCode" runat="server" Text="Zip Code: " Width="100px"></asp:Label></strong>
            <asp:textbox ID="txtZipCode" runat="server" Width="140px"></asp:textbox><br />

            <strong><asp:Label ID ="Phone" runat="server" Text="Phone" Width="100px"></asp:Label></strong>
            <asp:textbox ID="txtPhoneNum" runat="server" Width="140px"></asp:textbox><br />
            <br />
            <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" /><br /> 
        </div>
    </div>   
</asp:Content>

