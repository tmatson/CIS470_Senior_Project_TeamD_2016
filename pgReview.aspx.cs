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
        string username = "Username not found";
        string jobType;
        string mediaType;
        string comment;

        //Declaring new instance of clsBusinessLayer
        clsBusinessLayer myBusinessLayer = new clsBusinessLayer(Server.MapPath("~/"));

        //Set username based on cookie, otherwise display a message and make submit button invisible
        if(Request.Cookies["Username"] == null) { btnSubmitReview.Visible = false;  message.Visible = true; }
        else { username = Request.Cookies["Username"]["Font"]; }

        //Set the jobType based on selected value in radio button
        if(rbtnJob.SelectedValue == "1") { jobType = "Printing"; }
        else { jobType = "Engraving"; }

        //Set the mediaType based on selected value in radio button
        if (rbtnMedia.SelectedValue == "1") { mediaType = "Clothing"; }
        else if(rbtnMedia.SelectedValue == "2") { mediaType = "Plaque"; }
        else { mediaType = "Trophy"; }

        //Set the comment based on the text entered in the textarea
        comment = Request.Form["txtComment"];

        //Refresh page with new comment
        if (Request.Cookies["Username"] != null) { Response.Redirect("~/pgReview.aspx"); }
    }
}

