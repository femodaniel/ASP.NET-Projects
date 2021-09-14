<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>UAP DashBoard</title>

<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" type="text/css" href="mystyle.css"/>

<%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>  --%>


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


<style type="text/css">  

.cssPager td  {padding-left: 4px;padding-right: 4px;}

</style>


</head>


<body>
    
    
    
    
 <form id="form1" runat="server">
 
 <div class="container" style="background-color:lavender ">

<div class= "col-md-12"  >
<asp:Image ID="Image1" runat="server" Height="70px" ImageUrl="~/Zoo/FCMB logo.png" Width="70px"/>
</div>



<div class= "col-md-12"  style="font-family:Corbel">
<ul> 
<li><a href="Default.aspx">Log Out</a></li>
<li><a href="contact.asp">Contact</a></li>
<li><a href="Dashboard2.aspx">Home</a></li>
</ul>
</div>





<div class= "col-md-12">
  <div class="row">
        <div class="col-sm-3" >
        <div class="panel-group" id="accordion">
             <div class="panel panel-default"> <%--Each Accordion starts here--%>
                    <div class="panel-heading" style="background-color:#551675; color:white">
                        <h4 class="panel-title">
                         <span style = "font-size:11px;"> NAVIGATION MENU</span> 
                        </h4>
                    </div>
                 </div>
          <div class="panel panel-default"> <%--Each Accordion starts here--%>            
               <div class="panel-heading" style="background-color:#551675; color:white">
                        <h4 class="panel-title">
                            <a data-parent="#accordion" href="dashboard2.aspx" style="font-size:12px;"><span class="glyphicon glyphicon-home">
                            </span> DashBoard</a>
                        </h4>
                    </div>                  
                </div>
           <div class="panel panel-default"> <%--Each Accordion starts here--%>
                    <div class="panel-heading" style="background-color:#551675; color:white">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="font-size:12px;"><span class="glyphicon glyphicon-th">
                            </span> Cardable Accounts Opened</a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse" style="font-family:Corbel;font-size:14px">
                        <div class="panel-body" >
                            <table class="table" >
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon glyphicon-list-alt"></span><a href="RegionCardableSCView.aspx"> Regional Report By Scheme Codes</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon glyphicon-list-alt"></span><a href="RegionCardableCountView.aspx"> Regional View By Account Count</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon glyphicon-list-alt"></span><a href="ZonalCardableSCView.aspx"> Zonal View By Scheme Code</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon glyphicon-list-alt"></span><a href="ZonalCardableCountView.aspx"> Zonal Report By Account View</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon glyphicon-list-alt"></span><a href="BranchCardableSCView.aspx"> Branch Report By Scheme Code</a>
                                    </td>
                                </tr>
                               <tr>
                                    <td>
                                        <span class="glyphicon glyphicon glyphicon-list-alt"></span><a href="BranchCardableCountView.aspx"> Branch Report By Account View</a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default"> <%--Each Accordion starts here--%>
                    <div class="panel-heading" style="background-color:#551675; color:white">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" style="font-size:12px;"><span class="glyphicon glyphicon-th">
                            </span> Cards Issued on Cardable Accounts</a>
                        </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse" style="font-family:Corbel;font-size:14px">
                        <div class="panel-body">
                            <table class="table">
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon glyphicon-list-alt"></span>
                                        <a href="RegionCardedCountView.aspx">Regional Report</a> 
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon glyphicon-list-alt"></span>
                                        <a href="ZonalCardedCountView.aspx">Zonal Report</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon glyphicon-list-alt"></span>
                                        <a href="BranchCardedCountView.aspx">Branch Report</a>
                                    </td>
                                </tr>                               
                            </table>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default"><%--Each Accordion starts here--%>
                    <div class="panel-heading" style="background-color:#551675; color:white">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" style="font-size:12px;"><span class="glyphicon glyphicon-th">
                            </span> Cardable Accounts not Card</a>
                        </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse" style="font-family:Corbel;font-size:14px">
                        <div class="panel-body">
                            <table class="table">
                                <tr>
                                    <td>
                                       <span class="glyphicon glyphicon glyphicon-list-alt"></span><a href="RegionUncardedSCView.aspx"> Regional Report By Scheme Code</a> 
                                    </td>
                                </tr>
                                 <tr>
                                    <td>
                                       <span class="glyphicon glyphicon glyphicon-list-alt"></span><a href="RegionUncardedCountView.aspx"> Regional Report Account View</a> 
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                       <span class="glyphicon glyphicon glyphicon-list-alt"></span><a href="ZonalUncardedSCView.aspx"> Zonal Report By Scheme Code</a> 
                                    </td>
                                </tr>
                                 <tr>
                                    <td>
                                       <span class="glyphicon glyphicon glyphicon-list-alt"></span><a href="ZonalUncardedCountView.aspx"> Zonal Report By Account View</a> 
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                     <span class="glyphicon glyphicon glyphicon-list-alt"></span><a href="BranchUncardedSCView.aspx"> Branch Report By Scheme Code</a> 
                                    </td>
                                </tr>  
                                 <tr>
                                    <td>
                                     <span class="glyphicon glyphicon glyphicon-list-alt"></span><a href="BranchUncardedCountView.aspx"> Branch Report By Account View</a> 
                                    </td>
                                 </tr>                               
                                  <tr>
                                    <td>
                                     <span class="glyphicon glyphicon glyphicon-list-alt"></span><a href="UncardedCustomerDetails.aspx"> Uncarded Customer Details</a> 
                                    </td>
                                </tr> 
                            </table>
                        </div>
                    </div>
                </div>
           <div class="panel panel-default"><%--Each Accordion starts here--%>
            <div class="panel-heading" style="background-color:#551675; color:white">
                        <h4 class="panel-title">
                             <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour" style="font-size:12px;"><span class="glyphicon glyphicon-th">
                             </span>Carded Activity Performance</a>
                        </h4>
                 </div>                   
                 <div id="collapseFour" class="panel-collapse collapse" style="font-family:Corbel;font-size:14px">
                        <div class="panel-body">
                            <table class="table">
                                <tr>
                                    <td>
                                       <span class="glyphicon glyphicon glyphicon-list-alt"></span><a href="#"> Regional Performance</a> 
                                    </td>
                                </tr>                               
                                <tr>
                                    <td>
                                       <span class="glyphicon glyphicon glyphicon-list-alt"></span><a href="#"> Zonal Performance</a> 
                                    </td>
                                </tr>                                
                                <tr>
                                    <td>
                                     <span class="glyphicon glyphicon glyphicon-list-alt"></span><a href="#"> Branch Performance</a> 
                                    </td>
                                </tr> 
                               </table> 
                             </div>   
                       </div> 
                 </div>
        <div class="panel panel-default"><%--Each Accordion starts here--%>
                    <div class="panel-heading" style="background-color:#551675; color:white">
                        <h4 class="panel-title">
                            <a data-parent="#accordion" href="Default.aspx" style="font-size:12px;"><span class="glyphicon glyphicon-user">
                            </span>Log Out</a>
                        </h4>
                    </div>                   
                </div>     
        </div>
          </div>   
        <div class="col-sm-9 col-md-9">   

      <asp:ScriptManager ID="ScriptManager1" runat="server">       
    </asp:ScriptManager>
 <h4><span class="label label-default" style="color:goldenrod;font-family:Corbel">DASHBOARD:VIEW GENERAL INFORMATION </span></h4> 

 <asp:GridView runat="server" cssclass="col-md-3" AutoGenerateColumns="False"  AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1" ShowFooter="True"  style= "width:820px;font-size:small" PageSize="10" RowStyle-BorderStyle= "Groove">
 <columns>         
 <asp:boundfield datafield="REGION" headertext="REGION" SortExpression="REGION">         
     <ControlStyle Width="205px"/>
     <ItemStyle Width="205px" />
     </asp:boundfield>
 <asp:boundfield datafield="CARDABLE_COUNT" headertext="CARDABLE ACCOUNTS" SortExpression="CARDABLE_COUNT" DataFormatString="{0:N0}">
     <ControlStyle Width="205px"/>
     <ItemStyle Width="205px" />
     </asp:boundfield>
     <asp:boundfield datafield="CARDED_COUNT" headertext="CARDED ACCOUNTS" SortExpression="CARDED_COUNT" DataFormatString="{0:N0}">
     <ControlStyle Width="205px"/>
     <ItemStyle Width="205px" />
     </asp:boundfield>
      <asp:boundfield datafield="UNCARDED_COUNT" headertext="UNCARDED ACCOUNTS" SortExpression="UNCARDED_COUNT" DataFormatString="{0:N0}">
     <ControlStyle Width="205px"/>
     <ItemStyle Width="205px" />
     </asp:boundfield>
 </columns> 

