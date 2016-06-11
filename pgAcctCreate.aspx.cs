using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pgAcctCreate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         
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
    { get { return txtFirstname; } }
    public TextBox LastName
    { get { return txtLastname; } }
    public TextBox Email
    { get { return txtEmail; } }
    public TextBox Address1
    { get { return txtAddress1; } }
    public TextBox Address2
    { get { return txtAddress2; } }
    public TextBox City
    { get { return txtCity; } }
    public TextBox State
    { get { return txtState; } }
    public TextBox ZipCode
    { get { return txtZipCode; } }
    public TextBox PhoneNum
    { get { return txtPhoneNumber; } }
    public TextBox UserName
    { get { return txtUsername; } }
    public TextBox Password
    { get { return txtPassword; } }
    public TextBox PasswordConf
    { get { return txtConfPassword; } }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        //Sets UserUpdateError to false
        bool userAddError = false;

        //Declaring new instance if clsBusinessLayer
        clsBusinessLayer myBusinessLayer = new clsBusinessLayer(Server.MapPath("~/"));

        //Tries to insert user through the business layer
        try
        {
            myBusinessLayer.InsertUser(txtUsername.Text, txtPassword.Text, txtFirstname.Text, 
               txtLastname.Text, txtAddress1.Text, txtAddress2.Text, txtCity.Text, txtState.Text, 
               txtZipCode.Text, txtEmail.Text, txtPhoneNumber.Text);
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
            //Store user information to dsUserInfo
            dsDatabase dsUserInfo = myBusinessLayer.StoreUser(txtUsername.Text);

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

            Response.Cookies["ZipCode"].Value = dsUserInfo.tblUserAcct[0].ZipCode;
            Response.Cookies["ZipCode"].Expires = DateTime.Now.AddMinutes(60); //Expires in 60 Minutes

            Response.Cookies["E-mail"].Value = dsUserInfo.tblUserAcct[0].Email;
            Response.Cookies["E-mail"].Expires = DateTime.Now.AddMinutes(60); //Expires in 60 Minutes

            Response.Cookies["Phonenumber"].Value = dsUserInfo.tblUserAcct[0].PhoneNumber;
            Response.Cookies["Phonenumber"].Expires = DateTime.Now.AddMinutes(60); //Expires in 60 Minutes

            Response.Cookies["SecurityLevel"].Value = dsUserInfo.tblUserAcct[0].SecurityLevel;
            Response.Cookies["SecurityLevel"].Expires = DateTime.Now.AddMinutes(60); //Expires in 60 Minutes   

            Response.Redirect("~/pgAcctInfo.aspx");
        }
    }
}