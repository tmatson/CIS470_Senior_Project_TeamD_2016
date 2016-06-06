<%@ Page Title="" Language="C#" MasterPageFile="~/SPMasterPage.master" AutoEventWireup="true" CodeFile="pgReview.aspx.cs" Inherits="pgReview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Pretty straightforward; labels, textboxes and radio buttons in order to capture data for a review. -->
    <div style="margin:auto; text-align:center">
        <h1>Did you like our service? Share your experience with our product!</h1>
        <br />
        <asp:Label ID="lblJob" runat="server" Text="Job Type"></asp:Label>
        <asp:RadioButtonList ID="rbtnJob" runat="server" RepeatDirection="Horizontal" align="center">
            <asp:ListItem Text="Printing" Value="1"></asp:ListItem>
            <asp:ListItem Text="Engraving" Value="2"></asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Label ID="lblMedia" runat="server" Text="Media Type"></asp:Label>
        <asp:RadioButtonList ID="rbtnMedia" runat="server" RepeatDirection="Horizontal" align="center">
            <asp:ListItem Text="Clothing" Value="1"></asp:ListItem>
            <asp:ListItem Text="Plaque" Value="2"></asp:ListItem>
            <asp:ListItem Text="Trophy" Value="3"></asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Label ID="lblComment" runat="server" Text="Enter Your Comment Here:"></asp:Label>
        <br />
        <textarea id="txtComment" name="txtComment" cols="20" rows="2"></textarea>
        <br />
        <asp:Button ID="btnSubmitReview" runat="server" Text="Submit" OnClick="btnSubmitReview_Click" />
        <br />
        <br />
        <asp:Button ID="btnLoginRedirect" runat="server" Visible="false" Text="Login" OnClick="btnLoginRedirect_Click" />
        <br />
        <p id="message1" runat="server" style="color:red" visible="false">Login to leave a review!</p>
        <p id="message2" runat="server" style="color:red" visible="false">You did not pick a Job Type!</p>
        <p id="message3" runat="server" style="color:red" visible="false">You did not pick a Media Type!</p>
        <p id="message4" runat="server" style="color:red" visible="false">You did not enter a Review!</p>
    </div>
</asp:Content>

