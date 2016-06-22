using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pgAcctInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Request.Cookies["User"] == null)
        {
            Response.Redirect("~/pgLogin.aspx");
        }
        else
        {

        }                  
    }

    public TextBox ConfimrFirstName
    { get { return txtFirstName; } }
    public TextBox ConfirmLastName
    { get { return txtLastName; } }
    public TextBox ConfirmEmail
    { get { return txtEmail; } }
    public TextBox ConfirmAddress1
    { get { return txtAddress1; } }
    public TextBox ConfirmAddress2
    { get { return txtAddress2; } }
    public TextBox ConfirmCity
    { get { return txtCity; } }
    public TextBox ConfirmState
    { get { return txtState; } }
    public TextBox ConfirmZipCode
    { get { return txtZipCode; } }
    public TextBox ConfirmPhoneNum
    { get { return txtPhoneNum; } }

    //Button Click - Update
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        //Sets UserUpdateError to false
        bool userUpdateError = false;

        //Declaring new instance if clsBusinessLayer - TMatson
        clsBusinessLayer myBusinessLayer = new clsBusinessLayer(Server.MapPath("~/"));

        //Tries to update user through the business layer
        try
        {            
            myBusinessLayer.ConfirmUpdate(lblUserName.Text, txtFirstName.Text, txtLastName.Text,
                txtAddress1.Text, txtAddress2.Text, txtCity.Text, txtState.Text,
                txtZipCode.Text, txtEmail.Text, txtPhoneNum.Text, Convert.ToInt32(Request.Cookies["CID"].Value));

        }
        catch (Exception error)
        {
            userUpdateError = true;
            string message = "Error Updating your information, please check form data. ";
            Master.UserFeedBack.Text = message + error.Message;
        }
        if (!userUpdateError)
        {
            //Store user information to dsUserInfo
            dsDatabase dsUserInfo = myBusinessLayer.StoreUser(lblUserName.Text);

            Response.Cookies["User"].Value = lblUserName.Text;
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

            Response.Cookies["ZipCode"].Value = dsUserInfo.tblUserAcct[0].ZipCode;
            Response.Cookies["ZipCode"].Expires = DateTime.Now.AddMinutes(60); //Expires in 60 Minutes

            Response.Cookies["E-mail"].Value = dsUserInfo.tblUserAcct[0].Email;
            Response.Cookies["E-mail"].Expires = DateTime.Now.AddMinutes(60); //Expires in 60 Minutes

            Response.Cookies["Phonenumber"].Value = dsUserInfo.tblUserAcct[0].PhoneNumber;
            Response.Cookies["Phonenumber"].Expires = DateTime.Now.AddMinutes(60); //Expires in 60 Minutes

            Response.Cookies["SecurityLevel"].Value = dsUserInfo.tblUserAcct[0].SecurityLevel;
            Response.Cookies["SecurityLevel"].Expires = DateTime.Now.AddMinutes(60); //Expires in 60 Minutes   

            Response.Redirect("~/pgAcctInfo.aspx");

            Master.UserFeedBack.Text = "Information updated successfully.";
        }
    }

    protected void Page_PreRender(object sender, EventArgs e)
    {
        //Loads and Displays Information From User Input Fields                
        lblUserName.Text = Request.Cookies["User"].Value.ToUpper();
        txtFirstName.Text = Request.Cookies["Firstname"].Value;
        txtLastName.Text = Request.Cookies["Lastname"].Value;
        txtEmail.Text = Request.Cookies["E-mail"].Value;
        txtAddress1.Text = Request.Cookies["Address1"].Value;
        txtAddress2.Text = Request.Cookies["Address2"].Value;
        txtCity.Text = Request.Cookies["City"].Value;
        txtState.Text = Request.Cookies["State"].Value;
        txtZipCode.Text = Request.Cookies["ZipCode"].Value;
        txtPhoneNum.Text = Request.Cookies["Phonenumber"].Value;
    }


}