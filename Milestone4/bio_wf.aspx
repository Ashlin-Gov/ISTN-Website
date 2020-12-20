﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bio_wf.aspx.cs" Inherits="Milestone4.bio_wf" %>

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

       <i style= "padding-left: 65px;"></i>
      <%--  Login and Cart Buttons--%>
        <asp:LinkButton ID="btn_Login_Refresh" runat="server" Text="Button" class="btn btn-primary btn-lg " >
              <span class="glyphicon glyphicon-user" style="color:whitesmoke"></span> Login
         </asp:LinkButton>
      
         <div style= "padding-left: 30px;"></div>
          
       <asp:Linkbutton ID="btn_Cart" type="button" runat="server" class="btn btn-primary btn-lg"  >
         <span class="glyphicon glyphicon-shopping-cart" style="color:whitesmoke"></span> Cart</asp:Linkbutton>
        <%--  End of Login and Cart Buttons--%>      
    </ul>
   
  </div>
</nav>
<%-- nav bar end --%>   
    <div style="margin-bottom:30px"></div>
 <%--Login Container Start--%>
        <div >
           <div class="card text-black  mb-3" style="max-width: 80rem; height : 62rem ;  background-color : white">
  <div class="card-header" style="font-size : 50px ; background-color : white ;color:black"><b>Profile Editing</b></div>
  <div class="card-body">
 
      <%--Start Of Registration--%>
      <asp:Panel ID="pnlDets" runat="server">
          <h4 class="card-title" >Edit Your Online Profile</h4>

      <div class="form-group">
        <label for="exampleInputEmail1" style="color:black" >Name</label>
        <asp:TextBox runat="server"  class="form-control" id="TbxInputName"  style="width:45% "></asp:TextBox>
      </div>

      <div class="form-group">
        <label for="exampleInputEmail1" style="color:black" >Surname</label>
        <asp:TextBox runat="server"  class="form-control" id="TbxInputSurname"  style="width:45% "></asp:TextBox>
      </div>

    <div class="form-group">
      <label for="exampleInputEmail1" style="color:black" >Contact No.</label>
      <asp:TextBox runat="server"  class="form-control" id="TbxInputCellNum"  style="width:45% "></asp:TextBox>
    </div>

     <div class="form-group">
      <label for="exampleInputEmail1" style="color:black" >Home Address</label>
        <asp:TextBox runat="server"  class="form-control" id="TbxInputAddress"  style="width:45% "></asp:TextBox>
    </div>

    <div class="form-group">
      <label for="exampleInputEmail1" style="color:black" >Email address</label>
        <asp:TextBox runat="server"  class="form-control" id="TbxInputRegEmail"  style="width:45% "></asp:TextBox>
    </div>

    <div class="form-group">
      <label for="exampleInputPassword1" style="color:black">Identification Number</label>
      <asp:TextBox runat="server"  class="form-control" id="InputIdNo"  style="width:45% " ReadOnly="True"></asp:TextBox>
    </div>

    <div class="form-group">
      <label for="exampleInputPassword1" style="color:black">Password</label>
      <asp:TextBox runat="server"  class="form-control" id="TbxInputRegPassword"  style="width:45% "></asp:TextBox>
    </div>

   <div class="form-group">
      <label for="confirmPass" style="color:black">Confirm Password</label>
      <asp:TextBox runat="server"  class="form-control" id="tbxConfPass"  style="width:45% "></asp:TextBox>
    </div>

        <div ><asp:Linkbutton ID="btn_Register" type="button" runat="server" class="btn btn-primary" style="width:20% ; margin-top:25px" OnClick="btn_Register_Click"  >Update Details</asp:Linkbutton></div>
      </asp:Panel>
      
       <%--End Of Registration--%>
  </div>
</div> 
  
        </div>
  <%--End OF Login Container--%>          
       
       <div style="margin-bottom:10px"></div>
    
<%--End Of center column--%>

   
  </div>
      <div class="col-lg-2">
            
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

