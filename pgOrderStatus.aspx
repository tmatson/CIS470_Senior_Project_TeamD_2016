<%@ Page Title="" Language="C#" MasterPageFile="~/SPMasterPage.master" AutoEventWireup="true" CodeFile="pgOrderStatus.aspx.cs" Inherits="pgOrderStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class ="loginCenter">
        <h3>Current Purchases</h3>
        <asp:GridView ID="gvCurrentOrders" runat="server" HorizontalAlign="Center" style="margin-top: 10px"></asp:GridView><br />

        <h3>Order History</h3>
        <asp:GridView ID="gvOrderHistory" runat="server" HorizontalAlign="Center" style="margin-top: 10px"></asp:GridView>

        <h3>Order Details</h3>
        <asp:GridView ID="gvOrderDetails" runat="server" HorizontalAlign="Center" style="margin-top: 10px"></asp:GridView>

        <%-- Button for getting order details from a specific order into gridview --%>
        <asp:Button ID="btnOrderDetails" runat="server" Text="Order Details by #" OnClick="btnOrderDetails_Click" Width="130px"/>
            <asp:TextBox ID="txtOrderNum" runat="server" Width="50px"></asp:TextBox>
    </div>

    <%-- Datasource Current Orders By User --%>
    <asp:SqlDataSource ID="SDSCurrentOrders" runat="server" ConnectionString="<%$ ConnectionStrings:WSCDatabase_mdbConnectionString %>" ProviderName="<%$ ConnectionStrings:WSCDatabase_mdbConnectionString.ProviderName %>" SelectCommand="SELECT [OrderID], [Username], [OrderDate], [OrderStatus], [ShipDate], [TotalCost], [COD] FROM [tblOrderHeader] WHERE (([Username] = ?) AND ([OrderStatus] = ?) OR ([OrderStatus] = ?) AND ([Username] = ?)) ORDER BY [OrderDate]">
        <SelectParameters>
            <asp:CookieParameter CookieName="User" Name="Username" Type="String" />
            <asp:Parameter DefaultValue="PENDING" Name="OrderStatus" Type="String" />
            <asp:Parameter DefaultValue="SHIPPED" Name="OrderStatus2" Type="String" />
            <asp:CookieParameter CookieName="User" Name="Username2" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <%-- Datasource Complete Orders By User --%>
    <asp:SqlDataSource ID="SDSOrderByUser" runat="server" ConnectionString="<%$ ConnectionStrings:WSCDatabase_mdbConnectionString %>" ProviderName="<%$ ConnectionStrings:WSCDatabase_mdbConnectionString.ProviderName %>" SelectCommand="SELECT [OrderID], [OrderDate], [OrderStatus], [ShipDate], [TotalCost], [COD] FROM [tblOrderHeader] WHERE (([OrderStatus] = ?) AND ([Username] = ?)) ORDER BY [OrderID]">
        <SelectParameters>
            <asp:Parameter DefaultValue="Complete" Name="OrderStatus" Type="String" />
            <asp:CookieParameter CookieName="User" Name="Username" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>  
    
   <%-- Datasource Order Details By ID --%> 
    <asp:SqlDataSource ID="SDSOrderDetails" runat="server" ConnectionString="<%$ ConnectionStrings:WSCDatabase_mdbConnectionString %>" ProviderName="<%$ ConnectionStrings:WSCDatabase_mdbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblOrderDetail] WHERE ([OrderID] = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtOrderNum" Name="OrderID" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>      
</asp:Content>

