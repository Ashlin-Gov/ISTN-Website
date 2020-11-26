using System;
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
            Session["emailID"] = TbxInputEmail.Text;
            Session["passwordID"] = TbxInputPassword.Text;

            SqlConnectionClass sqlClass = new SqlConnectionClass();
            DataSet set1 = sqlClass.GetDataSet();
            DataTable table1 = set1.Tables["[M3 - MemberTbl]"];
            foreach (DataRow dr in table1.Rows)
            {
                if((string)Session["emailID"] == (string)dr["Email"].ToString()   && (string)Session["passwordID"] == (string)dr["MemberID"].ToString())
                {
                    Session["Sucess"] = 1;
                    Response.Redirect("~/Home_wf.aspx");
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
            string name = TbxInputName.Text;
            string surname = TbxInputSurname.Text;
            string address = TbxInputAddress.Text;
            string cellNo = TbxInputCellNum.Text;
            string email = TbxInputRegEmail.Text;
            string password = TbxInputRegPassword.Text;
            string id = InputIdNo.Text;

            //Validation to be completed

            String memID = "";
            bool bflag = true;

            SqlConnectionClass sqlClass = new SqlConnectionClass();
            DataSet set1 = sqlClass.GetDataSet();

        
            
            while (bflag)
            {
                memID = generateAccountNumber();
                memID = Regex.Replace(memID, @"\s+", "");
                DataTable dt = sqlClass.checkMemDuplicate(memID);
                if (dt.Rows.Count==0)
                {
                    bflag = false;
                }
               
            }

            sqlClass.InsertNewAccount(memID, name, surname, cellNo, id, address, email, password);
            Response.Write("<script>alert('You have been successfully registered!')</script>");
            TbxInputName.Text="";
            TbxInputSurname.Text = "";
            TbxInputAddress.Text = "";
            TbxInputCellNum.Text = "";
            TbxInputRegEmail.Text = "";
            TbxInputRegPassword.Text = "";
            InputIdNo.Text = "";
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
            

        //Methods

    }
}