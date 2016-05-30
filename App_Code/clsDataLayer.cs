using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Net;
using System.Data;

/// <summary>
/// Summary description for clsDataLayer
/// </summary>
public class clsDataLayer
{
    public clsDataLayer()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    //Verify User - Matt Steele
    public static dsUserAcct VerifyUser(string Database, string UserName, string UserPassword)
    {
        //Creates the datasource DS
        dsUserAcct DS;
        OleDbConnection sqlConn;
        OleDbDataAdapter sqlDA;
        //Connects to the databse
        sqlConn = new OleDbConnection("PROVIDER=Microsoft.ACE.OLEDB.12.0;" +
        "Data Source=" + Database);
        //Checks the security of the user
        sqlDA = new OleDbDataAdapter("Select SecurityLevel from tblUserLogin " +
        "where UserName like '" + UserName + "' " +
        "and UserPassword like '" + UserPassword + "'", sqlConn);
        //Adds new user
        DS = new dsUserAcct();
        //Fills in the tblUserAcct
        sqlDA.Fill(DS.tblUserAcct);
        //Returns the data
        return DS;

    }
}