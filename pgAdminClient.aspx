<%@ Page Title="" Language="C#" MasterPageFile="~/SPMasterPage.master" AutoEventWireup="true" CodeFile="pgAdminClient.aspx.cs" Inherits="pgAdminClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class ="loginCenter">
        
        <%-- Universal gridview --%>
        <asp:GridView ID="gvUniversal" runat="server" HorizontalAlign="Center" style="margin-top: 25px"></asp:GridView>

        <div class ="login2">
            <div class ="floatLeft">
                <h3>Account Controls</h3>
                <%-- Button for getting all users into gridview --%>
                <asp:Button ID="btnAllUserAccts" runat="server" Text="All User Accounts" OnClick="btnAllUserAccts_Click" Width="202px"/><br />
                
                <%-- Button for getting user account by username into gridview --%>
                <asp:Button ID="btnAcctByUser" runat="server" Text="Acct by User" Width="129px" OnClick="btnAcctByUser_Click"/>
                    <asp:TextBox ID="txtAcctByUser" runat="server" Width="65px"></asp:TextBox><br />           

                <%-- Button for getting all credit cards into gridview --%>
                <asp:Button ID="btnAllCCards" runat="server" Text="All Credit Card Info" OnClick="btnAllCCards_Click" Width="202px"/><br /> 

                <%-- Button for getting credit card by username into gridview --%>
                <asp:Button ID="btnCCardByCustID" runat="server" Text="CCard by CustID" Width="170px" OnClick="btnCCardByCustID_Click"/>
                    <asp:TextBox ID="txtCCardByCustID" runat="server" Width="25px"></asp:TextBox><br />
            </div>
             
            <div class ="floatLeft">
                <h3>Order Controls</h3>
                <%-- Button for getting all orders(Order Header Table) into gridview --%>
                <asp:Button ID="btnAllOrders" runat="server" Text="All Orders" OnClick="btnAllOrders_Click" Width="188px"/><br />

                <%-- Button for getting all pending orders into gridview --%>
                <asp:Button ID="btnPenOrders" runat="server" Text="All Pending Orders" OnClick="btnPenOrders_Click" Width="188px"/><br />

                <%-- Button for getting all shipped orders into gridview --%>
                <asp:Button ID="btnShipOrders" runat="server" Text="All Shipped Orders" OnClick="btnShipOrders_Click" Width="188px"/><br />

                <%-- Button for getting all Completed orders into gridview --%>
                <asp:Button ID="btnComOrders" runat="server" Text="All Completed Orders" OnClick="btnComOrders_Click" Width="188px"/><br />   
                
                <%-- Button for getting orders by username into gridview --%>
                <asp:Button ID="btnOrderByUser" runat="server" Text="Order By User" OnClick="btnOrderByUser_Click" Width="111px"/>
                    <asp:TextBox ID="txtOrderByUser" runat="server" Width="70px"></asp:TextBox><br />          

                <%-- Button for getting order details from a specific order into gridview --%>
                <asp:Button ID="btnOrderDetails" runat="server" Text="Order Details by #" OnClick="btnOrderDetails_Click" Width="130px"/>
                    <asp:TextBox ID="txtOrderNum" runat="server" Width="50px"></asp:TextBox>
            </div> 

            <div class ="floatLeft">
                <h3>Product Controls</h3>
                <%-- Button for getting all products  --%>
                <asp:Button ID="btnProducts" runat="server" Text="All Products" Width="227px" OnClick="btnProducts_Click"/><br />

                <%-- Button for getting all reviews --%>
                <asp:Button ID="btnReviews" runat="server" Text="All Reviews" Width="227px" OnClick="btnReviews_Click"/><br />

                <%-- Button for getting reviews by product ID --%>
                <asp:Button ID="btnReviewByProd" runat="server" Text="Reviews by ProdID" Width="194px" OnClick="btnReviewByProd_Click"/>
                    <asp:TextBox ID="txtReviewByProd" runat="server" Width="25px"></asp:TextBox><br />

                <%-- Button for getting reviews by username --%>
                <asp:Button ID="btnReviewByUser" runat="server" Text="Reviews by CustID" Width="194px" OnClick="btnReviewByUser_Click"/>
                    <asp:TextBox ID="txtReviewByUser" runat="server" Width="25px"></asp:TextBox><br />
            </div>

            <%-- SQL Data Sources Below --%>

            <%-- User Accounts --%>
            <asp:SqlDataSource ID="SDSUserAccts" runat="server" ConnectionString="<%$ ConnectionStrings:WSCDatabase_mdbConnectionString %>" DeleteCommand="DELETE FROM [tblUserAcct] WHERE [CustomerID] = ?" InsertCommand="INSERT INTO [tblUserAcct] ([CustomerID], [Username], [Password], [Firstname], [Lastname], [Address1], [Address2], [City], [State], [ZipCode], [Email], [PhoneNumber], [SecurityLevel], [Locked]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:WSCDatabase_mdbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblUserAcct] ORDER BY [CustomerID]" UpdateCommand="UPDATE [tblUserAcct] SET [Username] = ?, [Password] = ?, [Firstname] = ?, [Lastname] = ?, [Address1] = ?, [Address2] = ?, [City] = ?, [State] = ?, [ZipCode] = ?, [Email] = ?, [PhoneNumber] = ?, [SecurityLevel] = ?, [Locked] = ? WHERE [CustomerID] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Firstname" Type="String" />
                    <asp:Parameter Name="Lastname" Type="String" />
                    <asp:Parameter Name="Address1" Type="String" />
                    <asp:Parameter Name="Address2" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="ZipCode" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="PhoneNumber" Type="String" />
                    <asp:Parameter Name="SecurityLevel" Type="String" />
                    <asp:Parameter Name="Locked" Type="Boolean" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Firstname" Type="String" />
                    <asp:Parameter Name="Lastname" Type="String" />
                    <asp:Parameter Name="Address1" Type="String" />
                    <asp:Parameter Name="Address2" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="ZipCode" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="PhoneNumber" Type="String" />
                    <asp:Parameter Name="SecurityLevel" Type="String" />
                    <asp:Parameter Name="Locked" Type="Boolean" />
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

            <%-- User Accounts by Username --%>
            <asp:SqlDataSource ID="SDSAcctByUser" runat="server" ConnectionString="<%$ ConnectionStrings:WSCDatabase_mdbConnectionString %>" DeleteCommand="DELETE FROM [tblUserAcct] WHERE [CustomerID] = ?" InsertCommand="INSERT INTO [tblUserAcct] ([CustomerID], [Username], [Password], [Firstname], [Lastname], [Address1], [Address2], [City], [State], [ZipCode], [Email], [PhoneNumber], [SecurityLevel], [Locked]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:WSCDatabase_mdbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblUserAcct] WHERE ([Username] = ?)" UpdateCommand="UPDATE [tblUserAcct] SET [Username] = ?, [Password] = ?, [Firstname] = ?, [Lastname] = ?, [Address1] = ?, [Address2] = ?, [City] = ?, [State] = ?, [ZipCode] = ?, [Email] = ?, [PhoneNumber] = ?, [SecurityLevel] = ?, [Locked] = ? WHERE [CustomerID] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Firstname" Type="String" />
                    <asp:Parameter Name="Lastname" Type="String" />
                    <asp:Parameter Name="Address1" Type="String" />
                    <asp:Parameter Name="Address2" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="ZipCode" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="PhoneNumber" Type="String" />
                    <asp:Parameter Name="SecurityLevel" Type="String" />
                    <asp:Parameter Name="Locked" Type="Boolean" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtAcctByUser" Name="Username" PropertyName="Text" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Firstname" Type="String" />
                    <asp:Parameter Name="Lastname" Type="String" />
                    <asp:Parameter Name="Address1" Type="String" />
                    <asp:Parameter Name="Address2" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="ZipCode" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="PhoneNumber" Type="String" />
                    <asp:Parameter Name="SecurityLevel" Type="String" />
                    <asp:Parameter Name="Locked" Type="Boolean" />
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

            <%-- Credit Cards --%>
            <asp:SqlDataSource ID="SDSCCards" runat="server" ConnectionString="<%$ ConnectionStrings:WSCDatabase_mdbConnectionString %>" DeleteCommand="DELETE FROM [tblCCard] WHERE [OrderID] = ?" InsertCommand="INSERT INTO [tblCCard] ([CustomerID], [OrderID], [CreditCardNumber], [CreditCardType], [CardOwner], [CreditCardCode], [CreditCardExpDate]) VALUES (?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:WSCDatabase_mdbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblCCard] ORDER BY [OrderID]" UpdateCommand="UPDATE [tblCCard] SET [CustomerID] = ?, [CreditCardNumber] = ?, [CreditCardType] = ?, [CardOwner] = ?, [CreditCardCode] = ?, [CreditCardExpDate] = ? WHERE [OrderID] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="OrderID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                    <asp:Parameter Name="OrderID" Type="Int32" />
                    <asp:Parameter Name="CreditCardNumber" Type="String" />
                    <asp:Parameter Name="CreditCardType" Type="String" />
                    <asp:Parameter Name="CardOwner" Type="String" />
                    <asp:Parameter Name="CreditCardCode" Type="String" />
                    <asp:Parameter Name="CreditCardExpDate" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                    <asp:Parameter Name="CreditCardNumber" Type="String" />
                    <asp:Parameter Name="CreditCardType" Type="String" />
                    <asp:Parameter Name="CardOwner" Type="String" />
                    <asp:Parameter Name="CreditCardCode" Type="String" />
                    <asp:Parameter Name="CreditCardExpDate" Type="DateTime" />
                    <asp:Parameter Name="OrderID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

            <%-- Credit Cards by Username --%>
            <asp:SqlDataSource ID="SDSCCardByCustID" runat="server" ConnectionString="<%$ ConnectionStrings:WSCDatabase_mdbConnectionString %>" DeleteCommand="DELETE FROM [tblCCard] WHERE [OrderID] = ?" InsertCommand="INSERT INTO [tblCCard] ([CustomerID], [OrderID], [CreditCardNumber], [CreditCardType], [CardOwner], [CreditCardCode], [CreditCardExpDate]) VALUES (?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:WSCDatabase_mdbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblCCard] WHERE ([CustomerID] = ?) ORDER BY [OrderID]" UpdateCommand="UPDATE [tblCCard] SET [CustomerID] = ?, [CreditCardNumber] = ?, [CreditCardType] = ?, [CardOwner] = ?, [CreditCardCode] = ?, [CreditCardExpDate] = ? WHERE [OrderID] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="OrderID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                    <asp:Parameter Name="OrderID" Type="Int32" />
                    <asp:Parameter Name="CreditCardNumber" Type="String" />
                    <asp:Parameter Name="CreditCardType" Type="String" />
                    <asp:Parameter Name="CardOwner" Type="String" />
                    <asp:Parameter Name="CreditCardCode" Type="String" />
                    <asp:Parameter Name="CreditCardExpDate" Type="DateTime" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtCCardByCustID" Name="CustomerID" PropertyName="Text" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                    <asp:Parameter Name="CreditCardNumber" Type="String" />
                    <asp:Parameter Name="CreditCardType" Type="String" />
                    <asp:Parameter Name="CardOwner" Type="String" />
                    <asp:Parameter Name="CreditCardCode" Type="String" />
                    <asp:Parameter Name="CreditCardExpDate" Type="DateTime" />
                    <asp:Parameter Name="OrderID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
    
            <%-- Orders --%>
            <asp:SqlDataSource ID="SDSOrders" runat="server" ConnectionString="<%$ ConnectionStrings:WSCDatabase_mdbConnectionString %>" DeleteCommand="DELETE FROM [tblOrderHeader] WHERE [OrderID] = ?" InsertCommand="INSERT INTO [tblOrderHeader] ([OrderID], [CustomerID], [Username], [OrderDate], [OrderStatus], [ShipDate], [TotalCost], [COD]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:WSCDatabase_mdbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblOrderHeader] ORDER BY [OrderID]" UpdateCommand="UPDATE [tblOrderHeader] SET [CustomerID] = ?, [Username] = ?, [OrderDate] = ?, [OrderStatus] = ?, [ShipDate] = ?, [TotalCost] = ?, [COD] = ? WHERE [OrderID] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="OrderID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="OrderID" Type="Int32" />
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="OrderDate" Type="DateTime" />
                    <asp:Parameter Name="OrderStatus" Type="String" />
                    <asp:Parameter Name="ShipDate" Type="DateTime" />
                    <asp:Parameter Name="TotalCost" Type="Decimal" />
                    <asp:Parameter Name="COD" Type="Boolean" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="OrderDate" Type="DateTime" />
                    <asp:Parameter Name="OrderStatus" Type="String" />
                    <asp:Parameter Name="ShipDate" Type="DateTime" />
                    <asp:Parameter Name="TotalCost" Type="Decimal" />
                    <asp:Parameter Name="COD" Type="Boolean" />
                    <asp:Parameter Name="OrderID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

            <%-- Pending Orders --%>
            <asp:SqlDataSource ID="SDSPenOrder" runat="server" ConnectionString="<%$ ConnectionStrings:WSCDatabase_mdbConnectionString %>" DeleteCommand="DELETE FROM [tblOrderHeader] WHERE [OrderID] = ?" InsertCommand="INSERT INTO [tblOrderHeader] ([OrderID], [CustomerID], [Username], [OrderDate], [OrderStatus], [ShipDate], [TotalCost], [COD]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:WSCDatabase_mdbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblOrderHeader] WHERE ([OrderStatus] = ?) ORDER BY [OrderID]" UpdateCommand="UPDATE [tblOrderHeader] SET [CustomerID] = ?, [Username] = ?, [OrderDate] = ?, [OrderStatus] = ?, [ShipDate] = ?, [TotalCost] = ?, [COD] = ? WHERE [OrderID] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="OrderID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="OrderID" Type="Int32" />
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="OrderDate" Type="DateTime" />
                    <asp:Parameter Name="OrderStatus" Type="String" />
                    <asp:Parameter Name="ShipDate" Type="DateTime" />
                    <asp:Parameter Name="TotalCost" Type="Decimal" />
                    <asp:Parameter Name="COD" Type="Boolean" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="PENDING" Name="OrderStatus" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="OrderDate" Type="DateTime" />
                    <asp:Parameter Name="OrderStatus" Type="String" />
                    <asp:Parameter Name="ShipDate" Type="DateTime" />
                    <asp:Parameter Name="TotalCost" Type="Decimal" />
                    <asp:Parameter Name="COD" Type="Boolean" />
                    <asp:Parameter Name="OrderID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

            <%-- Shipped Orders --%>
            <asp:SqlDataSource ID="SDSShipOrder" runat="server" ConnectionString="<%$ ConnectionStrings:WSCDatabase_mdbConnectionString %>" DeleteCommand="DELETE FROM [tblOrderHeader] WHERE [OrderID] = ?" InsertCommand="INSERT INTO [tblOrderHeader] ([OrderID], [CustomerID], [Username], [OrderDate], [OrderStatus], [ShipDate], [TotalCost], [COD]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:WSCDatabase_mdbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblOrderHeader] WHERE ([OrderStatus] = ?) ORDER BY [OrderID]" UpdateCommand="UPDATE [tblOrderHeader] SET [CustomerID] = ?, [Username] = ?, [OrderDate] = ?, [OrderStatus] = ?, [ShipDate] = ?, [TotalCost] = ?, [COD] = ? WHERE [OrderID] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="OrderID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="OrderID" Type="Int32" />
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="OrderDate" Type="DateTime" />
                    <asp:Parameter Name="OrderStatus" Type="String" />
                    <asp:Parameter Name="ShipDate" Type="DateTime" />
                    <asp:Parameter Name="TotalCost" Type="Decimal" />
                    <asp:Parameter Name="COD" Type="Boolean" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="SHIPPED" Name="OrderStatus" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="OrderDate" Type="DateTime" />
                    <asp:Parameter Name="OrderStatus" Type="String" />
                    <asp:Parameter Name="ShipDate" Type="DateTime" />
                    <asp:Parameter Name="TotalCost" Type="Decimal" />
                    <asp:Parameter Name="COD" Type="Boolean" />
                    <asp:Parameter Name="OrderID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

            <%-- Completed Orders --%>
            <asp:SqlDataSource ID="SDSComOrder" runat="server" ConnectionString="<%$ ConnectionStrings:WSCDatabase_mdbConnectionString %>" DeleteCommand="DELETE FROM [tblOrderHeader] WHERE [OrderID] = ?" InsertCommand="INSERT INTO [tblOrderHeader] ([OrderID], [CustomerID], [Username], [OrderDate], [OrderStatus], [ShipDate], [TotalCost], [COD]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:WSCDatabase_mdbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblOrderHeader] WHERE ([OrderStatus] = ?) ORDER BY [OrderID]" UpdateCommand="UPDATE [tblOrderHeader] SET [CustomerID] = ?, [Username] = ?, [OrderDate] = ?, [OrderStatus] = ?, [ShipDate] = ?, [TotalCost] = ?, [COD] = ? WHERE [OrderID] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="OrderID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="OrderID" Type="Int32" />
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="OrderDate" Type="DateTime" />
                    <asp:Parameter Name="OrderStatus" Type="String" />
                    <asp:Parameter Name="ShipDate" Type="DateTime" />
                    <asp:Parameter Name="TotalCost" Type="Decimal" />
                    <asp:Parameter Name="COD" Type="Boolean" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="COMPLETE" Name="OrderStatus" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="OrderDate" Type="DateTime" />
                    <asp:Parameter Name="OrderStatus" Type="String" />
                    <asp:Parameter Name="ShipDate" Type="DateTime" />
                    <asp:Parameter Name="TotalCost" Type="Decimal" />
                    <asp:Parameter Name="COD" Type="Boolean" />
                    <asp:Parameter Name="OrderID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            
            <%-- Orders By User --%>
            <asp:SqlDataSource ID="SDSOrderByUser" runat="server" ConnectionString="<%$ ConnectionStrings:WSCDatabase_mdbConnectionString %>" DeleteCommand="DELETE FROM [tblOrderHeader] WHERE [OrderID] = ?" InsertCommand="INSERT INTO [tblOrderHeader] ([OrderID], [CustomerID], [Username], [OrderDate], [OrderStatus], [ShipDate], [TotalCost], [COD]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:WSCDatabase_mdbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblOrderHeader] WHERE ([Username] = ?) ORDER BY [OrderID]" UpdateCommand="UPDATE [tblOrderHeader] SET [CustomerID] = ?, [Username] = ?, [OrderDate] = ?, [OrderStatus] = ?, [ShipDate] = ?, [TotalCost] = ?, [COD] = ? WHERE [OrderID] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="OrderID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="OrderID" Type="Int32" />
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="OrderDate" Type="DateTime" />
                    <asp:Parameter Name="OrderStatus" Type="String" />
                    <asp:Parameter Name="ShipDate" Type="DateTime" />
                    <asp:Parameter Name="TotalCost" Type="Decimal" />
                    <asp:Parameter Name="COD" Type="Boolean" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtOrderByUser" Name="Username" PropertyName="Text" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="OrderDate" Type="DateTime" />
                    <asp:Parameter Name="OrderStatus" Type="String" />
                    <asp:Parameter Name="ShipDate" Type="DateTime" />
                    <asp:Parameter Name="TotalCost" Type="Decimal" />
                    <asp:Parameter Name="COD" Type="Boolean" />
                    <asp:Parameter Name="OrderID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

            <%-- Orders Details --%>
            <asp:SqlDataSource ID="SDSDetailedOrder" runat="server" ConnectionString="<%$ ConnectionStrings:WSCDatabase_mdbConnectionString %>" DeleteCommand="DELETE FROM [tblOrderDetail] WHERE [OrderID] = ?" InsertCommand="INSERT INTO [tblOrderDetail] ([OrderID], [MediaType], [MessageContent], [Color], [Quantity], [Price]) VALUES (?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:WSCDatabase_mdbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblOrderDetail] WHERE ([OrderID] = ?) ORDER BY [MediaType]" UpdateCommand="UPDATE [tblOrderDetail] SET [MediaType] = ?, [MessageContent] = ?, [Color] = ?, [Quantity] = ?, [Price] = ? WHERE [OrderID] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="OrderID" Type="Int32" />                    
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="OrderID" Type="Int32" />
                    <asp:Parameter Name="MediaType" Type="String" />
                    <asp:Parameter Name="MessageContent" Type="String" />
                    <asp:Parameter Name="Color" Type="String" />
                    <asp:Parameter Name="Quantity" Type="Int32" />
                    <asp:Parameter Name="Price" Type="Decimal" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtOrderNum" Name="OrderID" PropertyName="Text" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MediaType" Type="String" />
                    <asp:Parameter Name="MessageContent" Type="String" />
                    <asp:Parameter Name="Color" Type="String" />
                    <asp:Parameter Name="Quantity" Type="Int32" />
                    <asp:Parameter Name="Price" Type="Decimal" />
                    <asp:Parameter Name="OrderID" Type="Int32" />                    
                </UpdateParameters>
            </asp:SqlDataSource>

            <%-- Products --%>
            <asp:SqlDataSource ID="SDSProducts" runat="server" ConnectionString="<%$ ConnectionStrings:WSCDatabase_mdbConnectionString %>" DeleteCommand="DELETE FROM [tblProducts] WHERE [ProductID] = ?" InsertCommand="INSERT INTO [tblProducts] ([ProductID], [JobType], [MediaType], [Cost]) VALUES (?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:WSCDatabase_mdbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblProducts] ORDER BY [ProductID]" UpdateCommand="UPDATE [tblProducts] SET [JobType] = ?, [MediaType] = ?, [Cost] = ? WHERE [ProductID] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="ProductID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ProductID" Type="Int32" />
                    <asp:Parameter Name="JobType" Type="String" />
                    <asp:Parameter Name="MediaType" Type="String" />
                    <asp:Parameter Name="Cost" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="JobType" Type="String" />
                    <asp:Parameter Name="MediaType" Type="String" />
                    <asp:Parameter Name="Cost" Type="Decimal" />
                    <asp:Parameter Name="ProductID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

            <%-- Reviews --%>
            <asp:SqlDataSource ID="SDSReviews" runat="server" ConnectionString="<%$ ConnectionStrings:WSCDatabase_mdbConnectionString %>" DeleteCommand="DELETE FROM [tblReview] WHERE [ProductID] = ? AND [CustomerID] = ?" InsertCommand="INSERT INTO [tblReview] ([ProductID], [CustomerID], [ReviewDate], [Comments]) VALUES (?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:WSCDatabase_mdbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblReview] ORDER BY [ReviewDate], [CustomerID]" UpdateCommand="UPDATE [tblReview] SET [ReviewDate] = ?, [Comments] = ? WHERE [ProductID] = ? AND [CustomerID] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="ProductID" Type="Int32" />
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ProductID" Type="Int32" />
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                    <asp:Parameter Name="ReviewDate" Type="DateTime" />
                    <asp:Parameter Name="Comments" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ReviewDate" Type="DateTime" />
                    <asp:Parameter Name="Comments" Type="String" />
                    <asp:Parameter Name="ProductID" Type="Int32" />
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

            <%-- Reviews by Product ID --%>
            <asp:SqlDataSource ID="SDSReviewByProd" runat="server" ConnectionString="<%$ ConnectionStrings:WSCDatabase_mdbConnectionString %>" DeleteCommand="DELETE FROM [tblReview] WHERE [ProductID] = ? AND [CustomerID] = ?" InsertCommand="INSERT INTO [tblReview] ([ProductID], [CustomerID], [ReviewDate], [Comments]) VALUES (?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:WSCDatabase_mdbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblReview] WHERE ([ProductID] = ?) ORDER BY [ReviewDate], [CustomerID]" UpdateCommand="UPDATE [tblReview] SET [ReviewDate] = ?, [Comments] = ? WHERE [ProductID] = ? AND [CustomerID] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="ProductID" Type="Int32" />
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ProductID" Type="Int32" />
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                    <asp:Parameter Name="ReviewDate" Type="DateTime" />
                    <asp:Parameter Name="Comments" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtReviewByProd" Name="ProductID" PropertyName="Text" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ReviewDate" Type="DateTime" />
                    <asp:Parameter Name="Comments" Type="String" />
                    <asp:Parameter Name="ProductID" Type="Int32" />
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

            <%-- Reviews by Username --%>
            <asp:SqlDataSource ID="SDSReviewByUser" runat="server" ConnectionString="<%$ ConnectionStrings:WSCDatabase_mdbConnectionString %>" DeleteCommand="DELETE FROM [tblReview] WHERE [ProductID] = ? AND [CustomerID] = ?" InsertCommand="INSERT INTO [tblReview] ([ProductID], [CustomerID], [ReviewDate], [Comments]) VALUES (?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:WSCDatabase_mdbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblReview] WHERE ([CustomerID] = ?) ORDER BY [ReviewDate], [ProductID]" UpdateCommand="UPDATE [tblReview] SET [ReviewDate] = ?, [Comments] = ? WHERE [ProductID] = ? AND [CustomerID] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="ProductID" Type="Int32" />
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ProductID" Type="Int32" />
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                    <asp:Parameter Name="ReviewDate" Type="DateTime" />
                    <asp:Parameter Name="Comments" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtReviewByUser" Name="CustomerID" PropertyName="Text" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ReviewDate" Type="DateTime" />
                    <asp:Parameter Name="Comments" Type="String" />
                    <asp:Parameter Name="ProductID" Type="Int32" />
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

