<%@ Page Title="" Language="C#" MasterPageFile="~/header-footer.Master" AutoEventWireup="true" CodeBehind="termeligibitycheck.aspx.cs" Inherits="InsuranceHub.termeligibitycheck" %>

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
                        <h1> Eligibility Check</h1>
                        <small> Eligibility Check</small>
                        <ol class="breadcrumb hidden-xs">
                            <li><a href="Dashboard.aspx"><i class="pe-7s-home"></i> Home</a></li>
                            <li class="active">Dashboard</li>
                        </ol>
                    </div>
                </section>
                <!-- Main content -->
                      <section class="content">
                    <div class="row">
                            <div class="col-sm-12">
                                <div class="panel panel-bd lobidrag">
                                 
                                    <div class="panel-body">
                  <div class="table-responsive">
                           <table class="table table-bordered table-hover">
                              <fieldset>
                                 <asp:Repeater ID="rpt" runat="server">
                                    <HeaderTemplate>
                                       <table id="example1" class="table table-bordered table-striped">
                                          
                                           
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                    <tr>
                                    <td>
                                    <asp:Label ID="lbl0" runat="server" Text='<%# Eval("clientname") %>'></asp:Label>
                                    </td>
                                    <td>
                                    <asp:Label ID="lbl1" runat="server" Text='<%# Eval("gender") %>'></asp:Label>
                                    </td>
                                    <td>
                                    <asp:Label ID="lbl2" runat="server" Text='<%# Eval("lifestage") %>'></asp:Label>
                                    </td>
                                    <td>
                                    <asp:Label ID="lbl3" runat="server" Text='<%# Eval("bday") %>'></asp:Label>
                                    </td>
                                    <td>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("mobile") %>'></asp:Label>
                                    </td>
                                    <td>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("education") %>'></asp:Label>
                                    </td>
                                    <td>
                                    <asp:Label ID="Label6" runat="server" Text='<%#  Eval("smoke") %>'></asp:Label>
                                    
                                    </td>
                                    <td>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("income") %>'></asp:Label>
                                    </td>
                                    <td>
                                  
                         
                                    <asp:UpdatePanel ID="u" runat="server" UpdateMode="Conditional">
                                    <ContentTemplate>
                                    <asp:UpdatePanel ID="u1" runat="server">
                                    <ContentTemplate>
                                    
                                    <asp:LinkButton ID="Edit" data-modal="modal-4" runat="server" class="btn btn-success md-trigger m-b-5 m-r-2" CommandArgument='<%# Eval("id") %>' OnClick="Edit_Click">
                                   
                                        <i class="fa fa-pencil"></i></asp:LinkButton>
                                        </ContentTemplate>
                                        <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="Edit" EventName="Click" />
                                        </Triggers></asp:UpdatePanel>
                              </ContentTemplate>
                             </asp:UpdatePanel>
                              
                                    </td>
                                    </tr>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                    </table>
                                    </FooterTemplate>
                                 </asp:Repeater>
                              </fieldset>
                           </table>
                        </div>
                       
                   
                <asp:Panel ID="Panel1" runat="server">
                    
                <section class="content">
                    <div class="row">
                        <!-- Form controls -->
                        <div class="col-sm-12">
                            <div class="panel panel-bd lobidrag">
                                <div class="panel-heading">
                                    <div class="btn-group"> 
                                        <a class="btn btn-primary" href="company-list.aspx"> 
                                            <i class="fa fa-list"></i>  Eligibility Check </a>  
                                        </div>
                                    </div>
                                    <div class="panel-body">
                                       
                                            <div class="col-sm-6 form-group">
                                                <label>Occupation:</label>
                                                <asp:DropDownList ID="occ" class="form-control" runat="server">
                                                <asp:ListItem Value="Salaried" ></asp:ListItem>
                                                <asp:ListItem Value="Retired"></asp:ListItem>
                                                 <asp:ListItem Value="Student"></asp:ListItem>
                                                  <asp:ListItem Value="Self Employed"></asp:ListItem>
                                                   <asp:ListItem Value="House Wife"></asp:ListItem>
                                                </asp:DropDownList>
                                               
                                           </div>
               
                                           <div class="col-sm-6 form-group">
                                                <label>Weight(in Kgs) :</label>
                                                 <asp:TextBox ID="Weight"  class="form-control" placeholder="Weight(in Kgs)" runat="server"></asp:TextBox>
                                                 <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" TargetControlID="Weight" FilterType="Numbers"></cc1:FilteredTextBoxExtender>
                                                 <asp:Label ID="Label1" runat="server"></asp:Label>
                                            </div>
                                       
                                            
                                          <div class="col-sm-6 form-group">
                                                <label>Height in feet:</label>

                                               <asp:DropDownList ID="hf" class="form-control" runat="server">
                                                <asp:ListItem Value="3"></asp:ListItem>
                                                 <asp:ListItem Value="4"></asp:ListItem>
                                                  <asp:ListItem Value="5"></asp:ListItem>
                                                   <asp:ListItem Value="6"></asp:ListItem>
                                                    <asp:ListItem Value="7"></asp:ListItem>
                                               </asp:DropDownList>
                                            </div>
                                            <div class="col-sm-6 form-group">
                                                <label>Height in inches:</label>
                                               <asp:DropDownList ID="hi" class="form-control" runat="server">
                                                <asp:ListItem Value="1"></asp:ListItem>
                                                 <asp:ListItem Value="2"></asp:ListItem>
                                                  <asp:ListItem Value="3"></asp:ListItem>
                                                   <asp:ListItem Value="4"></asp:ListItem>
                                                    <asp:ListItem Value="5"></asp:ListItem>
                                                     <asp:ListItem Value="6"></asp:ListItem>
                                                      <asp:ListItem Value="7"></asp:ListItem>
                                                       <asp:ListItem Value="8"></asp:ListItem>
                                                        <asp:ListItem Value="9"></asp:ListItem>
                                                         <asp:ListItem Value="10"></asp:ListItem>
                                                      <asp:ListItem Value="11"></asp:ListItem>
                                               </asp:DropDownList>
                                            </div>
                                          <div class="col-sm-6 form-group">
                                                <label>Mother Name:</label>
                                                <asp:TextBox ID="Mother" class="form-control" placeholder="Mother Name" runat="server"></asp:TextBox>
                                                 <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" TargetControlID="Mother" FilterType="UppercaseLetters , LowercaseLetters, Custom" ValidChars=" "></cc1:FilteredTextBoxExtender>
                                                 <asp:Label ID="Label2" runat="server"></asp:Label>
                                                </div>
                                                  <div class="col-sm-6 form-group">
                                                <label>Father Name:</label>
                                                <asp:TextBox ID="Father" class="form-control" placeholder="Father Name" runat="server"></asp:TextBox>
                                                <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" TargetControlID="Father" FilterType="UppercaseLetters , LowercaseLetters, Custom" ValidChars=" "></cc1:FilteredTextBoxExtender>
                                                <asp:Label ID="Label3" runat="server"></asp:Label>
                                                </div>

                                                    <div class="col-sm-12 form-group">
                                                <label>Address:</label>
                                                <asp:TextBox ID="address" class="form-control" placeholder="Address" runat="server"></asp:TextBox>
                                                 <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server" TargetControlID="address" FilterType="Numbers, UppercaseLetters, LowercaseLetters, Custom" ValidChars=" .-/"></cc1:FilteredTextBoxExtender>  
                                                      <asp:Label ID="Label4" runat="server"></asp:Label>
                                                </div>
                                   
                                    <div class="reset-button">
                                    <asp:Button ID="cancel" class="btn btn-warning" runat="server" Text="Reset" 
                                            ></asp:Button>
                                    <asp:Button ID="save" class="btn btn-success" runat="server" Text="Save" 
                                            onclick="save_Click"></asp:Button>
                                  
                                 </div>
                           
                         </div>
                     </div>
                 </div>
             </div>
             </section>
               </asp:Panel>
            
               </div>
               </div>
              </section>
              </div>
              </div>
              
                                    
     <div class="md-modal md-effect-4" id="modal-4">

   
                                                    <div class="md-content">
                                                        <h3>Update Personal Details</h3>
                                                        <div class="n-modal-body">
                                                        <asp:UpdatePanel ID="u2" runat="server">
                                                        <ContentTemplate>
                                                       
                                                           <div class="col-sm-6 form-group">
                        <label>Your Name:</label>
                        <asp:TextBox ID="name" class="form-control"  runat="server"></asp:TextBox>
                     </div>
                      <div class="col-sm-6 form-group">
                        <label>Gender:</label>
                         <asp:DropDownList ID="gender" class="form-control" runat="server">
                         
                                                 <asp:ListItem Value="Male"></asp:ListItem>
                                                 <asp:ListItem Value="Female"></asp:ListItem>
                         </asp:DropDownList>
                     </div>
                      <div class="col-sm-6 form-group">
                        <label>Life Stage:</label>
                        <asp:DropDownList ID="ls" class="form-control" runat="server">
                         
                                    <asp:ListItem Value="Single"></asp:ListItem>
                                    <asp:ListItem Value="Married"></asp:ListItem>
                                    <asp:ListItem Value="Married with kids"></asp:ListItem>
                                <asp:ListItem Value="Retired"></asp:ListItem>                                           
                        </asp:DropDownList>
                     </div>
                      <div class="col-sm-6 form-group">
                        <label>BirthDate:</label>
                        <asp:TextBox ID="bday" class="form-control" TextMode=Date  runat="server"></asp:TextBox>
                     </div>
                      <div class="col-sm-6 form-group">
                        <label>Mobile No:</label>
                        <asp:TextBox ID="mno" class="form-control"  runat="server"></asp:TextBox>
                     </div>
                      <div class="col-sm-6 form-group">
                        <label>Education:</label>
                      <asp:DropDownList ID="edu" class="form-control" runat="server">
                      
                         <asp:ListItem Value="Graduate"></asp:ListItem>
                           <asp:ListItem Value="Non Graduate"></asp:ListItem>
                           <asp:ListItem Value="Post Graduate"></asp:ListItem>
                      </asp:DropDownList>
                     </div>
                     <div class="col-sm-6 form-group">
                        <label>Do you smoke??</label>
                            <asp:RadioButton ID="smokey" GroupName="smoke" runat="server" 
                              style="padding-left:10px;padding-right:10px;" Text="YES"></asp:RadioButton>
                           <asp:RadioButton ID="smokeyn" GroupName="smoke" runat="server" style="padding-left:10px;padding-right:10px;" Text="NO"></asp:RadioButton>
                     </div>
                           <div class="col-sm-6 form-group">
                        <label>Family Income:</label>
                       <asp:DropDownList ID="annualincome" class="form-control" runat="server">
                      
                                            <asp:ListItem Value="2 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="3 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="4 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="5 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="6 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="7 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="8 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="9 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="10 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="11 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="12 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="13 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="14 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="15 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="16 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="17 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="18 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="19 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="20 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="21 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="22 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="23 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="24 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="25 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="26 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="27 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="28 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="29 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="30 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="31 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="32 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="33 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="34 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="35 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="36 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="37 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="38 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="39 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="40 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="41 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="42 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="43 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="44 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="45 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="46 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="47 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="49 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="50 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="51 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="52 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="53 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="54 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="55 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="56 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="57 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="58 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="59 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="60 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="61 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="62 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="63 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="64 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="65 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="66 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="67 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="68 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="69 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="70 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="71 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="72 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="73 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="74 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="75 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="76 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="77 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="78 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="79 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="80 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="81 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="82 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="83 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="84 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="85 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="86 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="87 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="88 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="89 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="90 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="91 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="92 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="93 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="94 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="95 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="96 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="97 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="98 Lakh"></asp:ListItem>
                                            <asp:ListItem Value="99 Lakh"></asp:ListItem>
                       </asp:DropDownList>
                     </div>
                      </ContentTemplate></asp:UpdatePanel>
                                                        
                                                            <asp:UpdatePanel ID="a" runat="server">
                                                            <ContentTemplate>
                                                             <div class="reset-button">
                                                                <asp:LinkButton ID="close" class="btn btn-success md-close" runat="server" OnClick="close_Click">Close</asp:LinkButton>
                                                                
                                                                 <asp:LinkButton ID="btnsave"  class="btn btn-success" runat="server" OnClick="btnsave_Click" Text="Save Changes" CommandArgument='<%# Eval("id") %>' runat="server"></asp:LinkButton>
                                                                 </ContentTemplate></asp:UpdatePanel>
                                                                 
                                    
                                                            </div>
                                                             
                                                        </div>
                                                    
                                                </div>
                                       
                                              
                                                


               
               
        
            
        <!-- /.content -->
      <!-- /.content-wrapper -->
        
</asp:Content>
