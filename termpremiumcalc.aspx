<%@ Page Title="" Language="C#" MasterPageFile="~/header-footer.Master" AutoEventWireup="true" CodeBehind="termpremiumcalc.aspx.cs" Inherits="InsuranceHub.termpremiumcalc" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<link href="assets/toggle.css" rel="stylesheet" type="text/css"/>
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
                        <h1> Calculate Premium</h1>
                        <small> Calculate Premium</small>
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
                                            <i class="fa fa-list"></i>  Calculate Premium </a>  
                                        </div>
                                    </div>

                                    <div class="panel-body">
                                     
                                        <div class="col-sm-6 form-group">
                                                <label>Get Life Cover of:</label>
                                                <asp:DropDownList ID="cover" class="form-control" runat="server">
                                                 <asp:ListItem Value="2000000" Text="20 Lakhs" ></asp:ListItem>
                                            <asp:ListItem Value="3000000" Text="30 Lakhs"></asp:ListItem>
                                            <asp:ListItem Value="4000000" Text="40 Lakhs"></asp:ListItem>
                                            <asp:ListItem Value="5000000" Text="50 Lakhs"></asp:ListItem>
                                            <asp:ListItem Value="6000000" Text="60 Lakhs"></asp:ListItem>
                                            <asp:ListItem Value="7000000" Text="70 Lakhs"></asp:ListItem>
                                            <asp:ListItem Value="8000000" Text="80 Lakhs"></asp:ListItem>
                                            <asp:ListItem Value="9000000" Text="90 Lakhs"></asp:ListItem>
                                            <asp:ListItem Value="10000000" Text="1 Crore"></asp:ListItem>
                                            <asp:ListItem Value="12000000" Text="1.2 Crore"></asp:ListItem>
                                                </asp:DropDownList>

                                                </div>

                                            <div class="col-sm-6 form-group">
                                                <label>Till the age of:</label>
                                                <asp:DropDownList ID="age" class="form-control" runat="server">
                                  <asp:ListItem Value="27" Text="27 year"></asp:ListItem>
                                 <asp:ListItem Value="28" Text="28 year"></asp:ListItem>
                                 <asp:ListItem Value="29" Text="29 year"></asp:ListItem>
                                 <asp:ListItem Value="30" Text="30 year"></asp:ListItem>
                                 <asp:ListItem Value="31" Text="31 year"></asp:ListItem>
                                 <asp:ListItem Value="32" Text="32 year"></asp:ListItem>
                                 <asp:ListItem Value="33" Text="33 year"></asp:ListItem>
                                 <asp:ListItem Value="34" Text="34 year"></asp:ListItem>
                                 <asp:ListItem Value="35" Text="35 year"></asp:ListItem>
                                 <asp:ListItem Value="36" Text="36 year"></asp:ListItem>
                                 <asp:ListItem Value="37" Text="37 year"></asp:ListItem>
                                 <asp:ListItem Value="38" Text="38 year"></asp:ListItem>
                                 <asp:ListItem Value="39" Text="39 year"></asp:ListItem>
                                 <asp:ListItem Value="40" Text="40 year"></asp:ListItem>
                                 <asp:ListItem Value="41" Text="41 year"></asp:ListItem>
                                 <asp:ListItem Value="42" Text="42 year"></asp:ListItem>
                                 <asp:ListItem Value="43" Text="43 year"></asp:ListItem>
                                 <asp:ListItem Value="44" Text="44 year"></asp:ListItem>
                                 <asp:ListItem Value="45" Text="45 year"></asp:ListItem>
                                 <asp:ListItem Value="46" Text="46 year"></asp:ListItem>
                                 <asp:ListItem Value="47" Text="47 year"></asp:ListItem>
                                 <asp:ListItem Value="48" Text="48 year"></asp:ListItem>
                                 <asp:ListItem Value="49" Text="49 year"></asp:ListItem>
                                 <asp:ListItem Value="50" Text="50 year"></asp:ListItem>
                                 <asp:ListItem Value="51" Text="51 year"></asp:ListItem>
                                 <asp:ListItem Value="52" Text="52 year"></asp:ListItem>
                                 <asp:ListItem Value="53" Text="53 year"></asp:ListItem>
                                 <asp:ListItem Value="54" Text="54 year"></asp:ListItem>
                                 <asp:ListItem Value="55" Text="55 year"></asp:ListItem>
                                 <asp:ListItem Value="56" Text="56 year"></asp:ListItem>
                                 <asp:ListItem Value="57" Text="57 year"></asp:ListItem>
                                 <asp:ListItem Value="58" Text="58 year"></asp:ListItem>
                                 <asp:ListItem Value="59" Text="59 year"></asp:ListItem>
                                 <asp:ListItem Value="60" Text="60 year"></asp:ListItem>
                                 <asp:ListItem Value="61" Text="61 year"></asp:ListItem>
                                 <asp:ListItem Value="62" Text="62 year"></asp:ListItem>
                                 <asp:ListItem Value="63" Text="63 year"></asp:ListItem>
                                 <asp:ListItem Value="64" Text="64 year"></asp:ListItem>
                                 <asp:ListItem Value="65" Text="65 year"></asp:ListItem>
                                 <asp:ListItem Value="66" Text="66 year"></asp:ListItem>
                                 <asp:ListItem Value="67" Text="67 year"></asp:ListItem>
                                 <asp:ListItem Value="68" Text="68 year"></asp:ListItem>
                                 <asp:ListItem Value="69" Text="69 year"></asp:ListItem>
                                 <asp:ListItem Value="70" Text="70 year"></asp:ListItem>
                                 <asp:ListItem Value="71" Text="71 year"></asp:ListItem>
                                 <asp:ListItem Value="72" Text="72 year"></asp:ListItem>
                                 <asp:ListItem Value="73" Text="73 year"></asp:ListItem>
                                 <asp:ListItem Value="74" Text="74 year"></asp:ListItem>
                                 <asp:ListItem Value="75" Text="75 year"></asp:ListItem>
                                                </asp:DropDownList>

                                                </div>

                     <%--                            <div class="col-sm-6 form-group">
                                                <label>Pay premium every:</label>
                                                <asp:DropDownList ID="year" class="form-control" runat="server">
                                                <asp:ListItem Value="1" Text="Month"></asp:ListItem>
                                 <asp:ListItem Value="2" Text="Year"></asp:ListItem>
                                      <asp:ListItem Value="3" Text="One Time Payment"></asp:ListItem>
                                
                                                </asp:DropDownList>

                                                </div>

                                                  <div class="col-sm-6 form-group">
                                                <label>Till the age of:</label>
                                                <asp:DropDownList ID="age1" class="form-control" runat="server">
                                               <asp:ListItem Value="27" Text="27 year"></asp:ListItem>
                                 <asp:ListItem Value="28" Text="28 year"></asp:ListItem>
                                 <asp:ListItem Value="29" Text="29 year"></asp:ListItem>
                                 <asp:ListItem Value="30" Text="30 year"></asp:ListItem>
                                 <asp:ListItem Value="31" Text="31 year"></asp:ListItem>
                                 <asp:ListItem Value="32" Text="32 year"></asp:ListItem>
                                 <asp:ListItem Value="33" Text="33 year"></asp:ListItem>
                                 <asp:ListItem Value="34" Text="34 year"></asp:ListItem>
                                 <asp:ListItem Value="35" Text="35 year"></asp:ListItem>
                                 <asp:ListItem Value="36" Text="36 year"></asp:ListItem>
                                 <asp:ListItem Value="37" Text="37 year"></asp:ListItem>
                                 <asp:ListItem Value="38" Text="38 year"></asp:ListItem>
                                 <asp:ListItem Value="39" Text="39 year"></asp:ListItem>
                                 <asp:ListItem Value="40" Text="40 year"></asp:ListItem>
                                 <asp:ListItem Value="41" Text="41 year"></asp:ListItem>
                                 <asp:ListItem Value="42" Text="42 year"></asp:ListItem>
                                 <asp:ListItem Value="43" Text="43 year"></asp:ListItem>
                                 <asp:ListItem Value="44" Text="44 year"></asp:ListItem>
                                 <asp:ListItem Value="45" Text="45 year"></asp:ListItem>
                                 <asp:ListItem Value="46" Text="46 year"></asp:ListItem>
                                 <asp:ListItem Value="47" Text="47 year"></asp:ListItem>
                                 <asp:ListItem Value="48" Text="48 year"></asp:ListItem>
                                 <asp:ListItem Value="49" Text="49 year"></asp:ListItem>
                                 <asp:ListItem Value="50" Text="50 year"></asp:ListItem>
                                 <asp:ListItem Value="51" Text="51 year"></asp:ListItem>
                                 <asp:ListItem Value="52" Text="52 year"></asp:ListItem>
                                 <asp:ListItem Value="53" Text="53 year"></asp:ListItem>
                                 <asp:ListItem Value="54" Text="54 year"></asp:ListItem>
                                 <asp:ListItem Value="55" Text="55 year"></asp:ListItem>
                                 <asp:ListItem Value="56" Text="56 year"></asp:ListItem>
                                 <asp:ListItem Value="57" Text="57 year"></asp:ListItem>
                                 <asp:ListItem Value="58" Text="58 year"></asp:ListItem>
                                 <asp:ListItem Value="59" Text="59 year"></asp:ListItem>
                                 <asp:ListItem Value="60" Text="60 year"></asp:ListItem>
                                 <asp:ListItem Value="61" Text="61 year"></asp:ListItem>
                                 <asp:ListItem Value="62" Text="62 year"></asp:ListItem>
                                 <asp:ListItem Value="63" Text="63 year"></asp:ListItem>
                                 <asp:ListItem Value="64" Text="64 year"></asp:ListItem>
                                 <asp:ListItem Value="65" Text="65 year"></asp:ListItem>
                                 <asp:ListItem Value="66" Text="66 year"></asp:ListItem>
                                 <asp:ListItem Value="67" Text="67 year"></asp:ListItem>
                                 <asp:ListItem Value="68" Text="68 year"></asp:ListItem>
                                 <asp:ListItem Value="69" Text="69 year"></asp:ListItem>
                                 <asp:ListItem Value="70" Text="70 year"></asp:ListItem>
                                 <asp:ListItem Value="71" Text="71 year"></asp:ListItem>
                                 <asp:ListItem Value="72" Text="72 year"></asp:ListItem>
                                 <asp:ListItem Value="73" Text="73 year"></asp:ListItem>
                                 <asp:ListItem Value="74" Text="74 year"></asp:ListItem>
                                 <asp:ListItem Value="75" Text="75 year"></asp:ListItem>
                                                </asp:DropDownList>

                                                </div>--%>

                                                    <div class="reset-button">
                                  
                                    <asp:Button ID="cal" class="btn btn-success" runat="server" Text="Calculate Premium" 
                                                            onclick="cal_Click"></asp:Button>
                                  
                                 
                                 </div>

                                     </div>
                     </div>
                 </div>
             </div>
             </section>
                
                <asp:Panel ID="Panel1" runat="server">
               <section class="content">
                    <div class="row">
                        <!-- Form controls -->
                        <div class="col-md-12">
                            <div class="panel panel-bd">
                              

                                    <div class="panel-body">

                                     <label>Your Premium(Yearly): 
                                        <asp:Label ID="Label1" runat="server" Text="Yearly"></asp:Label>
                                        <asp:Label ID="Label3" runat="server" Text="Rs/-"></asp:Label>
                                        </label><p style="color:red;">&nbsp;&nbsp;</p>

                                     
                                 
                                                     <div class="col-sm-4 form-group">

                  <label class="switch">
                      <asp:CheckBox ID="CheckBox1" runat="server" />
