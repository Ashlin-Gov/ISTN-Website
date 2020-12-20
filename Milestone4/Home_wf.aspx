<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home_wf.aspx.cs" Inherits="Milestone4.Home_wf" %>
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
            <nav class="navbar navbar-expand-lg navbar-dark bg-primary">

  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor01">
    <ul class="navbar-nav mr-auto">
     
      <asp:Label ID="lblName" runat="server" Text="" style="margin-top:7px" Width="250" ForeColor="White"></asp:Label>
     
        
           <div style= "padding-left: 150px;"></div>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle"  href="Home_wf.aspx" role="button" aria-haspopup="true" aria-expanded="false">Home</a>   
      </li>
       
     <%--//--%>
      <div style= "padding-left: 50px;"></div>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle"  href="tshirts_wf.aspx" role="button" aria-haspopup="true" aria-expanded="false">T-Shirts</a>   
      </li>
       <div style= "padding-left: 50px;"></div>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle"  href="pants_wf.aspx" role="button" aria-haspopup="true" aria-expanded="false">Pants</a>      
      </li>
         <div style= "padding-left: 50px;"></div>
        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle"  href="access_wf.aspx" role="button" aria-haspopup="true" aria-expanded="false">Accessories</a>    
      </li>
        <div style= "padding-left: 50px;"></div>
        <li class="nav-item dropdown">
         <a class="nav-link dropdown-toggle"  href="shoes_wf.aspx" role="button" aria-haspopup="true" aria-expanded="false">Shoes</a>    
        </li>

       <div style= "padding-left: 100px;"></div>
      <%--  Login and Cart Buttons--%>
         <asp:LinkButton ID="btn_Login" runat="server" Text="Button" class="btn btn-primary btn-lg " OnClick="btn_Login_Click">
              <span class="glyphicon glyphicon-user" style="color:whitesmoke"></span> Login
         </asp:LinkButton>
      
         <div style= "padding-left: 30px;"></div>
          
       <asp:Linkbutton ID="btn_Cart" type="button" runat="server" class="btn btn-primary btn-lg" OnClick="btn_Cart_Click" >
         <span class="glyphicon glyphicon-shopping-cart" style="color:whitesmoke"></span> Cart</asp:Linkbutton>
        <%--  End of Login and Cart Buttons--%>      
    </ul>
   
  </div>
</nav>


         </div>
         </div>
            <div style="margin-bottom:20px"></div>
<div class ="form-control-lg">
<div class="container-fluid">
  <div class="row">
    <div class="col-lg-2">
    <%--    sidebar left--%>
       <div style="margin-bottom:15px"></div>

        <asp:Image ID="Image5" runat="server" ImageUrl="~/Assets/rightside2.jpg"  Width="100%" height="50%"/>
           <div style="margin-bottom:60px"></div>
             <asp:Image ID="Image8" runat="server" ImageUrl="~/Assets/leftsidebar.jpg"  Width="100%" height="34%"/>
    </div>
 <%--       end of sidebar left--%>

    <div class="col-lg-8">
    <%--  Center Column--%>
      <%--  navbar-start--%>
    
<%-- nav bar end --%>   
    <div style="margin-bottom:15px"></div>
    
        <div class="container">
            <asp:Image ID="Image3" runat="server" ImageUrl="~/Assets/mainadv.jpg" Width="100%" />
            <asp:Button ID="btnCheck" runat="server" Text="Button" style="margin-left:485px;padding-left:68px;opacity:0; transform:translateY(-180%)" OnClick="btnCheck_Click" />
        </div>
       
        <div class="container">
            <asp:Image ID="Image4" runat="server" ImageUrl="~/Assets/advBottom.jpg" Width="100%" />
        </div>
       
       <div style="margin-bottom:10px"></div>
    
<%--End Of center column--%>

   
  </div>
      <div class="col-lg-2">
          
 

             <div style="margin-bottom:15px"></div>
             <asp:Image ID="Image6" runat="server" ImageUrl="~/Assets/rightside3.jpg"  Width="100%" height="50%"/>
           <div style="margin-bottom:60px"></div>
             <asp:Image ID="Image7" runat="server" ImageUrl="~/Assets/sidebar2.jpg"  Width="100%" height="34%"/>
      </div> 
</div>
       

</div>
   
<%--<%--Footer Of the Page   --%>    


    <div class="jumbotron" style="background-color:  #2fa4e7 ">
         <hr class="my-4"/>
        <div style="padding-left:42%">
           <h1 class="display-3" style="color:white">Totalsports</h1> 
            <div style="margin-top:10px;padding-left:7.2%" >
                <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Update Details" Font-Size="Larger" OnClick="Button1_Click" />
                  </div>
                  <div style="margin-top:10px;padding-left:8.2%" >
                      <asp:Button ID="btn_Status" runat="server" class="btn btn-primary" Text="Order Status"  Font-Size="Larger" OnClick="btn_Status_Click" />
                  </div>
                  <div style="margin-top:10px;padding-left:10.3%">  <asp:Button ID="btn_LogOut" runat="server" class="btn btn-primary" Text="Log Out" Font-Size="Larger" OnClick="btn_LogOut_Click" /></div>
                
           
        
        </div>      
         
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
