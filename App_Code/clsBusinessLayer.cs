using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for clsBusinessLayer
/// </summary>
public class clsBusinessLayer
{
    //String Variable
    string dataPath;

    //Calling clsDataLayer class
    clsDataLayer myDataLayer;

    public clsBusinessLayer(string serverMappedPath)
    {
        //Giving Servers Mapped Path Value to dataPath and Adding Database
        dataPath = serverMappedPath;
        myDataLayer = new clsDataLayer(dataPath + "App_Data/WSCDatabase_mdb.mdb");
    }

    //Check User Credentials Method
    public bool CheckUserCredentials(System.Web.SessionState.HttpSessionState currentSession, string username, string password)
    {
        bool isValid = myDataLayer.ValidateUser(username, password);

        currentSession["LockedSession"] = false;

        //Counts Total Login Attempts
        int totalAttempts = Convert.ToInt32(currentSession["AttemptCount"]) + 1;
        currentSession["AttemptCount"] = totalAttempts;

        //Counts Attempts for a Username
        int userAttempts = Convert.ToInt32(currentSession[username]) + 1;
        currentSession[username] = userAttempts;

        //If Statement Whether to Lock Account
        if ((userAttempts >= 3) || (totalAttempts >= 6))
        {
            currentSession["LockedSession"] = true;
            myDataLayer.LockUserAccount(username);
        }
        return isValid;
    }

    //Stores and Finds user information upon login or creating account
    public dsDatabase StoreUser(string UserName)
    {
        //Fills empty database fields
        String emptyFiller = "-";

        //Set User
        dsDatabase dsUserInfo = myDataLayer.StoreUser(UserName);

        //References Table
        if (dsUserInfo.tblUserAcct.Rows.Count > 0)
        {
            //Sets NULL Values to Empty String
            System.Data.DataRow userRecord = dsUserInfo.tblUserAcct.Rows[0];

            if (userRecord["Username"] == DBNull.Value)
                userRecord["Username"] = emptyFiller;

            if (userRecord["Password"] == DBNull.Value)
                userRecord["Password"] = emptyFiller;

            if (userRecord["Firstname"] == DBNull.Value)
                userRecord["Firstname"] = emptyFiller;

            if (userRecord["Lastname"] == DBNull.Value)
                userRecord["Lastname"] = emptyFiller;

            if (userRecord["Address1"] == DBNull.Value)
                userRecord["Address1"] = emptyFiller;

            if (userRecord["Address2"] == DBNull.Value)
                userRecord["Address2"] = emptyFiller;

            if (userRecord["City"] == DBNull.Value)
                userRecord["City"] = emptyFiller;

            if (userRecord["State"] == DBNull.Value)
                userRecord["State"] = emptyFiller;

            if (userRecord["ZipCode"] == DBNull.Value)
                userRecord["ZipCode"] = emptyFiller;

            if (userRecord["Email"] == DBNull.Value)
                userRecord["Email"] = emptyFiller;

            if (userRecord["PhoneNumber"] == DBNull.Value)
                userRecord["PhoneNumber"] = emptyFiller;

            if (userRecord["SecurityLevel"] == DBNull.Value)
                userRecord["SecurityLevel"] = emptyFiller;
        }
        return dsUserInfo;
    }


    public clsBusinessLayer()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public void ConfirmUpdate(string lblUserName, string txtFirstName, string txtLastName,
        string txtAddress1, string txtAddress2, string txtCity,
        string txtState, string txtzip, string txtEmail, string txtPhoneNum, int userID)
    {
        myDataLayer.Update(lblUserName, txtFirstName, txtLastName, 
            txtAddress1, txtAddress2, txtCity, txtState, txtzip, txtEmail, txtPhoneNum, userID);
    }

    public void InsertUser(string txtUserName, string txtPassword, string txtFirstname,
        string txtLastname, string txtAddress1, string txtAddress2, string txtCity,
        string txtState, string txtZipCode, string txtEmail, string txtPhoneNumber)         
    {
        myDataLayer.InsertUser(txtUserName, txtPassword, txtFirstname, txtLastname, txtAddress1, 
            txtAddress2, txtCity, txtState, txtZipCode, txtEmail, txtPhoneNumber);      
    }    
}