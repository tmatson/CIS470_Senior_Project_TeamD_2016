using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pgAdminClient : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }        

    //Button Click - Get all user accounts for gridview
    protected void btnAllUserAccts_Click(object sender, EventArgs e)
    {
        //Clear Gridview
        gvUniversal.Columns.Clear();

        //Gridview properties
        gvUniversal.AutoGenerateColumns = false;        
        gvUniversal.DataKeyNames = new string[] { "CustomerID" };

        //Adding columns to gridview
        BoundField DField = new BoundField(); DField.DataField = "CustomerID"; DField.HeaderText = "CustomerID"; DField.InsertVisible = false; DField.ReadOnly = true; DField.SortExpression = "CustomerID"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "Username"; DField.HeaderText = "Username"; DField.SortExpression = "Username"; DField.ControlStyle.CssClass = "GridViewEditRow"; DField.ItemStyle.CssClass = "GridViewEditRow"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "Password"; DField.HeaderText = "Password"; DField.SortExpression = "Password"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "Firstname"; DField.HeaderText = "Firstname"; DField.SortExpression = "Firstname"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "Lastname"; DField.HeaderText = "Lastname"; DField.SortExpression = "Lastname"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "Address1"; DField.HeaderText = "Address1"; DField.SortExpression = "Address1"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "Address2"; DField.HeaderText = "Address2"; DField.SortExpression = "Address2"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "City"; DField.HeaderText = "City"; DField.SortExpression = "City"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "State"; DField.HeaderText = "State"; DField.SortExpression = "State"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "ZipCode"; DField.HeaderText = "ZipCode"; DField.SortExpression = "ZipCode"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "Email"; DField.HeaderText = "Email"; DField.SortExpression = "Email"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "PhoneNumber"; DField.HeaderText = "PhoneNumber"; DField.SortExpression = "PhoneNumber"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "SecurityLevel"; DField.HeaderText = "SecurityLevel"; DField.SortExpression = "SecurityLevel"; gvUniversal.Columns.Add(DField);
        CheckBoxField CBField = new CheckBoxField(); CBField.DataField = "Locked"; CBField.HeaderText = "Locked"; CBField.SortExpression = "Locked"; gvUniversal.Columns.Add(CBField);
        
        //Adding edit and delete columns to gridview
        CommandField CField = new CommandField(); CField.ShowEditButton = true; gvUniversal.Columns.Add(CField);
        CField = new CommandField(); CField.ShowDeleteButton = true; gvUniversal.Columns.Add(CField);

        //Gridview source
        gvUniversal.DataSourceID = "SDSUserAccts";
        gvUniversal.DataBind(); 
    }

    //Button Click - Get user accounts by username for gridview
    protected void btnAcctByUser_Click(object sender, EventArgs e)
    {
        //Clear Gridview
        gvUniversal.Columns.Clear();

        //Gridview properties
        gvUniversal.AutoGenerateColumns = false;
        gvUniversal.DataKeyNames = new string[] { "CustomerID" };

        //Adding columns to gridview
        BoundField DField = new BoundField(); DField.DataField = "CustomerID"; DField.HeaderText = "CustomerID"; DField.InsertVisible = false; DField.ReadOnly = true; DField.SortExpression = "CustomerID"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "Username"; DField.HeaderText = "Username"; DField.SortExpression = "Username"; DField.ControlStyle.CssClass = "GridViewEditRow"; DField.ItemStyle.CssClass = "GridViewEditRow"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "Password"; DField.HeaderText = "Password"; DField.SortExpression = "Password"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "Firstname"; DField.HeaderText = "Firstname"; DField.SortExpression = "Firstname"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "Lastname"; DField.HeaderText = "Lastname"; DField.SortExpression = "Lastname"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "Address1"; DField.HeaderText = "Address1"; DField.SortExpression = "Address1"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "Address2"; DField.HeaderText = "Address2"; DField.SortExpression = "Address2"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "City"; DField.HeaderText = "City"; DField.SortExpression = "City"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "State"; DField.HeaderText = "State"; DField.SortExpression = "State"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "ZipCode"; DField.HeaderText = "ZipCode"; DField.SortExpression = "ZipCode"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "Email"; DField.HeaderText = "Email"; DField.SortExpression = "Email"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "PhoneNumber"; DField.HeaderText = "PhoneNumber"; DField.SortExpression = "PhoneNumber"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "SecurityLevel"; DField.HeaderText = "SecurityLevel"; DField.SortExpression = "SecurityLevel"; gvUniversal.Columns.Add(DField);
        CheckBoxField CBField = new CheckBoxField(); CBField.DataField = "Locked"; CBField.HeaderText = "Locked"; CBField.SortExpression = "Locked"; gvUniversal.Columns.Add(CBField);

        //Adding edit and delete columns to gridview
        CommandField CField = new CommandField(); CField.ShowEditButton = true; gvUniversal.Columns.Add(CField);
        CField = new CommandField(); CField.ShowDeleteButton = true; gvUniversal.Columns.Add(CField);

        //Gridview source
        gvUniversal.DataSourceID = "SDSAcctByUser";
        gvUniversal.DataBind();
    }

    //Button Click - Get all credit cards for gridview
    protected void btnAllCCards_Click(object sender, EventArgs e)
    {
        //Clear Gridview
        gvUniversal.Columns.Clear();

        //Gridview properties
        gvUniversal.AutoGenerateColumns = false;
        gvUniversal.DataKeyNames = new string[] { "CustomerID" };

        //Adding columns to gridview
        BoundField DField = new BoundField(); DField.DataField = "CustomerID"; DField.HeaderText = "CustomerID"; DField.InsertVisible = false; DField.ReadOnly = true; DField.SortExpression = "CustomerID"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "CreditCardNumber"; DField.HeaderText = "CreditCardNumber"; DField.SortExpression = "CreditCardNumber"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "CreditCardType"; DField.HeaderText = "CreditCardType"; DField.SortExpression = "CreditCardType"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "CardOwner"; DField.HeaderText = "CardOwner"; DField.SortExpression = "CardOwner"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "CreditCardCode"; DField.HeaderText = "CreditCardCode"; DField.SortExpression = "CreditCardCode"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "CreditCardExpDate"; DField.HeaderText = "CreditCardExpDate"; DField.SortExpression = "CreditCardExpDate"; gvUniversal.Columns.Add(DField);

        //Edit and delete columns
        CommandField CField = new CommandField(); CField.ShowEditButton = true; gvUniversal.Columns.Add(CField);
        CField = new CommandField(); CField.ShowDeleteButton = true; gvUniversal.Columns.Add(CField);

        gvUniversal.DataSourceID = "SDSCCards";
        gvUniversal.DataBind();
    }

    //Button Click - Get credit card by customer ID for gridview
    protected void btnCCardByCustID_Click(object sender, EventArgs e)
    {
        //Clear Gridview
        gvUniversal.Columns.Clear();

        //Gridview properties
        gvUniversal.AutoGenerateColumns = false;
        gvUniversal.DataKeyNames = new string[] { "CustomerID" };

        //Adding columns to gridview
        BoundField DField = new BoundField(); DField.DataField = "CustomerID"; DField.HeaderText = "CustomerID"; DField.InsertVisible = false; DField.ReadOnly = true; DField.SortExpression = "CustomerID"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "CreditCardNumber"; DField.HeaderText = "CreditCardNumber"; DField.SortExpression = "CreditCardNumber"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "CreditCardType"; DField.HeaderText = "CreditCardType"; DField.SortExpression = "CreditCardType"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "CardOwner"; DField.HeaderText = "CardOwner"; DField.SortExpression = "CardOwner"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "CreditCardCode"; DField.HeaderText = "CreditCardCode"; DField.SortExpression = "CreditCardCode"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "CreditCardExpDate"; DField.HeaderText = "CreditCardExpDate"; DField.SortExpression = "CreditCardExpDate"; gvUniversal.Columns.Add(DField);

        //Edit and delete columns
        CommandField CField = new CommandField(); CField.ShowEditButton = true; gvUniversal.Columns.Add(CField);
        CField = new CommandField(); CField.ShowDeleteButton = true; gvUniversal.Columns.Add(CField);

        gvUniversal.DataSourceID = "SDSCCardByCustID";
        gvUniversal.DataBind();
    }

    //Button Click - Get all orders for gridview
    protected void btnAllOrders_Click(object sender, EventArgs e)
    {
        //Clear Gridview
        gvUniversal.Columns.Clear();

        //Gridview properties
        gvUniversal.AutoGenerateColumns = false;
        gvUniversal.DataKeyNames = new string[] { "OrderID" };

        //Adding columns to gridview
        BoundField DField = new BoundField(); DField.DataField = "OrderID"; DField.HeaderText = "OrderID"; DField.InsertVisible = false; DField.ReadOnly = true; DField.SortExpression = "OrderID"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "CustomerID"; DField.HeaderText = "CustomerID"; DField.SortExpression = "CustomerID"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "Username"; DField.HeaderText = "Username"; DField.SortExpression = "Username"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "OrderDate"; DField.HeaderText = "OrderDate"; DField.SortExpression = "OrderDate"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "OrderStatus"; DField.HeaderText = "OrderStatus"; DField.SortExpression = "OrderStatus"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "ShipDate"; DField.HeaderText = "ShipDate"; DField.SortExpression = "ShipDate"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "TotalCost"; DField.HeaderText = "TotalCost"; DField.SortExpression = "TotalCost"; gvUniversal.Columns.Add(DField);

        //Edit and delete columns
        CommandField CField = new CommandField(); CField.ShowEditButton = true; gvUniversal.Columns.Add(CField);
        CField = new CommandField(); CField.ShowDeleteButton = true; gvUniversal.Columns.Add(CField);

        gvUniversal.DataSourceID = "SDSOrders";
        gvUniversal.DataBind();
    }

    //Button Click - Get all pending orders for gridview
    protected void btnPenOrders_Click(object sender, EventArgs e)
    {
        //Clear Gridview
        gvUniversal.Columns.Clear();

        //Gridview properties
        gvUniversal.AutoGenerateColumns = false;
        gvUniversal.DataKeyNames = new string[] { "OrderID" };

        //Adding columns to gridview
        BoundField DField = new BoundField(); DField.DataField = "OrderID"; DField.HeaderText = "OrderID"; DField.InsertVisible = false; DField.ReadOnly = true; DField.SortExpression = "OrderID"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "CustomerID"; DField.HeaderText = "CustomerID"; DField.SortExpression = "CustomerID"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "Username"; DField.HeaderText = "Username"; DField.SortExpression = "Username"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "OrderDate"; DField.HeaderText = "OrderDate"; DField.SortExpression = "OrderDate"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "OrderStatus"; DField.HeaderText = "OrderStatus"; DField.SortExpression = "OrderStatus"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "ShipDate"; DField.HeaderText = "ShipDate"; DField.SortExpression = "ShipDate"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "TotalCost"; DField.HeaderText = "TotalCost"; DField.SortExpression = "TotalCost"; gvUniversal.Columns.Add(DField);
        //Edit and delete columns
        CommandField CField = new CommandField(); CField.ShowEditButton = true; gvUniversal.Columns.Add(CField);
        CField = new CommandField(); CField.ShowDeleteButton = true; gvUniversal.Columns.Add(CField);

        gvUniversal.DataSourceID = "SDSPenOrder";
        gvUniversal.DataBind();
    }

    //Button Click - Get all shipped orders for gridview
    protected void btnShipOrders_Click(object sender, EventArgs e)
    {
        //Clear Gridview
        gvUniversal.Columns.Clear();

        //Gridview properties
        gvUniversal.AutoGenerateColumns = false;
        gvUniversal.DataKeyNames = new string[] { "OrderID" };

        //Adding columns to gridview
        BoundField DField = new BoundField(); DField.DataField = "OrderID"; DField.HeaderText = "OrderID"; DField.InsertVisible = false; DField.ReadOnly = true; DField.SortExpression = "OrderID"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "CustomerID"; DField.HeaderText = "CustomerID"; DField.SortExpression = "CustomerID"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "Username"; DField.HeaderText = "Username"; DField.SortExpression = "Username"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "OrderDate"; DField.HeaderText = "OrderDate"; DField.SortExpression = "OrderDate"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "OrderStatus"; DField.HeaderText = "OrderStatus"; DField.SortExpression = "OrderStatus"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "ShipDate"; DField.HeaderText = "ShipDate"; DField.SortExpression = "ShipDate"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "TotalCost"; DField.HeaderText = "TotalCost"; DField.SortExpression = "TotalCost"; gvUniversal.Columns.Add(DField);

        //Edit and delete columns
        CommandField CField = new CommandField(); CField.ShowEditButton = true; gvUniversal.Columns.Add(CField);
        CField = new CommandField(); CField.ShowDeleteButton = true; gvUniversal.Columns.Add(CField);

        gvUniversal.DataSourceID = "SDSShipOrder";
        gvUniversal.DataBind();
    }

    //Button Click - Get all completed orders for gridview
    protected void btnComOrders_Click(object sender, EventArgs e)
    {
        //Clear Gridview
        gvUniversal.Columns.Clear();

        //Gridview properties
        gvUniversal.AutoGenerateColumns = false;
        gvUniversal.DataKeyNames = new string[] { "OrderID" };

        //Adding columns to gridview
        BoundField DField = new BoundField(); DField.DataField = "OrderID"; DField.HeaderText = "OrderID"; DField.InsertVisible = false; DField.ReadOnly = true; DField.SortExpression = "OrderID"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "CustomerID"; DField.HeaderText = "CustomerID"; DField.SortExpression = "CustomerID"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "Username"; DField.HeaderText = "Username"; DField.SortExpression = "Username"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "OrderDate"; DField.HeaderText = "OrderDate"; DField.SortExpression = "OrderDate"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "OrderStatus"; DField.HeaderText = "OrderStatus"; DField.SortExpression = "OrderStatus"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "ShipDate"; DField.HeaderText = "ShipDate"; DField.SortExpression = "ShipDate"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "TotalCost"; DField.HeaderText = "TotalCost"; DField.SortExpression = "TotalCost"; gvUniversal.Columns.Add(DField);

        //Edit and delete columns
        CommandField CField = new CommandField(); CField.ShowEditButton = true; gvUniversal.Columns.Add(CField);
        CField = new CommandField(); CField.ShowDeleteButton = true; gvUniversal.Columns.Add(CField);

        gvUniversal.DataSourceID = "SDSComOrder";
        gvUniversal.DataBind();
    }

    //Button Click - Get orders by username for gridview
    protected void btnOrderByUser_Click(object sender, EventArgs e)
    {
        //Clear Gridview
        gvUniversal.Columns.Clear();

        //Gridview properties
        gvUniversal.AutoGenerateColumns = false;
        gvUniversal.DataKeyNames = new string[] { "OrderID" };

        //Adding columns to gridview
        BoundField DField = new BoundField(); DField.DataField = "OrderID"; DField.HeaderText = "OrderID"; DField.InsertVisible = false; DField.ReadOnly = true; DField.SortExpression = "OrderID"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "CustomerID"; DField.HeaderText = "CustomerID"; DField.SortExpression = "CustomerID"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "Username"; DField.HeaderText = "Username"; DField.SortExpression = "Username"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "OrderDate"; DField.HeaderText = "OrderDate"; DField.SortExpression = "OrderDate"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "OrderStatus"; DField.HeaderText = "OrderStatus"; DField.SortExpression = "OrderStatus"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "ShipDate"; DField.HeaderText = "ShipDate"; DField.SortExpression = "ShipDate"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "TotalCost"; DField.HeaderText = "TotalCost"; DField.SortExpression = "TotalCost"; gvUniversal.Columns.Add(DField);

        //Edit and delete columns
        CommandField CField = new CommandField(); CField.ShowEditButton = true; gvUniversal.Columns.Add(CField);
        CField = new CommandField(); CField.ShowDeleteButton = true; gvUniversal.Columns.Add(CField);

        gvUniversal.DataSourceID = "SDSOrderByUser";
        gvUniversal.DataBind();
    }

    //Button Click - Get order details of an order for gridview
    protected void btnOrderDetails_Click(object sender, EventArgs e)
    {
        //Clear Gridview
        gvUniversal.Columns.Clear();

        //Gridview properties
        gvUniversal.AutoGenerateColumns = false;
        gvUniversal.DataKeyNames = new string[] { "OrderID", "ProductID" };

        //Adding columns to gridview
        BoundField DField = new BoundField(); DField.DataField = "OrderID"; DField.HeaderText = "OrderID"; DField.InsertVisible = false; DField.ReadOnly = true; DField.SortExpression = "OrderID"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "ProductID"; DField.HeaderText = "ProductID"; DField.InsertVisible = false; DField.ReadOnly = true; DField.SortExpression = "ProductID"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "MessageContent"; DField.HeaderText = "MessageContent"; DField.SortExpression = "MessageContent"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "Color"; DField.HeaderText = "Color"; DField.SortExpression = "Color"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "Quantity"; DField.HeaderText = "Quantity"; DField.SortExpression = "Quantity"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "Price"; DField.HeaderText = "Price"; DField.SortExpression = "Price"; gvUniversal.Columns.Add(DField);

        //Edit and delete columns
        CommandField CField = new CommandField(); CField.ShowEditButton = true; gvUniversal.Columns.Add(CField);
        CField = new CommandField(); CField.ShowDeleteButton = true; gvUniversal.Columns.Add(CField);

        gvUniversal.DataSourceID = "SDSDetailedOrder";
        gvUniversal.DataBind();
    }

    //Button Click - Get all products for gridview
    protected void btnProducts_Click(object sender, EventArgs e)
    {
        //Clear Gridview
        gvUniversal.Columns.Clear();

        //Gridview properties
        gvUniversal.AutoGenerateColumns = false;
        gvUniversal.DataKeyNames = new string[] { "ProductID" };

        //Adding columns to gridview
        BoundField DField = new BoundField(); DField.DataField = "ProductID"; DField.HeaderText = "ProductID"; DField.InsertVisible = false; DField.ReadOnly = true; DField.SortExpression = "ProductID"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "JobType"; DField.HeaderText = "JobType"; DField.SortExpression = "JobType"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "MediaType"; DField.HeaderText = "MediaType"; DField.SortExpression = "MediaType"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "Cost"; DField.HeaderText = "Cost"; DField.SortExpression = "Cost"; gvUniversal.Columns.Add(DField);

        //Edit and delete columns
        CommandField CField = new CommandField(); CField.ShowEditButton = true; gvUniversal.Columns.Add(CField);
        CField = new CommandField(); CField.ShowDeleteButton = true; gvUniversal.Columns.Add(CField);

        gvUniversal.DataSourceID = "SDSProducts";
        gvUniversal.DataBind();
    }

    //Button Click - Get all reviews for gridview
    protected void btnReviews_Click(object sender, EventArgs e)
    {
        //Clear Gridview
        gvUniversal.Columns.Clear();

        //Gridview properties
        gvUniversal.AutoGenerateColumns = false;
        gvUniversal.DataKeyNames = new string[] { "ProductID", "CustomerID" };

        //Adding columns to gridview
        BoundField DField = new BoundField(); DField.DataField = "ProductID"; DField.HeaderText = "ProductID"; DField.InsertVisible = false; DField.ReadOnly = true; DField.SortExpression = "ProductID"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "CustomerID"; DField.HeaderText = "CustomerID"; DField.InsertVisible = false; DField.ReadOnly = true; DField.SortExpression = "CustomerID"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "ReviewDate"; DField.HeaderText = "ReviewDate"; DField.SortExpression = "ReviewDate"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "Comments"; DField.HeaderText = "Comments"; DField.SortExpression = "Comments"; gvUniversal.Columns.Add(DField);        

        //Edit and delete columns
        CommandField CField = new CommandField(); CField.ShowEditButton = true; gvUniversal.Columns.Add(CField);
        CField = new CommandField(); CField.ShowDeleteButton = true; gvUniversal.Columns.Add(CField);

        gvUniversal.DataSourceID = "SDSReviews";
        gvUniversal.DataBind();
    }

    //Button Click - Get reviews by product for gridview
    protected void btnReviewByProd_Click(object sender, EventArgs e)
    {
        //Clear Gridview
        gvUniversal.Columns.Clear();

        //Gridview properties
        gvUniversal.AutoGenerateColumns = false;
        gvUniversal.DataKeyNames = new string[] { "ProductID", "CustomerID" };

        //Adding columns to gridview
        BoundField DField = new BoundField(); DField.DataField = "ProductID"; DField.HeaderText = "ProductID"; DField.InsertVisible = false; DField.ReadOnly = true; DField.SortExpression = "ProductID"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "CustomerID"; DField.HeaderText = "CustomerID"; DField.InsertVisible = false; DField.ReadOnly = true; DField.SortExpression = "CustomerID"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "ReviewDate"; DField.HeaderText = "ReviewDate"; DField.SortExpression = "ReviewDate"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "Comments"; DField.HeaderText = "Comments"; DField.SortExpression = "Comments"; gvUniversal.Columns.Add(DField);

        //Edit and delete columns
        CommandField CField = new CommandField(); CField.ShowEditButton = true; gvUniversal.Columns.Add(CField);
        CField = new CommandField(); CField.ShowDeleteButton = true; gvUniversal.Columns.Add(CField);

        gvUniversal.DataSourceID = "SDSReviewByProd";
        gvUniversal.DataBind();
    }

    //Button Click - Get reviews by username for gridview
    protected void btnReviewByUser_Click(object sender, EventArgs e)
    {
        //Clear Gridview
        gvUniversal.Columns.Clear();

        //Gridview properties
        gvUniversal.AutoGenerateColumns = false;
        gvUniversal.DataKeyNames = new string[] { "ProductID", "CustomerID" };

        //Adding columns to gridview
        BoundField DField = new BoundField(); DField.DataField = "ProductID"; DField.HeaderText = "ProductID"; DField.InsertVisible = false; DField.ReadOnly = true; DField.SortExpression = "ProductID"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "CustomerID"; DField.HeaderText = "CustomerID"; DField.InsertVisible = false; DField.ReadOnly = true; DField.SortExpression = "CustomerID"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "ReviewDate"; DField.HeaderText = "ReviewDate"; DField.SortExpression = "ReviewDate"; gvUniversal.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "Comments"; DField.HeaderText = "Comments"; DField.SortExpression = "Comments"; gvUniversal.Columns.Add(DField);

        //Edit and delete columns
        CommandField CField = new CommandField(); CField.ShowEditButton = true; gvUniversal.Columns.Add(CField);
        CField = new CommandField(); CField.ShowDeleteButton = true; gvUniversal.Columns.Add(CField);

        gvUniversal.DataSourceID = "SDSReviewByUser";
        gvUniversal.DataBind();
    }
}
