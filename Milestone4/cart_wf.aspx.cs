using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data.Common;
using System.Data;
using System.CodeDom;
using System.Net.Mail;

namespace Milestone4
{
    public partial class cart_wf : System.Web.UI.Page
    {
        List<string> cart ;
        List<string> cartQTY;
        List<Label> arrProd = new List<Label>();
        List<Label> arrPrice = new List<Label>();
        List<Label> arrQTY = new List<Label>();
        List<Button> arrButton = new List<Button>();

        protected void Page_Load(object sender, EventArgs e){

         
            cart = (List<string>)Session["Cart"];
            cartQTY = (List<string>)Session["CartQTY"];
            LoadControls();
            Load_Details();
           
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
           
            hideControls();           
            showControls();
            lblTotal.Text = total().ToString();
        }

        protected void Load_Details()
        {
            //  int.Parse(cart[0]);
            int howManyItems = cart.Count;
            SqlConnectionClass sqlClass = new SqlConnectionClass();
            for (int i =0;i<howManyItems;i++)
            {
                DataTable table1 = sqlClass.Load_CartDetails(cart[i]);//storedprocedure//

                foreach (DataRow dr in table1.Rows)
                {
                    arrProd[i].Text = (string)dr["ProductName"];
                    arrPrice[i].Text = ((decimal)dr["SellingPrice"]).ToString();
                    arrQTY[i].Text = cartQTY[i];



                }

            }






        }


        protected void hideControls()
        {
            for(int i = 0; i < 10; i++)
            {
                arrProd[i].Visible = false;
                arrPrice[i].Visible = false;
                arrQTY[i].Visible = false;
                arrButton[i].Visible = false;
            }
        }

        protected void showControls()
        {
            int howManyItems = cart.Count;
          //  lblTotal.Text = howManyItems.ToString();
            for (int i = 0; i < howManyItems; i++)
            {
                arrProd[i].Visible = true;
                arrPrice[i].Visible = true;
                arrQTY[i].Visible = true;
                arrButton[i].Visible = true;
            }
        }



        protected void LoadControls()
        {
            arrProd.Add(prod1);
            arrProd.Add(prod2);
            arrProd.Add(prod3);
            arrProd.Add(prod4);
            arrProd.Add(prod5);
            arrProd.Add(prod6);
            arrProd.Add(prod7);
            arrProd.Add(prod8);
            arrProd.Add(prod9);
            arrProd.Add(prod10);

            arrQTY.Add(qty1);
            arrQTY.Add(qty2);
            arrQTY.Add(qty3);
            arrQTY.Add(qty4);
            arrQTY.Add(qty5);
            arrQTY.Add(qty6);
            arrQTY.Add(qty7);
            arrQTY.Add(qty8);
            arrQTY.Add(qty9);
            arrQTY.Add(qty10);

            arrPrice.Add(price1);
            arrPrice.Add(price2);
            arrPrice.Add(price3);
            arrPrice.Add(price4);
            arrPrice.Add(price5);
            arrPrice.Add(price6);
            arrPrice.Add(price7);
            arrPrice.Add(price8);
            arrPrice.Add(price9);
            arrPrice.Add(price10);

            arrButton.Add(btnI1);
            arrButton.Add(btnI2);
            arrButton.Add(btnI3);
            arrButton.Add(btnI4);
            arrButton.Add(btnI5);
            arrButton.Add(btnI6);
            arrButton.Add(btnI7);
            arrButton.Add(btnI8);
            arrButton.Add(btnI9);
            arrButton.Add(btnI10);
        }


        protected int total()
        {
            int total = 0;
            for(int i = 0; i < cart.Count; i++)
            {
                total = total + (int.Parse(arrPrice[i].Text) * int.Parse(cartQTY[i]));
            }
            return total;
        }
             

        protected void btnI1_Click(object sender, EventArgs e)
        {
            cart.RemoveAt(0);  
            cartQTY.RemoveAt(0);
        }

      
        protected void btnI2_Click1(object sender, EventArgs e)
        {
            cart.RemoveAt(1);
            cartQTY.RemoveAt(1);
        }

        protected void btn_Order_Click(object sender, EventArgs e)
        {

            SqlConnectionClass sqlClass = new SqlConnectionClass();
            if (((string)Session["MemberID"].ToString()).Length < 10)
            {
                Response.Redirect("~/Login_wf.aspx");
            }else if (cart.Count<1)
            {
                Response.Write("<script>alert('Cart Is Empty')</script>");
            }
            else 
            {             
                string confirmValue = Request.Form["confirm_value"];

                if (confirmValue == "Yes")
                {
                    string cellPhone = sqlClass.GetCellPhone((string)Session["MemberID"].ToString());
                    sqlClass.placeOrder(lblTotal.Text.ToString(), (string)Session["Name"].ToString(), cellPhone, (string)Session["MemberID"].ToString());

                    string ordNo = sqlClass.getOrdNo();

                    for (int i = 0; i < cart.Count; i++)
                    {

                        string prodID = cart[i];
                        string qty = cartQTY[i];
                        decimal price = decimal.Parse(arrPrice[i].Text.ToString());
                        int qtyprice = int.Parse(cartQTY[i].ToString());
                        decimal uprice = price * qtyprice;
                        sqlClass.orderLine(ordNo, prodID, qty, uprice);
                    }

                    string genEmail = GenerateInvoice(ordNo, cellPhone);
                    bool mail = SendEmail((string)Session["emailID"], (string)Session["Name"], "Order", genEmail);

                    cart.Clear();
                    cartQTY.Clear();
                    this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Order Placed')", true);
                    Response.Redirect("~/Home_wf.aspx");
                }
                else
                {

                    this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Order Cancelled')", true);
                }

            } 

        }

