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
        if (Request.Cookies["User"] == null)
        {
            Response.Redirect("~/pgLogin.aspx");
        }
        else
        {

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

}