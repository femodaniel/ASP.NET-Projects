<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dashboard2.aspx.cs" Inherits="Default2" %>

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
 
<title>Dashboard Review</title>


<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" type="text/css" href="mystyle.css"/>

<%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/> --%> 
  
    
    
<%--<link rel="stylesheet" href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css"/>
<link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.3.1/css/buttons.dataTables.min.css"/>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.3.1/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.3.1/js/buttons.flash.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.27/build/pdfmake.min.js"></script>
<script src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.27/build/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/1.3.1/js/buttons.html5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.3.1/js/buttons.print.min.js"></script> --%>   



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
    order: [[1, 'asc'],[2, "desc"], ]
    });
    });
    </script>   
    
    
    <script type="text/javascript">
    $(document).ready(function() {
    $('#example1').DataTable( {
    dom: 'Bfrtip',
    buttons: ['copy', 'csv', 'excel', 'pdf', 'print'],
    order: [[2, "desc"]]
    } );
    } );
    </script>  


    <script type="text/javascript">
    $(document).ready(function() {
    $('#example2').DataTable( {
    dom: 'Bfrtip',
    buttons: ['copy', 'csv', 'excel', 'pdf', 'print'],
    order: [[2, "desc"]]
    } );
    } );
    </script> 

    <script type="text/javascript">
    $(document).ready(function() {
    $('#example3').DataTable( {
    dom: 'Bfrtip',
    buttons: ['copy', 'csv', 'excel', 'pdf', 'print'],
    order: [[2, "desc"]]
    } );
    } );
    </script> 

    <script type="text/javascript">
    $(document).ready(function() {
    $('#example4').DataTable( {
    dom: 'Bfrtip',
    buttons: ['copy', 'csv', 'excel', 'pdf', 'print'],
    order: [[1, 'asc']]
    } );
    } );
    </script> 






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
    

 <%--   <div class="container" style="background-color:lavender">--%>

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
                            </span>Log Out</a>
                        </h4>
                    </div>                   
                </div>     
            </div>
          </div>     
        <div class="col-sm-9 col-md-9">
        
    <h4><span class="label label-default"></span></h4> 


<asp:Label ID="Label1" style="float:left;color:white;background-color:#551675;font-family:Corbel;width:300px" runat="server" Text="SUMMARY VIEW" Font-Bold="True"></asp:Label>

    
<br />
<br />
<br />


<% string connStri = ConfigurationManager.ConnectionStrings["ConnStrSql"].ConnectionString;
    SqlConnection SQLCONNECTION1i = new SqlConnection(connStri);
    SqlCommand CMD1i = new SqlCommand();
    SqlDataReader sqlreaderi;

    CMD1i.CommandText = string.Format("SELECT * FROM SELECTREGION ORDER BY CARDABLE_COUNT DESC,CARDED_COUNT DESC");

    SQLCONNECTION1i.Open();
    CMD1i.Connection = SQLCONNECTION1i;
    sqlreaderi = CMD1i.ExecuteReader();

    double sum1 = 0;
    double sum2 = 0;
    double sum3 = 0;
    

    if (sqlreaderi.HasRows)
    {



    %>

    
<div class="table-responsive">   
    <table id="example" class="table table-bordered table-hover table-striped" style="font-size:10px">
        <caption style="background-color:gold;"><h6 style="font-family: Corbel; color: #FFFFFF; font-weight: bold">REGIONAL SUMMARY</h6></caption> 
        <thead>
            <tr>
                <th>REGION</th>
                <th>CARDABLE ACCOUNTS</th>
                <th>CARDED ACCOUNTS</th>
                <th>UNCARDED ACCOUNTS</th>
                <th>(% UNCARDED ACCOUNTS)</th>
              </tr>
        </thead>     
        <tbody>
               <%

                   while (sqlreaderi.Read())
                   {
                       a2 = (sqlreaderi.GetValue(sqlreaderi.GetOrdinal("REGION")).ToString());
                       a3 = Convert.ToDouble(sqlreaderi.GetValue(sqlreaderi.GetOrdinal("CARDABLE_COUNT")).ToString());
                       a4 = Convert.ToDouble(sqlreaderi.GetValue(sqlreaderi.GetOrdinal("CARDED_COUNT")).ToString());
                       a5 = Convert.ToDouble(sqlreaderi.GetValue(sqlreaderi.GetOrdinal("UNCARDED_COUNT")).ToString());
                     prcnt = Convert.ToDecimal((a5 / a3));

                   %>
              <tr>
                <td><% Response.Write(a2); %></td>
                <td><% Response.Write(String.Format("{0:0,0}", a3)); %></td>
                <td><% Response.Write(String.Format("{0:0,0}", a4)); %></td>
                <td><% Response.Write(String.Format("{0:0,0}", a5)); %></td>              
                <td><% Response.Write(String.Format("{0:0.0%}", prcnt)); %></td> 
              </tr>           
          
                  <%
                              sum1 += a3;
                              sum2 += a4;
                              sum3 += a5;
                              percent = Convert.ToDecimal(sum3/sum1);
                          }
                      }

     %>     
              <tr style="font:bold;font-weight:400;color:gray">
                <td>GRAND TOTAL</td>
                <td><% Response.Write(String.Format("{0:0,0}", sum1)); %></td>
                <td><% Response.Write(String.Format("{0:0,0}", sum2)); %></td>
                <td><% Response.Write(String.Format("{0:0,0}", sum3)); %></td>  
                <td><% Response.Write(String.Format("{0:0.0%}", percent)); %></td>            
             </tr>  
        </tbody>
      </table> 
      </div>

