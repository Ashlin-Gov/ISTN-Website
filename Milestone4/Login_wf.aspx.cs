﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data.Common;
using System.Data;
using System.CodeDom;
using System.Text.RegularExpressions;

namespace Milestone4
{
    public partial class Login_wf : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
    
        }

        protected void btn_Login_Click(object sender, EventArgs e)
        {
            SqlConnectionClass sqlClass = new SqlConnectionClass();
            Session["emailID"] = TbxInputEmail.Text;
            Session["passwordID"] = TbxInputPassword.Text;

            DataSet set1 = sqlClass.GetDataSet();
            DataTable table1 = set1.Tables["[M3 - MemberTbl]"];
            foreach (DataRow dr in table1.Rows)
            {
                if ((string)Session["emailID"] == (string)dr["Email"].ToString() && (string)Session["passwordID"] == (string)dr["Password"].ToString())
                {
                    Session["Sucess"] = 1;
                    Session["MemberID"] = (sqlClass.GetLoginID(TbxInputEmail.Text, TbxInputPassword.Text)).ToString();
                    Session["Name"] = sqlClass.GetName((string)Session["MemberID"]);
                    Session["Session"] = 2;
                    Response.Redirect("~/Home_wf.aspx");
                }

            }

            if ((int)Session["Sucess"] == 0)
            {
                string ceo = sqlClass.GetRank((string)Session["emailID"], (string)Session["passwordID"]);
                if (ceo == "CEO")
                {
                    Session["Sucess"] = 1;
                    Session["Session"] = 1;
                    Response.Redirect("~/manager_wf.aspx");
                }
                
            }
           
            if ((int)Session["Sucess"] == 0)
            {
                Response.Write("<script>alert('Incorrect Details')</script>");
                TbxInputEmail.Text = "";
                TbxInputPassword.Text = "";
            }
           
            //  Response.Write("<script>alert('Login Successful')</script>");

        }

        protected void btn_Register_Click(object sender, EventArgs e)
        {
            SqlConnectionClass sqlClass = new SqlConnectionClass();
            string name = TbxInputName.Text;
            string surname = TbxInputSurname.Text;
            string address = TbxInputAddress.Text;
            string cellNo = TbxInputCellNum.Text;
            string email = TbxInputRegEmail.Text;
            string password = TbxInputRegPassword.Text;
            string id = InputIdNo.Text;
            if (sqlClass.checkEmailDup(email))
            {


                //Validation to be completed
                if (name.Any(char.IsDigit) || surname.Any(char.IsDigit))
                {
                    Response.Write("<script>alert('Name/Surname Contains Letters Only')</script>");
                }
                else if (name.Length < 3 || surname.Length < 3)
                {
                    Response.Write("<script>alert('Name/Surname Too Short')</script>");
                }
                else if (cellNo.Length != 10)
                {
                    Response.Write("<script>alert('Cellphone Number Incorrect')</script>");
                }
                else if (cellNo.Any(char.IsLetter))
                {
                    Response.Write("<script>alert('Cellphone Number Contains Digits Only')</script>");
                }
                else if (id.Length != 13)
                {
                    Response.Write("<script>alert('ID Incorrect')</script>");
                }

                else if (id.Any(char.IsLetter))
                {
                    Response.Write("<script>alert('ID Contains Digits Only')</script>");
                }
                else if (password.Length < 3)
                {
                    Response.Write("<script>alert('Password Too Short')</script>");
                }
                else
                {


                    string confirmValue = Request.Form["confirm_value"];

                    if (confirmValue == "Yes")
                    {
                        String memID = "";
                        bool bflag = true;

                        sqlClass = new SqlConnectionClass();
                        DataSet set1 = sqlClass.GetDataSet();



                        while (bflag)
                        {
                            memID = generateAccountNumber();
                            memID = Regex.Replace(memID, @"\s+", "");
                            DataTable dt = sqlClass.checkMemDuplicate(memID);
                            if (dt.Rows.Count == 0)
                            {
                                bflag = false;
                            }

                        }

                        sqlClass.InsertNewAccount(memID, name, surname, cellNo, id, address, email, password);
                        Response.Write("<script>alert('You have been successfully registered!')</script>");
                        TbxInputName.Text = "";
                        TbxInputSurname.Text = "";
                        TbxInputAddress.Text = "";
                        TbxInputCellNum.Text = "";
                        TbxInputRegEmail.Text = "";
                        TbxInputRegPassword.Text = "";
                        InputIdNo.Text = "";
                    }
                    else
                    {
                        Response.Write("<script>alert('Registration Cancelled')</script>");
                    }
                }

            }
            else
            {
                Response.Write("<script>alert('Account Already Exists')</script>");
            }
        }


        public string generateAccountNumber()
        {
            string accNumber = "";

            Random rnd = new Random();
            for (int i = 0; i < 16; i++)
            {
                if (i == 4 || i == 8 || i == 12)
                {
                    accNumber += " ";
                }
                accNumber += rnd.Next(9);
            }
           

            return accNumber;
        }

        protected void btn_Cart_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/cart_wf.aspx");
        }


        //Methods

    }
}