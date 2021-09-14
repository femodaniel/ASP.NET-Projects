﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UncardedCustomerDetails.aspx.cs" Inherits="Default2" %>


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

<title>UncardedCustomerDetails</title>

<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" type="text/css" href="mystyle.css"/>

<%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/> 




<link rel="stylesheet" href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css"/>
<link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.3.1/css/buttons.dataTables.min.css"/>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.3.1/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.3.1/js/buttons.flash.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.27/build/pdfmake.min.js"></script>
<script src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.27/build/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/1.3.1/js/buttons.html5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.3.1/js/buttons.print.min.js"></script>--%>





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
    $('#example').DataTable( {
    dom: 'Bfrtip',
    buttons: [
    'copy', 'csv', 'excel', 'pdf', 'print'
    ]
    } );
    } );

</script>

<style>
       
ul{list-style-type: none; margin: 0; padding: 0; overflow: hidden; background-color:#551675;}

li{float: right;}

li a{display: block;color:#FEC323;text-align: center;padding: 14px 16px;text-decoration: none;}

/* Change the link color to #111 (black) on hover */
li a:hover{background-color: #111;}

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
<li style="float:left"><a>Uncarded Customer Details</a></li>     
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
        
    <h4><span class="label label-default"></span></h4> 
    
<asp:Label ID="Label1" style="float:left;color:white;background-color:#551675;font-family:Corbel;width:300px" runat="server" Text="SELECT BRANCH" Font-Bold="True"></asp:Label>
<asp:DropDownList ID="DropDownList1" DataSourceID="SqlDataSource1" style="float:right;font-family:Corbel;font-size:14px"  runat="server" AutoPostBack="True" DataTextField="BRANCH" DataValueField="BRANCH"></asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnStrSql %>" SelectCommand="SELECT DISTINCT [BRANCH] FROM [BRANCH_TABLE] WHERE ([BRANCH] IS NOT NULL) ORDER BY [BRANCH]"></asp:SqlDataSource>   
    
<br />
<br />
<br />


<% string connStri = ConfigurationManager.ConnectionStrings["ConnStrSql"].ConnectionString;
    SqlConnection SQLCONNECTION1i = new SqlConnection(connStri);
    SqlCommand CMD1i = new SqlCommand();
    SqlDataReader sqlreaderi;

    string a1;
    a1 = DropDownList1.Text;

    CMD1i.CommandText = string.Format("SELECT BRANCH_TABLE.REGION,BRANCH_TABLE.ZONE,BRANCH_TABLE.BRANCH,BRANCH_TABLE.SOL_ID,UAP_UNCARDED.FORACID,UAP_UNCARDED.ACCT_NAME,UAP_UNCARDED.PHONE_NUM,UAP_UNCARDED.SCHM_CODE,UAP_UNCARDED.ACCT_OPN_DATE,UAP_UNCARDED.ACCT_CLS_DATE,UAP_UNCARDED.ACCT_CRNCY_CODE FROM UAP_UNCARDED JOIN BRANCH_TABLE ON UAP_UNCARDED.SOL_ID = BRANCH_TABLE.SOL_ID WHERE BRANCH_TABLE.BRANCH = '{0}'", a1);

    SQLCONNECTION1i.Open();
    CMD1i.Connection = SQLCONNECTION1i;
    sqlreaderi = CMD1i.ExecuteReader();



    if (sqlreaderi.HasRows)
    {
       


%>

    
<div class="table-responsive">   
    <table id="example" class="table table-bordered table-hover table-striped" style="font-size:10px">
        <caption style="background-color:gold;"><h6 style="font-family: Corbel; color: #FFFFFF; font-weight: bold">Uncarded Customer Report By Branch</h6></caption> 
        <thead>
            <tr>
                <th>REGION</th>
                <th>ZONE</th>
                <th>BRANCH</th>
                <th>SOL_ID</th>
                <th>ACCOUNT_NO</th>
                <th>ACCOUNT_NAME</th>             
                <th>PHONE_NUMBER</th>                
                <th>SCHEME_CODE</th>
                <th>OPENING_DATE</th>
                <th>EMAIL</th>
                <th>AO_CODE</th>
            </tr>
        </thead>     
        <tbody>
               <% while (sqlreaderi.Read())
                   {
                       a2 = sqlreaderi.GetValue(sqlreaderi.GetOrdinal("REGION")).ToString();
                       a3 = sqlreaderi.GetValue(sqlreaderi.GetOrdinal("ZONE")).ToString();
                       a4 = sqlreaderi.GetValue(sqlreaderi.GetOrdinal("BRANCH")).ToString();
                       a5 = sqlreaderi.GetValue(sqlreaderi.GetOrdinal("SOL_ID")).ToString();
                       a6 = sqlreaderi.GetValue(sqlreaderi.GetOrdinal("FORACID")).ToString();
                       a7 = sqlreaderi.GetValue(sqlreaderi.GetOrdinal("ACCT_NAME")).ToString();
                       a8 = sqlreaderi.GetValue(sqlreaderi.GetOrdinal("PHONE_NUM")).ToString();
                       a9 = sqlreaderi.GetValue(sqlreaderi.GetOrdinal("SCHM_CODE")).ToString();
                       a10 = Convert.ToDateTime(sqlreaderi.GetValue(sqlreaderi.GetOrdinal("ACCT_OPN_DATE")).ToString());
                   
                   %>
            <tr>
                <td><% =a2 %></td>
                <td><% =a3 %></td>
                <td><% =a4 %></td>
                <td><% =a5 %></td>
                <td><% =a6 %></td>
                <td><% =a7 %></td>            
                <td><% =a8 %></td>
                <td><% =a9 %></td>
                <td><% =string.Format("{0:yyyy-MM-dd}", a10.Date) %></td>
                <td></td>
                <td></td>
             </tr>  
             
                  <% }
    }

     %>     
   
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