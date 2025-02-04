﻿using System;
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

        public DataTable ManagerProd()
        {
            connection.Open();
            sql = "Select ProductName,CostPrice,CurrentStock,Discount,SellingPrice,Gender,Status from [M3 - ProductTable] ORDER BY CurrentStock ASC";
            sqlCommand = new SqlCommand(sql, connection);
            dataAdapter = new SqlDataAdapter(sqlCommand);
            DataTable dt = new DataTable();
            dataAdapter.Fill(dt);
            connection.Close();
            return dt;
        }

        public DataTable ManagerStaff()
        {
            connection.Open();
            sql = "Select * FROM [M3 - StaffTbl]";
            sqlCommand = new SqlCommand(sql, connection);
            dataAdapter = new SqlDataAdapter(sqlCommand);
            DataTable dt = new DataTable();
            dataAdapter.Fill(dt);
            connection.Close();
            return dt;
        }

       // public string recovery(string email)
       // {
       //     connection.Open();
       //     sql = "Select Password FROM [M3 - MemberTbl] WHERE Email=@email ";
       //     sqlCommand.Parameters.AddWithValue("@email", email);
       //     sqlCommand = new SqlCommand(sql, connection);
       //     dataAdapter = new SqlDataAdapter(sqlCommand);
       //     DataTable dt = new DataTable();
       //     dataAdapter.Fill(dt);
       //     connection.Close();
       ////    return dt;
       // }

        public DataTable ManagerOrder()
        {
            connection.Open();
            sql = "Select * FROM [M3 - OrderTbl]";
            sqlCommand = new SqlCommand(sql, connection);
            dataAdapter = new SqlDataAdapter(sqlCommand);
            DataTable dt = new DataTable();
            dataAdapter.Fill(dt);
            connection.Close();
            return dt;
        }

        public DataTable ManagerMem()
        {
            connection.Open();
            sql = "Select MemberID,Firstname,Surname,CellNumber,Address,Email,ID,Status FROM [M3 - MemberTbl]";
            sqlCommand = new SqlCommand(sql, connection);
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

        public void placeOrder(string ordTT, string name,string cellNum,string memId)
        {
            DateTime date = System.DateTime.Now;
            connection.Open();
            sqlCommand = new SqlCommand("PlaceOrder", connection);
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("@OrderTotal", decimal.Parse(ordTT) );
            sqlCommand.Parameters.AddWithValue("@OrderType", "Phone Order");
            sqlCommand.Parameters.AddWithValue("@FullName", name); 
            sqlCommand.Parameters.AddWithValue("@CellNum", cellNum);  
            sqlCommand.Parameters.AddWithValue("@StaffID", 0);
            sqlCommand.Parameters.AddWithValue("@MemID", memId); 
            sqlCommand.Parameters.AddWithValue("@DateOrdered", date);
            sqlCommand.Parameters.AddWithValue("@DatePaid", DBNull.Value);
            sqlCommand.Parameters.AddWithValue("@Status", "Preparing");
            sqlCommand.ExecuteNonQuery();
            connection.Close();
           
        }

        public void orderLine(string ordTT, string prodID, string qty, decimal unit)
        {          
            connection.Open();
            sqlCommand = new SqlCommand("PlaceOrderLine", connection);
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("@OrderNum", int.Parse(ordTT));
            sqlCommand.Parameters.AddWithValue("@ProdID", int.Parse(prodID));
            sqlCommand.Parameters.AddWithValue("@Qty", qty);
            sqlCommand.Parameters.AddWithValue("@UnitPrice", unit.ToString());
            sqlCommand.Parameters.AddWithValue("@Status", DBNull.Value);
            sqlCommand.ExecuteNonQuery();
            connection.Close();

        }

        public void updateMem(string first, string sur, string email, string pass,string memID)
        {
            connection.Open();
            sqlCommand = new SqlCommand("UpdateMember", connection);
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("@First",first);
            sqlCommand.Parameters.AddWithValue("@Sur", sur);
            sqlCommand.Parameters.AddWithValue("@Email", email);
            sqlCommand.Parameters.AddWithValue("@Password", pass);
            sqlCommand.Parameters.AddWithValue("@MemId", memID);
            sqlCommand.ExecuteNonQuery();
            connection.Close();

        }

        public DataTable GetOrdStats(string mem)
        {
            connection.Open();
            sqlCommand = new SqlCommand("GetOrderNo", connection);
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("@memID", mem);
            dataAdapter = new SqlDataAdapter(sqlCommand);
            DataTable dt = new DataTable();
            dataAdapter.Fill(dt);
            connection.Close();
            return dt;
        }

        public string GetOrderTotal(string ordNo)
        {
            connection.Open();
            sqlCommand = new SqlCommand("GetOrderTotal", connection);
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("@ordNum", int.Parse(ordNo));
            dataAdapter = new SqlDataAdapter(sqlCommand);
            DataTable dt = new DataTable();
            dataAdapter.Fill(dt);
            connection.Close();
            string total = dt.Rows[0][0].ToString();
            return total;
        }

        public bool checkEmailDup(string email)
        {
            connection.Open();
            sqlCommand = new SqlCommand("checkmail", connection);
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("@email", email);
            dataAdapter = new SqlDataAdapter(sqlCommand);
            DataTable dt = new DataTable();
            dataAdapter.Fill(dt);
            connection.Close();
            if (dt.Rows.Count > 0)
            {
                return false;
            }
            
            return  true;
        }

        public DataTable GetBioDetails(string memID)
        {
            connection.Open();
            sqlCommand = new SqlCommand("getBioDetails", connection);
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("@memID", memID);
            dataAdapter = new SqlDataAdapter(sqlCommand);
            DataTable dt = new DataTable();
            dataAdapter.Fill(dt);
            connection.Close();      
            return dt;
        }

        public int getQTY(int prodID)
        {
            connection.Open();
            sqlCommand = new SqlCommand("getQ", connection);
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("@prodID", prodID);
            dataAdapter = new SqlDataAdapter(sqlCommand);
            DataTable dt = new DataTable();
            dataAdapter.Fill(dt);
            connection.Close();
            return int.Parse(dt.Rows[0][0].ToString());
        }

        public string recover(string email)
        {
            connection.Open();
            sqlCommand = new SqlCommand("recoverPass", connection);
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("@email", email);
            dataAdapter = new SqlDataAdapter(sqlCommand);
            DataTable dt = new DataTable();
            dataAdapter.Fill(dt);
            connection.Close();
            if (dt.Rows.Count > 0)
            {
              return dt.Rows[0][0].ToString();
            }
           
            return "";
        }

        public string GetCellPhone(string memID)
        {
            connection.Open();
            sqlCommand = new SqlCommand("getCellNo", connection);
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("@memID", memID);
            dataAdapter = new SqlDataAdapter(sqlCommand);
            DataTable dt = new DataTable();
            dataAdapter.Fill(dt);
            connection.Close();
            string cell = dt.Rows[0][0].ToString();
            return cell;
        }

        public string getOrdNo()
        {
            connection.Open();
            sql = "SELECT Max(OrderNum) FROM [M3 - OrderTbl]";
            sqlCommand = new SqlCommand(sql, connection);
            dataAdapter = new SqlDataAdapter(sqlCommand);
            DataTable dt = new DataTable();
            dataAdapter.Fill(dt);
            connection.Close();
            string ordNo = dt.Rows[0][0].ToString();
            return ordNo;
        }

        public string GetRank(string user, string pass)
        {
            connection.Open();
            sqlCommand = new SqlCommand("getRank", connection);
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("@username", user);
            sqlCommand.Parameters.AddWithValue("@pass", pass);
            dataAdapter = new SqlDataAdapter(sqlCommand);
            DataTable dt = new DataTable();
            dataAdapter.Fill(dt);
            connection.Close();
            if (dt.Rows.Count >0)
            {
                string total = dt.Rows[0][0].ToString();
            }
            else
            {
                return "";
            }
            return "";
           
        }

        public string GetName(string memID)
        {
            connection.Open();
            sqlCommand = new SqlCommand("GetName", connection);
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("@memID", memID);
            dataAdapter = new SqlDataAdapter(sqlCommand);
            DataTable dt = new DataTable();
            dataAdapter.Fill(dt);
            connection.Close();
            string name = dt.Rows[0][0].ToString();
            return name;
        }

        public DataTable GetReceipt(string ord)
        {
            connection.Open();
            sqlCommand = new SqlCommand("GetReceipt", connection);
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("@ordNum", int.Parse(ord));
            dataAdapter = new SqlDataAdapter(sqlCommand);
            DataTable dt = new DataTable();
            dataAdapter.Fill(dt);
            connection.Close();
            return dt;
        }

        public string GetLoginID(string email,string pass)
        {
            connection.Open();
            sqlCommand = new SqlCommand("GetLoginID", connection);
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("@email", email);
            sqlCommand.Parameters.AddWithValue("@pass", pass);
            dataAdapter = new SqlDataAdapter(sqlCommand);
            DataTable dt = new DataTable();
            dataAdapter.Fill(dt);
            connection.Close();
            string id = dt.Rows[0][0].ToString();
            return id;
        }


        public DataTable Filter_2(string cat, string brand, string gender,int pricing)
        {
            connection.Open();
            if (pricing==0)
            {
                sqlCommand = new SqlCommand("FilterProductsPriceASC", connection);
            }
            else
            {
                sqlCommand = new SqlCommand("FilterProductsPriceDESC", connection);
            }

            sqlCommand.CommandType = CommandType.StoredProcedure;

            if (brand=="")
            {
                sqlCommand.Parameters.AddWithValue("@Brand", DBNull.Value);
            }
            else
            {
                sqlCommand.Parameters.AddWithValue("@Brand",int.Parse(brand));
            }

            if (gender == "")
            {
                sqlCommand.Parameters.AddWithValue("@Gender", DBNull.Value);
            }
            else
            {
                sqlCommand.Parameters.AddWithValue("@Gender", gender);
            }
            
            sqlCommand.Parameters.AddWithValue("@Category", cat);        
            sqlCommand.Parameters.AddWithValue("@Colour", DBNull.Value);
            sqlCommand.Parameters.AddWithValue("@Size", DBNull.Value);
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
            string id = dt.Rows[0][0].ToString();
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