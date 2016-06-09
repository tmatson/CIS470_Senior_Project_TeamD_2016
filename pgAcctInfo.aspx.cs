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
    {
        get { return txtFirstName; }
    }
    public TextBox ConfirmLastName
    {
        get { return txtLastName; }
    }
    public TextBox ConfirmEmail
    {
        get { return txtEmail; }
    }
    public TextBox ConfirmAddress1
    {
        get { return txtAddress1; }
    }
    public TextBox ConfirmAddress2
    {
        get { return txtAddress2; }
    }
    public TextBox ConfirmCity
    {
        get { return txtCity; }
    }
    public TextBox ConfirmState
    {
        get { return txtState; }
    }
    public TextBox ConfirmPhoneNum
    {
        get { return txtPhoneNum; }
    }

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
                txtEmail.Text, txtAddress1.Text, txtAddress2.Text, txtCity.Text, txtState.Text,
                txtPhoneNum.Text, Convert.ToInt32(Request.Cookies["CID"].Value));

        }
        catch (Exception error)
        {
            userUpdateError = true;
            string message = "Error Updating your information, please check form data. ";
            Master.UserFeedBack.Text = message + error.Message;
        }
        if (!userUpdateError)
        {
            Master.UserFeedBack.Text = "Information updated successfully.";
        }
    }


}