<PagerSettings Mode="Numeric"></PagerSettings>
 <PagerStyle  CssClass="cssPager"/>
<RowStyle BorderStyle="Groove"></RowStyle>

 </asp:GridView>
      
 <asp:SqlDataSource ID ="SqlDataSource1" runat="server"
  ConnectionString="<%$ ConnectionStrings:ConnStrSql %>" 
  SelectCommand="SELECT * FROM SELECTREGION ORDER BY CARDED_COUNT DESC">
 </asp:SqlDataSource>      
<b></b>  
<asp:GridView ID="GridView1" runat="server" cssclass="col-md-3" AutoGenerateColumns="False"  AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource2"  ShowFooter="True" style= "width:820px;font-size:small" PageSize="10" RowStyle-BorderStyle= "Groove">    
<columns >         
<asp:boundfield datafield="ZONE" headertext="TOP 5 ZONES" SortExpression="ZONE">         
    <ControlStyle Width="205px"/>
    <ItemStyle Width="205px" />
    </asp:boundfield>
<asp:boundfield datafield="CARDABLE_COUNT" headertext="CARDABLE ACCOUNTS" SortExpression="CARDABLE_COUNT" DataFormatString="{0:N0}">
    <ControlStyle Width="205px"/>   
    <ItemStyle Width="205px" />
    </asp:boundfield>
    <asp:boundfield datafield="CARDED_COUNT" headertext="CARDED ACCOUNTS" SortExpression="CARDED_COUNT" DataFormatString="{0:N0}">
    <ControlStyle Width="205px"/>   
    <ItemStyle Width="205px" />
    </asp:boundfield>
    <asp:boundfield datafield="UNCARDED_COUNT" headertext="UNCARDED ACCOUNTS" SortExpression="UNCARDED_COUNT" DataFormatString="{0:N0}">
    <ControlStyle Width="205px"/>   
    <ItemStyle Width="205px" />
    </asp:boundfield>
