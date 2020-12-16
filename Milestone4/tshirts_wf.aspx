<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tshirts_wf.aspx.cs" Inherits="Milestone4.tshirts_wf" %>

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
 <%--       Start Of Filter Bar--%>
    <div class="card text-black  mb-3" style="max-width: 20rem;background-color : white; height :65rem">
         <div class="card-header" style="font-size : 30px ; background-color : white ;color:black">Filter By </div>
         <div class="card-body">
         <h4 class="card-title" style="color:black">Brand</h4>
            <asp:RadioButtonList ID="radioListBrand" runat="server">
              <asp:ListItem Value="1">Puma</asp:ListItem>
              <asp:ListItem Value="2">Adidas</asp:ListItem>
              <asp:ListItem Value="3">Identity</asp:ListItem>
                <asp:ListItem Value="4">Nike</asp:ListItem>
                <asp:ListItem Value="5">Guess</asp:ListItem>
                <asp:ListItem Value="6">Levis</asp:ListItem>
            </asp:RadioButtonList>
                      <hr class="my-4"/>
            <h4 class="card-title" style="color:black">Gender</h4>
            <asp:RadioButtonList ID="radioListGender" runat="server">
              <asp:ListItem>Male</asp:ListItem>
              <asp:ListItem>Female</asp:ListItem>       
            </asp:RadioButtonList>
                <hr class="my-4"/>
            <h4 class="card-title" style="color:black">Price</h4>
            <asp:RadioButtonList ID="radioListPrice" runat="server">
              <asp:ListItem> Lowest First</asp:ListItem>
              <asp:ListItem> Highest First</asp:ListItem>       
            </asp:RadioButtonList>

             <hr class="my-2"/>

               <div style= "margin-top: 55px;"></div>
              <asp:Button ID="btn_ApplyFilter" runat="server" Text="Apply Filters" class="btn btn-secondary btn-lg" Width="100%" OnClick="btn_ApplyFilter_Click" />
              <div style= "margin-top: 25px;"></div>
             <asp:Button ID="btn_ClearFilter" runat="server" Text="Clear Filters" class="btn btn-secondary btn-lg" Width="100%" OnClick="btn_ClearFilter_Click" />
             
         </div>
</div>
<%--    End of Filter Bar   --%>
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
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="shoes_wf.aspx" role="button" aria-haspopup="true" aria-expanded="false">Shoes</a>
      </li>

       <i style= "padding-left: 65px;"></i>
      <%--  Login and Cart Buttons--%>
   <asp:LinkButton ID="btn_Login" runat="server" Text="Button" class="btn btn-primary btn-lg " PostBackUrl="~/Login_wf.aspx">
              <span class="glyphicon glyphicon-user" style="color:whitesmoke"></span> Login
         </asp:LinkButton>

         <i style= "padding-left: 30px;"></i>
       <asp:Linkbutton ID="btn_Cart" type="button" runat="server" class="btn btn-primary btn-lg" OnClick="btn_Cart_Click" PostBackUrl="~/cart_wf.aspx" >
         <span class="glyphicon glyphicon-shopping-cart" style="color:whitesmoke"></span> Cart</asp:Linkbutton>
        <%--  End of Login and Cart Buttons--%>      
    </ul>
   
  </div>
