<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BranchUncardedSCView.aspx.cs" Inherits="Default10" %>
<% @Import Namespace="System"%>
<% @Import Namespace="System.Collections.Generic"%>
<% @Import Namespace="System.Linq"%>
<% @Import Namespace="System.Web"%>
<% @Import Namespace="System.Web.UI"%>
<% @Import Namespace="System.Web.UI.WebControls"%>
<% @Import Namespace="System.Data.SqlClient" %>
<% @Import Namespace="System.Configuration" %>
<% @Import Namespace="System.Data"%>








<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>UNCARDED ACCOUNTS BY BRANCHES AND SCHEME CODES</title>

<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" type="text/css" href="mystyle.css"/>


<%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
<script src="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css"></script>  --%>

<link href="Navigation/bootstrap.min.css" rel="stylesheet"/>
<script src="Navigation/jquery.min.js"></script>
<script src="Navigation/bootstrap.min.js"></script>
<link href="Navigation/w3.css" rel="stylesheet" />   
<link href="Navigation/font-awesome.min.css" rel="stylesheet"/>


<link href="Datatables/jquery.dataTables.min.css" rel="stylesheet" />
<link href="Datatables/buttons.dataTables.min.css" rel="stylesheet" />
<script src="Datatables/jquery-1.12.4.js"></script>
<script src="Datatables/jquery.dataTables.min.js"></script>
<script src="Datatables/dataTables.buttons.min.js"></script>
<script src="Datatables/buttons.flash.min.js"></script>
<script src="Datatables/jszip.min.js"></script>
<script src="Datatables/pdfmake.min.js"></script>
<script src="Datatables/vfs_fonts.js"></script>    
<script src="Datatables/buttons.html5.min.js"></script>
<script src="Datatables/buttons.print.min.js"></script>


<script type="text/javascript">
    $(document).ready(function() {
    $('#example').DataTable({    
    dom: 'Bfrtip',
    buttons: ['copy', 'csv', 'excel', 'pdf', 'print'],
    order: [[2, 'desc']]
    });
    });
    </script>  


<style>
       
ul 
{list-style-type: none;margin: 0;padding: 0;overflow: hidden;background-color: #551675;}

li 
{float: right;}

li a 
{display: block;  color:#FEC323;  text-align: center;  padding: 14px 16px;  text-decoration: none;}

/* Change the link color to #111 (black) on hover */
li a:hover { background-color: #111;}
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
                            <a data-parent="#accordion" href="Dashboard2.aspx" style="font-size:12px;"><span class="glyphicon glyphicon-home">
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
                                        <span class="glyphicon glyphicon glyphicon-list-alt"></span><a href="RegionCardableCountView.aspx"> Regional Report By Account Count</a>
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

 <br />


<% string connStri = ConfigurationManager.ConnectionStrings["ConnStrSql"].ConnectionString;
    SqlConnection SQLCONNECTION1i = new SqlConnection(connStri);
    SqlCommand CMD1i = new SqlCommand();
    SqlDataReader sqlreaderi;

    CMD1i.CommandText = string.Format("SELECT BRANCH_TABLE.BRANCH,UAP_UNCARDED.SCHM_CODE,COUNT(UAP_UNCARDED.FORACID) AS UNCARDED_COUNT FROM BRANCH_TABLE JOIN UAP_UNCARDED ON BRANCH_TABLE.SOL_ID =UAP_UNCARDED.SOL_ID GROUP BY BRANCH_TABLE.SOL_ID,BRANCH_TABLE.BRANCH,UAP_UNCARDED.SCHM_CODE ORDER BY  COUNT(UAP_UNCARDED.FORACID) DESC");

    SQLCONNECTION1i.Open();
    CMD1i.Connection = SQLCONNECTION1i;
    sqlreaderi = CMD1i.ExecuteReader();

    //double sum1 = 0; 


    if (sqlreaderi.HasRows)
    {



    %>

    
<div class="table-responsive">   
    <table id="example" class="table table-bordered table-hover table-striped" style="font-size:10px">
        <caption style="background-color:gold;"><h6 style="font-family: Corbel; color: #FFFFFF; font-weight: bold">BRANCH UNCARDED ACCOUNTS BY SCHEME CODE VIEW</h6></caption> 
        <thead>
            <tr>
                <th>BRANCH</th>
                <th>SCHEME CODE</th>
                <th>UNCARDED ACCOUNTS</th>
              </tr>
        </thead>     
        <tbody>
               <%

                   while (sqlreaderi.Read())
                   {
                       a2 = (sqlreaderi.GetValue(sqlreaderi.GetOrdinal("BRANCH")).ToString());
                       a3 = (sqlreaderi.GetValue(sqlreaderi.GetOrdinal("SCHM_CODE")).ToString());
                       a4 = Convert.ToDouble(sqlreaderi.GetValue(sqlreaderi.GetOrdinal("UNCARDED_COUNT")).ToString());                      
              

                   %>
              <tr>
                <td><% Response.Write(a2); %></td>
                  <td><% Response.Write(a3); %></td>
                <td><% Response.Write(String.Format("{0:0,0}", a4)); %></td>                               
              </tr> 
                      
             <% }
    }

     %>     
        </tbody>
      </table> 
      </div>

<br />
<br />
<br />    





         
 <asp:SqlDataSource ID ="SqlDataSource1" runat="server"
  ConnectionString="<%$ ConnectionStrings:ConnStrSql %>" 
  SelectCommand="SELECT BRANCH_TABLE.BRANCH,UAP_UNCARDED.SCHM_CODE,COUNT(UAP_UNCARDED.FORACID) AS UNCARDED_COUNT FROM BRANCH_TABLE JOIN UAP_UNCARDED ON BRANCH_TABLE.SOL_ID =UAP_UNCARDED.SOL_ID  
GROUP BY BRANCH_TABLE.SOL_ID,BRANCH_TABLE.BRANCH,UAP_UNCARDED.SCHM_CODE ORDER BY  COUNT(UAP_UNCARDED.FORACID) DESC">
 </asp:SqlDataSource>      
   
            
            
             </div> 
    </div>
   </div>
 </div>  
</form>
</body>
</html>
