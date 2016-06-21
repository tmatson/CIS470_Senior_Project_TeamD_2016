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
            <RowStyle BackColor="#F7F7DE" Wrap="False" />
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
        <asp:Label ID="lblCOD" runat="server" Text="Charge on Delivery Option (10% Deposit)"></asp:Label>
        <asp:CheckBox ID="cbCOD" runat="server" OnCheckedChanged="cbCOD_CheckedChanged" />
        <br />
        <br />
        Pay with credit or debit card<br />
        <br />
        <asp:Image ID="imgVisa" runat="server" ImageUrl="~/Images/visa_logo.gif" Height="38px" />&nbsp;
        <asp:Image ID="imgMasterCard" runat="server" ImageUrl="~/Images/mastercard_logo.gif" Height="38px" />&nbsp
        <asp:Image ID="imgDiscover" runat="server"  ImageUrl="~/Images/discover_logo.gif" Height="38px" />&nbsp;
        <asp:Image ID="imgAmerExpress" runat="server" ImageUrl="~/Images/american_express_logo.gif" Height="38px" /><br />
        <asp:RadioButtonList id=rblCreditCard runat="server" RepeatDirection="Horizontal" Width="281px">
            <asp:ListItem Value="VISA"></asp:ListItem>
            <asp:ListItem Value="MC"></asp:ListItem>
            <asp:ListItem Value="DC"></asp:ListItem>
            <asp:ListItem Value="AMEX"></asp:ListItem>            
        </asp:RadioButtonList>        
        <br />
        <asp:Label ID="lblCardName" runat="server" Text="Name on card" CssClass="card_info" />&nbsp;
        <asp:TextBox ID="txtCardName" runat="server" Width="197px" />
        <br />
        <asp:Label ID="lblCardNumber" runat="server" Text="Card Number" CssClass="card_info" />&nbsp;
        <asp:TextBox ID="txtCardNumber" runat="server" Width="200" />
        <br />
        <asp:Label ID="lblCardExp" runat="server" Text="Card Expiration" CssClass="card_info" />&nbsp;
        <asp:DropDownList ID="ddlMonth" runat="server">
            <asp:ListItem Value="1">January</asp:ListItem>
            <asp:ListItem Value="2">Febuary</asp:ListItem>
            <asp:ListItem Value="3">March</asp:ListItem>
            <asp:ListItem Value="4">April</asp:ListItem>
            <asp:ListItem Value="5">May</asp:ListItem>
            <asp:ListItem Value="6">June</asp:ListItem>
            <asp:ListItem Value="7">July</asp:ListItem>
            <asp:ListItem Value="8">August</asp:ListItem>
            <asp:ListItem Value="9">September</asp:ListItem>
            <asp:ListItem Value="10">October</asp:ListItem>
            <asp:ListItem Value="11">November</asp:ListItem>
            <asp:ListItem Value="12">December</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="ddlYear" runat="server">
            <asp:ListItem>2016</asp:ListItem>
            <asp:ListItem>2017</asp:ListItem>
            <asp:ListItem>2018</asp:ListItem>
            <asp:ListItem>2019</asp:ListItem>
            <asp:ListItem>2020</asp:ListItem>
            <asp:ListItem>2021</asp:ListItem>
            <asp:ListItem>2022</asp:ListItem>
            <asp:ListItem Value="2023"></asp:ListItem>
            <asp:ListItem Value="2024"></asp:ListItem>
            <asp:ListItem>2025</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Label ID="lblCardCode" runat="server" Text="CVV Code (Back of Card)" CssClass="card_info" />&nbsp;
        <asp:TextBox ID="txtCardCode" runat="server" Width="60px" />
        <br />   
        <br /><br />
        <asp:Button ID="continueShopping" runat="server" Text="Continue Shopping" OnClick="continueShopping_Click" />&nbsp;&nbsp;&nbsp;
        <asp:Button ID="checkout" runat="server" Text="Checkout" OnClick="checkout_Click" />
    </div>
</asp:Content>