        public string GenerateInvoice(string ordNo,string cellphone)
        {
            
            StringBuilder invoiceHtml = new StringBuilder();
            invoiceHtml.Append("<b>INVOICE : ").Append(ordNo).Append("</b><br />");
            invoiceHtml.Append("<b>DATE : </b>").Append(DateTime.Now.ToShortDateString()).Append("<br />");
            invoiceHtml.Append("<b>Invoice Amt :</b> R").Append(lblTotal.Text.ToString()).Append("<br />");
            invoiceHtml.Append("<br /><b>Store CONTACT INFO:</b><br />");
            invoiceHtml.Append("<b>Store Name : </b>").Append("TotalSports Ballito").Append("<br />");
            invoiceHtml.Append("<b>Phone : </b>").Append("0825678901").Append("<br />");
            invoiceHtml.Append("<b>Email : </b>").Append("puzzlersistn@gmail.com").Append("<br />");
            invoiceHtml.Append("<b>Address : </b><br />").Append("Shop 17 Ballito Lifestyle Centre, Ballito").Append("<br />");
            invoiceHtml.Append("<b>Customer Name : </b>").Append((string)Session["Name"]).Append("<br />");
            invoiceHtml.Append("<b>Customer Cell : </b>").Append(cellphone.ToString()).Append("<br />");
          
           //
            invoiceHtml.Append("<br /><b>PRODUCTS:</b><br /><table><tr><th>Qty</th><th>Product</th><th>Total</th></tr>");
           //
            for (int i = 0; i < cart.Count; i++)
            {
                invoiceHtml.Append("<tr> <td>").Append(cartQTY[i].ToString()).Append("</td> <td>").Append(arrProd[i].Text.ToString()).Append("</td> <td>").Append("R" + arrPrice[i].Text.ToString()).Append("</td> </tr>");
            }
            invoiceHtml.Append("</table>");
            invoiceHtml.Append("<br/>");
            invoiceHtml.Append("<b>Due Vat Incl: </b>").Append(lblTotal.Text.ToString()).Append("<br />");
            invoiceHtml.Append("<table><tr><th> </th><th>Tax Invoice</th><th> </th></tr>");
            invoiceHtml.Append("</table>");
            invoiceHtml.Append("<table><tr><th>Taxable Value</th><th>VAT Value</th></tr>");
            double VAT = Math.Round(int.Parse(lblTotal.Text.ToString()) * (15.00 / 100.00), 2);
            invoiceHtml.Append("<tr> <td>").Append("</td>").Append("<td>").Append("R" + VAT).Append("</td> </tr>");
            invoiceHtml.Append("</table>");


            return invoiceHtml.ToString();
        }

        public static bool SendEmail(string clientEmail, string clientName, string Subject, string Body)
        {
            try
            {
                MailAddress FromAddr = new MailAddress("puzzlersistn@gmail.com", "TotalSports Balito", System.Text.Encoding.UTF8);
                MailAddress ToAddr = new MailAddress(clientEmail, clientName, System.Text.Encoding.UTF8);
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
                    Subject = Subject,
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

        protected void btnI3_Click(object sender, EventArgs e)
        {
            cart.RemoveAt(2);
            cartQTY.RemoveAt(2);
        }

        protected void btnI4_Click(object sender, EventArgs e)
        {
            cart.RemoveAt(3);
            cartQTY.RemoveAt(3);
        }

        protected void btnI5_Click(object sender, EventArgs e)
        {
            cart.RemoveAt(4);
            cartQTY.RemoveAt(4);
        }

        protected void btnI6_Click(object sender, EventArgs e)
        {
            cart.RemoveAt(5);
            cartQTY.RemoveAt(5);
        }

        protected void btnI7_Click(object sender, EventArgs e)
        {
            cart.RemoveAt(6);
            cartQTY.RemoveAt(6);
        }

        protected void btnI8_Click(object sender, EventArgs e)
        {
            cart.RemoveAt(7);
            cartQTY.RemoveAt(7);
        }

        protected void btnI9_Click(object sender, EventArgs e)
        {
            cart.RemoveAt(8);
            cartQTY.RemoveAt(8);
        }

        protected void btnI10_Click(object sender, EventArgs e)
        {
            cart.RemoveAt(9);
            cartQTY.RemoveAt(9);
        }
    }
}



//  List<string> cart1 = new List<string>(cart);
//   prod3.Text = cart1[0].ToString();