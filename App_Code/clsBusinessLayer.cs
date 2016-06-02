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

    public clsBusinessLayer()
    {
        //
        // TODO: Add constructor logic here
        //
    }
}