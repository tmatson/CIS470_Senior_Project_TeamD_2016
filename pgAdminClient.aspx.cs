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

    public TextBox Username
    { get { return txtUsername; } }

    //Gridview for displaying users to admin MIGHT NOT BE NEEDED NOW
    private dsDatabase BindGridviewUserAccts()
    {
        clsBusinessLayer myBusinessLayer = new clsBusinessLayer(Server.MapPath("~/"));

        //Retrieving All Applications Through Business Layer
        dsDatabase userAcctListing = myBusinessLayer.SelectUsers();

        //Gridview for tblCompApps
        gvUniversal.DataSource = userAcctListing.tblUserAcctGV;

        gvUniversal.DataBind();
        Cache.Insert("UserAcctDataSet", userAcctListing);

        return userAcctListing;
    }


    //Button Click - Get all user accounts for gridview
    protected void btnAllUserAccts_Click(object sender, EventArgs e)
    {
        //Clear Gridview
        gvUniversal.Columns.Clear();

        BoundField DField = new BoundField();
        DField.DataField = "CustomerID"; DField.HeaderText = "CustomerID"; DField.InsertVisible = false; DField.ReadOnly = true; DField.SortExpression = "CustomerID";
        gvUniversal.Columns.Add(DField);

        CommandField CField = new CommandField();
        CField.ShowEditButton = true;
        gvUniversal.Columns.Add(CField);

        CField = new CommandField();
        CField.ShowDeleteButton = true;
        gvUniversal.Columns.Add(CField);

        gvUniversal.DataSourceID = "SDSUserAccts";
        gvUniversal.DataBind();
        

    }

    protected void btnAllCCards_Click(object sender, EventArgs e)
    {
        //Clear Gridview
        gvUniversal.Columns.Clear();

        gvUniversal.DataSourceID = "SDSCCards";
        gvUniversal.DataBind();
    }
}