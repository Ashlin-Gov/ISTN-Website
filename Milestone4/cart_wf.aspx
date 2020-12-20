<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cart_wf.aspx.cs" Inherits="Milestone4.cart_wf" %>
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
<%--Functions--%>
  
    <script type = "text/javascript">
        function Confirm() {
            var confirm_value = document.createElement("INPUT");

            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";

            if (confirm("Do You Want To Place An Order?")) {
                confirm_value.value = "Yes";
            }
            else {
                confirm_value.value = "No";
            }

            document.forms[0].appendChild(confirm_value);
        }

        
    </script>
  
    
<%--End of functions--%>
 

     <form id="form1" runat="server" >
         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

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


       <i style= "padding-left: 65px;"></i>
      <%--  Login and Cart Buttons--%>
         <asp:LinkButton ID="btn_Login" runat="server" Text="Button" class="btn btn-primary btn-lg " PostBackUrl="~/Login_wf.aspx">
              <span class="glyphicon glyphicon-user" style="color:whitesmoke"></span> Login
         </asp:LinkButton>
      
         <div style= "padding-left: 30px;"></div>
          
      <asp:Linkbutton ID="btn_Cart" type="button" runat="server" class="btn btn-primary btn-lg" PostBackUrl="~/cart_wf.aspx">
         <span class="glyphicon glyphicon-shopping-cart" style="color:whitesmoke"></span> Cart</asp:Linkbutton>
        <%--  End of Login and Cart Buttons--%>      
    </ul>
   
  </div>
</nav>
<%-- nav bar end --%>   
    <div style="margin-bottom:30px"></div>
 <%--Preview Screen Start--%>
  
  <%--End OF Preview Screen--%>          
       
    <div class="row">
    <div class="col-sm-9">
     <div class="card border-secondary mb-3" style="width: 100%;height:60rem">
         <div class="card-header">Shopping Cart</div>
         <div class="card-body">             
                   
               <label >Product</label>
               <label style="padding-left:224px" >Quantity</label>
               <label style="padding-left:141px" >Price</label>
               <hr class="my-4"/>

            <div class="row">
            <div class="col-sm-5">
                <asp:Label ID="prod1" runat="server" Text=""></asp:Label>
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
                 <asp:Label ID="qty1" runat="server" Text=""></asp:Label>
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

            <div class="col-sm-3">
                <asp:Label ID="price1" runat="server" Text=""></asp:Label>
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

            <div class="col-sm-2">
                      
                    
                   <div>
                         <asp:Button ID="btnI1" runat="server" Text="X" CssClass="btn btn-secondary" Width="40px" OnClick="btnI1_Click"  /> 
                   </div>
                    <div>                      
                          <asp:Button ID="btnI2" runat="server" Text="X" CssClass="btn btn-secondary" style="margin-top:40px" Width="40px" OnClick="btnI2_Click1" /> 
                    </div>
                     <div>                      
                          <asp:Button ID="btnI3" runat="server" Text="X" CssClass="btn btn-secondary" style="margin-top:40px" Width="40px" OnClick="btnI3_Click" /> 
                    </div>
                    <div>                      
                          <asp:Button ID="btnI4" runat="server" Text="X" CssClass="btn btn-secondary" style="margin-top:40px" Width="40px" OnClick="btnI4_Click" /> 
                    </div>
                    <div>                      
                          <asp:Button ID="btnI5" runat="server" Text="X" CssClass="btn btn-secondary" style="margin-top:40px" Width="40px" OnClick="btnI5_Click" /> 
                    </div>
                    <div>                      
                          <asp:Button ID="btnI6" runat="server" Text="X" CssClass="btn btn-secondary" style="margin-top:40px" Width="40px" OnClick="btnI6_Click" /> 
                    </div>
                    <div>                      
                          <asp:Button ID="btnI7" runat="server" Text="X" CssClass="btn btn-secondary" style="margin-top:40px" Width="40px" OnClick="btnI7_Click" /> 
                    </div>
                    <div>                      
                          <asp:Button ID="btnI8" runat="server" Text="X" CssClass="btn btn-secondary" style="margin-top:40px" Width="40px" OnClick="btnI8_Click" /> 
                    </div>
                    <div>                      
                          <asp:Button ID="btnI9" runat="server" Text="X" CssClass="btn btn-secondary" style="margin-top:40px" Width="40px" OnClick="btnI9_Click" /> 
                    </div>
                     <div>                      
                          <asp:Button ID="btnI10" runat="server" Text="X" CssClass="btn btn-secondary" style="margin-top:40px" Width="40px" OnClick="btnI10_Click" /> 
                    </div>
                  
          
                    
            
      </div>
            </div>
          </div>

   
        </div>
    </div>
          <%-- start of payment column--%>
    <div class="col-sm-3"> 

           <div class="card border-secondary mb-3" style="max-width: 100%;">
  <div class="card-header">Payment Summary</div>
  <div class="card-body">
    
      <asp:Label ID="Label1" runat="server" Text="Total : R"></asp:Label>
      <asp:Label ID="lblTotal" runat="server" Text=""></asp:Label>
         <hr class="my-4"/>
      <asp:Button ID="btn_Order" runat="server" Text="Place Order" class="btn btn-secondary" Width="100%" OnClick="btn_Order_Click" OnClientClick="Confirm()" />
  </div>
   
  </div>

       <div style="margin-bottom:10px"></div>
    


   
        <%--  End of payment column--%>
  </div>
        <%--End Of center column--%>
      <div class="col-lg-2">
          
</div>

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


