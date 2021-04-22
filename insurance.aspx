<%@ Page Title="" Language="C#" MasterPageFile="~/header-footer.Master" AutoEventWireup="true" CodeBehind="insurance.aspx.cs" Inherits="InsuranceHub.insurance" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
 <!-- Site wrapper -->
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
                            <h1>Insurance</h1>
                            <small>Insurance list</small>
                            <ol class="breadcrumb hidden-xs">
                                <li><a href="Dashboard.aspx"><i class="pe-7s-home"></i> Home</a></li>
                                <li class="active">Insurance List</li>
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
                                            <a class="btn btn-primary" href="insurance-list.aspx"> <i class="fa fa-list"></i>  Insurance List</a>  
                                        </div>
                                    </div>
                                   <div class="panel-body">
                                         
                                            <div class="col-sm-6 form-group">
                                           <label>Policy No:</label>
                                      <asp:TextBox ID="txtpno" class="form-control" placeholder="Policy Number" runat="server"></asp:TextBox>
                                      <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" TargetControlID="txtpno" FilterType="Numbers"></cc1:FilteredTextBoxExtender>
                                            <asp:Label ID="Label1" runat="server"></asp:Label>
                                            </div>
                                             
                                            <div class="col-sm-6 form-group">
                                                 <label>Policy Name:</label>
                                      <asp:TextBox ID="txtname" class="form-control" placeholder="Policy Name" runat="server"></asp:TextBox>
                                             <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" TargetControlID="txtname" FilterType="UppercaseLetters , LowercaseLetters, Custom" ValidChars=" "></cc1:FilteredTextBoxExtender>
                                             <asp:Label ID="Label2" runat="server"></asp:Label>
                                            </div>
                                                   
                                           <div class="col-sm-6 form-group">
                                                   <label>Insurance Type:</label>
                                      
                                      <asp:DropDownList ID="type" data-placeholder="Select "  runat="server"  
                                      class="form-control"
                                             
                                            ></asp:DropDownList>
                                              <asp:Label ID="Label12" runat="server"></asp:Label>
                                            </div>
                                            
                                            
									
								 
                                            
                                                   
									<div class="col-sm-6 form-group">
									 <label>Select Insurance Company:</label>
                                    
                                      <asp:DropDownList ID="company" class="form-control" runat="server" 
                                       ></asp:DropDownList>
									   
									
									  
									   
									
									     <asp:Label ID="Label3" runat="server"></asp:Label>
									</div>
								 
								<div class="col-sm-6 form-group">
								  <label>Isuue Date:</label>
                                  <asp:TextBox ID="isuuedate" type="text" TextMode=Date class="form-control" placeholder="DD/MM/YYYY" runat="server"></asp:TextBox>
								    <asp:Label ID="Label4" runat="server"></asp:Label>
                                  </div>
								
									<div class="col-sm-6 form-group">
									  <label>Validity:</label>
                                      <asp:TextBox ID="validity" type="text" TextMode=Date class="form-control" placeholder="DD/MM/YYYY" runat="server"></asp:TextBox>
									   <asp:Label ID="Label5" runat="server"></asp:Label>
									</div>
								 
									<div class="col-sm-6 form-group">
									  <label>Number Of Family Members:</label>
                                      <asp:TextBox ID="person" type="text" class="form-control" placeholder="Total person in family" runat="server"></asp:TextBox>
									  <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" TargetControlID="person" FilterType="Numbers"></cc1:FilteredTextBoxExtender>
									  <asp:Label ID="Label6" runat="server"></asp:Label>
                                    </div>
								 
									<div class="col-sm-6 form-group">
									  <label>Number Of Adult Members in Family :</label>
                                      <asp:TextBox ID="adult" type="text" class="form-control" placeholder="Adults in family" runat="server"></asp:TextBox>
									 <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server" TargetControlID="adult" FilterType="Numbers"></cc1:FilteredTextBoxExtender>
									  <asp:Label ID="Label7" runat="server"></asp:Label>
                                    </div>
								<div class="col-sm-6 form-group">
									  <label>Number Of Son in Family :</label>
                                      <asp:TextBox ID="son" type="text" class="form-control" placeholder="Son in family" runat="server"></asp:TextBox>
									 <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender5" runat="server" TargetControlID="son" FilterType="Numbers"></cc1:FilteredTextBoxExtender>
									  <asp:Label ID="Label8" runat="server"></asp:Label>
                                    </div>
                                    <div class="col-sm-6 form-group">
									  <label>Number Of Daughter in Family :</label>
                                      <asp:TextBox ID="daughter" type="text" class="form-control" placeholder="Daughter in family" runat="server"></asp:TextBox>
									 <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender6" runat="server" TargetControlID="daughter" FilterType="Numbers"></cc1:FilteredTextBoxExtender>
									  <asp:Label ID="Label9" runat="server"></asp:Label>
                                    </div>
                                    <div class="col-sm-6 form-group">
									  <label>Sum Insured :</label>
                                      <asp:TextBox ID="suminsured" type="text" class="form-control" placeholder="Cover Plan" runat="server"></asp:TextBox>
									  <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender7" runat="server" TargetControlID="suminsured" FilterType="Numbers"></cc1:FilteredTextBoxExtender>
									  <asp:Label ID="Label10" runat="server"></asp:Label>
                                    </div>
                                   <div class="col-sm-6 form-group">
									  <label>Cost :</label>
                                      <asp:TextBox ID="cost" type="text" class="form-control" placeholder="Cost" runat="server"></asp:TextBox>
									  <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender8" runat="server" TargetControlID="cost" FilterType="Numbers"></cc1:FilteredTextBoxExtender>
									  <asp:Label ID="Label11" runat="server"></asp:Label>
                                    </div>
								 
								 
                                 <div class="reset-button">
                                             
                                                 <asp:Button ID="cancel" runat="server" OnClick="cancel_Click" class="btn btn-warning"  Text="Reset"></asp:Button>
                           <asp:Button ID="save"  runat="server" class="btn btn-success" Text="Save" onclick="save_Click" ></asp:Button>
                                         </div>
                                         </div>
                                    
                                 </div>
                             </div>
                         </div>
                         </section>
                     </div>
                     </div>
                    
        
             
</asp:Content>
