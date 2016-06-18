using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for clsProduct
/// </summary>
public class clsProduct
{
    int productID;
    string jobType;
    string mediaType;
    float cost;

    public clsProduct()
    {
        productID = 0;
        jobType = string.Empty;
        mediaType = string.Empty;
        cost = 0;
    }

    public clsProduct(string jobType, string mediaType, float cost)
    {
        this.jobType = jobType;
        this.mediaType = mediaType;
        this.cost = cost;
    }

    public clsProduct(int productID, string jobType, string mediaType, float cost)
    {
        this.productID = productID;
        this.jobType = jobType;
        this.jobType = mediaType;
        this.cost = cost;
    }


    public string getJobType ()
    {
        return jobType;
    }

    public string getMediaType()
    {
        return mediaType;
    }

    public float getCost()
    {
        return cost;
    }
}