using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security;
using System.Web.Security;

public partial class pgLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    //Method to Get Control Value for Username
    public TextBox Username
    { get { return txtUsername; } }

    //Method to Get Control Value for password
    public TextBox Password
    { get { return txtPassword; } }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        //Declaring new instance if clsBusinessLayer
        clsBusinessLayer myBusinessLayer = new clsBusinessLayer(Server.MapPath("~/"));

        //Checks Users Current Credentials
        bool isValidUser = myBusinessLayer.CheckUserCredentials(Session, txtUsername.Text, txtPassword.Text);

        //If Statement for User Crednetials 
        if (isValidUser)
        {
            //Stores Username For Next Page
            Response.Cookies["User"].Value = txtUsername.Text;
            Response.Cookies["User"].Expires = DateTime.Now.AddMinutes(10); //Expires in 10 Minutes

            //User Logs In
            Response.Redirect("~/pgAcctInfo.aspx");
        }
        else if (Convert.ToBoolean(Session["LockedSession"]))
        {
            Master.UserFeedBack.Text = "Account is disabled. Contact System Administrator";

            //Hide Login Button
            btnLogin.Visible = false;
        }
        else
        {
            //User Information is incorrect
            Master.UserFeedBack.Text = "The User ID and/or Password supplied is incorrect. Please try again!";
        }
    }
}