﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data.Common;
using System.Data;
using System.CodeDom;
namespace Milestone4
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

        }

        protected void Session_Start(object sender, EventArgs e)
        {
            List<string> cart = new List<string>();
            List<string> cartQTY = new List<string>();
            Session.Add("emailID", 0);
            Session.Add("passwordID", 0);
            Session.Add("Sucess", 0);
            Session.Add("Cart", cart);
            Session.Add("CartQTY", cartQTY);
            Session.Add("prodIdDisplay", 0);
            Session.Add("NameDisplay", 0);
            Session.Add("ImgUrlDisplay", 0);
            Session.Add("FilterBy", 0);
            //
            Session.Add("MemberID", 0);
            Session.Add("OrdID", 0);
            Session.Add("Name","");
            //
            Session.Add("Session", 1);
            Session.Add("cval", "");
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            List<string> cart = new List<string>();
            List<string> cartQTY = new List<string>();
            Session.Add("emailID", 0);
            Session.Add("passwordID", 0);
            Session.Add("Sucess", 0);
            Session.Add("Cart", cart);
            Session.Add("CartQTY", cartQTY);
            Session.Add("prodIdDisplay", 0);
            Session.Add("NameDisplay", 0);
            Session.Add("ImgUrlDisplay", 0);
            Session.Add("FilterBy", 0);
            //
            Session.Add("MemberID", 0);
            Session.Add("OrdID", 0);
            Session.Add("Name", "");
            //
            Session.Add("Session", 1);
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}