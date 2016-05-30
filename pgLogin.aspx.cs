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
    //Log in authentication - Matt Steele
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        //Creates a dataset for the User Login
        dsUserAcct dsUserLogin;
        //Sets the string variable SecurityLevel
        string SecurityLevel;
        //Verifies the UserName and Password
        dsUserLogin = clsDataLayer.VerifyUser(Server.MapPath("~/App_Data/WSCDatabase_mdb.mdb"),
            Login1.UserName, Login1.Password);
        //Validates the user iformation for the 
        //table information, if less than 1, returns
        //user is not authenticated.
        if (dsUserLogin.tblUserAcct.Count < 1)
        {
            e.Authenticated = false;
            Login1.FailureText = Login1.FailureText +
                " Your incorrect login information was sent to receiver@receiverdomain.com";
            return;
        }
        //Acceptable authetication
        SecurityLevel = dsUserLogin.tblUserAcct[0].SecurityLevel.ToString();
        //Checks the different security levels - A or U
        switch (SecurityLevel)
        {
            case "A":
                //Sets the authetication level to "A"
                e.Authenticated = true;
                FormsAuthentication.RedirectFromLoginPage(Login1.UserName, false);
                Session["SecurityLevel"] = "A";
                break;
            case "U":
                //Sets the authentication level to "U"
                e.Authenticated = true;
                FormsAuthentication.RedirectFromLoginPage(Login1.UserName, false);
                Session["SecurityLevel"] = "U";
                break;
            default:
                e.Authenticated = false;
                break;
        }
    }
}