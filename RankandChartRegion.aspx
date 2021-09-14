<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RankandChartRegion.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Regional Performance</title>

<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>

<link href="Navigation/bootstrap.min.css" rel="stylesheet"/>
<script src="Navigation/jquery.min.js"></script>
<script src="Navigation/bootstrap.min.js"></script>
<link href="Navigation/w3.css" rel="stylesheet" />   
<link href="Navigation/font-awesome.min.css" rel="stylesheet"/>

<style>
       
ul{list-style-type: none; margin: 0; padding: 0; overflow: hidden; background-color:#551675;}

li{float: right;}

li a{display: block;color:#FEC323;text-align: center;padding: 14px 16px;text-decoration: none;}

/* Change the link color to #111 (black) on hover */
li a:hover{background-color: #111;}

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



<div class= "col-md-12"  style="font-family:Corbel ">
<ul> 
<li><a href="Default.aspx">Log Out</a></li>
<li><a href="contact.asp">Contact</a></li>
<li><a href="dashboard2.aspx">Home</a></li>
</ul>
</div>


<div class= "col-md-12">
  <div class="row">
        <div class="col-sm-3" >
        <div class="panel-group" id="accordion">
             <div class="panel panel-default"> <%--Each Accordion starts here--%>
                    <div class="panel-heading" style="background-color:#551675; color:white">
                        <h4 class="panel-title">
                           <span  style = "font-size:11px;"> NAVIGATION MENU</span>                         
                        </h4>
                    </div>
                 </div>
              <div class="panel panel-default"> <%--Each Accordion starts here--%>            
               <div class="panel-heading" style="background-color:#551675; color:white">
                        <h4 class="panel-title">
                            <a data-parent="#accordion" href="Dashboard2.aspx" style="font-size:12px;"><span class="glyphicon glyphicon-home">
                            </span> Dashboard</a>
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
                                        <span class="glyphicon glyphicon glyphicon-list-alt"></span><a href="RegionCardableSCView.aspx"> Regional View By Scheme Codes</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon glyphicon-list-alt"></span><a href="RegionCardableCountView.aspx"> Regional View By Account Count</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon glyphicon-list-alt"></span><a href="ZonalCardableSCView.aspx"> Zonal Report By Scheme Code</a>
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
                                       <span class="glyphicon glyphicon glyphicon-list-alt"></span><a href="RankandChartRegion.aspx"> Regional Performance</a> 
                                    </td>
                                </tr>                               
                                <tr>
                                    <td>
                                       <span class="glyphicon glyphicon glyphicon-list-alt"></span><a href="RankandChartZone.aspx"> Zonal Performance</a> 
                                    </td>
                                </tr>                                
                                <tr>
                                    <td>
                                     <span class="glyphicon glyphicon glyphicon-list-alt"></span><a href="RankandChartBranch.aspx"> Branch Performance</a> 
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
                            </span> Log Out</a>
                        </h4>
                    </div>                   
                </div>
             </div>
          </div>   
 <div class="col-sm-9 col-md-9">  
 <h4><span class="label label-default"></span></h4> 
 <asp:Label ID="Label1" style="float:left;color:white;background-color:#551675;font-family:Corbel;width:300px" runat="server" Text="SELECT CHART TYPE" Font-Bold="True"></asp:Label>
<asp:DropdownList ID="DropDownList1" AutoPostBack="true" style="float:right;font-family:Corbel;font-size:14px" runat="server" Width="300px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"> </asp:DropdownList>

<br />
<br />


<table style ="Border:1px solid black;border-bottom:solid ;font-family:Corbel">
<tr>
<td>
<asp:chart ID="Chart1" runat="server" Width="820px" Height="279px">
 <Titles><asp:Title Text = "Regional Carded Performance"></asp:Title></Titles>
<Series>
<asp:Series Name="Series1" ChartArea="ChartArea1" ChartType="Bar">

<Points>



</Points>

</asp:Series>
</Series>
<ChartAreas>
<asp:ChartArea Name="ChartArea1">
<AxisX Title = "Region"></AxisX>
<AxisY Title = "CardedCount"></AxisY>
</asp:ChartArea>
</ChartAreas>
</asp:chart>

</td>
</tr>
</table>  
     
<br />
<br />
<br />
            
<table style ="Border:1px solid black;border-bottom:solid ;font-family:Corbel">
<tr>
<td>
<asp:chart ID="Chart2" runat="server" Width="820px" Height="279px">
 <Titles><asp:Title Text = "Regional Cardable Count"></asp:Title></Titles>
<Series>
<asp:Series Name="Series2" ChartArea="ChartArea2" ChartType="Bar">

<Points>



</Points>

</asp:Series>
</Series>
<ChartAreas>
<asp:ChartArea Name="ChartArea2">
<AxisX Title = "Region"></AxisX>
<AxisY Title = "Cardable Count"></AxisY>
</asp:ChartArea>
</ChartAreas>
</asp:chart>

</td>
</tr>
</table>         
        

<br />
<br />
<br />
 

<table style ="Border:1px solid black;border-bottom:solid ;font-family:Corbel">
<tr>
<td>
<asp:chart ID="Chart3" runat="server" Width="820px" Height="279px">
 <Titles><asp:Title Text = "Regional Uncarded Count"></asp:Title></Titles>
<Series>
<asp:Series Name="Series3" ChartArea="ChartArea3" ChartType="Bar">

<Points>



</Points>

</asp:Series>
</Series>
<ChartAreas>
<asp:ChartArea Name="ChartArea3">
<AxisX Title = "Region"></AxisX>
<AxisY Title = "Uncarded Count"></AxisY>
</asp:ChartArea>
</ChartAreas>
</asp:chart>

</td>
</tr>
</table>         
        

<br />
<br />
<br />   
                




    </div> 
    </div>
   </div>
 </div>
        








</form>


</body>






</html>

