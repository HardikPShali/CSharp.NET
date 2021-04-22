<%@ Page Title="" Language="C#" MasterPageFile="~/header-footer.Master" AutoEventWireup="true" CodeBehind="planassign.aspx.cs" Inherits="InsuranceHub.planassign" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:ScriptManager ID="abc" runat="server"></asp:ScriptManager>
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
         <h1>Assign Plan</h1>
         <small>Assign Plan list</small>
         <ol class="breadcrumb hidden-xs">
            <li><a href="index.html"><i class="pe-7s-home"></i> Home</a></li>
            <li class="active">Dashboard</li>
         </ol>
      </div>
   </section>
    <asp:Panel ID="Panel1" runat="server">
     <section class="content">
      <div class="row">
      <!-- Form controls -->
      <div class="col-sm-12">
         <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
               <div class="btn-group"> 
                  <a class="btn btn-primary"> <i class="fa fa-list"></i>Assign Plan Process </a>  
               </div>
            </div>
            <div class="panel-body">
               <div class="body">

    <div class="sky-tabs sky-tabs-pos-top-left sky-tabs-anim-flip sky-tabs-response-to-icons">				
				<input type="radio" name="sky-tabs" checked id="sky-tab1" class="sky-tab-content-1">
				<label for="sky-tab1"><span><span><i class="hvr-buzz-out fa fa-umbrella"></i>Term Life Insurance</span></span></label>
				
				<input type="radio" name="sky-tabs" id="sky-tab2" class="sky-tab-content-2">
				<label for="sky-tab2"><span><span><i class="hvr-buzz-out fa fa-heartbeat"></i>Health Insurance</span></span></label>
				
				
				
				<label class="switcher"><span><span><a href="#"><i class="icon-reorder"></i>Tabs</a></span></span></label>
				
				<ul>
					<li class="sky-tab-content-1">					
						<div class="typography">
                        <asp:Panel ID="Panel2" runat="server">
							<div class="col-sm-6 form-group">
                                          
                                      <asp:TextBox ID="txtname" class="form-control" placeholder="Full Name" runat="server"></asp:TextBox>
                                            <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" TargetControlID="txtname" FilterType="UppercaseLetters , LowercaseLetters, Custom" ValidChars=" "></cc1:FilteredTextBoxExtender>
                                             <asp:Label ID="Label1" runat="server"></asp:Label>
                                            </div>
                                             
                                            <div class="col-sm-6 form-group">
                                                 <asp:DropDownList ID="gender" class="form-control" runat="server">
                                                 <asp:ListItem Value="Gender" Selected></asp:ListItem>
                                                 <asp:ListItem Value="Male"></asp:ListItem>
                                                 <asp:ListItem Value="Female"></asp:ListItem>
                                                 </asp:DropDownList>
                                                    <asp:Label ID="Label6" runat="server"></asp:Label>
                                            
                                            </div>
                                             
                                            <div class="col-sm-6 form-group">
                                                 <asp:DropDownList ID="ls" class="form-control" runat="server">
                                                 <asp:ListItem Value="Your life stage" Selected></asp:ListItem>
                                                 <asp:ListItem Value="Single"></asp:ListItem>
                                                 <asp:ListItem Value="Married"></asp:ListItem>
                                                 <asp:ListItem Value="Married with kids"></asp:ListItem>
                                                 <asp:ListItem Value="Retired"></asp:ListItem>
                                                 </asp:DropDownList>
         <asp:Label ID="Label7" runat="server"></asp:Label>
                                            
                                            </div>
                                             
                                            <div class="col-sm-6 form-group">
                                                 <asp:TextBox ID="bdate" type="text" TextMode=Date class="form-control" placeholder="DD/MM/YYYY" runat="server"></asp:TextBox>
                                                 
                                                 <asp:Label ID="Label2" runat="server"></asp:Label>
                                            
                                            </div>
                                             <div class="col-sm-6 form-group">
                                                 <asp:TextBox ID="mno" placeholder="Mobile No." class="form-control" runat="server"></asp:TextBox>
                                                <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" TargetControlID="mno" FilterType="Numbers"></cc1:FilteredTextBoxExtender>
                                             <asp:Label ID="Label3" runat="server"></asp:Label>
                                            </div>
                                                 <div class="col-sm-6 form-group">
                                                 <asp:DropDownList ID="edu" class="form-control" runat="server">
                                                 <asp:ListItem Value="Education" Selected></asp:ListItem>
                                                 <asp:ListItem Value="Graduate"></asp:ListItem>
                                                 <asp:ListItem Value="Non Graduate"></asp:ListItem>
                                                 <asp:ListItem Value="Post Graduate"></asp:ListItem>
                                                 
                                                 </asp:DropDownList>
                                                <asp:Label ID="Label8" runat="server"></asp:Label>
                                            
                                            </div>

                                             <div class="reset-button">
                                             
                                                 
                           <asp:Button ID="save"  runat="server" class="btn btn-success" Text="View Quotes" onclick="save_Click"></asp:Button>
                                         </div>
                                            </asp:Panel>
                                            <asp:Panel ID="Panel3" runat="server">
                                           <label>Do you smoke or chew tobacco?</label>
                                          
        <asp:RadioButton ID="smokey" GroupName="smoke" runat="server" 
                              style="padding-left:10px;padding-right:10px;" Text="YES"></asp:RadioButton>

                           <asp:RadioButton ID="smokeyn" GroupName="smoke" runat="server" style="padding-left:10px;padding-right:10px;" Text="NO"></asp:RadioButton>
                           <asp:Label ID="Label4" runat="server"></asp:Label>
                             
                            <div class="reset-button">
                           
                           <asp:Button ID="save1" class="btn btn-success" runat="server" OnClick="save1_Click" Text="Next" 
                              style="float:right;"
                              ></asp:Button>
                        </div>
                                            </asp:Panel>

                                            <asp:Panel ID="Panel4" runat="server">
                                            
                                            <label>What's your Annual income?</label>
                                            <asp:DropDownList ID="annualincome" class="form-control" runat="server">
                                            <asp:ListItem Value="Select Annual Income" Selected></asp:ListItem>
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
                                            <asp:ListItem Value="99+ Lakh"></asp:ListItem>


                                            </asp:DropDownList>
                                            <asp:Label ID="Label5" runat="server"></asp:Label>
                                            <br />
                                            <br />
                                            <div class="reset-button">
                           <asp:Button ID="save2" class="btn btn-success" runat="server" Text="Save" 
                              style="float:right;" onclick="save2_Click"
                              ></asp:Button>
                        </div>
                                            </asp:Panel>


                                            <asp:Panel ID="Panel5" runat="server">
                                            <div class="col-sm-6 form-group">
                                            <label>Cover Value?</label>
                                            <asp:DropDownList ID="Cover" class="form-control" runat="server">
                                            <asp:ListItem Value="1000000" Text="10 Lakhs"></asp:ListItem>
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
                                            <asp:ListItem Value="13000000" Text="1.3 Crore"></asp:ListItem>
                                            <asp:ListItem Value="14000000" Text="1.4 Crore"></asp:ListItem>
                                            <asp:ListItem Value="15000000" Text="1.5 Crore"></asp:ListItem>

                                            </asp:DropDownList>
                                           
                                            </div>

                                              <div class="col-sm-6 form-group">
                                            <label>Cover Age?</label>
                                            <asp:DropDownList ID="cage" class="form-control" runat="server">
                                           <asp:ListItem Value="29 yr"></asp:ListItem>
                                 <asp:ListItem Value="30 yr"></asp:ListItem>
                                 <asp:ListItem Value="31 yr"></asp:ListItem>
                                 <asp:ListItem Value="32 yr"></asp:ListItem>
                                 <asp:ListItem Value="33 yr"></asp:ListItem>
                                 <asp:ListItem Value="34 yr"></asp:ListItem>
                                 <asp:ListItem Value="35 yr"></asp:ListItem>
                                 <asp:ListItem Value="36 yr"></asp:ListItem>
                                 <asp:ListItem Value="37 yr"></asp:ListItem>
                                 <asp:ListItem Value="38 yr"></asp:ListItem>
                                 <asp:ListItem Value="39 yr"></asp:ListItem>
                                 <asp:ListItem Value="40 yr"></asp:ListItem>
                                 <asp:ListItem Value="41 yr"></asp:ListItem>
                                 <asp:ListItem Value="42 yr"></asp:ListItem>
                                 <asp:ListItem Value="43 yr"></asp:ListItem>
                                 <asp:ListItem Value="44 yr"></asp:ListItem>
                                 <asp:ListItem Value="45 yr"></asp:ListItem>
                                 <asp:ListItem Value="46 yr"></asp:ListItem>
                                 <asp:ListItem Value="47 yr"></asp:ListItem>
                                 <asp:ListItem Value="48 yr"></asp:ListItem>
                                 <asp:ListItem Value="49 yr"></asp:ListItem>
                                 <asp:ListItem Value="50 yr"></asp:ListItem>
                                 <asp:ListItem Value="51 yr"></asp:ListItem>
                                 <asp:ListItem Value="52 yr"></asp:ListItem>
                                 <asp:ListItem Value="53 yr"></asp:ListItem>
                                 <asp:ListItem Value="54 yr"></asp:ListItem>
                                 <asp:ListItem Value="55 yr"></asp:ListItem>
                                 <asp:ListItem Value="56 yr"></asp:ListItem>
                                 <asp:ListItem Value="57 yr"></asp:ListItem>
                                 <asp:ListItem Value="58 yr"></asp:ListItem>
                                 <asp:ListItem Value="59 yr"></asp:ListItem>
                                 <asp:ListItem Value="60 yr"></asp:ListItem>
                                 <asp:ListItem Value="61 yr"></asp:ListItem>
                                 <asp:ListItem Value="62 yr"></asp:ListItem>
                                 <asp:ListItem Value="63 yr"></asp:ListItem>
                                 <asp:ListItem Value="64 yr"></asp:ListItem>
                                 <asp:ListItem Value="65 yr"></asp:ListItem>
                                 <asp:ListItem Value="66 yr"></asp:ListItem>
                                 <asp:ListItem Value="67 yr"></asp:ListItem>
                                 <asp:ListItem Value="68 yr"></asp:ListItem>
                                 <asp:ListItem Value="69 yr"></asp:ListItem>
                                 <asp:ListItem Value="70 yr"></asp:ListItem>
                                 <asp:ListItem Value="71 yr"></asp:ListItem>
                                 <asp:ListItem Value="72 yr"></asp:ListItem>
                                 <asp:ListItem Value="73 yr"></asp:ListItem>
                                 <asp:ListItem Value="74 yr"></asp:ListItem>
                                 <asp:ListItem Value="75 yr"></asp:ListItem>
                                 <asp:ListItem Value="76 yr"></asp:ListItem>
                                 <asp:ListItem Value="77 yr"></asp:ListItem>
                                 <asp:ListItem Value="78 yr"></asp:ListItem>
                                 <asp:ListItem Value="79 yr"></asp:ListItem>
                                 <asp:ListItem Value="80 yr"></asp:ListItem>
                                 <asp:ListItem Value="81 yr"></asp:ListItem>
                                 <asp:ListItem Value="82 yr"></asp:ListItem>
                                 <asp:ListItem Value="83 yr"></asp:ListItem>
                                 <asp:ListItem Value="84 yr"></asp:ListItem>
                                 <asp:ListItem Value="85 yr"></asp:ListItem>
                                 <asp:ListItem Value="86 yr"></asp:ListItem>
                                 <asp:ListItem Value="87 yr"></asp:ListItem>
                                 <asp:ListItem Value="88 yr"></asp:ListItem>
                                 <asp:ListItem Value="89 yr"></asp:ListItem>
                                 <asp:ListItem Value="90 yr"></asp:ListItem>
                                 <asp:ListItem Value="91 yr"></asp:ListItem>
                                 <asp:ListItem Value="92 yr"></asp:ListItem>
                                 <asp:ListItem Value="93 yr"></asp:ListItem>
                                 <asp:ListItem Value="94 yr"></asp:ListItem>
                                 <asp:ListItem Value="95 yr"></asp:ListItem>
                                 <asp:ListItem Value="96 yr"></asp:ListItem>
                                 <asp:ListItem Value="97 yr"></asp:ListItem>
                                 <asp:ListItem Value="98 yr"></asp:ListItem>
                                 <asp:ListItem Value="99 yr"></asp:ListItem>
                                            </asp:DropDownList>
                                            
                                            </div>

                                               <div class="reset-button">
                                               <asp:LinkButton ID="save3" class="btn btn-success"  runat="server" CommandArgument='<%# Eval("id") %>'  onclick="save3_Click"><p style="color:white;">Compare Quotes</p></asp:LinkButton>
                                              
                                          
                        
                        </div>
                                            
                                            </asp:Panel>

						</div>
					</li>
					
					<li class="sky-tab-content-2">
						<div class="typography">
							<asp:Panel ID="Panel6" runat="server">
							<div class="col-sm-6 form-group">
                                          
            <asp:TextBox ID="txtiname" class="form-control" placeholder="*Full Name" runat="server"></asp:TextBox>
            <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" TargetControlID="txtiname" FilterType="UppercaseLetters , LowercaseLetters, Custom" ValidChars=" "></cc1:FilteredTextBoxExtender>
            <asp:Label ID="Label9" runat="server"></asp:Label>                                
                </div>
                                             
                                         
                                             
                <div class="col-sm-6 form-group">
         <asp:TextBox ID="txtmobileno" type="text" class="form-control" placeholder="*Mobile Number" runat="server"></asp:TextBox>
        <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server" TargetControlID="txtmobileno" FilterType="Numbers"></cc1:FilteredTextBoxExtender>
         <asp:Label ID="Label10" runat="server"></asp:Label>                                   
                </div>
                    <div class="col-sm-6 form-group">
        <asp:TextBox ID="txtemailid" placeholder="*Email Id" class="form-control" runat="server"></asp:TextBox>
        <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender5" runat="server" TargetControlID="txtemailid"  FilterType="Numbers, LowercaseLetters, Custom" ValidChars=".@/"></cc1:FilteredTextBoxExtender>
         <asp:Label ID="Label11" runat="server"></asp:Label>                                   
                </div>
                        <div class="col-sm-6 form-group">
         <asp:TextBox ID="txtcity" placeholder="*City" class="form-control" runat="server"></asp:TextBox>
         <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender6" runat="server" TargetControlID="txtcity" FilterType="UppercaseLetters , LowercaseLetters, Custom" ValidChars=" "></cc1:FilteredTextBoxExtender>
         <asp:Label ID="Label12" runat="server"></asp:Label>
                                            
                                            
                </div>
                        <div class="col-sm-12 form-group">
                                                    
         
                <label id="l1"    class="form-control">Select Sum Insured</label>
                                            
                                            
                                            
                                                
                        <asp:DropDownList ID="ddlsuminsured" class="form-control" runat="server">
                        <asp:ListItem>100000</asp:ListItem>
                        <asp:ListItem>200000</asp:ListItem>
                        <asp:ListItem>300000</asp:ListItem>
                        <asp:ListItem>400000</asp:ListItem>
                        <asp:ListItem>500000</asp:ListItem>
                        <asp:ListItem>600000</asp:ListItem>
                        <asp:ListItem>700000</asp:ListItem>
                        <asp:ListItem>800000</asp:ListItem>
                        <asp:ListItem>900000</asp:ListItem>
                        <asp:ListItem>1000000</asp:ListItem>
                        <asp:ListItem>1100000</asp:ListItem>
                        <asp:ListItem>1200000</asp:ListItem>
                        <asp:ListItem>1300000</asp:ListItem>
                        <asp:ListItem>1400000</asp:ListItem>
                        <asp:ListItem>1500000</asp:ListItem>
                        <asp:ListItem>1600000</asp:ListItem>
                        <asp:ListItem>1700000</asp:ListItem>
                        <asp:ListItem>1800000</asp:ListItem>
                        <asp:ListItem>1900000</asp:ListItem>
                        <asp:ListItem>2000000</asp:ListItem>
                        <asp:ListItem>2100000</asp:ListItem>
                        <asp:ListItem>2200000</asp:ListItem>
                        <asp:ListItem>2300000</asp:ListItem>
                        <asp:ListItem>2400000</asp:ListItem>
                        <asp:ListItem>2500000</asp:ListItem>
                                                   
                        </asp:DropDownList>
         
                                            
                </div>
                                            

                    <div class="reset-button">
                                             
                                                 
<asp:Button ID="Button1"  runat="server" class="btn btn-success" Text="View Quotes" onclick="save4_Click"></asp:Button>
                </div>
                </asp:Panel>
						</div>
					</li>
					
				
				</ul>
			</div>
			<!--/ tabs -->
            </div>
            </div>
            </div>
            </div>
            </div>
            </section>
    </asp:Panel>
    </div>
    </div>
</asp:Content>
