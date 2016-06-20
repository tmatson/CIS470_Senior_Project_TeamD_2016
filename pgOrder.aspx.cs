using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pgOrder : System.Web.UI.Page
{
    ArrayList itemCart;
    clsItemCart itemList;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["User"] == null)
        {
            Response.Redirect("~/pgLogin.aspx");
        }
        else
        {
            float orderTotal = 0;

            DataSet dsItemCart = new DataSet();

            DataTable dtItemCart = new DataTable();
            dtItemCart.Clear();
            //dtItemCart.Columns.Add("ProductID");
            dtItemCart.Columns.Add("MediaType");
            dtItemCart.Columns.Add("Personalization");
            dtItemCart.Columns.Add("Color");
            dtItemCart.Columns.Add("Quantity");
            dtItemCart.Columns.Add("Cost");
            dtItemCart.Columns.Add("TotalCost");

            itemCart = new ArrayList();
            itemCart = Session["itemCart"] as ArrayList;

            string connectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|/WSCDatabase_mdb.mdb";
            clsDataLayer dlProduct = new clsDataLayer(connectionString);

            float totalCost = 0;
            for (int i = 0; i < itemCart.Count; ++i)
            {
                itemList = (clsItemCart)itemCart[i];
                string personal = itemList.getPersonalization();

                DataRow row = dtItemCart.NewRow();

                clsProduct product = dlProduct.getProduct(itemList.getProductID());

                row["MediaType"] = product.getMediaType();
                row["Personalization"] = itemList.getPersonalization();
                row["Color"] = itemList.getColor();
                row["Quantity"] = itemList.getQuantity();
                row["Cost"] = string.Format("{0:C}", Decimal.Parse(product.getCost().ToString()));
                totalCost = float.Parse(itemList.getQuantity()) * product.getCost();
                row["TotalCost"] = string.Format("{0:C}", Decimal.Parse(totalCost.ToString()));
                dtItemCart.Rows.Add(row);

                orderTotal += float.Parse(itemList.getQuantity()) * product.getCost();
            }

            OrderTotal.Text = string.Format("{0:C}", Decimal.Parse(orderTotal.ToString()));
            GridView1.DataSource = dtItemCart;
            GridView1.DataBind();
        }
    }

    protected void continueShopping_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/pgProduct.aspx");
    }

    protected void checkout_Click(object sender, EventArgs e)
    {
        //Sets productAddError to false
        bool productAddError = false;

        //Declaring new instance if clsBusinessLayer
        clsBusinessLayer myBusinessLayer = new clsBusinessLayer(Server.MapPath("~/"));        

        string CID = Request.Cookies["CID"].Value;
        string User = Request.Cookies["User"].Value;
        string Date = DateTime.Now.ToString("M, d, yyyy");
        string Status = "PENDING";       
        string TotalCost = OrderTotal.Text;

        //Make order
        try
        {
            string OrderID = myBusinessLayer.InsertOrder(CID, User, Date, Status, TotalCost, cbCOD.Checked);
            Response.Cookies["OrderID"].Value = OrderID;
        }
        catch (Exception error)
        {
            //If an error ocurs...
            productAddError = true;
            string message = "ERROR!!!!!!.";
            Master.UserFeedBack.Text = message;
        }

        //Order details
        try
        {
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                string MediaType = GridView1.Rows[i].Cells[0].Text;
                string Personalization = GridView1.Rows[i].Cells[1].Text;
                string Color = GridView1.Rows[i].Cells[2].Text;
                string Quantity = GridView1.Rows[i].Cells[3].Text;
                string TotalCostItems = GridView1.Rows[i].Cells[5].Text;
                string OrderID = Request.Cookies["OrderID"].Value;                

                myBusinessLayer.InsertOrderDetails(Convert.ToInt32(OrderID), MediaType, Personalization, Color, Convert.ToInt32(Quantity), TotalCostItems);
            }            
        }
        catch (Exception error)
        {
            //If an error ocurs...
            productAddError = true;
            string message = "ERROR!!!!!!.";
            Master.UserFeedBack.Text = message;
        }

        //Credit Card
        try
        {
            string OrderID = Request.Cookies["OrderID"].Value;
            string CustID = Request.Cookies["CID"].Value;
            string Username = Request.Cookies["User"].Value;
            string ExpDate = ddlMonth.SelectedValue + "/1/" + ddlYear.SelectedValue;

            myBusinessLayer.InsertCreditCard(Convert.ToInt32(CustID), Convert.ToInt32(OrderID), txtCardNumber.Text, rblCreditCard.SelectedValue,
                txtCardName.Text, txtCardCode.Text, ExpDate);
        }
        catch (Exception error)
        {
            productAddError = true;
            string message = "ERROR!!!!!!.";
            Master.UserFeedBack.Text = message;
        }

        if (productAddError == false)
        {
            Response.Redirect("~/pgOrderConfirm.aspx");
        }
    }

    protected void cbCOD_CheckedChanged(object sender, EventArgs e)
    {
        //double TenPercent = 0.1;
        //double OrderTotalInt = double.Parse(OrderTotal.Text) * TenPercent;
        //OrderTotal.Text = OrderTotalInt.ToString();
    }
}