<br />
<br />
<br />    

<%  string connStri1 = ConfigurationManager.ConnectionStrings["ConnStrSql"].ConnectionString;
    SqlConnection SQLCONNECTION2i = new SqlConnection(connStri1);
    SqlCommand CMD2i = new SqlCommand();
    SqlDataReader sqlreader2i;

    CMD2i.CommandText = string.Format("SELECT * FROM SELECTZONE ORDER BY CARDED_COUNT DESC");

    SQLCONNECTION2i.Open();
    CMD2i.Connection = SQLCONNECTION2i;
    sqlreader2i = CMD2i.ExecuteReader();


    if (sqlreader2i.HasRows)

    {



    %>

  
<div class="table-responsive">   
    <table id="example1" class="table table-bordered table-hover table-striped" style="font-size:10px">
        <caption style="background-color:gold;"><h6 style="font-family: Corbel; color: #FFFFFF; font-weight: bold">ZONAL SUMMARY</h6></caption> 
        <thead>
            <tr>
                <th>ZONE</th>
                <th>CARDABLE ACCOUNTS</th>
                <th>CARDED ACCOUNTS</th>
                <th>UNCARDED ACCOUNTS</th>
              </tr>
        </thead>     
        <tbody>
               <% 
             
                   while (sqlreader2i.Read())
                   {
                       a10 = (sqlreader2i.GetValue(sqlreader2i.GetOrdinal("ZONE")).ToString());
                       a11 = Convert.ToDouble(sqlreader2i.GetValue(sqlreader2i.GetOrdinal("CARDABLE_COUNT")).ToString());
                       a12 = Convert.ToDouble(sqlreader2i.GetValue(sqlreader2i.GetOrdinal("CARDED_COUNT")).ToString());
                       a13 = Convert.ToDouble(sqlreader2i.GetValue(sqlreader2i.GetOrdinal("UNCARDED_COUNT")).ToString());


                        %>
             <tr>
                <td><% Response.Write(a10); %></td>
                <td><% Response.Write(String.Format("{0:0,0}", a11)); %></td>
                <td><% Response.Write(String.Format("{0:0,0}", a12)); %></td>
                <td><% Response.Write(String.Format("{0:0,0}", a13)); %></td>     
                        
             </tr>  
             
                  <% 
                      
 }
                      }

     %>     
   
        </tbody>
      </table> 
      </div>


<br />
<br />
<br />