</columns> 

<PagerSettings Mode="Numeric"></PagerSettings>
 <PagerStyle  CssClass="cssPager" Width="3px" />
<RowStyle BorderStyle="Groove"></RowStyle>
</asp:GridView>        

<asp:SqlDataSource ID ="SqlDataSource2" runat="server"
ConnectionString="<%$ ConnectionStrings:ConnStrSql %>" 
SelectCommand="SELECT TOP 5 * FROM SELECTZONE ORDER BY CARDED_COUNT DESC">
</asp:SqlDataSource>          
<b></b>             
<asp:GridView ID="GridView2" runat="server" cssclass="col-md-3" AutoGenerateColumns="False"  AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource3"  ShowFooter="True" style= "width:820px;font-size:small" PageSize="10" RowStyle-BorderStyle= "Groove" >    
<columns >         
<asp:boundfield datafield="BRANCH" headertext="TOP 5 BRANCHES" SortExpression="BRANCH" >         
    <ControlStyle Width="205px"/>
    <ItemStyle Width="205px" />
    </asp:boundfield>
<asp:boundfield datafield="CARDABLE_COUNT" headertext="CARDABLE ACCOUNTS" SortExpression="CARDABLE_COUNT" DataFormatString="{0:N0}">
    <ControlStyle Width="205px"/>
    <ItemStyle Width="205px" />
    </asp:boundfield>
<asp:boundfield datafield="CARDED_COUNT" headertext="CARDED ACCOUNTS" SortExpression="CARDED_COUNT" DataFormatString="{0:N0}">
    <ControlStyle Width="205px"/>
    <ItemStyle Width="205px" />
    </asp:boundfield>
    <asp:boundfield datafield="UNCARDED_COUNT" headertext="UNCARDED ACCOUNTS" SortExpression="UNCARDED_COUNT" DataFormatString="{0:N0}">
    <ControlStyle Width="205px"/>
    <ItemStyle Width="205px" />
    </asp:boundfield>
</columns> 
<PagerSettings Mode="Numeric"></PagerSettings>
<PagerStyle  CssClass="cssPager" Width="3px"/>
<RowStyle BorderStyle="Groove"></RowStyle>
</asp:GridView>        

<asp:SqlDataSource ID ="SqlDataSource3" runat="server"
ConnectionString="<%$ ConnectionStrings:ConnStrSql %>" 
SelectCommand="SELECT TOP 5 * FROM SELECTBRANCH ORDER BY CARDED_COUNT DESC">
</asp:SqlDataSource>    
      
  
        
        
      </div> 
    </div>
   </div>
 </div>

 






  
</form>








</body>
</html>
