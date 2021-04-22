<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="invoice-term.aspx.cs" Inherits="InsuranceHub.invoice_term" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 
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
                                           <h5>Cover your life Journey.</h5>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-sm-6">
                                    
                                            <address>
                                              <img src="assets/dist/img/logo2.png" style="width:150px; height:auto" alt="">
                                            </address>
                                        </div>
                                        <div class="col-sm-6 text-left">
                                            <h1 class="m-t-0">Invoice #0044777</h1>
                                             <strong>Issued Date:<asp:Label ID="idate" runat="server"></asp:Label></strong>
                                              <div class="text-danger m-b-15">Payment due <asp:Label ID="paydate" runat="server"></asp:Label></div>
                                                <strong>Proposer Name: </strong>
                                                <asp:Label ID="name" runat="server"></asp:Label>
                                              <div><strong>Mobile No:</strong> <asp:Label ID="imobileno" runat="server"></asp:Label></div>
                                              <div><strong>Address: </strong><asp:Label ID="iaddress" runat="server"></asp:Label></div>
                                           
                                         
                                        </div>
                                    </div> <hr>
                                    <div class="table-responsive m-b-20">
                                        <table class="table table-striped">
                                            <thead>
                                                <tr>
                                                    <th>Policy</th>
                                                    <th>Policy Number</th>
                                                    <th>Sum Insured</th>
                                                    <th>Tax(GST included)</th>
                                                    <th>Transaction Amount</th>
                                                    <th>Total Price</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td><div><strong><asp:Label ID="policyname" runat="server"></asp:Label></strong></div></td>
                                                       
                                                        <td><asp:Label ID="pno" runat="server"></asp:Label></td>
                                                        <td><i class="fa fa-rupee"></i><asp:Label ID="si" runat="server"></asp:Label></td>
                                                        <td><i class="fa fa-rupee"></i><asp:Label ID="txtgst" runat="server"></asp:Label></td>
                                                        <td><i class="fa fa-rupee"></i><asp:Label ID="cost" runat="server"></asp:Label></td>
                                                        <td><i class="fa fa-rupee"></i><asp:Label ID="totalcost" runat="server"></asp:Label></td>
                                                    </tr>
                                                    
                                                   
                                                       
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-8">
                                                       
                                                           <%-- <img src="assets/dist/img/credit/AM_mc_vs_ms_ae_UK.png" class="img-responsive" alt="">--%>

                                                        </div>
                                                        <div class="col-sm-4">
                                                            <ul class="list-unstyled text-left">
                                                               <%-- <li>
                                                                    <strong>Sub - Total amount:</strong> $9265 </li>
                                                                    <li>
                                                                        <strong>Discount:</strong> 12.9% </li>
                                                                        <li>
                                                                            <strong>VAT:</strong> ----- </li>
                                                                            <li>--%>
                                                                                <strong>Grand Total:&nbsp;</strong><i class="fa fa-rupee"></i><asp:Label ID="gtotal" runat="server"></asp:Label></li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                
                                                            <ul class="list-unstyled text-center">
                                                              
                                                                                <strong>TERMS AND CONDITIONS</strong>
                                                                                <p>If the Minimum Amount Due is not received by the Due Date, a Notice of Cancellation will be issued for each policy.
                                                                                Payments received after the cancellation date will not automatically reinstate the cancelled policy or policies.
                                                                                A Returned Check Fee of $25.00 will be added to your account balance for each check returned unpaid by your bank.
                                                                                Payment in Full on your account is due upon the issuance of a Fourth Notice of Cancellation on any policy or policies
                                                                                charged to your account.
                                                                                This invoice is not a reinstatement of any coverage or policy previously cancelled.
                                                                                The Company reserves the right to determine whether a cancelled policy will be reinstated following receipt of payment
                                                                                on or after the cancellation date.
                                                                                 </p>
                                                                            </ul>
                                                                          <div class="panel-footer text-left">
                                                                         <center> <a href="javascript:window.print()" class="btn btn-info"><span class="fa fa-print"></span></a> </center>
                                                              <%--  <asp:LinkButton ID="print" class="btn btn-info" runat="server"><span class="fa fa-print"></span></asp:LinkButton>--%>
                                                               <%-- <asp:LinkButton ID="dash" class="btn btn-info" runat="server" OnClick="dash_Click">Back To Dashboard</asp:LinkButton>--%>
                                                                 <%--   <button type="button" class="btn btn-info" onclick="myFunction()"><span class="fa fa-print"></span></button>--%>
                                                                    
                                                                </div>
                                                                    </div>

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
