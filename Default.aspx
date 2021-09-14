
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    
<title>UNCARDED ACCOUNT PORTAL</title>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" type="text/css" href="mystyle.css"/>

<%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>--%>  
  
<link href="Navigation/bootstrap.min.css" rel="stylesheet"/>
<script src="Navigation/jquery.min.js"></script>
<script src="Navigation/bootstrap.min.js"></script>
<link href="Navigation/w3.css" rel="stylesheet" />   
<link href="Navigation/font-awesome.min.css" rel="stylesheet"/>
    
    
    
     

<style>
       
ul 
{list-style-type: none; margin: 0; padding: 0; overflow: hidden; background-color:#551675;}

li 
{float: right;}

li a 
{display: block;color:#FEC323;text-align: center;padding: 14px 16px;text-decoration: none;}

/* Change the link color to #111 (black) on hover */
li a:hover 
{background-color: #111;}

</style> 
</head>


<body>
     
<form id="form1" runat="server"> 




<div class = "container">


<%--First column Insert Logo--%>    
<div class= "col-md-12"> 
 <asp:Image ID="Image1" runat="server" Height="80px" ImageUrl="~/Zoo/FCMB logo.png" Width="80px" />
</div>

  

 <%--Second Column--Insert Navigation Tool bar--%>     
<div class= "col-md-12"> 
<ul>
  <li><a href="Default.aspx">Home</a></li>
  <li><a href="contact.asp">Contact</a></li>
  <li><a href="about.asp">About</a></li>
</ul>
</div> 


 
 


  
<%--Third Column--%> 
<div class = "col-md-12">  <%--Put all items after the navigation bar in the row--%> 
<div class= "row">
<div class= "col-md-8">
 <asp:Image ID="Image3" ImageUrl ="Zoo/Card_250501.jpg"  ImageAlign="AbsMiddle" runat="server" />
<h1 style="font-family:Corbel;font-size:20px;font:bold">UNCARDED ACCOUNTS PORTAL</h1>
</div>  
  


<div class= "col-md-4" style="font-family:Corbel;font:bold 12">  
<div class="form-group">
<label for="usr">UserName:</label>
<asp:TextBox ID="TextBox1" cssclass="form-control"  runat="server"></asp:TextBox>
</div>
<div class="form-group">
<label for="pwd">Password:</label>
<asp:TextBox ID="TextBox2" cssclass="form-control"  textmode="Password"  runat="server"></asp:TextBox>
</div>
<asp:Button ID="Button1" runat="server" Text="Log in" OnClick="Button1_Click" />     
</div>
</div>
</div> <%--Third Column Ends Here--%> 

          

<%--Fourth Column 12--%> 

<div class= "col-md-12"> 
<div class= "row"> 
<div class= "col-md-8"> 
<%--<asp:Image ID="Image2" ImageUrl ="Zoo/Card_px10.jpg"  ImageAlign="AbsMiddle" runat="server" />--%>
</div> 

<div class= "col-md-4"> 
</div> 
</div> 
</div> 

 <%--Fifth Column 12--%> 

<div class= "col-md-12"> 
<div class= "row"> 
<div class= "col-md-4">
</div> 
<div class= "col-md-4" style="font:bold;font-family:Corbel"> 
 <footer>
    <p>&copy;  <%: DateTime.Now.Year %> - All Rights Reserved FCMB Limited </p>
</footer>    
</div>          
<div class= "col-md-4"> 
</div>           
</div>
 </div>          
               



 
</div>    <%--Ends the Container--%> 


</form>



</body>







</html>
