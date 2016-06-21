using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pgOrderStatus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //GRIDVIEW Current Orders

        //Clear Gridview
        gvCurrentOrders.Columns.Clear();

        //Gridview properties
        gvCurrentOrders.AutoGenerateColumns = false;
        gvCurrentOrders.DataKeyNames = new string[] { "OrderID" };

        //Adding columns to gridview
        BoundField DField = new BoundField(); DField.DataField = "OrderID"; DField.HeaderText = "OrderID"; DField.InsertVisible = false; DField.ReadOnly = true; DField.SortExpression = "OrderID"; gvCurrentOrders.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "OrderDate"; DField.HeaderText = "OrderDate"; DField.SortExpression = "OrderDate"; gvCurrentOrders.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "OrderStatus"; DField.HeaderText = "OrderStatus"; DField.SortExpression = "OrderStatus"; gvCurrentOrders.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "ShipDate"; DField.HeaderText = "ShipDate"; DField.SortExpression = "ShipDate"; gvCurrentOrders.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "TotalCost"; DField.HeaderText = "TotalCost"; DField.SortExpression = "TotalCost"; gvCurrentOrders.Columns.Add(DField);
        DField = new CheckBoxField(); DField.DataField = "COD"; DField.HeaderText = "Charge on Delivery"; DField.SortExpression = "COD"; gvCurrentOrders.Columns.Add(DField);
        gvCurrentOrders.DataSourceID = "SDSCurrentOrders";
        gvCurrentOrders.DataBind();

        //GRIDVIEW Order History

        //Clear Gridview
        gvOrderHistory.Columns.Clear();

        //Gridview properties
        gvOrderHistory.AutoGenerateColumns = false;
        gvOrderHistory.DataKeyNames = new string[] { "OrderID" };

        //Adding columns to gridview
        BoundField EField = new BoundField(); EField.DataField = "OrderID"; EField.HeaderText = "OrderID"; EField.InsertVisible = false; EField.ReadOnly = true; EField.SortExpression = "OrderID"; gvOrderHistory.Columns.Add(EField);
        EField = new BoundField(); EField.DataField = "OrderDate"; EField.HeaderText = "OrderDate"; EField.SortExpression = "OrderDate"; gvOrderHistory.Columns.Add(EField);
        EField = new BoundField(); EField.DataField = "OrderStatus"; EField.HeaderText = "OrderStatus"; EField.SortExpression = "OrderStatus"; gvOrderHistory.Columns.Add(EField);
        EField = new BoundField(); EField.DataField = "ShipDate"; EField.HeaderText = "ShipDate"; EField.SortExpression = "ShipDate"; gvOrderHistory.Columns.Add(EField);
        EField = new BoundField(); EField.DataField = "TotalCost"; EField.HeaderText = "TotalCost"; EField.SortExpression = "TotalCost"; gvOrderHistory.Columns.Add(EField);
        EField = new CheckBoxField(); EField.DataField = "COD"; EField.HeaderText = "Charge on Delivery"; EField.SortExpression = "COD"; gvOrderHistory.Columns.Add(EField);

        gvOrderHistory.DataSourceID = "SDSOrderByUser";
        gvOrderHistory.DataBind();
    }

    //Button Click - Get order details of an order for gridview
    protected void btnOrderDetails_Click(object sender, EventArgs e)
    {
        //Clear Gridview
        gvOrderDetails.Columns.Clear();

        //Gridview properties
        gvOrderDetails.AutoGenerateColumns = false;
        gvOrderDetails.DataKeyNames = new string[] { "OrderID" };

        //Adding columns to gridview
        BoundField DField = new BoundField(); DField.DataField = "OrderID"; DField.HeaderText = "OrderID"; DField.InsertVisible = false; DField.ReadOnly = true; DField.SortExpression = "OrderID"; gvOrderDetails.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "MediaType"; DField.HeaderText = "MediaType"; DField.SortExpression = "MediaType"; gvOrderDetails.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "MessageContent"; DField.HeaderText = "MessageContent"; DField.SortExpression = "MessageContent"; gvOrderDetails.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "Color"; DField.HeaderText = "Color"; DField.SortExpression = "Color"; gvOrderDetails.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "Quantity"; DField.HeaderText = "Quantity"; DField.SortExpression = "Quantity"; gvOrderDetails.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "Price"; DField.HeaderText = "Price"; DField.SortExpression = "Price"; gvOrderDetails.Columns.Add(DField);

        gvOrderDetails.DataSourceID = "SDSOrderDetails";
        gvOrderDetails.DataBind();
    }
}