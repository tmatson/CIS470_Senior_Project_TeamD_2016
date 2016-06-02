<%@ Page Language="C#" MasterPageFile="~/SPMasterPage.master" AutoEventWireup="true" CodeFile="pgLogin.aspx.cs" Inherits="pgLogin" %>
<%@ MasterType VirtualPath="~/SPMasterPage.master" %>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">   

    <div class ="loginCenter">
        <div class ="login">
            <%-- Label and Textbox for Username --%>
            <asp:Label ID="Label1" runat="server" Text="Username " Width="120px"></asp:Label>
                <asp:TextBox ID="txtUsername" runat="server" Width="150px"></asp:TextBox><br />

            
            <%-- Panel, Label and Textbox for Password. Panel allows the use of hitting the 'Enter key' inside password text field to activate login button --%>
            <asp:Panel ID="Panel1" runat="server" DefaultButton="btnLogin">
                <asp:Label ID="Label2" runat="server" Text="Password " Width="120px"></asp:Label>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="150px"></asp:TextBox><br /><br />
            </asp:Panel>

            <%-- Button for Login Button --%>
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click"/><br /><br />

            <%-- Button for Create Account Button --%>
            <asp:Button ID="btnCreateAcct" runat="server" Text="Create Account" PostBackUrl="~/pgAcctCreate.aspx" /><br />
            <asp:Label ID="Label3" runat="server" Text="(Not registered? Create an account here.) " Width="375px"></asp:Label><br /><br />
        </div>
    </div>

    

</asp:Content>