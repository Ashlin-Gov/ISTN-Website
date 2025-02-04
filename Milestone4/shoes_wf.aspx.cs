﻿using System;
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


namespace Milestone4
{
    public partial class shoes_wf : System.Web.UI.Page
    {
        Label[] arrLabel = new Label[20];
        ImageButton[] arrImage = new ImageButton[20];
        Label[] arrCostLabel = new Label[20];
        int[] arrProdID = new int[20];
        int MaxItems;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["FilterBy"] = 0;
            addControlsToArray();
            hideControls();

        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            if ((int)Session["FilterBy"] == 0)
            {
                Load_Details();
            }
                   
            showControls(MaxItems);

        }


        protected void addControlsToArray()
        {

            arrLabel[0] = Header1;
            arrLabel[1] = Header2;
            arrLabel[2] = Header3;
            arrLabel[3] = Header4;
            arrLabel[4] = Header5;
            arrLabel[5] = Header6;
            arrLabel[6] = Header7;
            arrLabel[7] = Header8;
            arrLabel[8] = Header9;
            arrLabel[9] = Header10;
            arrLabel[10] = Header11;
            arrLabel[11] = Header12;
            arrLabel[12] = Header13;
            arrLabel[13] = Header14;
            arrLabel[14] = Header15;
            arrLabel[15] = Header16;
            arrLabel[16] = Header17;
            arrLabel[17] = Header18;

            arrImage[0] = Imagebutton1;
            arrImage[1] = Imagebutton2;
            arrImage[2] = Imagebutton3;
            arrImage[3] = Imagebutton4;
            arrImage[4] = Imagebutton5;
            arrImage[5] = Imagebutton6;
            arrImage[6] = Imagebutton7;
            arrImage[7] = Imagebutton8;
            arrImage[8] = Imagebutton9;
            arrImage[9] = Imagebutton10;
            arrImage[10] = Imagebutton11;
            arrImage[11] = Imagebutton12;
            arrImage[12] = Imagebutton13;
            arrImage[13] = Imagebutton14;
            arrImage[14] = Imagebutton15;
            arrImage[15] = Imagebutton16;
            arrImage[16] = Imagebutton17;
            arrImage[17] = Imagebutton18;

            arrCostLabel[0] = Footer1;
            arrCostLabel[1] = Footer2;
            arrCostLabel[2] = Footer3;
            arrCostLabel[3] = Footer4;
            arrCostLabel[4] = Footer5;
            arrCostLabel[5] = Footer6;
            arrCostLabel[6] = Footer7;
            arrCostLabel[7] = Footer8;
            arrCostLabel[8] = Footer9;
            arrCostLabel[9] = Footer10;
            arrCostLabel[10] = Footer11;
            arrCostLabel[11] = Footer12;
            arrCostLabel[12] = Footer13;
            arrCostLabel[13] = Footer14;
            arrCostLabel[14] = Footer15;
            arrCostLabel[15] = Footer16;
            arrCostLabel[16] = Footer17;
            arrCostLabel[17] = Footer18;




        }

        protected void showControls(int HowMany)
        {
            for (int i = 0; i < HowMany; i++)
            {
                arrLabel[i].Visible = true;
                arrImage[i].Visible = true;
                arrCostLabel[i].Visible = true;
                arrCostLabel[i].Width = 270;
                arrCostLabel[i].Style.Add("text-align", "center");
            }
        }

        protected void hideControls()
        {
            for (int i = 0; i < 18; i++)
            {
                arrLabel[i].Visible = false;
                arrImage[i].Visible = false;
                arrCostLabel[i].Visible = false;
            }
        }


        protected void Load_Details()
        {
            SqlConnectionClass sqlClass = new SqlConnectionClass();
            DataTable table1 = sqlClass.Load_Shoes("1");

            MaxItems = table1.Rows.Count;

            int i = 0;

            foreach (DataRow dr in table1.Rows)
            {
            //    arrProdID[i]= (int)dr["ProdID"];
                arrLabel[i].Text = (string)dr["ProductName"];
                arrImage[i].ImageUrl = (string)dr["imgPath"];
                arrCostLabel[i].Text = "R" + ((decimal)dr["SellingPrice"]).ToString();

                i += 1;
            }

        }

