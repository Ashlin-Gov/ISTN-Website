using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Text;

namespace Milestone4
{
    public partial class recovery_wf : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Login_Click(object sender, EventArgs e)
        {
            SqlConnectionClass sqlClass = new SqlConnectionClass();
            string email = sqlClass.recover(TbxInputEmail.Text.ToString());
            if(email.Length>0)
            {
                string recoverMail = GenerateInvoice(email);
                bool Email = SendEmail(TbxInputEmail.Text,recoverMail);
            }
            else
            {
                Response.Write("<script>alert('Email Invalid')</script>");
            }
        }


        public string GenerateInvoice(string pass)
        {

            StringBuilder invoiceHtml = new StringBuilder();
           
            invoiceHtml.Append("<b>DATE : </b>").Append(DateTime.Now.ToShortDateString()).Append("<br />");     
            invoiceHtml.Append("<br /><b>Store CONTACT INFO:</b><br />");
            invoiceHtml.Append("<b>Store Name : </b>").Append("TotalSports Ballito").Append("<br />");
            invoiceHtml.Append("<b>Phone : </b>").Append("0825678901").Append("<br />");
            invoiceHtml.Append("<b>Email : </b>").Append("puzzlersistn@gmail.com").Append("<br />");      
            invoiceHtml.Append("<b>Password : </b><br />").Append(pass.ToString()).Append("<br />");
  
            //
            return invoiceHtml.ToString();
        }

        public static bool SendEmail(string clientEmail, string Body)
        {
            try
            {
                MailAddress FromAddr = new MailAddress("puzzlersistn@gmail.com", "TotalSports Balito", System.Text.Encoding.UTF8);
                MailAddress ToAddr = new MailAddress(clientEmail, "User", System.Text.Encoding.UTF8);
                var smtp = new SmtpClient
                {
                    Host = "smtp.gmail.com",
                    Port = 25,
                    EnableSsl = true,
                    DeliveryMethod = SmtpDeliveryMethod.Network,
                    UseDefaultCredentials = false,
                    Credentials = new System.Net.NetworkCredential("puzzlersistn@gmail.com", "[ashnashlerukim]")
                };

                using (MailMessage message = new MailMessage(FromAddr, ToAddr)
                {
                    Subject = "Password Recovery",
                    Body = Body,
                    IsBodyHtml = true,
                    BodyEncoding = System.Text.Encoding.UTF8,

                })
                {
                    smtp.Send(message);
                }
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}