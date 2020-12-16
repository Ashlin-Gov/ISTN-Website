using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data.Common;
using System.CodeDom;


namespace Milestone4
{
    public partial class orderStatus_wf : System.Web.UI.Page
    {
        LinkButton[] arrOrdID = new LinkButton[10];
        Label[] arrDate = new Label[10];
        Label[] arrStatus = new Label[10];
        int HowMany;
        protected void Page_Load(object sender, EventArgs e)
        {
            Load_Controls();
            Hide_Controls();
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            Load_Details();
            Show_Controls();
           
        }
   
        protected void Load_Details()
        {
            SqlConnectionClass sqlClass = new SqlConnectionClass();
            DataTable table1 = sqlClass.GetOrdStats( (string) Session["MemberID"]);

             HowMany = table1.Rows.Count;

            int i = 0;

            foreach (DataRow dr in table1.Rows)
            {
       
                arrOrdID[i].Text = ((int)dr["OrderNum"]).ToString();
                arrDate[i].Text = ((DateTime)dr["DateOrdered"]).ToString("yyyy-MM-dd");
                arrStatus[i].Text = (string)dr["Status"]; 

                i += 1;
            }
        }


        protected void Show_Controls()
        {
            
            for(int i = 0; i < HowMany; i++)
            {
                arrOrdID[i].Visible = true;
                arrDate[i].Visible = true;
                arrStatus[i].Visible = true;
            }
        }

        protected void Hide_Controls()
        {
            for (int i = 0; i < 10; i++)
            {
                arrOrdID[i].Visible = false;
                arrDate[i].Visible = false;
                arrStatus[i].Visible = false;
            }
        }

        protected void Load_Controls()
        {
            arrOrdID[0] = ord1;
            arrOrdID[1] = ord2;
            arrOrdID[2] = ord3;
            arrOrdID[3] = ord4;
            arrOrdID[4] = ord5;
            arrOrdID[5] = ord6;
            arrOrdID[6] = ord7;
            arrOrdID[7] = ord8;
            arrOrdID[8] = ord9;
            arrOrdID[9] = ord10;

            arrDate[0]= dt1;
            arrDate[1]= dt2;
            arrDate[2]= dt3;
            arrDate[3]= dt4;
            arrDate[4]= dt5;
            arrDate[5]= dt6;
            arrDate[6]= dt7;
            arrDate[7]= dt8;
            arrDate[8]= dt9;
            arrDate[9]= dt10;

            arrStatus[0]= status1;
            arrStatus[1]= status2;
            arrStatus[2]= status3;
            arrStatus[3]= status4;
            arrStatus[4]= status5;
            arrStatus[5]= status6;
            arrStatus[6]= status7;
            arrStatus[7]= status8;
            arrStatus[8]= status9;
            arrStatus[9]= status10;
        }

        protected void ord1_Click(object sender, EventArgs e)
        {
            Session["OrdID"] = arrOrdID[0].Text;
            Response.Redirect("~/orderView_wf.aspx");
        }

        protected void ord2_Click(object sender, EventArgs e)
        {
            Session["OrdID"] = arrOrdID[1].Text;
            Response.Redirect("~/orderView_wf.aspx");
        }
    }
}