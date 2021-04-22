<%@ Page Title="" Language="C#" MasterPageFile="~/header-footer.Master" AutoEventWireup="true" CodeBehind="termbankdetails.aspx.cs" Inherits="InsuranceHub.termbankdetails" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:ScriptManager ID="s" runat="server">
</asp:ScriptManager>
  <div class="wrapper">
         <!-- Content Wrapper. Contains page content -->
                <div class="content-wrapper">
                    <!-- Content Header (Page header) -->
                    <section class="content-header">
                        <div class="header-icon">
                            <i class="pe-7s-note2"></i>
                        </div>
                        <div class="header-title">
                            <div action="#" method="get" class="sidebar-form search-box pull-right hidden-md hidden-lg hidden-sm">
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
                                <li><a href="Dashboard.aspx"><i class="pe-7s-home"></i> Home</a></li>
                                <li class="active">Bank Details</li>
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
                                            <a class="btn btn-primary"> <i class="fa fa-list"></i> Bank Details</a>  
                                        </div>
                                    </div>
                                   <div class="panel-body">
                                         
                                            <div class="col-sm-6 form-group">
                                           <label>Cheque No:</label>
                                      <asp:TextBox ID="cno" class="form-control" placeholder="Cheque Number" runat="server"></asp:TextBox>
                                            <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" TargetControlID="cno" FilterType="Numbers"></cc1:FilteredTextBoxExtender>
                                            <asp:Label ID="Label1" runat="server"></asp:Label>
                                            </div>
                                             
                                            <div class="col-sm-6 form-group">
                                                 <label>Date:</label>
                                      <asp:TextBox ID="date" class="form-control" TextMode="Date" placeholder="Date" runat="server"></asp:TextBox>
                                             <asp:Label ID="Label2" runat="server"></asp:Label>
                                            </div>
                                                   
                                           <div class="col-sm-6 form-group">
                                                   <label>Branch Name:</label>
                                      
                                      <asp:TextBox ID="bname" class="form-control" placeholder="Branch Name" runat="server"></asp:TextBox>
                                       <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" TargetControlID="bname" FilterType="UppercaseLetters , LowercaseLetters, Custom" ValidChars=" "></cc1:FilteredTextBoxExtender>
                                       <asp:Label ID="Label3" runat="server"></asp:Label>
                                            </div>
                                            
                                            
									
								 
                                            
                                                   
									<div class="col-sm-6 form-group">
									 <label>Account No:</label>
                                    
                                     <asp:TextBox ID="accno" class="form-control" placeholder="Account Number"  runat="server"></asp:TextBox>
									 <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" TargetControlID="accno" FilterType="Numbers"></cc1:FilteredTextBoxExtender>
									  <asp:Label ID="Label4" runat="server"></asp:Label>
									   
									
									   
									</div>
								 
								<div class="col-sm-6 form-group">
								  <label>Account Name:</label>
                                  <asp:TextBox ID="accname"  class="form-control" placeholder="Name of Account Holder" runat="server"></asp:TextBox>
                                  <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server" TargetControlID="accname" FilterType="UppercaseLetters , LowercaseLetters, Custom" ValidChars=" "></cc1:FilteredTextBoxExtender>
									  <asp:Label ID="Label5" runat="server"></asp:Label>

								  </div>
								
									<div class="col-sm-6 form-group">
									  <label>Amount:</label>
                                      <asp:TextBox ID="amount" class="form-control" runat="server" ReadOnly></asp:TextBox>
									<%--  <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender5" runat="server" TargetControlID="amount" FilterType="Numbers"></cc1:FilteredTextBoxExtender>
									  <asp:Label ID="Label6" runat="server"></asp:Label>--%>
									</div>
								 
								 
                                 <div class="reset-button">
                                             
                                                 <asp:Button ID="reset" runat="server"  class="btn btn-warning"  Text="Reset"></asp:Button>
                           <asp:Button ID="save"  runat="server" class="btn btn-success" Text="Save" OnClick="save_Click"></asp:Button>
                                         </div>
                                         
                                    </div>
                                 </div>
                             </div>
                         </div>
                         </section>
                </div>
        
    </div>
</asp:Content>
