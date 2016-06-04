using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pgReview : System.Web.UI.Page
{
    public object rdbtnJob { get; private set; }

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmitReview_Click(object sender, EventArgs e)
    {
        string username;
        string jobType;
        string mediaType;
        string comment;

        //Declaring new instance of clsBusinessLayer
        clsBusinessLayer myBusinessLayer = new clsBusinessLayer(Server.MapPath("~/"));

        if(Request.Cookies["Username"]["Font"] != null) {
            username = Request.Cookies["Username"]["Font"];
        }

        //Set the jobType based on selected value in radio button
        if(rbtnJob.SelectedValue == "1") { jobType = "Printing"; }
        else { jobType = "Engraving"; }

        //Set the mediaType based on selected value in radio button
        if (rbtnMedia.SelectedValue == "1") { mediaType = "Clothing"; }
        else if(rbtnMedia.SelectedValue == "2") { mediaType = "Plaque"; }
        else { mediaType = "Trophy"; }


        //Refresh page with new comment
        Response.Redirect("~/pgReview.aspx");
    }
}

