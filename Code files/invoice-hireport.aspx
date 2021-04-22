<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="invoice-hireport.aspx.cs" Inherits="InsuranceHub.invoice_hireport" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
 
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>InsuranceHub</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    <!-- Favicon and touch icons -->
    <link rel="shortcut icon" href="assets/dist/img/ico/favicon.png" type="image/x-icon">
        <!-- Start Global Mandatory Style
        =====================================================================-->
        <!-- jquery-ui css -->
        <link href="assets/plugins/jquery-ui-1.12.1/jquery-ui.min.css" rel="stylesheet" type="text/css"/>
        <!-- Bootstrap -->
        <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <!-- Bootstrap rtl -->
        <!--<link href="assets/bootstrap-rtl/bootstrap-rtl.min.css" rel="stylesheet" type="text/css"/>-->
        <!-- Lobipanel css -->
        <link href="assets/plugins/lobipanel/lobipanel.min.css" rel="stylesheet" type="text/css"/>
        <!-- Pace css -->
        <link href="assets/plugins/pace/flash.css" rel="stylesheet" type="text/css"/>
        <!-- Font Awesome -->
        <link href="assets/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <!-- Pe-icon -->
        <link href="assets/pe-icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet" type="text/css"/>
        <!-- Themify icons -->
        <link href="assets/themify-icons/themify-icons.css" rel="stylesheet" type="text/css"/>
        <!-- End Global Mandatory Style
        =====================================================================-->
        <!-- Start Theme Layout Style
        =====================================================================-->
        <!-- Theme style -->
        <link href="assets/dist/css/stylehealth.min.css" rel="stylesheet" type="text/css"/>
        <!-- Theme style rtl -->
        <!--<link href="assets/dist/css/stylehealth-rtl.css" rel="stylesheet" type="text/css"/>-->
        <!-- End Theme Layout Style
        =====================================================================-->
  
</head>
<body class="hold-transition sidebar-mini">

    <form id="form1" runat="server">
    
       <div class="content-wrapper" style="padding-right:250px">
                <!-- Content Header (Page header) -->
            <center>
          
                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <div class="col-sm-12">

                            <div class="panel panel-bd">
                            <h1>InsuranceHub</h1>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-sm-6">
                                    
                                           <h1>Health Insurance</h1>
                                            <address>
                                                
                                            </address>
                                        </div>
                                        <div class="col-sm-6 text-left">
                                            <h1 class="m-t-0">Invoice #0044777</h1>
                                            <strong>Issued Date:</strong><asp:Label ID="idate" runat="server"></asp:Label>
                                             <div> <strong>Proposer Name:</strong> <asp:Label ID="iname" runat="server"></asp:Label></div>
                                             <div> <strong>Mobile No:</strong><asp:Label ID="imobileno" runat="server"></asp:Label></div>
                                             <div> <strong>Address:</strong> <asp:Label ID="iaddress" runat="server"></asp:Label></div>
                                            <div class="text-danger m-b-15"><strong>Payment due:</strong> <asp:Label ID="paydate" runat="server"></asp:Label></div>
                                         
                                        </div>
                                    </div>
                                    <hr />
                                    <div class="table-responsive m-b-20">
                                        <table class="table table-striped">
                                            <thead>
                                           <tr> <strong><P style="font-size:large"><b>Policy Details</b></P></strong</tr>
                                                <tr>
                                                    <th>Policy No</th>
                                                    <th>Policy Name</th>
                                                    <th>Insurance Type</th>
                                                    <th>Company</th>
                                                    <th>Sum Insured</th>
                                                    
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    
                                                       
                                                        <td><asp:Label ID="pno" runat="server"></asp:Label></td>
                                                        <td><asp:Label ID="ppname" runat="server"></asp:Label></td>
                                                        <td><asp:Label ID="pinsutype" runat="server"></asp:Label></td>
                                                        <td><asp:Label ID="picompany" runat="server"></asp:Label></td>
                                                        <td><i class="fa fa-rupee"></i><asp:Label ID="psi" runat="server"></asp:Label></td>

                                                   
                                                       
                                                        </tbody>
                                                    </table>
                                                </div> 
                                    <hr></hr>
                                    <div class="table-responsive m-b-20">
                                        <table class="table table-striped">
                                            <thead>
                                           <tr> <strong><P style="font-size:large"><b>Proposer Details</b></P></strong</tr>
                                                <tr>
                                                    <th>Policy No</th>
                                                    <th>Name</th>
                                                    <th>Gender</th>
                                                    <th>Mobile No</th>
                                                    <th>Email Id</th>
                                                    <th>DOB</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    
                                                       
                                                        <td><asp:Label ID="ipno" runat="server"></asp:Label></td>
                                                        <td><asp:Label ID="ipname" runat="server"></asp:Label></td>
                                                        <td><asp:Label ID="igender" runat="server"></asp:Label></td>
                                                        <td><asp:Label ID="imo" runat="server"></asp:Label></td>
                                                        <td><asp:Label ID="iemailid" runat="server"></asp:Label></td>
                                                        <td><asp:Label ID="idob" runat="server"></asp:Label></td>
                                                    
                                                   
                                                       
                                                        </tbody>
                                                    </table>
                                                </div>



