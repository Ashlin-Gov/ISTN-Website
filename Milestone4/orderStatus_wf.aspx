<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="orderStatus_wf.aspx.cs" Inherits="Milestone4.orderStatus_wf" %>

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
  <div class="row">
    <div class="col-lg-2">
    <%--    sidebar left--%>
       <div style="margin-bottom:100px"></div>

    </div>
 <%--       end of sidebar left--%>

    <div class="col-lg-8">
    <%--  Center Column--%>
      <%--  navbar-start--%>
       <nav class="navbar navbar-expand-lg navbar-dark bg-primary" >

  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

   <div class="collapse navbar-collapse" id="navbarColor01">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="Home_wf.aspx">Home
          <span class="sr-only">(current)</span>
        </a>
      </li> <%--//--%>
     
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle"  href="tshirts_wf.aspx" role="button" aria-haspopup="true" aria-expanded="false">T-Shirt</a>   
      </li>

        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle"  href="pants_wf.aspx" role="button" aria-haspopup="true" aria-expanded="false">Pants</a>      
      </li>

        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle"  href="access_wf.aspx" role="button" aria-haspopup="true" aria-expanded="false">Accessories</a>
     
      </li>

        <li class="nav-item dropdown">
         <a class="nav-link dropdown-toggle"  href="shoes_wf.aspx" role="button" aria-haspopup="true" aria-expanded="false">Shoes</a>    
        </li>

       <div style= "padding-left: 65px;"></div>
      <%--  Login and Cart Buttons--%>
         <asp:LinkButton ID="btn_Login" runat="server" Text="Button" class="btn btn-primary btn-lg ">
              <span class="glyphicon glyphicon-user" style="color:whitesmoke"></span> Login
         </asp:LinkButton>
      
         <div style= "padding-left: 30px;"></div>
          
       <asp:Linkbutton ID="btn_Cart" type="button" runat="server" class="btn btn-primary btn-lg">
         <span class="glyphicon glyphicon-shopping-cart" style="color:whitesmoke"></span> Cart</asp:Linkbutton>
        <%--  End of Login and Cart Buttons--%>      
    </ul>
   
  </div>
</nav>

<%-- nav bar end --%>   
    <div style="margin-bottom:30px"></div>
 <%--Preview Screen Start--%>
  
  <%--End OF Preview Screen--%>          
   
   
     <div class="card border-secondary mb-3" style="width: 100%;height:60rem">
         <div class="card-header">Orders</div>
         <div class="card-body">             
                   
               <label >Order No</label>
               <label style="padding-left:26.5%" >Order Date</label>
               <label style="padding-left:25%" >Status</label>
               <hr class="my-4"/>

            <div class="row">
            <div class="col-sm-4">
                <asp:LinkButton ID="ord1" runat="server" OnClick="ord1_Click">LinkButton</asp:LinkButton>      
                  <div style="margin-bottom:40px"></div>
                <asp:LinkButton ID="ord2" runat="server" OnClick="ord2_Click">LinkButton</asp:LinkButton>      
                  <div style="margin-bottom:40px"></div>
                <asp:LinkButton ID="ord3" runat="server" OnClick="ord3_Click">LinkButton</asp:LinkButton>      
                  <div style="margin-bottom:40px"></div>
                <asp:LinkButton ID="ord4" runat="server" OnClick="ord4_Click">LinkButton</asp:LinkButton>      
                  <div style="margin-bottom:40px"></div>
                <asp:LinkButton ID="ord5" runat="server" OnClick="ord5_Click">LinkButton</asp:LinkButton>      
                  <div style="margin-bottom:40px"></div>
                <asp:LinkButton ID="ord6" runat="server" OnClick="ord6_Click">LinkButton</asp:LinkButton>      
                  <div style="margin-bottom:40px"></div>
                <asp:LinkButton ID="ord7" runat="server" OnClick="ord7_Click">LinkButton</asp:LinkButton>      
                  <div style="margin-bottom:40px"></div>
                <asp:LinkButton ID="ord8" runat="server" OnClick="ord8_Click">LinkButton</asp:LinkButton>      
                  <div style="margin-bottom:40px"></div>
                <asp:LinkButton ID="ord9" runat="server" OnClick="ord9_Click">LinkButton</asp:LinkButton>      
                  <div style="margin-bottom:40px"></div>
                <asp:LinkButton ID="ord10" runat="server" OnClick="ord10_Click">LinkButton</asp:LinkButton>      

            </div>

            <div class="col-sm-4">
                 <asp:Label ID="dt1" runat="server" Text="01-12-2020"></asp:Label>
                  <div style="margin-bottom:40px"></div>
                <asp:Label ID="dt2" runat="server" Text="01-10-2020"></asp:Label>
                  <div style="margin-bottom:40px"></div>
                <asp:Label ID="dt3" runat="server" Text="17-08-2020"></asp:Label>
                  <div style="margin-bottom:40px"></div>
                <asp:Label ID="dt4" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:40px"></div>
                <asp:Label ID="dt5" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:40px"></div>
                <asp:Label ID="dt6" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:40px"></div>
                <asp:Label ID="dt7" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:40px"></div>
                <asp:Label ID="dt8" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:40px"></div>
                <asp:Label ID="dt9" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:40px"></div>
                <asp:Label ID="dt10" runat="server" Text=""></asp:Label>
            </div>

            <div class="col-sm-4">
                <asp:Label ID="status1" runat="server" Text="Active"></asp:Label>
                  <div style="margin-bottom:40px"></div>
                <asp:Label ID="status2" runat="server" Text="Ready For Collection"></asp:Label>
                  <div style="margin-bottom:40px"></div>
                <asp:Label ID="status3" runat="server" Text="Collected"></asp:Label>
                  <div style="margin-bottom:40px"></div>
                <asp:Label ID="status4" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:40px"></div>
                <asp:Label ID="status5" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:40px"></div>
                <asp:Label ID="status6" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:40px"></div>
                <asp:Label ID="status7" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:40px"></div>
                <asp:Label ID="status8" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:40px"></div>
                <asp:Label ID="status9" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:40px"></div>
                <asp:Label ID="status10" runat="server" Text=""></asp:Label>
            </div>

           
            </div>
          </div>

   
        </div>
   
          <%-- start of payment column--%>
    

       <div style="margin-bottom:10px"></div>
    


   
        <%--  End of payment column--%>
  
        <%--End Of center column--%>
      <div class="col-lg-2">
      
      
</div>

      </div> 
</div>
       
</div>
   
<%--<%--Footer Of the Page   --%>    

<div class="jumbotron" style="background-color:  #2fa4e7 ">
        <hr class="my-4"/>
        <div style="padding-left:42%">
           <h1 class="display-3" style="color:white">Totalsports</h1> 
            <div style="margin-top:10px;padding-right:2%" >
           
             </div>
             
                    
          <div>  
           
        
        </div>       
            
               
<%--Company About and contact--%>
   <hr class="my-4"/>

</div>
        <div style="margin-top:10px;padding-left:20.2%" >
                <h1 class="display-2" style="color:white">#Your Number 1 Sport's Store</h1> 
        </div>
<div style="margin-top:20px">
  <asp:Image ID="Image2" runat="server" ImageUrl="~/Assets/bottombar.png" Width="100%" />
    </div>
</div>
<%--End Of Company About and contact--%>
<%--End of Footer Of the Page   --%>   



     </form>


</body>

</html>
