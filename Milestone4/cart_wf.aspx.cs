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
       
            if ( (cart.Count > 0) && ((string)Session["MemberID"].ToString()).Length>10)
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
                Response.Write("Added");
            }


          

        }
    }
}



//  List<string> cart1 = new List<string>(cart);
//   prod3.Text = cart1[0].ToString();