        protected void btn_ClearFilter_Click(object sender, EventArgs e)
        {
            radioListBrand.ClearSelection();
            radioListGender.ClearSelection();
            radioListPrice.ClearSelection();
            Session["FilterBy"] = 0;


        }

        protected void Imagebutton1_Click1(object sender, ImageClickEventArgs e)
        {
            Session["NameDisplay"] = arrLabel[0].Text;
            Session["ImgUrlDisplay"] = arrImage[0].ImageUrl;
            Response.Redirect("~/prepurchase_wf.aspx");
            //Response.Write("<script>alert()</script>");
        }

        protected void Imagebutton2_Click(object sender, ImageClickEventArgs e)
        {
            Session["NameDisplay"] = arrLabel[1].Text;
            Session["ImgUrlDisplay"] = arrImage[1].ImageUrl;
            Response.Redirect("~/prepurchase_wf.aspx");
            //Response.Write("<script>alert()</script>");
        }

        protected void Imagebutton3_Click(object sender, ImageClickEventArgs e)
        {
            Session["NameDisplay"] = arrLabel[2].Text;
            Session["ImgUrlDisplay"] = arrImage[2].ImageUrl;
            Response.Redirect("~/prepurchase_wf.aspx");
            //Response.Write("<script>alert()</script>");
        }

        protected void Imagebutton4_Click(object sender, ImageClickEventArgs e)
        {
            Session["NameDisplay"] = arrLabel[3].Text;
            Session["ImgUrlDisplay"] = arrImage[3].ImageUrl;
            Response.Redirect("~/prepurchase_wf.aspx");
            //Response.Write("<script>alert()</script>");
        }

        protected void Imagebutton5_Click(object sender, ImageClickEventArgs e)
        {
            Session["NameDisplay"] = arrLabel[4].Text;
            Session["ImgUrlDisplay"] = arrImage[4].ImageUrl;
            Response.Redirect("~/prepurchase_wf.aspx");
            //Response.Write("<script>alert()</script>");
        }


        protected void Imagebutton6_Click(object sender, ImageClickEventArgs e)
        {
            Session["NameDisplay"] = arrLabel[5].Text;
            Session["ImgUrlDisplay"] = arrImage[5].ImageUrl;
            Response.Redirect("~/prepurchase_wf.aspx");
            //Response.Write("<script>alert()</script>");
        }

        protected void Imagebutton7_Click(object sender, ImageClickEventArgs e)
        {
            Session["NameDisplay"] = arrLabel[6].Text;
            Session["ImgUrlDisplay"] = arrImage[6].ImageUrl;
            Response.Redirect("~/prepurchase_wf.aspx");
            //Response.Write("<script>alert()</script>");
        }

        protected void Imagebutton8_Click(object sender, ImageClickEventArgs e)
        {
            Session["NameDisplay"] = arrLabel[7].Text;
            Session["ImgUrlDisplay"] = arrImage[7].ImageUrl;
            Response.Redirect("~/prepurchase_wf.aspx");
            //Response.Write("<script>alert()</script>");
        }

        protected void Imagebutton9_Click(object sender, ImageClickEventArgs e)
        {
            Session["NameDisplay"] = arrLabel[8].Text;
            Session["ImgUrlDisplay"] = arrImage[8].ImageUrl;
            Response.Redirect("~/prepurchase_wf.aspx");
            //Response.Write("<script>alert()</script>");
        }

        protected void Imagebutton10_Click(object sender, ImageClickEventArgs e)
        {
            Session["NameDisplay"] = arrLabel[9].Text;
            Session["ImgUrlDisplay"] = arrImage[9].ImageUrl;
            Response.Redirect("~/prepurchase_wf.aspx");
            //Response.Write("<script>alert()</script>");
        }

        protected void Imagebutton11_Click(object sender, ImageClickEventArgs e)
        {
            Session["NameDisplay"] = arrLabel[10].Text;
            Session["ImgUrlDisplay"] = arrImage[10].ImageUrl;
            Response.Redirect("~/prepurchase_wf.aspx");
            //Response.Write("<script>alert()</script>");
        }

        protected void Imagebutton12_Click(object sender, ImageClickEventArgs e)
        {
            Session["NameDisplay"] = arrLabel[11].Text;
            Session["ImgUrlDisplay"] = arrImage[11].ImageUrl;
            Response.Redirect("~/prepurchase_wf.aspx");
            //Response.Write("<script>alert()</script>");
        }

