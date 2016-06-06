using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pgReview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //This will eventually include database pulls that populate the page with reviews upon loadup
    }

    protected void btnSubmitReview_Click(object sender, EventArgs e)
    {
        bool refresh = false;
        string username = "";
        string jobType;
        string mediaType;
        string comment;

        //Declaring new instance of clsBusinessLayer
        clsBusinessLayer myBusinessLayer = new clsBusinessLayer(Server.MapPath("~/"));

        //Set username based on cookie, otherwise display a message and make submit button invisible
        if(Request.Cookies["Username"] == null) { btnSubmitReview.Visible = false;  message1.Visible = true; }
        else { username = Request.Cookies["Username"]["Font"]; }

        //Set the jobType based on selected value in radio button
        if(rbtnJob.SelectedValue == "1") { jobType = "Printing"; }
        else { jobType = "Engraving"; }

        //Set the mediaType based on selected value in radio button
        if (rbtnMedia.SelectedValue == "1") { mediaType = "Clothing"; }
        else if(rbtnMedia.SelectedValue == "2") { mediaType = "Plaque"; }
        else { mediaType = "Trophy"; }

        //Set the comment based on the text entered in the textarea
        if(Request.Form["txtComment"] != null) { comment = Request.Form["txtComment"]; }
        else { comment = null; }

        //Validation for null strings
        if(jobType == null) { message2.Visible = true; message2.InnerHtml = "You did not pick a Job Type!"; }
        if(mediaType == null) { message3.Visible = true; message3.InnerHtml = "You did not pick a Media Type!"; }
        if (comment == null) { message4.Visible = true; message4.InnerHtml = "You did not enter a Review!"; }

        //Set refresh to true if all strings are populated
        if (comment != null && jobType != null && mediaType != null && username != "") { refresh = true; }

        //Refresh page with new review
        if (refresh == true) { Response.Redirect("~/pgReview.aspx"); }
    }
}

