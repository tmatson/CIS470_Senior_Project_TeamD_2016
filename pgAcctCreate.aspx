<%@ Page Title="" Language="C#" MasterPageFile="~/SPMasterPage.master" AutoEventWireup="true" CodeFile="pgAcctCreate.aspx.cs" Inherits="pgAcctCreate" %>
<%@ MasterType VirtualPath="~/SPMasterPage.master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="loginCenter">
        <div class="login">

            <h1>CREATE AN ACCOUNT</h1>

            <div class="container">
                <h2>Personal Information</h2>                
                <asp:Label ID="lblfstname" runat="server" Text="*First Name " Width="105px"></asp:Label>
                    <asp:TextBox ID="txtFirstname" runat="server"></asp:TextBox><br />
                <asp:Label ID="lbllstname" runat="server" Text="*Last Name " Width="105px"></asp:Label>
                    <asp:TextBox ID="txtLastname" runat="server"></asp:TextBox><br />
                <asp:Label ID="lblemail" runat="server" Text="*Email Address " Width="105px"></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br />
                <asp:Label ID="lbladdress1" runat="server" Text="*Address 1 " Width="105px"></asp:Label>
                    <asp:TextBox ID="txtAddress1" runat="server"></asp:TextBox><br />
                <asp:Label ID="lbladdress2" runat="server" Text="Address 2 " Width="105px"></asp:Label>
                    <asp:TextBox ID="txtAddress2" runat="server"></asp:TextBox><br />
                <asp:Label ID="lblcity" runat="server" Text="*City " Width="105px"></asp:Label>
                    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox><br />
                <asp:Label ID="lblstate" runat="server" Text="*State " Width="105px"></asp:Label>
                    <asp:TextBox ID="txtState" runat="server"></asp:TextBox><br />
                <asp:Label ID="lblzipcode" runat="server" Text="*Zip Code " Width="105px"></asp:Label>
                    <asp:TextBox ID="txtZipCode" runat="server"></asp:TextBox><br />
                <asp:Label ID="lblphnum" runat="server" Text="*Phone Number "></asp:Label>
                    <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox><br />               
            </div>           

            <div class="container">
                <h2>Login Information</h2>                
                <asp:Label ID="lblUsername" runat="server" Text="*Username " Width="132px"></asp:Label>
                    <asp:TextBox ID="txtUsername" runat="server" Width="128px" ></asp:TextBox><br /> 
                <asp:Label ID="lblPassword" runat="server" Text="*Password " Width="132px"></asp:Label>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="128px"></asp:TextBox><br />
                <asp:Label ID="lblconfpswd" runat="server" Text="*Confirm Password " Width="132px"></asp:Label>
                    <asp:TextBox ID="txtConfPassword" runat="server" TextMode="Password" Width="128px"></asp:TextBox><br />           
            </div>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" onclick="btnSubmit_Click"/><br />
            <asp:Label ID="lblrequired" runat="server" Text="* Required Fields" ForeColor="Red"></asp:Label>
        </div>
    </div>   
</asp:Content>

