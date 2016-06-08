using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pgAcctCreate : System.Web.UI.Page
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
    }

    private void ClearInputs(ControlCollection ctrls)
    {
        foreach(Control ctrl in ctrls)
        {
            if (ctrl is TextBox)
                ((TextBox)ctrl).Text = string.Empty;
            else if (ctrl is DropDownList)
                ((DropDownList)ctrl).ClearSelection();
            else if (ctrl is RadioButton)
                ((RadioButton)ctrl).Checked = false;
            else if (ctrl is RadioButtonList)
                ((RadioButtonList)ctrl).ClearSelection();
            else
                ClearInputs(ctrl.Controls);
        }
    }
    
    //Get methods for fields - Matt Steele
    public TextBox FirstName
    {
        get { return txtFirstname; }
    }
    public TextBox LastName
    {
        get { return txtLastname; }
    }
    public TextBox Email
    {
        get { return txtEmail; }
    }
    public TextBox Address1
    {
        get { return txtAddress1; }
    }
    public TextBox Address2
    {
        get { return txtAddress2; }
    }
    public TextBox City
    {
        get { return txtCity; }
    }
    public TextBox State
    {
        get { return txtState; }
    }
    public TextBox PhoneNum
    {
        get { return txtPhoneNumber; }
    }
    public TextBox UserName
    {
        get { return txtUsername; }
    }
    public TextBox Password
    {
        get { return txtPassword; }
    }
    public TextBox PasswordConf
    {
        get { return txtConfPassword; }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        //Sets UserUpdateError to false
        bool userAddError = false;

        //Tries to insert user through the business layer
        try
        {
            myBusinessLayer.InsertCustomer(txtFirstname.Text, txtLastname.Text,
               txtAddress1.Text, txtAddress2.Text, txtCity.Text, txtState.Text,
               txtEmail.Text, txtPhoneNumber.Text, txtUsername.Text);
        }
        catch (Exception error)
        {
            //If an error ocurs...
            userAddError = true;
            string message = "Error adding information, please contact administrator.";
            Master.UserFeedBack.Text = message + error.Message;
        }
        if (!userAddError)
        {
            ClearInputs(Page.Controls);
            Master.UserFeedBack.Text = "User information successfully added.";
        }
    }
}