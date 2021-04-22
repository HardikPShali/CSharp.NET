<%@ Page Title="" Language="C#" MasterPageFile="~/header-footer.Master" AutoEventWireup="true" CodeBehind="add_company.aspx.cs" Inherits="InsuranceHub.add_company" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
     

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
                        <h1>Company</h1>
                        <small>Company list</small>
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
                                        <a class="btn btn-primary" href="company-list.aspx"> 
                                            <i class="fa fa-list"></i>  Company List </a>  
                                        </div>
                                    </div>
                                    <div class="panel-body">
                                       
                                            <div class="col-sm-6 form-group">
                                                <label>Company Name:</label>
                                               <asp:TextBox ID="txtcname" type="text" class="form-control" placeholder="Company Name" runat="server"></asp:TextBox>
                                                <asp:Label ID="Label1" runat="server"></asp:Label>
                                               
                                       
                                             <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" TargetControlID="txtcname" FilterType="UppercaseLetters , LowercaseLetters, Custom" ValidChars=" "></cc1:FilteredTextBoxExtender>             
                                           </div>
                                          <div class="col-sm-6 form-group">
                                                <label>Address of company:</label>
                                                <asp:TextBox ID="txtcadd"  class="form-control" placeholder="Address" Rows="3" runat="server"></asp:TextBox>
                                                <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" TargetControlID="txtcadd" FilterType="Numbers, UppercaseLetters, LowercaseLetters, Custom" ValidChars=" .-/"></cc1:FilteredTextBoxExtender>  
                                               <asp:Label ID="Label2" runat="server"></asp:Label>           
                                            </div>
                                           <div class="col-sm-6 form-group">
                                                <label>Email:</label>
                                                 <asp:TextBox ID="txtcemail"  class="form-control" placeholder="Email" runat="server"></asp:TextBox>
                                                 <asp:Label ID="Label3" runat="server"></asp:Label>
                                                 <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" TargetControlID="txtcemail" FilterType="Numbers, LowercaseLetters, Custom" ValidChars=".@/"></cc1:FilteredTextBoxExtender>
                                            </div>
                                       
                                            
                                         <div class="col-sm-6 form-group">
                                                <label>Website:</label>
                                               <asp:TextBox ID="txtcwebsite"  class="form-control"  placeholder="www." runat="server"></asp:TextBox>
                                                <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server" TargetControlID="txtcwebsite" FilterType="Numbers, LowercaseLetters, Custom" ValidChars="./@"></cc1:FilteredTextBoxExtender>
                                                 <asp:Label ID="Label4" runat="server"></asp:Label>
                                            </div>
                                            <div class="col-sm-6 form-group">
                                                <label>City:</label>
                                               <asp:TextBox ID="txtcity"  class="form-control" placeholder="City"  runat="server"></asp:TextBox>
                                                <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender5" runat="server" TargetControlID="txtcity" FilterType="LowercaseLetters,UppercaseLetters"></cc1:FilteredTextBoxExtender>
                                                 <asp:Label ID="Label5" runat="server"></asp:Label>
                                            </div>
                                          <div class="col-sm-6 form-group">
                                             <label>Pincode:</label><br>
                                             <asp:TextBox ID="txtcpincode"  class="form-control" placeholder="Pincode"  runat="server"></asp:TextBox>
                                              <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender6" runat="server" TargetControlID="txtcpincode" FilterType="Numbers"></cc1:FilteredTextBoxExtender>
                                               <asp:Label ID="Label6" runat="server"></asp:Label>

                                         </div>
                                              
                                           <div class="col-sm-6 form-group">
                                                <label>Upload Company Picture Here:</label>
                                                <asp:FileUpload ID="cimg" runat="server"></asp:FileUpload>
                                                  <asp:Label ID="Label7" runat="server"></asp:Label>
                                            </div>
                                         <div class="col-sm-6 form-group">
                                          <label>Contact Number:</label><br>
                                          <asp:TextBox ID="txtconatct"  class="form-control" placeholder="Contact number" runat="server"></asp:TextBox>
                                      <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender7" runat="server" TargetControlID="txtconatct" FilterType="Numbers"></cc1:FilteredTextBoxExtender>
                                       <asp:Label ID="Label8" runat="server"></asp:Label>
                                      </div>                                       

                                   
                                    <div class="reset-button">
                                    <asp:Button ID="cancel" class="btn btn-warning" runat="server" Text="Reset" 
                                            onclick="cancel_Click"></asp:Button>
                                    <asp:Button ID="save" class="btn btn-success" runat="server" Text="Save" 
                                            onclick="save_Click"></asp:Button>
                                  
                                 </div>
                           
                         </div>
                     </div>
                 </div>
             </div>
             </section>
     <%--         <asp:UpdatePanel ID="m" runat="server">
      <ContentTemplate>
     
         <div class="modal fade" id="myModal" >
            <div class="modal-dialog">
               <div class="modal-content">
                  <div class="modal-header">
                     <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                     <h1 class="modal-title">Error</h1>
                  </div>
                
                  <div class="modal-body">
                      <asp:Label ID="Label9" runat="server"></asp:Label>
                  </div>
             
                  <div class="modal-footer">
                     <asp:Button ID="close" OnClick="close_Click" class="btn btn-warning" runat="server" Text="Close" data-dismiss="modal"></asp:Button>
                 
                     
                  </div>
               </div>
            </div>
         </div>
          </ContentTemplate></asp:UpdatePanel>--%>
        <!-- /.content -->
     </div> <!-- /.content-wrapper -->
        

     
</asp:Content>
