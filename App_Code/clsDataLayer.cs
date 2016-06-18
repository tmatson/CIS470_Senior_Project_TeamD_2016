using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Net;
using System.Data;
using System.Data.SqlClient;

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

    //Validate user function - TMatson
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

    //Locked user account function - TMatson
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

    //Store & Finds user information function - TMaston
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

    //Convenient method to get username *FOR USE WITH GetReview*
    public string GetUsername(int customerID)
    {
        string username;
        string sqlStmt = "SELECT Username FROM tblUserAcct WHERE CustomerID = @cid";

        //retrieve username
        OleDbCommand command = new OleDbCommand(sqlStmt, dbConnection);
        command.Parameters.Add(new OleDbParameter("@cid", customerID));
        username = (string)command.ExecuteScalar();

        return username;
    }

    //Store review information, also runs a query to get customer id and product id
    public void StoreReview(string username, string jobType, string mediaType, string comment)
    {
        //set to zero to offset errors
        int customerId = 0;
        int productId = 0;

        string sqlStmt = "SELECT CustomerID FROM tblUserAcct WHERE Username = @user";

        //retrieve customer id to put into review table
        OleDbCommand command = new OleDbCommand(sqlStmt, dbConnection);
        dbConnection.Open();
        command.Parameters.Add(new OleDbParameter("@user", username));
        customerId = (int)command.ExecuteScalar();

        dbConnection.Close();

        sqlStmt = "SELECT ProductID FROM tblProducts WHERE JobType = @job AND MediaType = @media";

        //retrieve product id to put into review table
        command = new OleDbCommand(sqlStmt, dbConnection);
        dbConnection.Open();
        command.Parameters.Add(new OleDbParameter("@job", jobType));
        command.Parameters.Add(new OleDbParameter("@media", mediaType));
        productId = (int)command.ExecuteScalar();

        dbConnection.Close();

        //insert review data into table
        sqlStmt = "INSERT INTO tblReview (ProductID, CustomerID, ReviewDate, Comments) VALUES (@pid, @cid, @date, @comment)";

        command = new OleDbCommand(sqlStmt, dbConnection);
        dbConnection.Open();
        command.Parameters.Add(new OleDbParameter("@pid", productId));
        command.Parameters.Add(new OleDbParameter("@cid", customerId));
        command.Parameters.Add(new OleDbParameter("@date", DateTime.Now.ToShortDateString()));
        command.Parameters.Add(new OleDbParameter("@comment", comment));
        command.ExecuteNonQuery();
        dbConnection.Close();
    }

    //Get rows from tblReview to populate pgReview upon loadup
    public List<Review> GetReview()
    {
        var listOfReview = new List<Review>();
        int reviewAmt = 0;

        dbConnection.Open();
        string sqlStmt = "SELECT * FROM tblReview ORDER BY CustomerID";
        OleDbCommand command = new OleDbCommand(sqlStmt, dbConnection);
        var reader = command.ExecuteReader();
        while (reader.Read() && reviewAmt < 5)
        {
            var review = new Review();
            review.customerID = (int)reader["CustomerID"];
            review.username = this.GetUsername(review.customerID);
            review.comment = (string)reader["Comments"];
            review.reviewDate = (DateTime)reader["ReviewDate"];
            reviewAmt++;
            listOfReview.Add(review);
        }
        dbConnection.Close();

        return listOfReview;
    }

    //Updates **EXISTING** user in tblUserAccts - Matt S.
    public void Update(string username, string firstname, string lastname,
        string address1, string address2, string city, string state,
        string zip, string email, string phonenum, int userID)
    {
        //Opens connection to database
        dbConnection.Open();

        //Compiler
        string sqlStmt = "UPDATE tblUserAcct SET Username = @username,"
            + "Firstname = @firstname,"
            + "Lastname = @lastname, "
            + "Address1 = @address1, "
            + "Address2 = @address2, "
            + "City = @city, "
            + "State = @state, "
            + "ZipCode = @zip, "
            + "Email = @email, "
            + "PhoneNumber = @phonenum "
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
        dbCommand.Parameters.Add(new OleDbParameter("@state", state));
        dbCommand.Parameters.Add(new OleDbParameter("@zip", zip));
        dbCommand.Parameters.Add(new OleDbParameter("@email",email));
        dbCommand.Parameters.Add(new OleDbParameter("@phonenum", phonenum));
        dbCommand.Parameters.Add(new OleDbParameter("@id", userID));

        //Writes data to database
        dbCommand.ExecuteNonQuery();

        //Closes database
        dbConnection.Close();
    }
   
    //Insert **NEW** user to tblUserAccts - Matt S.
    public void InsertUser(string UserName, string Password, string Firstname, string Lastname, 
        string Address1, string Address2, string City, string State, string ZipCode, string Email,
        string PhoneNumber)
    {
        //Opens Database connection
        dbConnection.Open();

        //SQL INSERT statement
        string sqlStemt = "INSERT INTO tblUserAcct (Username, [Password], Firstname, Lastname, Address1, Address2, City, State, ZipCode, Email, PhoneNumber, SecurityLevel)";
        sqlStemt += "VALUES (@username, @password, @first, @last, @address1, @address2, @city, @state, @zip, @email, @phonenum, @securelvl)";

        //Access Database
        OleDbCommand dbCommand = new OleDbCommand(sqlStemt, dbConnection);

        //Adds parameters for insert statement
        OleDbParameter param = new OleDbParameter("@username", UserName);
        dbCommand.Parameters.Add(param); 
        dbCommand.Parameters.Add(new OleDbParameter("@password", Password));
        dbCommand.Parameters.Add(new OleDbParameter("@first", Firstname));
        dbCommand.Parameters.Add(new OleDbParameter("@last", Lastname));
        dbCommand.Parameters.Add(new OleDbParameter("@address1", Address1));
        dbCommand.Parameters.Add(new OleDbParameter("@address2", Address2));
        dbCommand.Parameters.Add(new OleDbParameter("@city", City));
        dbCommand.Parameters.Add(new OleDbParameter("@state", State));
        dbCommand.Parameters.Add(new OleDbParameter("@zip", ZipCode));
        dbCommand.Parameters.Add(new OleDbParameter("@email", Email));
        dbCommand.Parameters.Add(new OleDbParameter("@phonenum", PhoneNumber));        
        dbCommand.Parameters.Add(new OleDbParameter("@securelvl", "U"));

        //Executes insert statement
        dbCommand.ExecuteNonQuery();

        //Closes DB connection
        dbConnection.Close();        
    }

    public clsProduct getProduct(string id)
    {
        string sqlStmt = "SELECT * FROM tblProducts WHERE ProductID = " + id;
//        OleDbDataReader reader = new OleDbDataReader();
        //
        // Retrieve product information based on ProductID.
        //
        try
        {
            dbConnection = new OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|/WSCDatabase_mdb.mdb");

            OleDbCommand dbCommand = new OleDbCommand(sqlStmt, dbConnection);
            dbCommand.CommandType = CommandType.Text;

           // dbCommand.Parameters.Add(new OleDbParameter("@id", id));

            dbConnection.Open();

            var reader = dbCommand.ExecuteReader();
            reader.Read();
            string jobType = (string)reader["JobType"];
            string mediaType = (string)reader["MediaType"];
            decimal cost = (decimal)reader["Cost"];

            reader.Close();
            dbConnection.Close();

            return new clsProduct(jobType, mediaType, cost);
        }
        catch (OleDbException ex)
        {
            //reader.Close();
            dbConnection.Close();

            return null;
        }
    }
}


//Object representing a review
public class Review
{
    public int customerID { get; set; }
    public string username { get; set; }
    public string comment { get; set; }
    public DateTime reviewDate { get; set; }
}