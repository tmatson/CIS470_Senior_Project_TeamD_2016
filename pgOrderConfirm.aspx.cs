using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pgOrderConfirm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblEmail.Text = Request.Cookies["E-mail"].Value;
        lblOrderNum.Text = Request.Cookies["OrderID"].Value;

        //  Clear out the session item cart.
        Session["itemCart"] = null;
    }
}