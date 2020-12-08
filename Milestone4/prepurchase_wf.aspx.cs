using System;
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
    public partial class prepurchase_wf : System.Web.UI.Page
    {
        List<string> cart;
        List<string> cartQTY;
        string colourID;

        protected void Page_Load(object sender, EventArgs e)
        {

            itemImage.ImageUrl = (string)Session["ImgUrlDisplay"];
            Load_ControlDetails();

        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
           
        }
        protected void btn_AddToCart_Click(object sender, EventArgs e)
        {
            SqlConnectionClass sqlClass = new SqlConnectionClass();
            string colour = colourList.SelectedItem.ToString();
            string size =sizeList.SelectedItem.ToString();
            string id = sqlClass.returnID((string)Session["NameDisplay"].ToString(), colour, size);
            cart = (List<string>)Session["Cart"];
            cartQTY = (List<string>)Session["CartQTY"];
            cart.Add(id);
            cartQTY.Add(quantityList.SelectedItem.ToString());
            Response.Redirect("~/Home_wf.aspx");
            //Call procedure to return prodID and then add ID to the cart
            //cart.add(prodID);

        }

        protected void Load_ControlDetails()
        {


            SqlConnectionClass sqlClass = new SqlConnectionClass();
            DataTable table1 = sqlClass.Load_PrePurchase((string)Session["NameDisplay"].ToString());

        
            string sColDuplicate;
            string sSizeDuplicate;

            Header.Text = (string)Session["NameDisplay"].ToString();
            Header.Text = Header.Text +" - R"+ table1.Rows[0]["SellingPrice"].ToString();
            lblDesc.Text= table1.Rows[0]["Description"].ToString();

            foreach (DataRow dr in table1.Rows)
            {
                sColDuplicate = (string)dr["Colour"].ToString();
                sSizeDuplicate = (string)dr["Size"].ToString();
                if (colourList.Items.FindByText(sColDuplicate)!=null)
                {
                   
                }
                else { colourList.Items.Add(sColDuplicate); }
                if (sizeList.Items.FindByText(sSizeDuplicate) != null)
                {
                   
                }
                else { sizeList.Items.Add(sSizeDuplicate); }

          

              
            }

        }

       

        


    }
}