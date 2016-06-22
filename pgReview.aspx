<%@ Page Title="" Language="C#" MasterPageFile="~/SPMasterPage.master" AutoEventWireup="true" CodeFile="pgReview.aspx.cs" Inherits="pgReview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #txtComment {
            width: 238px;
            height: 100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin:auto; text-align:center; color: darkblue;">
        <h1>Did you like our service? Share your experience with our product!</h1>
        <br />
        <asp:Label ID="lblMedia" runat="server" Text="Media Type: "></asp:Label>
        <asp:DropDownList ID ="ddlMedia" runat="server">
            <asp:ListItem>Small Academic Trophy</asp:ListItem>
            <asp:ListItem>Medium Academic Trophy</asp:ListItem>
            <asp:ListItem>Large Academic Trophy</asp:ListItem>
            <asp:ListItem>Small Baseball Player Trophy</asp:ListItem>
            <asp:ListItem>Medium Baseball Player Trophy</asp:ListItem>
            <asp:ListItem>Large Baseball Player Trophy</asp:ListItem>
            <asp:ListItem>Small Baseball Trophy</asp:ListItem>
            <asp:ListItem>Medium Baseball Trophy</asp:ListItem>
            <asp:ListItem>Large Baseball Trophy</asp:ListItem>
            <asp:ListItem>Small Basketball Trophy</asp:ListItem>
            <asp:ListItem>Medium Basketball Trophy</asp:ListItem>
            <asp:ListItem>Large Basketball Trophy</asp:ListItem>
            <asp:ListItem>Small Golf Trophy</asp:ListItem>
            <asp:ListItem>Medium Golf Trophy</asp:ListItem>
            <asp:ListItem>Large Golf Trophy</asp:ListItem>
            <asp:ListItem>X-Small Men&#39;s T-Shirt</asp:ListItem>
            <asp:ListItem>Small Men&#39;s T-shirt</asp:ListItem>
            <asp:ListItem>Medium Men&#39;s T-Shirt</asp:ListItem>
            <asp:ListItem>Large Men&#39;s T-Shirt</asp:ListItem>
            <asp:ListItem>X-Large Men&#39;s T-Shirt</asp:ListItem>
            <asp:ListItem>2XL Men&#39;s T-Shirt</asp:ListItem>
            <asp:ListItem>3XL Men&#39;s T-Shirt</asp:ListItem>
            <asp:ListItem>X-Small Women&#39;s T-Shirt</asp:ListItem>
            <asp:ListItem>Small Women&#39;s T-Shirt</asp:ListItem>
            <asp:ListItem>Medium Women&#39;s T-Shirt</asp:ListItem>
            <asp:ListItem>Large Women&#39;s T-Shirt</asp:ListItem>
            <asp:ListItem>X-Large Women&#39;s T-Shirt</asp:ListItem>
            <asp:ListItem>2XL Women&#39;s T-Shirt</asp:ListItem>
            <asp:ListItem>3XL Women&#39;s T-Shirt</asp:ListItem>
            <asp:ListItem>X-Small Youth T-Shirt</asp:ListItem>
            <asp:ListItem>Small Youth T-Shirt</asp:ListItem>
            <asp:ListItem>Medium Youth T-Shirt</asp:ListItem>
            <asp:ListItem>Large Youth T-Shirt</asp:ListItem>
            <asp:ListItem>X-Large Youth T-Shirt</asp:ListItem>
            <asp:ListItem>Small Classic Plaque</asp:ListItem>
            <asp:ListItem>Medium Classic Plaque</asp:ListItem>
            <asp:ListItem>Large Classic Plaque</asp:ListItem>
            <asp:ListItem>Small Golden Apple Plaque</asp:ListItem>
            <asp:ListItem>Medium Golden Apple Plaque</asp:ListItem>
            <asp:ListItem>Large Golden Apple Plaque</asp:ListItem>
            <asp:ListItem>Bronze Honoree of the Month</asp:ListItem>
            <asp:ListItem>Silver Honoree of the Month</asp:ListItem>
        </asp:DropDownList>
        <br /><br />
        <asp:Label ID="lblComment" runat="server" Text="Enter Your Comment Here:"></asp:Label>
        <br />
        <textarea id="txtComment" name="txtComment" maxlength="255"></textarea>
        <br /><br />
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
    <div id="reviews" runat="server" style="text-align: center; font-size: large; color: darkblue;">
        <h3 id="emptyMessage">Sorry! Looks like no reviews have been submitted. Be the first to review our services!</h3>
    </div>
    <div>
        <asp:GridView ID="gvAllReviews" runat="server" HorizontalAlign="Center" style="margin-top: 10px"></asp:GridView>
        <asp:SqlDataSource ID="SDSReviews" runat="server" ConnectionString="<%$ ConnectionStrings:WSCDatabase_mdbConnectionString %>" ProviderName="<%$ ConnectionStrings:WSCDatabase_mdbConnectionString.ProviderName %>" SelectCommand="SELECT tblReview.CustomerID, tblReview.ProductID, tblReview.MediaType, tblreview.Comments, tblReview.ReviewDate, tblUserAcct.Username FROM tblReview INNER JOIN tblUserAcct ON tblReview.CustomerID = tblUserAcct.CustomerID" />
        
        <div class="loginCenter">
            <div class="login">
                <asp:Button ID="btnReviewGrid" runat="server" Text="All Reviews" OnClick="btnReviewGrid_Click" />
                <asp:Button ID="btnHideGrid" runat="server" Text="Hide Grid" Visible="false" OnClick="btnHideGrid_Click" />
            </div>
        </div>        
    </div>
</asp:Content>

