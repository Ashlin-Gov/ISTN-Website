﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Milestone4
{
    public partial class Home_wf : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if ((int)Session["Sucess"] == 1)
            {
                Response.Write("<script>alert('Login Successful')</script>");
                Session["Sucess"] = 0;
            }
        }

      
    }
}