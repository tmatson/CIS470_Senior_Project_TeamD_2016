<%@ Page Title="" Language="C#" MasterPageFile="~/SPMasterPage.master" AutoEventWireup="true" CodeFile="pgOrder.aspx.cs" Inherits="pgOrder" %>
<%@ MasterType VirtualPath="~/SPMasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="order_content">
        <h2>Order Details</h2>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" GridLines="Vertical" 
            AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#DEDFDE" 
            BorderStyle="None" BorderWidth="1px" ForeColor="Black" Width="436px" >
            <Columns>
                <asp:BoundField DataField="MediaType" HeaderText="Description" />
                <asp:BoundField DataField="Personalization" HeaderText="Personalization" />
                <asp:BoundField DataField="Color" HeaderText="Color" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantiity" />
                <asp:BoundField DataField="Cost" HeaderText="Price" ReadOnly="True" DataFormatString="{0:C}" HtmlEncode="False" />
                <asp:BoundField DataField="TotalCost" HeaderText="Total" ReadOnly="True" DataFormatString="{0:C}" HtmlEncode="False"  />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle Font-Size="0.9em" ForeColor="White" BackColor="#6B696B" Font-Bold="True" />
            <AlternatingRowStyle BackColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"></asp:ObjectDataSource>
        <br />
        Order Total = <asp:Label ID="OrderTotal" runat="server" Text="" />
        <br />
        <br />
        Pay with credit or debit card<br />
        <br />
        <asp:Image ID="imgVisa" runat="server" ImageUrl="~/Images/visa_logo.gif" Height="38px" />&nbsp;
        <asp:Image ID="imgMasterCard" runat="server" ImageUrl="~/Images/mastercard_logo.gif" Height="38px" />&nbsp
        <asp:Image ID="imgDiscover" runat="server"  ImageUrl="~/Images/discover_logo.gif" Height="38px" />&nbsp;
        <asp:Image ID="imgAmerExpress" runat="server" ImageUrl="~/Images/american_express_logo.gif" Height="38px" />
        <br /><br />
        <asp:Label ID="lblCardNumber" runat="server" Text="Card Number" CssClass="card_info" />&nbsp;
        <asp:TextBox ID="txtCardNumber" runat="server" Width="200" />
       
        <br /><br />
        <asp:Button ID="continueShopping" runat="server" Text="Continue Shopping" OnClick="continueShopping_Click" />&nbsp;&nbsp;&nbsp;
        <asp:Button ID="checkout" runat="server" Text="Checkout" OnClick="checkout_Click" />
    </div>
</asp:Content>

