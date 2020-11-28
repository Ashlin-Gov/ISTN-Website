﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prepurchase_wf.aspx.cs" Inherits="Milestone4.prepurchase_wf" %>

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
       
    <div class="row">
    <div class="col-sm-6">
        <div class="card border-secondary mb-3" style="width: 100%;height:30rem">
       
           <div class="card-body">             
             <asp:Image ID="itemImage" runat="server" ImageUrl="https://image.tfgmedia.co.za/image/1/process/259x259?source=http://cdn.tfgmedia.co.za/13/ProductImages/57650245.jpg"  Width="80%" style="padding-left:20%"/>
           </div>
        </div>
     
    </div>
    <div class="col-sm-6"> 
        <div class="card border-secondary mb-3" style="width:100%;height:37rem" >
              <div class="card-header"><asp:Label ID="Header" runat="server" Text="Women's Renew Run Nike Shoes - R1200"></asp:Label></div>
                <div class="card-body">
                 <h4 class="card-title" style="color:black">Product Description</h4>
                 <p class="card-text">This is to test exactly how much of text for a product description we are going to have. </p>
                             <hr class="my-4"/>

                 <h4 class="card-title" style="color:black">Colour</h4>

                  <div>
                   <asp:Image ID="Image3" runat="server" BackColor="#FF0066" Width="40px"  Height="40px" BorderStyle="None" BorderColor="White" ></asp:Image>
                   <asp:Image ID="Image4" runat="server" BackColor="Black" Width="40px"  Height="40px" BorderStyle="None" BorderColor="White"></asp:Image>
                    <asp:Image ID="Image5" runat="server" BackColor="#33CC33" Width="40px"  Height="40px" BorderStyle="None" BorderColor="White"></asp:Image>
                    <asp:Image ID="Image6" runat="server" BackColor="#9966FF" Width="40px"  Height="40px" BorderStyle="None" BorderColor="White"></asp:Image>
                    <asp:Image ID="Image7" runat="server" BackColor="#FFFF66" Width="40px"  Height="40px" BorderStyle="None" BorderColor="White"></asp:Image>             
                  </div>
                    <hr class="my-4"/>
                    <h4 class="card-title " style="color:black" >Size</h4>
                    <asp:DropDownList ID="DropDownList1" runat="server" class="custom-select">                     
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                    </asp:DropDownList>


                    <hr class="my-4" style="margin-top:40px"/>
                       <div style="margin-top:40px"></div>
                   <div>
                    <asp:DropDownList ID="quantityList" runat="server" class="custom-select" style="Width:120px">
                        <asp:ListItem Value="0">QTY</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                    </asp:DropDownList>  
                    <a style="padding-left:10px"></a>


                         <asp:Button ID="btn_AddToCart" runat="server" Text="Add To Cart" class="btn btn-secondary" style="width:120px" />
                    </div>

                </div>
                             

        </div>
   
  </div>

       <div style="margin-bottom:10px"></div>
    
<%--End Of center column--%>

   
  </div>
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
   <hr class="my-4">
</div>

  <asp:Image ID="Image2" runat="server" ImageUrl="~/Assets/bottombar.png" Width="100%" />
</div>
<%--End Of Company About and contact--%>
<%--End of Footer Of the Page   --%>   



     </form>


</body>

</html>