        protected void Imagebutton13_Click(object sender, ImageClickEventArgs e)
        {
            Session["NameDisplay"] = arrLabel[12].Text;
            Session["ImgUrlDisplay"] = arrImage[12].ImageUrl;
            Response.Redirect("~/prepurchase_wf.aspx");
            //Response.Write("<script>alert()</script>");
        }

        protected void Imagebutton14_Click(object sender, ImageClickEventArgs e)
        {
            Session["NameDisplay"] = arrLabel[13].Text;
            Session["ImgUrlDisplay"] = arrImage[13].ImageUrl;
            Response.Redirect("~/prepurchase_wf.aspx");
            //Response.Write("<script>alert()</script>");
        }

        protected void Imagebutton15_Click(object sender, ImageClickEventArgs e)
        {
            Session["NameDisplay"] = arrLabel[14].Text;
            Session["ImgUrlDisplay"] = arrImage[14].ImageUrl;
            Response.Redirect("~/prepurchase_wf.aspx");
            //Response.Write("<script>alert()</script>");
        }

        protected void Imagebutton16_Click(object sender, ImageClickEventArgs e)
        {
            Session["NameDisplay"] = arrLabel[15].Text;
            Session["ImgUrlDisplay"] = arrImage[15].ImageUrl;
            Response.Redirect("~/prepurchase_wf.aspx");
            //Response.Write("<script>alert()</script>");
        }

        protected void Imagebutton17_Click(object sender, ImageClickEventArgs e)
        {
            Session["NameDisplay"] = arrLabel[16].Text;
            Session["ImgUrlDisplay"] = arrImage[16].ImageUrl;
            Response.Redirect("~/prepurchase_wf.aspx");
            //Response.Write("<script>alert()</script>");
        }

        protected void Imagebutton18_Click(object sender, ImageClickEventArgs e)
        {
            Session["NameDisplay"] = arrLabel[17].Text;
            Session["ImgUrlDisplay"] = arrImage[17].ImageUrl;
            Response.Redirect("~/prepurchase_wf.aspx");
            //Response.Write("<script>alert()</script>");
        }
        protected void btn_Cart_Click(object sender, EventArgs e)
        {

        }

        protected void btn_ApplyFilter_Click(object sender, EventArgs e)
        {
            string brand = "4" ;
            string gender="Male";
            int price = 0;
            if (radioListBrand.SelectedItem == null)
            {
                brand = "";
            }
            else
            {
                brand = radioListBrand.SelectedItem.Value;
            }

            if (radioListGender.SelectedItem == null)
            {
                gender = "";
            }
            else
            {
                gender = radioListGender.SelectedItem.Text;
            }
            
                if (radioListPrice.SelectedIndex == 0 || radioListPrice.SelectedIndex == -1)
                {
                price = 0;
                    SqlConnectionClass sqlClass = new SqlConnectionClass();
                    DataTable table1 = sqlClass.Filter_2("1", brand, gender,price);

                    MaxItems = table1.Rows.Count;

                    int i = 0;

                    foreach (DataRow dr in table1.Rows)
                    {
                        //    arrProdID[i]= (int)dr["ProdID"];
                        arrLabel[i].Text = (string)dr["ProductName"];
                        arrImage[i].ImageUrl = (string)dr["imgPath"];
                        arrCostLabel[i].Text = "R" + ((decimal)dr["SellingPrice"]).ToString();

                        i += 1;
                    }
                    Session["FilterBy"] = 1;
                }
                else if (radioListPrice.SelectedIndex == 1)
                {
                price = 1;
                SqlConnectionClass sqlClass = new SqlConnectionClass();
                DataTable table1 = sqlClass.Filter_2("1", brand, gender,price);

                MaxItems = table1.Rows.Count;

                int i = 0;

                foreach (DataRow dr in table1.Rows)
                {
                    //    arrProdID[i]= (int)dr["ProdID"];
                    arrLabel[i].Text = (string)dr["ProductName"];
                    arrImage[i].ImageUrl = (string)dr["imgPath"];
                    arrCostLabel[i].Text = "R" + ((decimal)dr["SellingPrice"]).ToString();

                    i += 1;
                }
                Session["FilterBy"] = 1;
            }
            

          
         

       





            

        }

       
    }
}