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

    //Store review information, also runs a query to get customer id
    public void StoreReview(string username, string jobType, string mediaType, string comment)
    {
        //set to zero to offset errors
        int customerId = 0;
        string sqlStmt = "SELECT CustomerID FROM tblUserAcct WHERE Username = @user";

        //retrieve customer id to put into review table
        OleDbCommand command = new OleDbCommand(sqlStmt, dbConnection);
        dbConnection.Open();
        command.Parameters.Add(new OleDbParameter("@user", username));
        customerId = (int)command.ExecuteScalar();

        dbConnection.Close();

        //insert review data into table
        sqlStmt = "INSERT INTO tblReview (CustomerID, Username, JobType, MediaType, Comments) VALUES (@id, @user, @job, @media, @comment)";

        OleDbCommand dbCommand = new OleDbCommand(sqlStmt, dbConnection);
        dbConnection.Open();
        dbCommand.Parameters.Add(new OleDbParameter("@id", customerId));
        dbCommand.Parameters.Add(new OleDbParameter("@user", username));
        dbCommand.Parameters.Add(new OleDbParameter("@job", jobType));
        dbCommand.Parameters.Add(new OleDbParameter("@media", mediaType));
        dbCommand.Parameters.Add(new OleDbParameter("@comment", comment));
        dbCommand.ExecuteNonQuery();
        dbConnection.Close();
    }

    public void Continue(string username, string firstname, string lastname,
        string email, string address1, string address2, string city, string state,
        string phonenum, int userID)
    {
        //Opens connection to database
        dbConnection.Open();

        //Compiler
        string sqlStmt = "UPDATE tblUserAcct SET Username0 = @username, "
            + "Firstname = @firstname"
            + "Lastname = @lastname, "
            + "Address1 = @address1, "
            + "Address2 = @address2, "
            + "City = @city, "
            + "State = @state, "
            + "Email = @email, "
            + "PhoneNumber = @phonenum, "
            + "WHERE (tblUserAcct.CustomerID = @id)";

        //New instance of OleDbCommand
        OleDbCommand dbCommand = new OleDbCommand(sqlStmt, dbConnection);

        //New instance of OleDbParameter Class
        OleDbParameter param = new OleDbParameter("@username", username);
        dbCommand.Parameters.Add(param);
        dbCommand.Parameters.Add(new OleDbParameter("@firstname", firstname));
        dbCommand.Parameters.Add(new OleDbParameter("@lasttname", lastname));
        dbCommand.Parameters.Add(new OleDbParameter("@address1", address1));
        dbCommand.Parameters.Add(new OleDbParameter("@address2", address2));
        dbCommand.Parameters.Add(new OleDbParameter("@city", city));
        dbCommand.Parameters.Add(new OleDbParameter("@state", firstname));
        dbCommand.Parameters.Add(new OleDbParameter("@email",email));
        dbCommand.Parameters.Add(new OleDbParameter("@phonenum", phonenum));
        dbCommand.Parameters.Add(new OleDbParameter("@id", userID));

        //Writes data to database
        dbCommand.ExecuteNonQuery();

        //Closes database
        dbConnection.Close();
    }
}