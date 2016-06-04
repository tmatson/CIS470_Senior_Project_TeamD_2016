using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SPMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //Label for feedback displayed to the user
    public Label UserFeedBack
    {
        get { return lblUserFeedBack; }
        set { lblUserFeedBack = value; }
    }
    
}
