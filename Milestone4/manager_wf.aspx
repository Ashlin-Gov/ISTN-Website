<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manager_wf.aspx.cs" Inherits="Milestone4.manager_wf" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
   <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

  <!-- Bootstrap CSS -->
   
   
  <link rel="stylesheet" href="css/bootstrap.css" />
     <link rel="stylesheet" href="css/test.css" />
  <script src="https://bootswatch.com/_vendor/jquery/dist/jquery.min.js"></script>
  <script src="https://bootswatch.com/_vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>    
    
</head>
  
<body> 
 

     <form id="form1" runat="server" >
 

     <asp:Image ID="Image1" runat="server" ImageUrl="~/Assets/TsBar.png" Width="100%" />
<div class ="form-control-lg">
<div class="container-fluid">
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">

  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor02">
    <ul class="navbar-nav mr-auto">
      <h1 class="display-2" style="color:white;padding-left:480px">Totalsports Management</h1>  
      
     
       
        <%--  End of Login and Cart Buttons--%>      
    </ul>
   
  </div>
</nav>


         </div>
         </div>
            <div style="margin-bottom:100px"></div>
<div class ="form-control-lg">
<div class="container-fluid">
  <div class="row">
    <div class="col-lg-2">
    <%--    sidebar left--%>
       <div style="margin-bottom:50px"></div>
              <div class="card text-black border-dark mb-3" style="background-color : white; height :25rem;width:100%">
      <h4> <div class="card-header" style="font-size : 30px;padding-left:40px ; background-color : white ;color:#033c73">Admin Actions </div></h4>  
         <div class="card-body">
            
           <h4 style="padding-left:65px"> <asp:LinkButton ID="linkProd" runat="server" ForeColor="#033c73" OnClick="linkProd_Click"> Products</asp:LinkButton></h4> 
                      <hr class="my-4"/>
         <h4 style="padding-left:65px"> <asp:LinkButton ID="linkMem" runat="server" ForeColor="#033c73" OnClick="linkMem_Click"> Members</asp:LinkButton></h4>
                      <hr class="my-4"/>
       <h4 style="padding-left:80px"> <asp:LinkButton ID="linkStaff" runat="server" ForeColor="#033c73" OnClick="linkStaff_Click"> Staff</asp:LinkButton></h4>

                      <hr class="my-4"/>
       <h4 style="padding-left:80px"> <asp:LinkButton ID="linkOrd" runat="server" ForeColor="#033c73" OnClick="linkOrd_Click"> Orders</asp:LinkButton></h4>
             
         </div>
</div>
      
    </div>
 <%--       end of sidebar left--%>

    <div class="col-lg-8">
    <%--  Center Column--%>
        <asp:Panel ID="pnlProducts" runat="server" Width="100%">
            <div class="card border-secondary mb-3" style="width:100%">
             <div class="card-header">Products</div>
              <div class="card-body">
                  <asp:GridView ID="gvProducts" runat="server" CellPadding="5" CellSpacing="10" Width="100%"></asp:GridView>
              </div>
             </div>
        </asp:Panel>


        <asp:Panel ID="pnlMember" runat="server" Width="100%" Visible="False">
            <div class="card border-secondary mb-3" style="width:100%">
             <div class="card-header">Members</div>
              <div class="card-body">
                  <asp:GridView ID="gvMembers" runat="server" CellPadding="3" CellSpacing="5"></asp:GridView>
              </div>
             </div>
        </asp:Panel>

         <asp:Panel ID="pnlStaff" runat="server" Width="100%" Visible="False">
            <div class="card border-secondary mb-3" style="width:100%">
             <div class="card-header">Staff</div>
              <div class="card-body">
                  <asp:GridView ID="gvStaff" runat="server" CellPadding="8" CellSpacing="9" Width="100%"></asp:GridView>
              </div>
             </div>
        </asp:Panel>

        <asp:Panel ID="pnlOrders" runat="server" Width="100%" Visible="False">
            <div class="card border-secondary mb-3" style="width:100%">
             <div class="card-header">Orders</div>
              <div class="card-body">
                  <asp:GridView ID="gvOrder" runat="server" CellPadding="3" CellSpacing="2" Width="100%"></asp:GridView>
              </div>
             </div>
        </asp:Panel>
      <%--  navbar-start--%>
    
<%-- nav bar end --%>   
    <div style="margin-bottom:15px"></div>
    
       
    
<%--End Of center column--%>

   
  </div>
      <div class="col-lg-2">
           <div style="margin-bottom:15px"></div>
       
          
        
      </div> 
</div>
       

</div>
   
<%--<%--Footer Of the Page   --%>    


    <div class="jumbotron" style="background-color:  #033c73 ">
         <hr class="my-4" style="background-color:white"/>
        <div style="padding-left:42%">
           <h1 class="display-3" style="color:white">Totalsports</h1>       
                  
                  <div style="margin-top:10px;padding-left:10.3%">  <asp:Button ID="btn_LogOut" runat="server" class="btn btn-info" Text="Log Out" Font-Size="Larger" OnClick="btn_LogOut_Click" /></div>
                
           
        
        </div>      
         
<%--Company About and contact--%>
   <hr class="my-4"  style="background-color:white"/>
</div>

  <asp:Image ID="Image2" runat="server" ImageUrl="~/Assets/bottombar.png" Width="100%" />
</div>
<%--End Of Company About and contact--%>
<%--End of Footer Of the Page   --%>   



     </form>


</body>

</html>

