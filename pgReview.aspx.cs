﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pgReview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //populate the page with reviews upon loadup
        string connectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|/WSCDatabase_mdb.mdb";
        string username;
        string comment;
        string mediaType;
        int reviewDateYear;
        int reviewDateDay;
        int reviewDateMonth;
        string reviewDate;

        //Declaring new instance of data layer
        clsDataLayer myDataLayer = new clsDataLayer(connectionString);

        List<Review> review = myDataLayer.GetReview();

        if (review.Count == 0) { reviews.InnerHtml = "<h3>Sorry! Looks like no reviews have been submitted. Be the first to review our services!</h3>"; }
        else
        {
            reviews.InnerHtml = "";
            for (int i = 0; i < review.Count; i++)
            {
                username = review[i].username;
                comment = review[i].comment;
                mediaType = review[i].mediaType;
                reviewDateYear = review[i].reviewDate.Year;
                reviewDateDay = review[i].reviewDate.Day;
                reviewDateMonth = review[i].reviewDate.Month;
                reviewDate = reviewDateMonth + "/" + reviewDateDay + "/" + reviewDateYear;
                reviews.InnerHtml = reviews.InnerHtml + "<p>" + "USER: " + username + "&nbsp;&nbsp;&nbsp; DATE: " + reviewDate + "&nbsp;&nbsp;&nbsp; PRODUCT: " + mediaType + "<br />" + comment + "<br /><br />" + "</p>";
            }
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

        //Set the mediaType based on the dropdownlist selection
        mediaType = ddlMedia.SelectedValue.ToString();

        //Set the comment based on the text entered in the textarea
        if(Request.Form["txtComment"] != null) { comment = Request.Form["txtComment"]; }

        //Set username based on cookie, otherwise display a message and make submit button invisible
        //If username is not null, check other variables; checking them otherwise is unnecessary.
        if (Request.Cookies["User"] == null) { btnSubmitReview.Visible = false; btnLoginRedirect.Visible = true; message1.Visible = true; }
        else {
            username = Request.Cookies["User"].Value;
            if (mediaType == null) { message3.Visible = true; }
            if (comment == null) { message4.Visible = true; }
        }

        //Set refresh to true if all strings are populated
        if (comment != null && mediaType != null && username != null) { refresh = true; }

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

    protected void btnReviewGrid_Click(object sender, EventArgs e)
    {
        btnHideGrid.Visible = true;
        gvAllReviews.Columns.Clear();

        //Gridview properties
        gvAllReviews.AutoGenerateColumns = false;
        gvAllReviews.DataKeyNames = new string[] { "CustomerID", "ProductID" };

        BoundField DField = new BoundField(); DField.DataField = "ReviewDate"; DField.HeaderText = "Date"; DField.InsertVisible = false; DField.ReadOnly = true; DField.SortExpression = "OrderID"; gvAllReviews.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "Username"; DField.HeaderText = "User"; DField.InsertVisible = false; DField.ReadOnly = true; DField.SortExpression = "Username"; gvAllReviews.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "MediaType"; DField.HeaderText = "Product"; DField.InsertVisible = false; DField.ReadOnly = true; DField.SortExpression = "MediaType"; gvAllReviews.Columns.Add(DField);
        DField = new BoundField(); DField.DataField = "Comments"; DField.HeaderText = "Comment"; DField.InsertVisible = false; DField.ReadOnly = true; DField.SortExpression = "Comments"; gvAllReviews.Columns.Add(DField);

        gvAllReviews.DataSourceID = "SDSReviews";
        gvAllReviews.DataBind();
    }

    protected void btnHideGrid_Click(object sender, EventArgs e)
    {
        gvAllReviews.Columns.Clear();
        btnHideGrid.Visible = false;
    }
}

