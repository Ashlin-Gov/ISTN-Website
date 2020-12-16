using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Milestone4
{
    public partial class manager_wf : System.Web.UI.Page
    {
        SqlConnectionClass sqlClass = new SqlConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            gvProducts.DataSource = sqlClass.ManagerProd();
            gvMembers.DataSource = sqlClass.ManagerMem();
            gvStaff.DataSource = sqlClass.ManagerStaff();
            gvOrder.DataSource = sqlClass.ManagerOrder();
            DataBind();
        }

        protected void btn_LogOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/Home_wf.aspx");
        }

        protected void linkProd_Click(object sender, EventArgs e)
        {
            pnlMember.Visible = false;
            pnlOrders.Visible = false;
            pnlProducts.Visible = true;
            pnlStaff.Visible = false;
        }

        protected void linkMem_Click(object sender, EventArgs e)
        {
            pnlMember.Visible = true;
            pnlOrders.Visible = false;
            pnlProducts.Visible = false;
            pnlStaff.Visible = false;
        }

        protected void linkStaff_Click(object sender, EventArgs e)
        {
            pnlMember.Visible = false;
            pnlOrders.Visible = false;
            pnlProducts.Visible = false;
            pnlStaff.Visible = true;
        }

        protected void linkOrd_Click(object sender, EventArgs e)
        {
            pnlMember.Visible = false;
            pnlOrders.Visible = true;
            pnlProducts.Visible = false;
            pnlStaff.Visible = false;
        }
    }
}