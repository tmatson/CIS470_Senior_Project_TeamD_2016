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
    OleDbConnection dbConnection;
    public clsDataLayer(string Path)
    {
        dbConnection = new OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;Data Source=" + Path);
    }

    public clsDataLayer()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    //Validate user function
    public bool ValidateUser(string username, string password)
    {
        //Opens Connection to Database
        dbConnection.Open();

        //Complier
        string sqlStmt = "SELECT * FROM tblUserAcct Where Username = @id AND Password = @password AND Locked = FALSE";

        //New Instance of the OleDbCommand Class with the Text of the Query
        OleDbCommand dbCommand = new OleDbCommand(sqlStmt, dbConnection);

        //New Instance of the OleDbParameter Class with the Parameter Name and Value
        dbCommand.Parameters.Add(new OleDbParameter("@id", username));
        dbCommand.Parameters.Add(new OleDbParameter("@password", password));

        //Reads Data
        OleDbDataReader dr = dbCommand.ExecuteReader();

        Boolean isValidAccount = dr.Read();

        //Closes DataBase Connection
        dbConnection.Close();

        return isValidAccount;
    }

    //Locked user account function
    public void LockUserAccount(string username)
    {
        //Opens Connection to Database
        dbConnection.Open();

        //Complier
        string sqlStmt = "UPDATE tblUserAcct SET Locked = True WHERE Username = @id";

        //New Instance of the OleDbCommand Class with the Text of the Query
        OleDbCommand dbCommand = new OleDbCommand(sqlStmt, dbConnection);

        //New Instance of the OleDbParameter Class with the Parameter Name and Value
        dbCommand.Parameters.Add(new OleDbParameter("@id", username));

        //Writes Data to Database
        dbCommand.ExecuteNonQuery();

        //Closes DataBase Connection
        dbConnection.Close();
    }

    //Store user information function
    public dsDatabase StoreUser(string Username)
    {
        //Query Data from tblUserAcct by Username
        string sqlStmt = "select * from tblUserAcct where Username like '" + Username + "'";
        OleDbDataAdapter sqlDataAdapter = new OleDbDataAdapter(sqlStmt, dbConnection);

        //Retrieves Data From Table
        dsDatabase userDataSet = new dsDatabase();
        sqlDataAdapter.Fill(userDataSet.tblUserAcct);

        //Returns Data from Table
        return userDataSet;
    }

    public void Continue(string username, string firstname, string lastname,
        string email, string address1, string address2, string city, string state,
        string phonenum, int userID)
    {
        //Opes the database connection
        dbConnection.Open();

        //Compiler
        string sqlStmt = "UPDATE tblUserAcct SET Username = @user, "
                                            + "Firstname = @firstname, "
                                            + "Lastname = @lastname, "
                                            + "Email = @email, "
                                            + "Address1 = @address1, "
                                            + "Address2 = @address2, "
                                            + "City = @city, "
                                            + "State = @state, "
                                            + "PhoneNum = @phone, "
                                            + "WHERE (tblUserAccts.CustomerID = @id)";

        //New instance of OleDbCommand Class with query
        OleDbCommand dbCommand = new OleDbCommand(sqlStmt, dbConnection);

        //New instance of OleDbCommand with the Parameters
        OleDbParameter param = new OleDbParameter("@user", username);
        dbCommand.Parameters.Add(param);
        dbCommand.Parameters.Add(new OleDbParameter("@firstname", firstname));
        dbCommand.Parameters.Add(new OleDbParameter("@lastname", lastname));
        dbCommand.Parameters.Add(new OleDbParameter("@email", email));
        dbCommand.Parameters.Add(new OleDbParameter("@address1", address1));
        dbCommand.Parameters.Add(new OleDbParameter("@address2", address2));
        dbCommand.Parameters.Add(new OleDbParameter("@city", city));
        dbCommand.Parameters.Add(new OleDbParameter("@state", state));
        dbCommand.Parameters.Add(new OleDbParameter("@phone", phonenum));
        dbCommand.Parameters.Add(new OleDbParameter("@id", userID));

        //Writes to the database
        dbCommand.ExecuteNonQuery();

        //Closes the data base conection
        dbConnection.Close();
    }
}