</nav>
<%-- nav bar end --%>   
<%--Start of Center Shopping Collumn--%>
 <div class="container">   
  <div class="row">
    <div style="margin-bottom:30px" ></div>
        
     <div class="col-sm-4" > <%--Left Column--%>
        <div style="margin-bottom:40px"></div>
        <div ><asp:Label ID="Header1" runat="server" Text="Nike Shoes" ></asp:Label>  </div>
        <div > <asp:ImageButton ID="Imagebutton1" runat="server" OnClick="Imagebutton1_Click1" /></div>
        <div > <asp:Label ID="Footer1" runat="server" Text="Nike Shoes"></asp:Label></div>

        <div style="margin-bottom:40px"></div>
        <div ><asp:Label ID="Header4" runat="server" Text="Nike Shoes"></asp:Label>  </div>
        <div > <asp:ImageButton ID="Imagebutton4"  runat="server" OnClick="Imagebutton4_Click"/></div>
        <div > <asp:Label ID="Footer4" runat="server" Text="Nike Shoes"></asp:Label></div>

        <div style="margin-bottom:40px"></div>
        <div ><asp:Label ID="Header7" runat="server" Text="Nike Shoes"></asp:Label>  </div>
        <div > <asp:ImageButton ID="Imagebutton7"  runat="server" OnClick="Imagebutton7_Click"/></div>
        <div > <asp:Label ID="Footer7" runat="server" Text="Nike Shoes"></asp:Label></div>

        <div style="margin-bottom:40px"></div>
        <div ><asp:Label ID="Header10" runat="server" Text="Nike Shoes"></asp:Label>  </div>
        <div > <asp:ImageButton ID="Imagebutton10" runat="server" OnClick="Imagebutton10_Click"/></div>
        <div > <asp:Label ID="Footer10" runat="server" Text="Nike Shoes"></asp:Label></div>

        <div style="margin-bottom:40px"></div>
        <div ><asp:Label ID="Header13" runat="server" Text="Nike Shoes"></asp:Label>  </div>
        <div > <asp:ImageButton ID="Imagebutton13" runat="server" OnClick="Imagebutton13_Click" /></div>
        <div > <asp:Label ID="Footer13" runat="server" Text="Nike Shoes"></asp:Label></div>

        <div style="margin-bottom:40px"></div>
        <div ><asp:Label ID="Header16" runat="server" Text="Nike Shoes"></asp:Label>  </div>
        <div > <asp:ImageButton ID="Imagebutton16" runat="server" OnClick="Imagebutton16_Click"/></div>
        <div > <asp:Label ID="Footer16" runat="server" Text="Nike Shoes"></asp:Label></div>
    </div>
    <div class="col-sm-4"><%-- Center Column--%>

        <div style="margin-bottom:40px"></div>
        <div ><asp:Label ID="Header2" runat="server" Text="Nike Shoes"></asp:Label>  </div>
        <div > <asp:ImageButton ID="Imagebutton2" runat="server" OnClick="Imagebutton2_Click" /></div>
        <div > <asp:Label ID="Footer2" runat="server" Text="Nike Shoes"></asp:Label></div>

        <div style="margin-bottom:40px"></div>
        <div ><asp:Label ID="Header5" runat="server" Text="Nike Shoes"></asp:Label>  </div>
        <div > <asp:ImageButton ID="Imagebutton5" runat="server" OnClick="Imagebutton5_Click"/></div>
        <div > <asp:Label ID="Footer5" runat="server" Text="Nike Shoes"></asp:Label></div>

        <div style="margin-bottom:40px"></div>
        <div ><asp:Label ID="Header8" runat="server" Text="Nike Shoes"></asp:Label>  </div>
        <div > <asp:ImageButton ID="Imagebutton8"  runat="server" OnClick="Imagebutton8_Click"/></div>
        <div > <asp:Label ID="Footer8" runat="server" Text="Nike Shoes"></asp:Label></div>

        <div style="margin-bottom:40px"></div>
        <div ><asp:Label ID="Header11" runat="server" Text="Nike Shoes"></asp:Label>  </div>
        <div > <asp:ImageButton ID="Imagebutton11" runat="server" OnClick="Imagebutton11_Click" /></div>
        <div > <asp:Label ID="Footer11" runat="server" Text="Nike Shoes"></asp:Label></div>

        <div style="margin-bottom:40px"></div>
        <div ><asp:Label ID="Header14" runat="server" Text="Nike Shoes"></asp:Label>  </div>
        <div > <asp:ImageButton ID="Imagebutton14"  runat="server" OnClick="Imagebutton14_Click" /></div>
        <div > <asp:Label ID="Footer14" runat="server" Text="Nike Shoes"></asp:Label></div>

        <div style="margin-bottom:40px"></div>
        <div ><asp:Label ID="Header17" runat="server" Text="Nike Shoes"></asp:Label>  </div>
        <div > <asp:ImageButton ID="Imagebutton17" runat="server" OnClick="Imagebutton17_Click" /></div>
        <div > <asp:Label ID="Footer17" runat="server" Text="Nike Shoes"></asp:Label></div>
    </div>
    <div class="col-sm-4"> <%--Right Column--%>

        <div style="margin-bottom:40px"></div>
        <div ><asp:Label ID="Header3" runat="server" Text="Nike Shoes"></asp:Label>  </div>
        <div > <asp:ImageButton ID="Imagebutton3"  runat="server" OnClick="Imagebutton3_Click" /></div>
        <div> <asp:Label ID="Footer3" runat="server" Text="Nike Shoes"></asp:Label></div>

        <div style="margin-bottom:40px"></div>
        <div ><asp:Label ID="Header6" runat="server" Text="Nike Shoes"></asp:Label>  </div>
        <div > <asp:ImageButton ID="Imagebutton6" runat="server" OnClick="Imagebutton6_Click" /></div>
        <div > <asp:Label ID="Footer6" runat="server" Text="Nike Shoes"></asp:Label></div>

        <div style="margin-bottom:40px"></div>
        <div ><asp:Label ID="Header9" runat="server" Text="Nike Shoes"></asp:Label>  </div>
        <div > <asp:ImageButton ID="Imagebutton9" runat="server" OnClick="Imagebutton9_Click" /></div>
        <div > <asp:Label ID="Footer9" runat="server" Text="Nike Shoes"></asp:Label></div>

        <div style="margin-bottom:40px"></div>
        <div ><asp:Label ID="Header12" runat="server" Text="Nike Shoes"></asp:Label>  </div>
        <div > <asp:ImageButton ID="Imagebutton12"  runat="server" OnClick="Imagebutton12_Click" /></div>
        <div > <asp:Label ID="Footer12" runat="server" Text="Nike Shoes"></asp:Label></div>

        <div style="margin-bottom:40px"></div>
        <div ><asp:Label ID="Header15" runat="server" Text="Nike Shoes"></asp:Label>  </div>
        <div > <asp:ImageButton ID="Imagebutton15" runat="server" OnClick="Imagebutton15_Click"/></div>
        <div > <asp:Label ID="Footer15" runat="server" Text="Nike Shoes"></asp:Label></div>

         <div style="margin-bottom:40px"></div>
        <div ><asp:Label ID="Header18" runat="server" Text="Nike Shoes"></asp:Label>  </div>
        <div > <asp:ImageButton ID="Imagebutton18" runat="server" OnClick="Imagebutton18_Click"/></div>
        <div > <asp:Label ID="Footer18" runat="server" Text="Nike Shoes"></asp:Label></div>
    </div>
      </div>
</div>   
<%--   End of Center Column SAles--%>

   

  


       <%-- <asp:Panel ID="pnlControl" CssClass="" runat="server" Width="100%" BorderStyle="Solid" Height="800px"></asp:Panel>--%>
     <%--   <a style="padding-left:30px"></a>
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="https://image.tfgmedia.co.za/image/1/process/259x259?source=http://cdn.tfgmedia.co.za/13/ProductImages/57650245.jpg" Width="30%" OnClick="ImageButton1_Click" />
        <a style="padding-left:30px"></a>
        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="https://image.tfgmedia.co.za/image/1/process/259x259?source=http://cdn.tfgmedia.co.za/13/ProductImages/57491810.jpg" Width="30%"/>
        <a style="padding-left:30px"></a>
        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="https://image.tfgmedia.co.za/image/1/process/259x259?source=http://cdn.tfgmedia.co.za/13/ProductImages/57449419.jpg" Width="30%"/>--%>
        

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

