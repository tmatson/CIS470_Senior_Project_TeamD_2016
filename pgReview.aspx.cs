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
        string connectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|/WSCDatabase_mdb.mdb";

        //Declaring new instance of data layer
        clsDataLayer myDataLayer = new clsDataLayer(connectionString);

        List<Review> review = myDataLayer.GetReview();

        for(int i = 0; i < review.Count; i++)
        {
            //still thinking about how exactly I want to populate the page
        }
    }

    protected void btnSubmitReview_Click(object sender, EventArgs e)
    {
        bool refresh = false;
        bool userError = false;
        string username = null;
        string jobType = null;
        string mediaType = null;
        string comment = null;
        string connectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|/WSCDatabase_mdb.mdb";

        //Declaring new instance of data layer
        clsDataLayer myDataLayer = new clsDataLayer(connectionString);

        //Set the jobType based on selected value in radio button
        if (rbtnJob.SelectedValue == "1") { jobType = "Printing"; }
        else if (rbtnJob.SelectedValue == "2") { jobType = "Engraving"; }

        //Set the mediaType based on selected value in radio button
        if (rbtnMedia.SelectedValue == "1") { mediaType = "Clothing"; }
        else if (rbtnMedia.SelectedValue == "2") { mediaType = "Plaque"; }
        else if (rbtnMedia.SelectedValue == "3") { mediaType = "Trophy"; }

        //Set the comment based on the text entered in the textarea
        if(Request.Form["txtComment"] != null) { comment = Request.Form["txtComment"]; }

        //Set username based on cookie, otherwise display a message and make submit button invisible
        //If username is not null, check other variables; checking them otherwise it is unnecessary.
        if (Request.Cookies["User"] == null) { btnSubmitReview.Visible = false; btnLoginRedirect.Visible = true; message1.Visible = true; }
        else {
            username = Request.Cookies["User"].Value;
            if (jobType == null) { message2.Visible = true; }
            if (mediaType == null) { message3.Visible = true; }
            if (comment == null) { message4.Visible = true; }
            //General checks for compatibility between variables, if not then restrict page refresh and give a message
            if (jobType == "Engraving" && mediaType == "Clothing") { message1.Visible = true; message1.InnerHtml = "You can't Engrave on that media type!"; userError = true; }
        }

        //Set refresh to true if all strings are populated
        if (comment != null && jobType != null && mediaType != null && username != null) { refresh = true; }

        //Refresh page with new review, send variables to data layer to be put into database
        if (refresh == true && userError == false) {
            myDataLayer.StoreReview(username, jobType, mediaType, comment);
            Response.Redirect("~/pgReview.aspx");
        }
    }

    protected void btnLoginRedirect_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/pgLogin.aspx");
    }
}

