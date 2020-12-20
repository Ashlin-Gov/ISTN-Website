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

namespace Milestone4
{
    public partial class bio_wf : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            Load_Bio();
        }

        protected void Load_Bio()
        {
            SqlConnectionClass sqlClass = new SqlConnectionClass();
            DataTable table1 = sqlClass.GetBioDetails((string)Session["MemberID"]);

            foreach (DataRow dr in table1.Rows)
            {
               
                TbxInputName.Text = (string)dr["Firstname"];
                TbxInputSurname.Text = (string)dr["Surname"];
                TbxInputRegEmail.Text = (string)dr["Email"];
                TbxInputCellNum.Text = (string)dr["CellNumber"];
                TbxInputAddress.Text = (string)dr["Address"];
                TbxInputRegPassword.Text = (string)dr["Password"];
           
            }
        }

        protected void btn_Register_Click(object sender, EventArgs e)
        {
            string name, surname, email, cellNo, address, pass, ConPass;
            name = TbxInputName.Text;
            surname = TbxInputSurname.Text;
            email = TbxInputRegEmail.Text;
            cellNo = TbxInputCellNum.Text;
            address = TbxInputAddress.Text;
            pass = TbxInputRegPassword.Text;
            ConPass = tbxConfPass.Text;

            if (!String.Equals(pass,ConPass))
            {
                Response.Write("<script>alert('Passwords Do Not Match')</script>");
            }
            else if(cellNo.Length!=10)
            {
                Response.Write("<script>alert('Cellphone Number Incorrect')</script>");
            }
            else if(name.Any(char.IsDigit) || surname.Any(char.IsDigit))
            {
                Response.Write("<script>alert('Name/Surname Contains Letters Only')</script>");
            } 
            else if (name.Length<3 || surname.Length<3)
            {
                Response.Write("<script>alert('Name/Surname Too Short')</script>");
            }
            else if (cellNo.Any(char.IsLetter))
            {
                Response.Write("<script>alert('Cellphone Number Contains Digits Only')</script>");
            }
            else if (pass.Length<3)
            {
                Response.Write("<script>alert('Password Too Short')</script>");
            }
            else
            {
                SqlConnectionClass sqlClass = new SqlConnectionClass();
                sqlClass.updateMem(name,surname,email,pass,(string)Session["MemberID"]);
                Response.Write("<script>alert('Details Updated')</script>");
            }
        }
    }
}