using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pgProduct : System.Web.UI.Page
{
    protected ArrayList itemCart;
    protected string personalization;
    protected string productID;
    protected string color;
    protected string quantity;

    protected void Page_Load(object sender, EventArgs e)
    {
        //
        // Initialize fields as empty strings.
        //
        personalization = string.Empty;
        productID = string.Empty;
        color = string.Empty;
        quantity = string.Empty;

        //
        //  Check to see if the ItemCart session variable exists.  If so,
        //  then get the itemCart ArrayList.  If not, create a new ArrayList.
        //
        if (Session["ItemCart"] == null)
        {
            itemCart = new ArrayList();
        }
        else
        {
            itemCart = Session["itemCart"] as ArrayList;
        }
    }
    //
    //  Adding Academic Trophy Button Clicked
    //  Chris Gormley
    //
    protected void AcademicAddButton_Click(object sender, EventArgs e)
    {
        personalization = AcamedicPersonalization.Text;
        productID = academicsize.SelectedItem.Value;
        quantity = AcademicQuantity.Text;

        addItem(productID, personalization, string.Empty, quantity);

        Session["itemCart"] = itemCart;
        Response.Redirect("~/pgOrder.aspx");
    }

    //
    //  Adding Baseball Trophy Button Clicked
    //  Chris Gormley
    //
    protected void BaseballAddButton_Click(object sender, EventArgs e)
    {
        personalization = BaseballPersonalization.Text;
        productID = baseballsize.SelectedItem.Value;
        quantity = BaseballQuantity.Text;

        addItem(productID, personalization, string.Empty, quantity);

        Session["itemCart"] = itemCart;
        Response.Redirect("~/pgOrder.aspx");
    }

    //
    //  Adding Basketball Trophy Button Clicked
    //  Chris Gormley
    //
    protected void BasketballAddButton_Click(object sender, EventArgs e)
    {
        personalization = BasketballPersonalization.Text;
        productID = basketballsize.SelectedItem.Value;
        quantity = BasketballQuantity.Text;

        addItem(productID, personalization, string.Empty, quantity);

        Session["itemCart"] = itemCart;
        Response.Redirect("~/pgOrder.aspx");
    }

    //
    //  Adding Golf Trophy Button Clicked
    //  Chris Gormley
    //
    protected void GolfAddButton_Click(object sender, EventArgs e)
    {
        personalization = GolfPersonalization.Text;
        productID = golfsize.SelectedItem.Value;
        quantity = GolfQuantity.Text;

        addItem(productID, personalization, string.Empty, quantity);

        Session["itemCart"] = itemCart;
        Response.Redirect("~/pgOrder.aspx");
    }

    //
    //  Adding Shirt Button Clicked
    //  Chris Gormley
    //
    protected void ShirtAddButton_Click(object sender, EventArgs e)
    {
        personalization = ShirtPersonalization.Text;
        productID = shirtsize.SelectedItem.Value;
        color = teeshirtcolor.SelectedItem.Value;
        quantity = ShirtQuantity.Text;

        addItem(productID, personalization, color, quantity);

        Session["itemCart"] = itemCart;
        Response.Redirect("~/pgOrder.aspx");
    }

    //
    //  Adding Plague Button Clicked
    //  Chris Gormley
    //
    protected void PlagueAddButton_Click(object sender, EventArgs e)
    {
        personalization = PlaguePersonalization.Text;
        productID = plaquesize.SelectedItem.Value;
        quantity = PlagueQuantity.Text;

        addItem(productID, personalization, null, quantity);

        Session["itemCart"] = itemCart;
        Response.Redirect("~/pgOrder.aspx");
    }

    //
    //  Adding Teacher Plaque Button Clicked
    //  Chris Gormley
    //
    protected void TeacherAddButton_Click(object sender, EventArgs e)
    {
        personalization = TeacherPersonalization.Text;
        productID = teachersize.SelectedItem.Value;
        quantity = TeacherQauntity.Text;

        addItem(productID, personalization, null, quantity);

        Session["itemCart"] = itemCart;
        Response.Redirect("~/pgOrder.aspx");
    }

    //
    //  Adding Perpetual Plaque Button Clicked
    //  Chris Gormley
    //
    protected void PerpetualAddButton_Click(object sender, EventArgs e)
    {
        personalization = PlatePersonalization.Text;
        productID = perpetualplaque.SelectedItem.Value;
        quantity = PerpetualQuantity.Text;

        addItem(productID, personalization, null, quantity);

        Session["itemCart"] = itemCart;
        Response.Redirect("~/pgOrder.aspx");
    }

    protected void addItem(string productID, string personalization, string quantity)
    {
        itemCart.Add(new clsItemCart(productID, personalization, quantity));
    }

    protected void addItem(string productID, string personalization, string color, string quantity)
    {
        itemCart.Add(new clsItemCart(productID, personalization, color, quantity));
    }

    protected void createOrderSession()
    {
        Session["itemCart"] = itemCart;
        Response.Redirect("~/pgOrder.aspx");
    }
}