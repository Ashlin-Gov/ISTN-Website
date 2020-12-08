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
        <a class="nav-link" href="#"><b>Sale</b>
          <span class="sr-only">(current)</span>
        </a>
      </li> <%--//--%>
     
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false"><b>Women</b></a>
        <div class="dropdown-menu">
          <a class="dropdown-item" href="#">Caps</a> 
          <a class="dropdown-item" href="#">Pants</a>
          <a class="dropdown-item" href="#">Shoes</a>  
          <a class="dropdown-item" href="#">T-Shirts</a>       
        </div>
      </li>

        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false"><b>Men</b></a>
        <div class="dropdown-menu">
          <a class="dropdown-item" href="#">Caps</a> 
          <a class="dropdown-item" href="#">Pants</a>
          <a class="dropdown-item" href="#">Shoes</a>  
          <a class="dropdown-item" href="#">T-Shirts</a>      
        </div>
      </li>

        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false"><b>Accessories</b></a>
        <div class="dropdown-menu">
          <a class="dropdown-item" href="#">Bags</a>
          <a class="dropdown-item" href="#">Gloves</a>
          <a class="dropdown-item" href="#">Supplements</a>
          <a class="dropdown-item" href="#">Waterbottles</a>
        </div>
      </li>

        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false"><b>Equipment</b></a>
        <div class="dropdown-menu">
          <a class="dropdown-item" href="#">Boxing</a>
          <a class="dropdown-item" href="#">Cricket</a>
          <a class="dropdown-item" href="#">Gymming</a>
          <a class="dropdown-item" href="#">Soccer</a>       
        </div>
      </li>

       <i style= "padding-left: 75px;"></i>
      <%--  Login and Cart Buttons--%>
       <button type="button" class="btn btn-primary btn-lg" >
         <span class="glyphicon glyphicon-user" style="color:whitesmoke"></span> <b>Login</b>
       </button>
         <i style= "padding-left: 25px;"></i>

       <button type="button" class="btn btn-primary btn-lg" >
         <span class="glyphicon glyphicon-shopping-cart" style="color:whitesmoke"></span><b>Cart</b> 
       </button>
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
                <asp:Label ID="ordId1" runat="server" Text="#567"></asp:Label>
                  <div style="margin-bottom:40px"></div>
                <asp:Label ID="ordId2" runat="server" Text="#789"></asp:Label>
                  <div style="margin-bottom:40px"></div>
                <asp:Label ID="ordId3" runat="server" Text="#89"></asp:Label>
                  <div style="margin-bottom:40px"></div>
                <asp:Label ID="ordId4" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:40px"></div>
                <asp:Label ID="ordId5" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:40px"></div>
                <asp:Label ID="ordId6" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:40px"></div>
                <asp:Label ID="ordId7" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:40px"></div>
                <asp:Label ID="ordId8" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:40px"></div>
                <asp:Label ID="ordId9" runat="server" Text=""></asp:Label>
                  <div style="margin-bottom:40px"></div>
                <asp:Label ID="ordId10" runat="server" Text=""></asp:Label>

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