<%-- <input type="checkbox" id="togBtn">--%>
 <div class="slider round">
  <!--ADDED HTML -->
  <span class="on"> Pay Yearly</span>
  <span class="off">Pay Monthly</span>
  <!--END-->
 </div>
</label>
                    
                    </div>
                    <asp:UpdatePanel ID="c1" runat="server">
                    <ContentTemplate>
                   
               <div class="col-sm-4 form-group">

                  <label class="switch">
                      <asp:CheckBox ID="CheckBox2" runat="server" />
<%-- <input type="checkbox" id="togBtn">--%>
 <div class="slider round">
  <!--ADDED HTML -->
  <span class="on"> Pay Quarterly</span>
  <span class="off">Pay Twice in a Year</span>
  <!--END-->
 </div>
</label>
      </div>
       </ContentTemplate></asp:UpdatePanel>
          <div class="reset-button">
            <asp:Button ID="save"  runat="server" CommandArgument='<%# Eval("id") %>' OnClick="save_Click" class="btn btn-success" Text="Next" style="float:right;"></asp:Button>
              </div>
</div>

                     </div>
                 </div>
             </div>
             </section>
                
                </asp:Panel>
                
  <asp:Panel ID="Panel2" runat="server">
             
            <section class="content">
                    <div class="row">
                        <!-- Form controls -->
                        <div class="col-md-4">
                            <div class="panel panel-bd">
                                <div class="panel-heading">
                                  <div class="panel-title">
                                                <h4>Want to Pay Monthly?</h4>
                                            </div>
                                    </div>

                                    <div class="panel-body">
                                     
                                        <p><asp:Label ID="Label2" runat="server" Text="Monthly"></asp:Label>&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text="Rs/-"></asp:Label></p>

                                     </div>
                                     <div class="reset-button">
                                       <asp:Button ID="save1"  runat="server" OnClick="save1_Click" CommandArgument='<%# Eval("id") %>' class="btn btn-success" Text="Pay Now"></asp:Button>
                                                    </div>
                     </div>
                 </div>
             </div>
             </section>

                </asp:Panel>             

                
 <asp:Panel ID="Panel3" runat="server">
             
            <section class="content">
                    <div class="row">
                        <!-- Form controls -->
                        <div class="col-md-4">
                            <div class="panel panel-bd">
                                <div class="panel-heading">
                                  <div class="panel-title">
                                                <h4>Want to Pay Yearly?</h4>
                                            </div>
                                    </div>

                                    <div class="panel-body">
                                     
                                        <p><asp:Label ID="Label5" runat="server" Text="Yearly"></asp:Label>&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Text="Rs/-"></asp:Label></p>

                                     </div>
                                     <div class="reset-button">
                                       <asp:Button ID="save2"  runat="server" OnClick="save2_Click" CommandArgument='<%# Eval("id") %>' class="btn btn-success" Text="Pay Now" ></asp:Button>
                                                    </div>
                     </div>
                 </div>
             </div>
             </section>
                 
                </asp:Panel>


 <%--<asp:Panel ID="Panel4" runat="server">

            <section class="content">
                        <div class="row">
                            <!-- Form controls--> 
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
                                            <asp:Label ID="Label11" runat="server"></asp:Label>
                                            </div>
                                             
                                            <div class="col-sm-6 form-group">
                                                 <label>Date:</label>
                                      <asp:TextBox ID="date" class="form-control" TextMode="Date" placeholder="Date" runat="server"></asp:TextBox>
                                            <asp:Label ID="Label12" runat="server"></asp:Label>
                                            </div>
                                                   
                                           <div class="col-sm-6 form-group">
                                                   <label>Branch Name:</label>
                                      
                                      <asp:TextBox ID="bname" class="form-control" placeholder="Branch Name" runat="server"></asp:TextBox>
                                             <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" TargetControlID="bname" FilterType="UppercaseLetters , LowercaseLetters, Custom" ValidChars=" "></cc1:FilteredTextBoxExtender>
                                       <asp:Label ID="Label13" runat="server"></asp:Label>
                                            
                                            </div>
       
									<div class="col-sm-6 form-group">
									 <label>Account No:</label>
                                    
                                     <asp:TextBox ID="accno" class="form-control" placeholder="Account Number"  runat="server"></asp:TextBox>
		                                 <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" TargetControlID="accno" FilterType="Numbers"></cc1:FilteredTextBoxExtender>
									  <asp:Label ID="Label14" runat="server"></asp:Label>
									   
									</div>
								 
								<div class="col-sm-6 form-group">
								  <label>Account Name:</label>
                                  <asp:TextBox ID="accname"  class="form-control" placeholder="Name of Account Holder" runat="server"></asp:TextBox>
								  <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server" TargetControlID="accname" FilterType="UppercaseLetters , LowercaseLetters, Custom" ValidChars=" "></cc1:FilteredTextBoxExtender>
									  <asp:Label ID="Label15" runat="server"></asp:Label>
                                 
                                  </div>
								
									<div class="col-sm-6 form-group">
									  <label>Amount:</label>
                                      <asp:TextBox ID="amount" class="form-control" runat="server" readonly></asp:TextBox>
									 
									</div>
								 
								 
                                 <div class="reset-button">
                                             
                                                 <asp:Button ID="reset" runat="server"  class="btn btn-warning"  Text="Reset"></asp:Button>
                           <asp:Button ID="save3" OnClick="save3_Click"  runat="server" class="btn btn-success" Text="Save"></asp:Button>
                                         </div>
                                         
                                    </div>
                                 </div>
                             </div>
                         </div>
            </section>
            </asp:Panel>--%>

        

 <asp:Panel ID="Panel5" runat="server">
             
            <section class="content">
                    <div class="row">
                        <!-- Form controls -->
                        <div class="col-md-4">
                            <div class="panel panel-bd">
                                <div class="panel-heading">
                                  <div class="panel-title">
                                                <h4>Want to Pay Quarterly?</h4>
                                            </div>
                                    </div>

                                    <div class="panel-body">
                                     
                                        <p><asp:Label ID="Label7" runat="server"></asp:Label>&nbsp;&nbsp;<asp:Label ID="Label8" runat="server" Text="Rs/-"></asp:Label></p>

                                     </div>
                                     <div class="reset-button">
                                       <asp:Button ID="sav4"  runat="server" OnClick="save4_Click"  CommandArgument='<%# Eval("id") %>' class="btn btn-success" Text="Pay Now" ></asp:Button>
                                                    </div>
                     </div>
                 </div>
             </div>
             </section>
                 
                </asp:Panel>
                
            
 <asp:Panel ID="Panel6" runat="server">
             
            <section class="content">
                    <div class="row">
                        <!-- Form controls -->
                        <div class="col-md-4">
                            <div class="panel panel-bd">
                                <div class="panel-heading">
                                  <div class="panel-title">
                                                <h4>Want to Pay Twice in a Year?</h4>
                                            </div>
                                    </div>

                                    <div class="panel-body">
                                     
                                        <p><asp:Label ID="Label9" runat="server"></asp:Label>&nbsp;&nbsp;<asp:Label ID="Label10" runat="server" Text="Rs/-"></asp:Label></p>

                                     </div>
                                     <div class="reset-button">
                                       <asp:Button ID="save5" OnClick="save5_Click"  runat="server"  CommandArgument='<%# Eval("id") %>' class="btn btn-success" Text="Pay Now" ></asp:Button>
                                                    </div>
                     </div>
                 </div>
             </div>
             </section>
                 
                </asp:Panel>
                     
               </div>
        
            
        <!-- /.content -->
     </div> <!-- /.content-wrapper -->

</asp:Content>