<%  string connStri2 = ConfigurationManager.ConnectionStrings["ConnStrSql"].ConnectionString;
    SqlConnection SQLCONNECTION3i = new SqlConnection(connStri2);
    SqlCommand CMD3i = new SqlCommand();
    SqlDataReader sqlreader3i;

    CMD3i.CommandText = string.Format("SELECT BRANCH,COALESCE (CARDABLE_COUNT,0) AS CARDABLE_COUNT,COALESCE (CARDED_COUNT,0) AS CARDED_COUNT,COALESCE (UNCARDED_COUNT,0) AS UNCARDED_COUNT FROM SELECTBRANCH WHERE BRANCH != 'EXECUTIVE' ORDER BY CARDED_COUNT DESC");

    SQLCONNECTION3i.Open();
    CMD3i.Connection = SQLCONNECTION3i;
    sqlreader3i = CMD3i.ExecuteReader();


    if (sqlreader3i.HasRows)

    {



    %>

  
<div class="table-responsive">   
    <table id="example2" class="table table-bordered table-hover table-striped" style="font-size:10px">
        <caption style="background-color:gold;"><h6 style="font-family: Corbel; color: #FFFFFF; font-weight: bold">BRANCH SUMMARY</h6></caption> 
        <thead>
            <tr>
                <th>BRANCH</th>
                <th>CARDABLE ACCOUNTS</th>
                <th>CARDED ACCOUNTS</th>
                <th>UNCARDED ACCOUNTS</th>
              </tr>
        </thead>     
        <tbody>
               <% while (sqlreader3i.Read())
                   {
                       a14 = (sqlreader3i.GetValue(sqlreader3i.GetOrdinal("BRANCH")).ToString());
                       a15 = Convert.ToDouble(sqlreader3i.GetValue(sqlreader3i.GetOrdinal("CARDABLE_COUNT")).ToString());
                       a16 = Convert.ToDouble(sqlreader3i.GetValue(sqlreader3i.GetOrdinal("CARDED_COUNT")).ToString());
                       a17 = Convert.ToDouble(sqlreader3i.GetValue(sqlreader3i.GetOrdinal("UNCARDED_COUNT")).ToString());

                   %>
             <tr>
                <td><% Response.Write(a14); %></td>
                <td><% Response.Write(String.Format("{0:0,0}", a15)); %></td>
                <td><% Response.Write(String.Format("{0:0,0}", a16)); %></td>
                <td><% Response.Write(String.Format("{0:0,0}", a17)); %></td>     
                        
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
            
<%  string connStri3 = ConfigurationManager.ConnectionStrings["ConnStrSql"].ConnectionString;
    SqlConnection SQLCONNECTION4i = new SqlConnection(connStri3);
    SqlCommand CMD4i = new SqlCommand();
    SqlDataReader sqlreader4i;

    CMD4i.CommandText = string.Format("SELECT TOP 5 BRANCH,COALESCE (CARDABLE_COUNT,0) AS CARDABLE_COUNT,COALESCE (CARDED_COUNT,0) AS CARDED_COUNT,COALESCE (UNCARDED_COUNT,0) AS UNCARDED_COUNT FROM SELECTBRANCH WHERE BRANCH != 'EXECUTIVE' ORDER BY CARDED_COUNT ASC");

    SQLCONNECTION4i.Open();
    CMD4i.Connection = SQLCONNECTION4i;
    sqlreader4i = CMD4i.ExecuteReader();


    if (sqlreader4i.HasRows)

    {



    %>

  
<div class="table-responsive">   
    <table id="example3" class="table table-bordered table-hover table-striped" style="font-size:10px">
        <caption style="background-color:gold;"><h6 style="font-family: Corbel; color: #FFFFFF; font-weight: bold">BOTTOM 5 BRANCHES</h6></caption> 
        <thead>
            <tr>
                <th>BRANCH</th>
                <th>CARDABLE ACCOUNTS</th>
                <th>CARDED ACCOUNTS</th>
                <th>UNCARDED ACCOUNTS</th>
              </tr>
        </thead>     
        <tbody>
               <% while (sqlreader4i.Read())
                   {
                       a6 = (sqlreader4i.GetValue(sqlreader4i.GetOrdinal("BRANCH")).ToString());
                       a7 = Convert.ToDouble(sqlreader4i.GetValue(sqlreader4i.GetOrdinal("CARDABLE_COUNT")).ToString());
                       a8 = Convert.ToDouble(sqlreader4i.GetValue(sqlreader4i.GetOrdinal("CARDED_COUNT")).ToString());
                       a9 = Convert.ToDouble(sqlreader4i.GetValue(sqlreader4i.GetOrdinal("UNCARDED_COUNT")).ToString());

                   %>
             <tr>
                <td><% Response.Write(a6); %></td>
                <td><% Response.Write(String.Format("{0:0,0}", a7)); %></td>
                <td><% Response.Write(String.Format("{0:0,0}", a8)); %></td>
                <td><% Response.Write(String.Format("{0:0,0}", a9)); %></td>     
                        
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
            

<% string connStri4 = ConfigurationManager.ConnectionStrings["ConnStrSql"].ConnectionString;
    SqlConnection SQLCONNECTION5i = new SqlConnection(connStri4);
    SqlCommand CMD5i = new SqlCommand();
    SqlDataReader sqlreader5i;

    CMD5i.CommandText = string.Format("SELECT * FROM SELECT_UNCARDED_ON_PND");

    SQLCONNECTION5i.Open();
    CMD5i.Connection = SQLCONNECTION5i;
    sqlreader5i = CMD5i.ExecuteReader();

    double summ1 = 0;
    double summ2 = 0;
   
    

    if (sqlreader5i.HasRows)
    {



    %>

    
<div class="table-responsive">   
    <table id="example4" class="table table-bordered table-hover table-striped" style="font-size:10px">
        <caption style="background-color:gold;"><h6 style="font-family: Corbel; color: #FFFFFF; font-weight: bold">% UNCARDED ACCOUNTS ON PND</h6></caption> 
        <thead>
            <tr>
                <th>REGION</th>
                <th>UNCARDED ACCOUNTS</th>
                <th>(UNCARDED ACCOUNTS ON PND)</th>
                <th>(% UNCARDED ACCOUNTS ON PND)</th>
              </tr>
        </thead>     
        <tbody>
               <%

                   while (sqlreader5i.Read())
                   {
                       a14 = (sqlreader5i.GetValue(sqlreader5i.GetOrdinal("REGION")).ToString());
                       a15 = Convert.ToDouble(sqlreader5i.GetValue(sqlreader5i.GetOrdinal("UNCARDED_TOTAL")).ToString());
                       a16 = Convert.ToDouble(sqlreader5i.GetValue(sqlreader5i.GetOrdinal("UNCARDED_PND")).ToString());
                       uncard_prcnt = Convert.ToDecimal((a16 / a15));

                   %>
              <tr>
                <td><% Response.Write(a14); %></td>
                <td><% Response.Write(String.Format("{0:0,0}", a15)); %></td>
                <td><% Response.Write(String.Format("{0:0,0}", a16)); %></td>                          
                <td><% Response.Write(String.Format("{0:0.0%}", uncard_prcnt)); %></td> 
              </tr>           
          
                  <%
                              summ1 += a15;
                              summ2 += a16;
                              uncard_percent = Convert.ToDecimal(summ2/summ1);
                          }
                      }

     %>     
              <tr style="font:bold;font-weight:400;color:gray">
                <td>GRAND TOTAL</td>
                <td><% Response.Write(String.Format("{0:0,0}", summ1)); %></td>
                <td><% Response.Write(String.Format("{0:0,0}", summ2)); %></td>
                <td><% Response.Write(String.Format("{0:0.0%}", uncard_percent)); %></td>            
             </tr>  
        </tbody>
      </table> 
      </div>            
            
            
            
            
            
            
            
                       
    
            
            
            
            
            
        </div>
      </div>
    </div>
   
  <%--</div>--%>
 
 
 
 
 
 </form>







</body>
</html>
