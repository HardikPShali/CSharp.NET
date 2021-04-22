<%@ Page Title="" Language="C#" MasterPageFile="~/header-footer.Master" AutoEventWireup="true" CodeBehind="hicp.aspx.cs" Inherits="InsuranceHub.hicp" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:ScriptManager ID="abc" runat="server"></asp:ScriptManager>
    

        <!-- Site wrapper -->
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
                        <h1>Insurance</h1>
                        <small>Insurance Plan</small>
                        <ol class="breadcrumb hidden-xs">
                            <li><a href="Dashboard.aspx"><i class="pe-7s-home"></i> Home</a></li>
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
                                            <i class="fa fa-list"></i>Please provide your details to complete the premium calculation  </a>  
                                        </div>
                                    </div>

                                    <asp:panel ID="p1" runat="server">
                                    <div class="panel-body">
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label>Plan Type:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                               <asp:RadioButton ID="RadioButton1" GroupName="aa" Text="Individual Sum Insured"  class="form-check" runat="server"></asp:RadioButton>
                                               &nbsp;&nbsp;&nbsp;&nbsp;
                                               &nbsp;&nbsp;&nbsp;&nbsp;
                                               <asp:RadioButton ID="RadioButton2" GroupName="aa" Text="Family Floater" class="form-check" runat="server"></asp:RadioButton>&nbsp;&nbsp;<asp:Label ID="Label1" runat="server"></asp:Label>  
                                               

                                            </div>
                                             
                                            </div>
                                            
                                           <div class="col-sm-6">
                                        
                                            <div class="form-group">
                                                <label>Name:</label>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                               <asp:TextBox ID="txtname" class=form-control type="text" placeholder="Full Name" runat="server"></asp:TextBox>
                                            </div>
                                            </div>

                                       

                                            <div class="col-sm-6">
                                            <div class="form-group">
                                                <label>Mobile No:</label>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:TextBox ID="txtcontactno" class=form-control  placeholder="Mobile Number" Rows="3" runat="server"></asp:TextBox>
                                            </div>
                                            </div>
                                             
                                             <div class="col-sm-6">
                                            <div class="form-group">
                                                <label>Email Id:</label>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                 <asp:TextBox ID="txtemailid" class=form-control   placeholder="Email" runat="server"></asp:TextBox>
                                            </div>
                                            </div>
                                            
                                            <div class="col-sm-6">
                                            <div class="form-group">
                                                <label>Pincode:</label>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:TextBox ID="txtpincode" class=form-control  placeholder="Pincode" runat="server"></asp:TextBox>
                                            
                                         <asp:Label ID="Label2" runat="server"></asp:Label>
                                         <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" TargetControlID="txtpincode" FilterType="Numbers"></cc1:FilteredTextBoxExtender>
                                            </div>
                                            </div>
                                            
                                            <div class="col-sm-6">
                                            <div class="form-group">
                                                <label>State:</label>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                               <asp:TextBox ID="txtstate" class=form-control placeholder="State"   runat="server"></asp:TextBox>
                                          <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" TargetControlID="txtstate" FilterType="UppercaseLetters , LowercaseLetters, Custom" ValidChars=" "></cc1:FilteredTextBoxExtender>
                                           <asp:Label ID="Label3" runat="server"></asp:Label>  
                                            </div>
                                            </div>

                                            <div class="col-sm-6">
                                            <div class="form-group">
                                                <label>City:</label>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                               <asp:TextBox ID="txtcity" class=form-control   placeholder="City"  runat="server"></asp:TextBox>
                                            </div>
                                            </div>

                                            
                                         
                                   
                                    <div class="reset-button">
                                    
                                    <asp:LinkButton ID="Button2" class="btn btn-success" runat="server" Text="Calculate Premium" 
                                       OnClick="calculatepremium_Click"></asp:LinkButton>
                                  
                                 </div>
                             
                                         
                                   
                                   
                                           </div>
                         </div>
                         </asp:panel>

                                    <asp:panel ID="p2" runat="server">
                                    <div class="panel-body">
                                        
                         </div>
                         </asp:panel>


                     </div>
                 </div>
            </div>
             
         </section> <!-- /.content -->
     </div> <!-- /.content-wrapper -->
        </div>
        
</asp:Content>