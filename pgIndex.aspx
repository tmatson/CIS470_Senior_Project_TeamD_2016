<%@ Page Title="" Language="C#" MasterPageFile="~/SPMasterPage.master" AutoEventWireup="true" CodeFile="pgIndex.aspx.cs" Inherits="pgIndex" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <h2>Your one stop shop for your team trophies, awards for your teachers and plaques for that special occasion!</h2>
        <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/pgProduct.aspx">Trophys for all Occasions!</asp:LinkButton><br />
    <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/index page/basketballteam.jpg" style="height:148px; width:175px; rotation:65deg; padding:15px"/>
    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/index page/HoldingTrophy.jpg" style="height:148px; width:175px; padding:15px; rotation-point:center; rotation:25deg" />
    <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/trop mach.jpe" style="height:148px; width:175px; padding:15px"/>  
    <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/index page/Boys_Golf_2013_copy.jpg" style="height:148px; width:195px; padding:15px" />
    <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/index page/trophies-from-azbaa-golf-benefit.jpg" style="height:148px; width:135px; padding:15px"/>  <br />
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/pgProduct.aspx">T-Shirts for any style - be creative!</asp:LinkButton><br />
    <asp:Image ID="Image6" runat="server" ImageUrl="~/Images/index page/evolution.jpg" style="height:148px; width:135px; padding:15px" />
    <asp:Image ID="Image7" runat="server" ImageUrl="~/Images/index page/white t-shirts_your design here.jpg" style="height:148px; width:175px; padding:15px" />
    <asp:Image ID="Image8" runat="server" ImageUrl="~/Images/th.jpe" style="height:148px; width:175px; padding:15px"/>
    <asp:Image ID="Image10" runat="server" ImageUrl="~/Images/index page/your_design_here_shirts.jpg" style="height:148px; width:135px; padding:15px" />
    <asp:Image ID="Image9" runat="server" ImageUrl="~/Images/index page/wordprint.jpg" style="height:148px; width:135px; padding:15px"/><br />
        <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/pgProduct.aspx">Plaques for Anyone!</asp:LinkButton><br />
    <asp:Image ID="Image11" runat="server" ImageUrl="~/Images/index page/falcon-basketball-awards.jpg" style="height:148px; width:195px; padding:15px"></asp:Image>
    <asp:Image ID="Image12" runat="server" ImageUrl="~/Images/index page/classroom-Golden-Apple-Award.jpg" style="height:148px; width:195px; padding:15px"></asp:Image>
    <asp:Image ID="Image13" runat="server" ImageUrl="~/Images/index page/DSCN9384_t580.jpg" style="height:148px; width:195px; padding:15px"></asp:Image>
    <asp:Image ID="Image14" runat="server" ImageUrl="~/Images/index page/BaseballAwards.JPG" style="height:148px; width:195px; padding:15px"></asp:Image>
    </center>
</asp:Content>

