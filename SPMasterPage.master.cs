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
        if (Request.Cookies["User"] == null)
        {
            lbLogin.Visible = true;
            lbAcctCreate.Visible = true;
            lbLogout.Visible = false;
            lblUserName.Visible = false;
            lbOrderStatus.Visible = false;
        }
        else
        {
            lbLogin.Visible = false;
            lbLogout.Visible = true;
            lblUserName.Visible = true;
            lblUserName.Text = Request.Cookies["User"].Value;
            lbAcctCreate.Visible = false;            
        }
    }

    //Label for feedback displayed to the user
    public Label UserFeedBack
    {
        get { return lblUserFeedBack; }
        set { lblUserFeedBack = value; }
    }


    protected void lbLogout_Click(object sender, EventArgs e)
    {
        Response.Cookies["User"].Expires = DateTime.Now.AddMinutes(-60);       
        Response.Cookies["CID"].Expires = DateTime.Now.AddMinutes(-60);
        Response.Cookies["Firstname"].Expires = DateTime.Now.AddMinutes(-60);
        Response.Cookies["Lastname"].Expires = DateTime.Now.AddMinutes(-60);
        Response.Cookies["Address1"].Expires = DateTime.Now.AddMinutes(-60);
        Response.Cookies["Address2"].Expires = DateTime.Now.AddMinutes(-60);
        Response.Cookies["City"].Expires = DateTime.Now.AddMinutes(-60);
        Response.Cookies["State"].Expires = DateTime.Now.AddMinutes(-60);
        Response.Cookies["E-mail"].Expires = DateTime.Now.AddMinutes(-60);
        Response.Cookies["Phonenumber"].Expires = DateTime.Now.AddMinutes(-60);
        Response.Cookies["SecurityLevel"].Expires = DateTime.Now.AddMinutes(-60);

        Response.Redirect("~/pgIndex.aspx");
    }
}
