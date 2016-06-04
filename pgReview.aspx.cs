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
        string jobType;
        string mediaType;
        string comment;

        //Declaring new instance of clsBusinessLayer
        clsBusinessLayer myBusinessLayer = new clsBusinessLayer(Server.MapPath("~/"));

        

        //Refresh page with new comment
        Response.Redirect("~/pgReview.aspx");
    }
}

