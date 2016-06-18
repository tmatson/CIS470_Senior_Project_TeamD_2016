using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for clsItemCart
/// </summary>
public class clsItemCart
{
    string productID;
    string description;
    string personalization;
    string color;
    string quantity;
    float cost;

    public clsItemCart()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public clsItemCart(string productID, string personalization, string quantity)
    {
        this.productID = productID;
        this.personalization = personalization;
        this.quantity = quantity;
        this.color = string.Empty;
    }

    public clsItemCart(string productID, string personalization, string color, string quantity)
    {
        this.productID = productID;
        this.personalization = personalization;
        this.color = color;
        this.quantity = quantity;
    }

    public string getProductID()
    {
        return productID;
    }

    public string getDecription()
    {
        return description;
    }

    public string getPersonalization()
    {
        return personalization;
    }

    public string getColor()
    {
        return color;
    }

    public string getQuantity()
    {
        return quantity;
    }

    public float getCost()
    {
        return cost;
    }
}