using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pgAcctInfo : System.Web.UI.Page
{

    clsBusinessLayer myBusinessLayer;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Request.Cookies["User"] == null)
        {
            Response.Redirect("~/pgLogin.aspx");
        }
        else
        {

        }
        Label1.Text = Request.Cookies["User"].Value;

        //Loads and Displays User Information from user input fields - MSteele
        try
        {
            if (PreviousPage.IsCrossPagePostBack)
            {
                lblUserName.Text = PreviousPage.Username.Text;
                txtFirstName.Text = PreviousPage.FirstName.Text;
                txtLastName.Text = PreviousPage.LastName.Text;
                txtEmail.Text = PreviousPage.Email.Text;
                txtAddress1.Text = PreviousPage.Address1.Text;
                txtAddress2.Text = PreviousPage.Address2.Text;
                txtCity.Text = PreviousPage.City.Text;
                txtState.Text = PreviousPage.State.Text;
                txtPhoneNum.Text = PreviousPage.PhoneNum.Text;
            }
        }
        catch (Exception error)
        {

        }
        myBusinessLayer = new clsBusinessLayer(Server.MapPath("~/"));
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

        //Tries to update user through the business layer
        try
        {
            myBusinessLayer.ConfirmUpdate(lblUserName.Text, txtFirstName.Text, txtLastName.Text,
                txtEmail.Text, txtAddress1.Text, txtAddress2.Text, txtCity.Text, txtState.Text,
                txtPhoneNum.Text, Convert.ToInt32(CustomerID.Text));

        }
        catch (Exception error)
        {
            userUpdateError = true;
            string message = "Error Updating your information, please check form data. ";
            Master.lblUserFeedBack.Text = message + error.Message;
        }
        if (!userUpdateError)
        {
            Master.lblUserFeedBack.Text = "Information updated successfully.";
        }
    }


}