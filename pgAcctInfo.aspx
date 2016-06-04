<%@ Page Title="" Language="C#" MasterPageFile="~/SPMasterPage.master" AutoEventWireup="true" CodeFile="pgAcctInfo.aspx.cs" Inherits="pgAcctInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblGVDataBase" runat="server" Text="User Information"></asp:Label><br />
    <asp:GridView ID="gvUserInfo" runat="server"></asp:GridView>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
</asp:Content>

