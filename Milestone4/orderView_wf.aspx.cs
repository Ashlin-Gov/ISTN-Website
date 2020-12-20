using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data.Common;
using System.Data;
using System.CodeDom;
using System.Web.UI.WebControls;

namespace Milestone4
{
    public partial class orderView_wf : System.Web.UI.Page
    {
        List<Label> arrProd = new List<Label>();
        List<Label> arrPrice = new List<Label>();
        List<Label> arrQTY = new List<Label>();
        int howManyItems;
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadControls();
            hideControls();
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {          
            Load_Details();
            showControls();
        }

        protected void Load_Details()
        {
         
            
            SqlConnectionClass sqlClass = new SqlConnectionClass();
            DataTable table1 = sqlClass.GetReceipt((string)Session["OrdID"]);
            howManyItems = table1.Rows.Count;



            int i = 0;
                foreach (DataRow dr in table1.Rows)
                {
                    arrProd[i].Text = (string)dr["ProductName"];
                    arrPrice[i].Text = "R"+((decimal)dr["SellingPrice"]).ToString();
                    arrQTY[i].Text = ((int)dr["Qty"]).ToString();
                 i += 1;  
                }

            
            ordNo.Text = "Order No #" + Session["OrdID"].ToString();
            ordTotal.Text ="Order Total : R" + sqlClass.GetOrderTotal((string)Session["OrdID"]).ToString();
           
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

         
        }

        protected void hideControls()
        {
            for (int i = 0; i < 10; i++)
            {
                arrProd[i].Visible = false;
                arrPrice[i].Visible = false;
                arrQTY[i].Visible = false;
           
            }
        }

        protected void showControls()
        {
           
            //  lblTotal.Text = howManyItems.ToString();
            for (int i = 0; i < howManyItems; i++)
            {
                arrProd[i].Visible = true;
                arrPrice[i].Visible = true;
                arrQTY[i].Visible = true;
              
            }
        }
    }
}