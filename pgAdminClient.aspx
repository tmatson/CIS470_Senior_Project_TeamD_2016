<%@ Page Title="" Language="C#" MasterPageFile="~/SPMasterPage.master" AutoEventWireup="true" CodeFile="pgAdminClient.aspx.cs" Inherits="pgAdminClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Username " Width="120px"></asp:Label>
        <asp:TextBox ID="txtUsername" runat="server" Width="150px"></asp:TextBox><br />

    <asp:GridView ID="gvUniversal" runat="server" AutoGenerateColumns="False" DataKeyNames="CustomerID"></asp:GridView>
    <asp:SqlDataSource ID="SDSUserAccts" runat="server" ConnectionString="<%$ ConnectionStrings:WSCDatabase_mdbConnectionString %>" DeleteCommand="DELETE FROM [tblUserAcct] WHERE [CustomerID] = ?" InsertCommand="INSERT INTO [tblUserAcct] ([CustomerID], [Username], [Password], [Firstname], [Lastname], [Address1], [Address2], [City], [State], [ZipCode], [Email], [PhoneNumber], [SecurityLevel], [Locked]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:WSCDatabase_mdbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblUserAcct]" UpdateCommand="UPDATE [tblUserAcct] SET [Username] = ?, [Password] = ?, [Firstname] = ?, [Lastname] = ?, [Address1] = ?, [Address2] = ?, [City] = ?, [State] = ?, [ZipCode] = ?, [Email] = ?, [PhoneNumber] = ?, [SecurityLevel] = ?, [Locked] = ? WHERE [CustomerID] = ?">
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

    <asp:SqlDataSource ID="SDSCCards" runat="server" ConnectionString="<%$ ConnectionStrings:WSCDatabase_mdbConnectionString %>" DeleteCommand="DELETE FROM [tblCCard] WHERE (([CustomerID] = ?) OR ([CustomerID] IS NULL AND ? IS NULL)) AND (([CreditCardNumber] = ?) OR ([CreditCardNumber] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [tblCCard] ([CustomerID], [CreditCardNumber], [CreditCardType], [CardOwner], [CreditCardCode], [CreditCardExpDate]) VALUES (?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:WSCDatabase_mdbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblCCard]" UpdateCommand="UPDATE [tblCCard] SET [CreditCardType] = ?, [CardOwner] = ?, [CreditCardCode] = ?, [CreditCardExpDate] = ? WHERE (([CustomerID] = ?) OR ([CustomerID] IS NULL AND ? IS NULL)) AND (([CreditCardNumber] = ?) OR ([CreditCardNumber] IS NULL AND ? IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="CustomerID" Type="Int32" />
            <asp:Parameter Name="CreditCardNumber" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CustomerID" Type="Int32" />
            <asp:Parameter Name="CreditCardNumber" Type="String" />
            <asp:Parameter Name="CreditCardType" Type="String" />
            <asp:Parameter Name="CardOwner" Type="String" />
            <asp:Parameter Name="CreditCardCode" Type="String" />
            <asp:Parameter Name="CreditCardExpDate" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CreditCardType" Type="String" />
            <asp:Parameter Name="CardOwner" Type="String" />
            <asp:Parameter Name="CreditCardCode" Type="String" />
            <asp:Parameter Name="CreditCardExpDate" Type="DateTime" />
            <asp:Parameter Name="CustomerID" Type="Int32" />
            <asp:Parameter Name="CreditCardNumber" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <%-- Button for getting all users into gridview --%>
        <asp:Button ID="btnAllUserAccts" runat="server" Text="All User Accounts" OnClick="btnAllUserAccts_Click"/><br /><br />   

    <%-- Button for getting credit cards into gridview --%>
        <asp:Button ID="btnAllCCards" runat="server" Text="All Credit Card Info" OnClick="btnAllCCards_Click"/><br /><br />   
</asp:Content>

