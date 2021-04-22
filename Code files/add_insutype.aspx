<%@ Page Title="" Language="C#" MasterPageFile="~/header-footer.Master" AutoEventWireup="true" CodeBehind="add_insutype.aspx.cs" Inherits="InsuranceHub.add_insutype" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
   <div class="wrapper">
   <div class="content-wrapper">
                    <!-- Content Header (Page header) -->
                    <section class="content-header">
                        <div class="header-icon">
                            <i class="pe-7s-note2"></i>
                        </div>
                        <div class="header-title">
                            <div class="sidebar-form search-box pull-right hidden-md hidden-lg hidden-sm">
                                <div class="input-group">
                                    <input type="text" name="q" class="form-control" placeholder="Search...">
                                    <span class="input-group-btn">
                                        <button type="submit" name="search" id="search-btn" class="btn"><i class="fa fa-search"></i></button>
                                    </span>
                                </div>
                            </div>  
                            <h1>Insurance Type</h1>
                            <small>Insurance Type List </small>
                            <ol class="breadcrumb hidden-xs">
                                <li><a href="index-2.html"><i class="pe-7s-home"></i> Home</a></li>
                                <li class="active">Insurance Type List</li>
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
                                            <a class="btn btn-primary" href="insutype-list.aspx"> <i class="fa fa-list"></i>  Insurance Type List</a>  
                                        </div>
                                    </div>
                                    <div class="panel-body">
                                        <div class="col-sm-6">
                                           
                                            
                                            <div class="form-group">
                                                <label>Insurance Type:</label>
                                            
                                            </div>
                                            
                                            <div class="form-group">
                                                     
                                                <asp:TextBox ID="type" class="form-control" runat="server" 
                                                    ></asp:TextBox>
                                                    <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" TargetControlID="type" FilterType="UppercaseLetters , LowercaseLetters, Custom" ValidChars=" "></cc1:FilteredTextBoxExtender>
                                                    <asp:Label ID="Label1" runat="server"></asp:Label>
                                                
                                            </div>
                                            
                                            

                                          <div class="reset-button">
                                          <asp:Button ID="save" class="btn btn-success" runat="server" Text="Save" onclick="save_Click" 
                                                 ></asp:Button>
                                          <asp:Button ID="cancel" class="btn btn-warning" OnClick="cancel_Click" runat="server" Text="Reset"></asp:Button>
                                             
                                           
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
