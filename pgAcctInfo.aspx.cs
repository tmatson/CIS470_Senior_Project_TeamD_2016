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
                //lblUserName.Text = PreviousPage.User.Text;//Doing something wrong here
                lblFirstName.Text = PreviousPage.FirstName.Text;
                lblLastName.Text = PreviousPage.LastName.Text;
                lblEmail.Text = PreviousPage.Email.Text;
                lblAddress1.Text = PreviousPage.Address1.Text;
                lblAddress2.Text = PreviousPage.Address2.Text;
                lblCity.Text = PreviousPage.City.Text;
                lblState.Text = PreviousPage.State.Text;
                lblPhoneNum.Text = PreviousPage.PhoneNum.Text;
            }
        }
        catch (Exception error)
        {

        }
        myBusinessLayer = new clsBusinessLayer(Server.MapPath("~/"));
    }

    //Button Click - Continue
    protected void btnContinue_Click(object sender, EventArgs e)
    {
        //Sets UserUpdateError to false
        bool userUpdateError = false;

        //Tries to update user through the business layer
        try
        {
            myBusinessLayer.Continue(lblUserName.Text, lblFirstName.Text, lblLastName.Text,
                lblEmail.Text, lblAddress1.Text, lblAddress2.Text, lblCity.Text, lblState.Text,
                lblPhoneNum.Text, Convert.ToInt32(lblUser.Text));

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