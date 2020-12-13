<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="orderView_wf.aspx.cs" Inherits="Milestone4.orderView_wf" %>

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
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">T-Shirt</a>   
      </li>

        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Pants</a>      
      </li>

        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Accessories</a>
     
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
   
   
   
          <%-- start of payment column--%>
    

       <div style="margin-bottom:10px"></div>
    
        <div class="card border-secondary mb-3" style="width: 100%;height:60rem">
         <div class="card-header">View Order</div>
         <div class="card-body">             
            <asp:Label ID="ordNo" runat="server" Text="Label"></asp:Label>
             <hr class="my-4"/>
             <div style="margin-bottom:40px"></div>
              <label >Product</label>
               <label style="padding-left:44%" >Quantity</label>
               <label style="padding-left:131px" >Price</label>
               <hr class="my-4"/>

            <div class="row">
            <div class="col-sm-6">
                <asp:Label ID="prod1" runat="server" Text="Nike Shoes"></asp:Label>
                  <div style="margin-bottom:45px"></div>
                <asp:Label ID="prod2" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:45px"></div>
                <asp:Label ID="prod3" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:45px"></div>
                <asp:Label ID="prod4" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:45px"></div>
                <asp:Label ID="prod5" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:45px"></div>
                <asp:Label ID="prod6" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:45px"></div>
                <asp:Label ID="prod7" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:45px"></div>
                <asp:Label ID="prod8" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:45px"></div>
                <asp:Label ID="prod9" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:45px"></div>
                <asp:Label ID="prod10" runat="server" Text=""></asp:Label>
                
            </div>

            <div class="col-sm-2">
                 <asp:Label ID="qty1" runat="server" Text="1"></asp:Label>
                  <div style="margin-bottom:45px"></div>
                <asp:Label ID="qty2" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:45px"></div>
                <asp:Label ID="qty3" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:45px"></div>
                <asp:Label ID="qty4" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:45px"></div>
                <asp:Label ID="qty5" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:45px"></div>
                <asp:Label ID="qty6" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:45px"></div>
                <asp:Label ID="qty7" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:45px"></div>
                <asp:Label ID="qty8" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:45px"></div>
                <asp:Label ID="qty9" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:45px"></div>
                <asp:Label ID="qty10" runat="server" Text=""></asp:Label>
            </div>

            <div class="col-sm-4">
                <asp:Label ID="price1" runat="server" Text="R1200"></asp:Label>
                  <div style="margin-bottom:45px"></div>
                <asp:Label ID="price2" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:45px"></div>
                <asp:Label ID="price3" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:45px"></div>
                <asp:Label ID="price4" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:45px"></div>
                <asp:Label ID="price5" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:45px"></div>
                <asp:Label ID="price6" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:45px"></div>
                <asp:Label ID="price7" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:45px"></div>
                <asp:Label ID="price8" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:45px"></div>
                <asp:Label ID="price9" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:45px"></div>
                <asp:Label ID="price10" runat="server" Text=""></asp:Label>
            </div>
               

             <div style="margin-bottom:40px"></div>
          
          </div> 
                      <hr class="my-4"/>
                <asp:Label ID="ordTotal" runat="server" Text="Label"></asp:Label>
          <%--</div>--%>
            </div>

   
        <%--  End of payment column--%>
  
        <%--End Of center column--%>
      <div class="col-lg-2">
      
      
</div>

      </div> 
</div>
       
</div>
   
<%--<%--Footer Of the Page   --%>    


    <div class="jumbotron" style="background-color:  #2fa4e7 ">
            <fieldset>
                <legend style= "padding-left: 870px">Order Status</legend>
              <%--  Email and Password--%>
                  <div class="form-group">                 
                   <div  style= "padding-left: 805px">  <input type="email" class="form-control-nm" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" /> </div>  
                  </div>
                  <div class="form-group">
                 
                    <div  style= "padding-left: 805px">   <input type="password" class="form-control-nm" id="exampleInputPassword1" placeholder="Password"/></div>  
                  </div>
              <%-- End of Email and Password--%>
            </fieldset>
            
            <div  style= "padding-left: 880px"> <a class="btn btn-primary btn-lg" href="#" role="button"  >Submit</a></div>          
<%--Company About and contact--%>
   <hr class="my-4"/>
</div>

  <asp:Image ID="Image2" runat="server" ImageUrl="~/Assets/bottombar.png" Width="100%" />
</div>
<%--End Of Company About and contact--%>
<%--End of Footer Of the Page   --%>   



     </form>


</body>

</html>