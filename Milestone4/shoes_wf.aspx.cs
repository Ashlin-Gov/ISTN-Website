using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Milestone4
{
    public partial class shoes_wf : System.Web.UI.Page
    {
        Label[] arrLabel = new Label[] { };
        ImageButton[] arrImage = new ImageButton[] { };
        Label[] arrCostLabel = new Label[] { };
        protected void Page_Load(object sender, EventArgs e)
        {

      
       
           /// Load_Images();
            
            




        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
          
            // ImageButton1.
            //Response.Write("<script>alert()</script>");
        }

        protected void Load_Images()
        {
            for(int i = 0; i < 4; i++)
            {
                ImageButton imageButton = new ImageButton();
                Panel panel = new Panel();
                string s = "https://image.tfgmedia.co.za/image/1/process/259x259?source=http://cdn.tfgmedia.co.za/13/ProductImages/57491810.jpg";
                string header = "Nike Shoes";
                string cost = "R1200";
        
                imageButton.ImageUrl = s;
                imageButton.Width = Unit.Pixel(300);
                imageButton.Height = Unit.Pixel(300);
                imageButton.Style.Add("padding", "80px");

                Label lbl = new Label();
                lbl.Text = "hello, this is a description ";
                
                //pnlControl.Controls.Add(imageButton);
                //pnlControl.Controls.Add(new LiteralControl(lbl.Text));
        //      Controls.Add(imageButton);
                
               
            }
          
            
        }
    }
}