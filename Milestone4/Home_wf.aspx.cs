using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Milestone4
{
    public partial class Home_wf : System.Web.UI.Page
    {

        List<string> cart = new List<string>();
        List<string> cartQTY = new List<string>();
        protected void Page_Load(object sender, EventArgs e)
        {

           


            if ((int)Session["Sucess"] == 1)
            {
                Response.Write("<script>alert('Login Successful')</script>");
                Session["Sucess"] = 0;
            }
        }

        protected void btn_Cart_Click(object sender, EventArgs e)
        {
        
            Response.Redirect("~/cart_wf.aspx");
        }

        protected void btnCheck_Click(object sender, EventArgs e)
        {
            cart = (List<string>)Session["Cart"];
            cartQTY = (List<string>)Session["CartQTY"];

            cart.Add("1");
            cart.Add("2");
            cartQTY.Add("3");
            cartQTY.Add("1");
        }
    }
}