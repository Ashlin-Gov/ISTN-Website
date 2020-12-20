using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data.Common;
using System.Data;
using System.CodeDom;
using System.Drawing;

namespace Milestone4
{
    public partial class Home_wf : System.Web.UI.Page
    {

        List<string> cart = new List<string>();
        List<string> cartQTY = new List<string>();
        SqlConnectionClass sqlClass = new SqlConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["FilterBy"] = 0;
            


            if ((int)Session["Sucess"] == 1)
            {
                Response.Write("<script>alert('Login Successful')</script>");
                Session["Sucess"] = 0;
            }
          
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            
           
                if ((string)Session["Name"].ToString() == "")
                {
                    lblName.ForeColor = Color.Transparent;
                }
                else
                {
                if ((int)Session["Session"] == 2)
                {
                    lblName.ForeColor = Color.White;
                    lblName.Text = " Hi There! , " + Session["Name"].ToString();
                }
                 
                }
            
          
           
        }

        protected void btn_Cart_Click(object sender, EventArgs e)
        {
        
            Response.Redirect("~/cart_wf.aspx");
        }

        protected void btnCheck_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/shoes_wf.aspx");

        }

        protected void btn_Login_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login_wf.aspx");
        }

        protected void btn_LogOut_Click(object sender, EventArgs e)
        {
           
            Session.Abandon();
            Response.Redirect("~/Login_wf.aspx");

        }

        protected void btn_Status_Click(object sender, EventArgs e)
        {
            if ((int)Session["Session"] != 2)
            {
                Response.Redirect("~/Login_wf.aspx");
            }
            else
            {
                Response.Redirect("~/orderStatus_wf.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if ((int)Session["Session"] != 2)
            {
                Response.Redirect("~/Login_wf.aspx");
            }
            else
            {
                Response.Redirect("~/bio_wf.aspx");
            }
         
        }
    }
}