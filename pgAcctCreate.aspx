<%@ Page Title="" Language="C#" MasterPageFile="~/SPMasterPage.master" AutoEventWireup="true" CodeFile="pgAcctCreate.aspx.cs" Inherits="pgAcctCreate" %>
<%@ MasterType VirtualPath="~/SPMasterPage.master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>CREATE AN ACCOUNT</h1>
    <div class="container">
        <h2>Personal Information</h2>
        <div class="grid_2"><!--Trying to get the 2 grids to line up-->
            *<asp:Label ID="lblfstname" runat="server" Text="First Name "></asp:Label><br />
            *<asp:Label ID="lbllstname" runat="server" Text="Last Name "></asp:Label><br />
            *<asp:Label ID="lblemail" runat="server" Text="Email Address "></asp:Label><br />
            *<asp:Label ID="lbladdress1" runat="server" Text="Address 1 "></asp:Label><br />
            *<asp:Label ID="lbladdress2" runat="server" Text="Address 2 "></asp:Label><br />
            *<asp:Label ID="lblcity" runat="server" Text="City "></asp:Label><br />
            *<asp:Label ID="lblstate" runat="server" Text="State "></asp:Label><br />
            *<asp:Label ID="lblphnum" runat="server" Text="Phone Number "></asp:Label><br />
        </div>
        <div class="grid_10">
            <asp:TextBox ID="txtFirstname" runat="server"></asp:TextBox><br />
            <asp:TextBox ID="txtLastname" runat="server"></asp:TextBox><br />
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br />
            <asp:TextBox ID="txtAddress1" runat="server"></asp:TextBox><br />
            <asp:TextBox ID="txtAddress2" runat="server"></asp:TextBox><br />
            <asp:TextBox ID="txtCity" runat="server"></asp:TextBox><br />
            <asp:TextBox ID="txtState" runat="server"></asp:TextBox><br />
            <asp:TextBox ID="txtPhoneNumber" runat="server" TextMode="Phone"></asp:TextBox><br />
        </div>
    </div>
    <h2>Login Information</h2>
    <div class="container">
        <div class="grid_2">
            *<asp:Label ID="lblUsername" runat="server" Text="User Name "></asp:Label><br />
            *<asp:Label ID="lblPassword" runat="server" Text="Password "></asp:Label><br />
            *<asp:Label ID="lblconfpswd" runat="server" Text="Confirm Password "></asp:Label><br />
        </div>
        <div class="grid_10">
            <asp:TextBox ID="txtUsername" runat="server" ></asp:TextBox><br />
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><br />
            <asp:TextBox ID="txtConfPassword" runat="server" TextMode="Password"></asp:TextBox><br />
        </div>
    </div>
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" onclick="btnSubmit_Click"/><br />
    <asp:Label ID="lblrequired" runat="server" Text="* Required Fields" ForeColor="Red"></asp:Label>
        

    
</asp:Content>

