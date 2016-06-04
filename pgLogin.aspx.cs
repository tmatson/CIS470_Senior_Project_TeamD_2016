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
        bool CompAppError = false;        

        //Declaring new instance if clsBusinessLayer
        clsBusinessLayer myBusinessLayer = new clsBusinessLayer(Server.MapPath("~/"));

        //Store user information to dsUserLogin
        dsDatabase dsUserInfo = myBusinessLayer.StoreUser(txtUsername.Text);

        //Checks Users Current Credentials
        bool isValidUser = myBusinessLayer.CheckUserCredentials(Session, txtUsername.Text, txtPassword.Text);

        //If Statement for User Crednetials 
        if (isValidUser)
        {
            //Stores user information for next page
            Response.Cookies["User"].Value = txtUsername.Text;
            Response.Cookies["User"].Expires = DateTime.Now.AddMinutes(60); //Expires in 60 Minutes

            Response.Cookies["CID"].Value = Convert.ToString(dsUserInfo.tblUserAcct[0].CustomerID);  
            Response.Cookies["CID"].Expires = DateTime.Now.AddMinutes(60); //Expires in 60 Minutes

            Response.Cookies["Firstname"].Value = dsUserInfo.tblUserAcct[0].Firstname;
            Response.Cookies["Firstname"].Expires = DateTime.Now.AddMinutes(60); //Expires in 60 Minutes

            Response.Cookies["Lastname"].Value = dsUserInfo.tblUserAcct[0].Lastname;
            Response.Cookies["Lastname"].Expires = DateTime.Now.AddMinutes(60); //Expires in 60 Minutes

            Response.Cookies["Address1"].Value = dsUserInfo.tblUserAcct[0].Address1;
            Response.Cookies["Address1"].Expires = DateTime.Now.AddMinutes(60); //Expires in 60 Minutes

            Response.Cookies["Address2"].Value = dsUserInfo.tblUserAcct[0].Address2;
            Response.Cookies["Address2"].Expires = DateTime.Now.AddMinutes(60); //Expires in 60 Minutes

            Response.Cookies["City"].Value = dsUserInfo.tblUserAcct[0].City;
            Response.Cookies["City"].Expires = DateTime.Now.AddMinutes(60); //Expires in 60 Minutes

            Response.Cookies["State"].Value = dsUserInfo.tblUserAcct[0].State;
            Response.Cookies["State"].Expires = DateTime.Now.AddMinutes(60); //Expires in 60 Minutes

            Response.Cookies["E-mail"].Value = dsUserInfo.tblUserAcct[0].Email;
            Response.Cookies["E-mail"].Expires = DateTime.Now.AddMinutes(60); //Expires in 60 Minutes

            Response.Cookies["Phonenumber"].Value = dsUserInfo.tblUserAcct[0].PhoneNumber;
            Response.Cookies["Phonenumber"].Expires = DateTime.Now.AddMinutes(60); //Expires in 60 Minutes

            Response.Cookies["SecurityLevel"].Value = dsUserInfo.tblUserAcct[0].SecurityLevel;
            Response.Cookies["SecurityLevel"].Expires = DateTime.Now.AddMinutes(60); //Expires in 60 Minutes            

            //User logs in
            Response.Redirect("~/pgAcctInfo.aspx");
        }
        else if (Convert.ToBoolean(Session["LockedSession"]))
        {
            Master.UserFeedBack.Text = "Account is disabled. Contact System Administrator";

            //Hide login button
            btnLogin.Visible = false;
        }
        else
        {
            //User information is incorrect
            Master.UserFeedBack.Text = "The User ID and/or Password supplied is incorrect. Please try again!";
        }
    }
}