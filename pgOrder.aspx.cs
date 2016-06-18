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
            DataSet dsItemCart = new DataSet();

            DataTable dtItemCart = new DataTable();
            dtItemCart.Clear();
            //dtItemCart.Columns.Add("ProductID");
            dtItemCart.Columns.Add("MediaType");
            dtItemCart.Columns.Add("Personalization");
            dtItemCart.Columns.Add("Color");
            dtItemCart.Columns.Add("Quantity");
            dtItemCart.Columns.Add("Cost");

            itemCart = new ArrayList();
            itemCart = Session["itemCart"] as ArrayList;

            string connectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|/WSCDatabase_mdb.mdb";
            clsDataLayer dlProduct = new clsDataLayer(connectionString);

            for (int i = 0; i < itemCart.Count; ++i)
            {
                itemList = (clsItemCart)itemCart[i];
                string personal = itemList.getPersonalization();

                DataRow row = dtItemCart.NewRow();
                //                row["ProductID"] = itemList.getProductID();

               
                clsProduct product = dlProduct.getProduct(itemList.getProductID());

                row["MediaType"] = product.getMediaType();
                row["Personalization"] = itemList.getPersonalization();
                row["Color"] = itemList.getColor();
                row["Quantity"] = itemList.getQuantity();
                row["Cost"] = product.getCost();
                dtItemCart.Rows.Add(row);
            }

            GridView1.DataSource = dtItemCart;
            GridView1.DataBind();
        }
    }

    protected void continueShopping_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/pgProduct.aspx");
    }
}