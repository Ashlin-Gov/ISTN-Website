using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data.Common;
using System.Data;
using System.CodeDom;


namespace Milestone4
{
    public class SqlConnectionClass
    {
        private SqlConnection connection;
        private SqlCommand sqlCommand;
        private SqlDataAdapter dataAdapter;
        private SqlCommandBuilder commandBuilder;
        private string sql;

        public SqlConnectionClass()
        {
            string connectionString = "Server=146.230.177.46\\IST3;Database=group6;User ID=group6;Password=h2d9j";
            connection = new SqlConnection(connectionString);
        }

        public DataSet GetDataSet()
        {
            sql = "Select * from [M3 - MemberTbl]";
            sqlCommand = new SqlCommand(sql, connection); //sql=Getting all the data from the table, connection= database you want it from
            dataAdapter = new SqlDataAdapter(sqlCommand);
            DataSet ds = new DataSet();
            dataAdapter.Fill(ds, "[M3 - MemberTbl]");
            return ds;
        }

        public void Update(DataTable datatable)
        {
            commandBuilder = new SqlCommandBuilder(dataAdapter);
            dataAdapter.Update(datatable);
        }

        public DataTable checkMemDuplicate(string id)
        {
            connection.Open();
            sqlCommand = new SqlCommand("checkMemberIDExists", connection);
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("@ID", id);
            dataAdapter = new SqlDataAdapter(sqlCommand);
            DataTable dt = new DataTable();
            dataAdapter.Fill(dt);
            connection.Close();
            return dt;
        }
        public DataTable Load_Shoes(string cat)
        {
            connection.Open();
            sqlCommand = new SqlCommand("getProdName_Price_Path", connection);
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("@cat", cat);
            dataAdapter = new SqlDataAdapter(sqlCommand);
            DataTable dt = new DataTable();
            dataAdapter.Fill(dt);
            connection.Close();
            return dt;
        }

        public DataTable Load_PrePurchase(string prodName)
        {
            connection.Open();
            sqlCommand = new SqlCommand("getPrePurchase", connection);
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("@prodName", prodName);
            dataAdapter = new SqlDataAdapter(sqlCommand);
            DataTable dt = new DataTable();
            dataAdapter.Fill(dt);
            connection.Close();
            return dt;
        }

        public string returnID(string prodName,string colour,string size)
        {
            connection.Open();
            sqlCommand = new SqlCommand("getProdIdDisplay", connection);
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("@prodName", prodName);
            sqlCommand.Parameters.AddWithValue("@Colour", colour);
            sqlCommand.Parameters.AddWithValue("@Size", size);
            dataAdapter = new SqlDataAdapter(sqlCommand);
            DataTable dt = new DataTable();
            dataAdapter.Fill(dt);
            connection.Close();
            string id = dt.Rows[0]["ProdID"].ToString();
            return id;
        }

        public DataTable Load_CartDetails(string id)
        {
            connection.Open();
            sqlCommand = new SqlCommand("getCartIdentity", connection);
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("@id", id);
            dataAdapter = new SqlDataAdapter(sqlCommand);
            DataTable dt = new DataTable();
            dataAdapter.Fill(dt);
            connection.Close();
            return dt;
        }


        //public static void BookInsert()///Via Dataset
        //{
        //    SqlConnectionClass sqlcon = new SqlConnectionClass();
        //    DataSet set1 = sqlcon.GetDataSet();
        //    DataTable dtable1 = set1.Tables["Book"];

        //    DataRow newBookRow = dtable1.NewRow(); //makes a new row in teh dataTable,ths variable is what we gonna populate it with

        //    Console.WriteLine("Enter Book title");
        //    newBookRow["BookTitle"] = Console.ReadLine();

        //    dtable1.Rows.Add(newBookRow);

        //    try
        //    {
        //        sqlcon.Update(dtable1);
        //        Console.WriteLine("Updated");
        //    }
        //    catch
        //    {
        //        Console.WriteLine("Update Failed");
        //    }


        //}


        ///Insert Non query method
        ///
        public void InsertNewAccount(string memId, string name, string surname, string cellNo, string id, string address, string email,string password)
        {
            string sql = ("INSERT INTO [M3 - MemberTbl](MemberID,Firstname,Surname,CellNumber,Address,Email,ID,Status,DateAdded,Password) VALUES (@memID,@name,@surname,@cell,@streetAdd,@emailAdd,@identity,@status,@DateAdd,@pass)");

            DateTime dt = DateTime.Now;
            sqlCommand = new SqlCommand(sql, connection);

            sqlCommand.Parameters.AddWithValue("@memID", memId );
            sqlCommand.Parameters.AddWithValue("@name", name );
            sqlCommand.Parameters.AddWithValue("@surname",surname );
            sqlCommand.Parameters.AddWithValue("@identity", id );
            sqlCommand.Parameters.AddWithValue("@cell", cellNo);
            sqlCommand.Parameters.AddWithValue("@streetAdd",address );
            sqlCommand.Parameters.AddWithValue("@emailAdd", email);
            sqlCommand.Parameters.AddWithValue("@status","Active" );
            sqlCommand.Parameters.AddWithValue("@DateAdd", dt);
            sqlCommand.Parameters.AddWithValue("@pass", password);
            connection.Open();
            sqlCommand.ExecuteNonQuery();
            connection.Close();

        }












    }
}