<%@ Page Title="" Language="C#" MasterPageFile="~/SPMasterPage.master" AutoEventWireup="true" CodeFile="pgOrder.aspx.cs" Inherits="pgOrder" %>
<%@ MasterType VirtualPath="~/SPMasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #Text1 {
            width: 179px;
        }
    </style>
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
        <a href="http://www.credit-card-logos.com">
        <img alt="&lt;br /&gt;
            &lt;b&gt;Notice&lt;/b&gt;:  Undefined variable: alt_tag in &lt;b&gt;/home/ccl606/public_html/index.html&lt;/b&gt; on line &lt;b&gt;396&lt;/b&gt;&lt;br /&gt;
"           border="0" height="42" src="http://www.credit-card-logos.com/images/visa_credit-card-logos/visa_logo_2.gif" title="&lt;br /&gt;
            &lt;b&gt;Notice&lt;/b&gt;:  Undefined variable: alt_tag in &lt;b&gt;/home/ccl606/public_html/index.html&lt;/b&gt; on line &lt;b&gt;396&lt;/b&gt;&lt;br /&gt;
"            width="57" /></a><a href="http://www.credit-card-logos.com">
        </a>
        <a href="http://www.credit-card-logos.com"><img alt="<br />
<b>Notice</b>:  Undefined variable: alt_tag in <b>/home/ccl606/public_html/index.html</b> on line <b>576</b><br />
" title="<br />
<b>Notice</b>:  Undefined variable: alt_tag in <b>/home/ccl606/public_html/index.html</b> on line <b>576</b><br />
" src="http://www.credit-card-logos.com/images/mastercard_credit-card-logos/mastercard_logo_4.gif" width="65" height="42" border="0" /></a> 
        &nbsp;<a href="http://www.credit-card-logos.com"><img alt="&lt;br /&gt;
&lt;b&gt;Notice&lt;/b&gt;:  Undefined variable: alt_tag in &lt;b&gt;/home/ccl606/public_html/index.html&lt;/b&gt; on line &lt;b&gt;611&lt;/b&gt;&lt;br /&gt;
" border="0" height="42" src="http://www.credit-card-logos.com/images/american_express_credit-card-logos/american_express_logo_9.gif" title="&lt;br /&gt;
&lt;b&gt;Notice&lt;/b&gt;: s Undefined variable: alt_tag in &lt;b&gt;/home/ccl606/public_html/index.html&lt;/b&gt; on line &lt;b&gt;611&lt;/b&gt;&lt;br /&gt;
" style="width: 70px" />
        <img alt="&lt;br /&gt;
&lt;b&gt;Notice&lt;/b&gt;:  Undefined variable: alt_tag in &lt;b&gt;/home/ccl606/public_html/index.html&lt;/b&gt; on line &lt;b&gt;646&lt;/b&gt;&lt;br /&gt;
" border="0" height="42" src="http://www.credit-card-logos.com/images/discover_credit-card-logos/discover_logo_1.gif" title="&lt;br /&gt;
&lt;b&gt;Notice&lt;/b&gt;:  Undefined variable: alt_tag in &lt;b&gt;/home/ccl606/public_html/index.html&lt;/b&gt; on line &lt;b&gt;646&lt;/b&gt;&lt;br /&gt;
" width="67" /></a><br />
        <br />
        <asp:Label ID="lblCardNumber" runat="server" Text="Card Number" CssClass="card_info" />&nbsp;
        <asp:TextBox ID="txtCardNumber" runat="server" Width="200" />
       
    </div>
</asp:Content>