<hr />


                                    <div class="table-responsive">
                                    <asp:Repeater ID="rpt" runat="server">
                            <HeaderTemplate>
                                <table ID="example1" class="table table-bordered">
                                   <thead>
                                         <strong><tr><P style="font-size:large"><b>Member Details</b></P></tr></strong>
                                                <tr>
                                                    <th class=col-sm-4>Name</th>
                                                    <th class=col-sm-4>DOB</th>
                                                    <th class=col-sm-4>Relation With Proposer</th>
                                                </tr>
                                            </thead>
                                                                
                            </HeaderTemplate>
                            <ItemTemplate>
                                  <tr>
                                                     <td>
                                        <asp:Label ID="lbl0" runat="server" Text='<%# Eval("membername") %>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="lbl1" runat="server" Text='<%# Eval("dobm") %>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="lbl2" runat="server" Text='<%# Eval("rtop") %>'></asp:Label>
                                    </td>
                                                                    
                                   
                                                    </tr>
                                                    

                                    
                                                           
                                                            
                                                                 
                                </tr>
                            </ItemTemplate>
                            <FooterTemplate>
                                </table>
                            </FooterTemplate>
                        </asp:Repeater>
                                        <%--<table class="table" id="rpt" runat="server">
                                            <thead>
                                         <strong><tr><P style="font-size:large"><b>Member Details</b></P></tr></strong>
                                                <tr>
                                                    <th class=col-sm-4>Name</th>
                                                    <th class=col-sm-4>DOB</th>
                                                    <th class=col-sm-4>Relation With Proposer</th>
                                                </tr>
                                            </thead>


                                            <tbody>
                                                <tr>
                                                     <td>
                                        <asp:Label ID="lbl0" runat="server" Text='<%# Eval("membername") %>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="lbl1" runat="server" Text='<%# Eval("dobm") %>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="lbl2" runat="server" Text='<%# Eval("rtop") %>'></asp:Label>
                                    </td>
                                                                    
                                   
                                                    </tr>
                                                    
                                                   
                                                       
                                                        </tbody>
                                                    </table>--%>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-8">
                                                       
                                                           <%-- <img src="assets/dist/img/credit/AM_mc_vs_ms_ae_UK.png" class="img-responsive" alt="">--%>

                                                        </div>
                                                        <div class="col-sm-4">
                                                            <ul class="list-unstyled text-left">
                                                                <li>
                                                                    <strong>Sub - Total amount:</strong><i class="fa fa-rupee"></i><asp:Label ID="tamount" runat="server"></asp:Label>  </li>
                                                                    <li>
                                                                        <strong>GST:</strong> 18% </li>
                                                                        
                                                                            <li>
                                                                                <strong>Grand Total:&nbsp;</strong><i class="fa fa-rupee"></i><asp:Label ID="gtotal" runat="server"></asp:Label></li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="panel-footer text-left">
                                                                <asp:LinkButton ID="print" class="btn btn-info" runat="server"><span class="fa fa-print"></span></asp:LinkButton>
                                                                 <%--   <button type="button" class="btn btn-info" onclick="myFunction()"><span class="fa fa-print"></span></button>--%>
                                                                    
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </section> <!-- /.content -->
                                                  </center>
                                            </div> <!-- /.content-wrapper -->
    
    </form>
   
</body>
</html>

