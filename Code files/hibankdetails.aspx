<%@ Page Title="" Language="C#" MasterPageFile="~/header-footer.Master" AutoEventWireup="true" CodeBehind="hibankdetails.aspx.cs" Inherits="InsuranceHub.hibankdetails" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:ScriptManager ID="s" runat="server"></asp:ScriptManager>

<div class="wrapper">
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <div class="header-icon">
                        <i class="pe-7s-note2"></i>
                    </div>
                    <div class="header-title">
                        <div  class="sidebar-form search-box pull-right hidden-md hidden-lg hidden-sm">
                            <div class="input-group">
                                <input type="text" name="q" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                    <button type="submit" name="search" id="search-btn" class="btn"><i class="fa fa-search"></i></button>
                                </span>
                            </div>
                        </div>  
                        <h1>Bank</h1>
                        <small>Bank Details</small>
                        <ol class="breadcrumb hidden-xs">
                            <li><a><i class="pe-7s-home"></i> Home</a></li>
                            <li class="active">Dashboard</li>
                        </ol>
                    </div>
                </section>
                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <!-- Form controls -->
                        <div class="col-sm-12">
                            <div class="panel panel-bd lobidrag">
                                <div class="panel-heading">
                                    <div class="btn-group"> 
                                        <a class="btn btn-primary"> 
                                            <i class="fa fa-list"></i> Payment </a>  
                                        </div>
                                    </div>
                                    
                                    <div class="panel-body">
                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label>cheque Number:</label>
                                               <asp:TextBox ID="chkno" runat="server" class="form-control" placeholder="Cheque No."></asp:TextBox>
                                               <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" TargetControlID="chkno" FilterType="Numbers"></cc1:FilteredTextBoxExtender>
                                            <asp:Label ID="Label1" runat="server"></asp:Label>
                                            </div>
                                            </div>
                                             <div class="col-sm-4">
                                            <div class="form-group">
                                                <label>Date:</label>
                                                <asp:TextBox ID="chkdate" TextMode="date" class="form-control" placeholder="cheque Date" runat="server"></asp:TextBox>
                                                <asp:Label ID="Label2" runat="server"></asp:Label>
                                            </div>
                                            </div>
                                             <div class="col-sm-4">
                                            <div class="form-group">
                                                <label>Branch Name:</label>
                                                <asp:TextBox ID="bname" class="form-control" placeholder="Branch Name" runat="server"></asp:TextBox>
                                             <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" TargetControlID="bname" FilterType="UppercaseLetters , LowercaseLetters, Custom" ValidChars=" "></cc1:FilteredTextBoxExtender>
                                       <asp:Label ID="Label3" runat="server"></asp:Label>
                                           
                                            </div>
                                            </div>
                                         
                                            
                                             <div class="col-sm-4">
                                            <div class="form-group">
                                                <label>Account Number:</label>
                                               <asp:TextBox ID="accno"  class="form-control" placeholder="A/C No.."  runat="server"></asp:TextBox>
                                           <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" TargetControlID="accno" FilterType="Numbers"></cc1:FilteredTextBoxExtender>
									  <asp:Label ID="Label4" runat="server"></asp:Label>
                                           
                                            </div>
                                            </div>
                                             <div class="col-sm-4">
                                            <div class="form-group">
                                                <label>Account Holder Name:</label>
                                               <asp:TextBox ID="accname"  class="form-control"  placeholder="Name" runat="server"></asp:TextBox>
                                            <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server" TargetControlID="accname" FilterType="UppercaseLetters , LowercaseLetters, Custom" ValidChars=" "></cc1:FilteredTextBoxExtender>
									  <asp:Label ID="Label5" runat="server"></asp:Label>
                                           
                                            </div>
                                            </div>
                                             <div class="col-sm-4">
                                            <div class="form-group">
                                             <label>Amount:</label><br>
                                             <asp:TextBox ID="amt"  class="form-control" placeholder="Amount"  runat="server" ReadOnly></asp:TextBox>

                                         </div>
                                           </div>
                                         
                                    <div class="col-sm-12">
                                    <div class="reset-button">
                                    <asp:Button ID="btncancel" class="btn btn-warning" runat="server" Text="Save" OnClick="btnsave_Click"></asp:Button>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnsave" class="btn btn-success"  runat="server" Text="Invoice" OnClick="invoice_Click"></asp:Button>
                                  
                                 </div>
                             </div>
                         </div>


                     </div>
                     </div>
                 </div>
            
            
         </section> <!-- /.content -->
     </div> <!-- /.content-wrapper -->
     
        </div>

</asp:Content>
