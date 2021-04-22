<%@ Page Title="" Language="C#" MasterPageFile="~/header-footer.Master" AutoEventWireup="true" CodeBehind="assign_plan.aspx.cs" Inherits="InsuranceHub.assign_plan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
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
            <li><a href="Dashboard.aspx"><i class="pe-7s-home"></i> Home</a></li>
            <li class="active">Dashboard</li>
         </ol>
      </div>
   </section>
   <!-- Main content -->
   <asp:Panel ID="Panel3" runat="server">
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
                     <div class="col-sm-6 form-group">
                        <label> Select Insurance You Want </label>
                        <asp:DropDownList ID="insuplan" class="form-control" runat="server"></asp:DropDownList>
                        <br><br>
                        <div class="reset-button">
                           <asp:Button ID="insubtn" class="btn btn-success" runat="server" Text="Save" 
                              style="float:right;" onclick="insubtn_Click"
                              ></asp:Button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
   </asp:Panel>
   <asp:Panel ID="panel1" runat="server">
      <section class="content">
         <div class="row">
            <!-- Form controls -->
            <div class="col-sm-12">
               <div class="panel panel-bd lobidrag">
                  <div class="panel-heading">
                     <div class="btn-group"> 
                        <a class="btn btn-primary" href="table.html"> <i class="fa fa-list"></i>Assign Plan List </a>  
                     </div>
                  </div>
                  <div class="panel-body">
                     <div class="col-sm-12">
                        <div class="col-sm-6 form-group">
                           <label>Gender</label>
                           <asp:RadioButton ID="radmale" runat="server" 
                              style="padding-left:10px;padding-right:10px;" Text='<div class="icon_box">
                              <i class="hvr-buzz-out fa fa-male"></i>
                              </div>' ></asp:RadioButton>
                           <asp:RadioButton ID="radfemale" runat="server" style="padding-left:10px;padding-right:10px;" Text='<div class="icon_box">
                              <i class="hvr-buzz-out fa fa-female"></i>
                              </div>'></asp:RadioButton>
                        </div>
                        <div class="col-sm-6 form-group">
                           <label>Enter Full Name</label>
                           <asp:TextBox ID="txtname" class="form-control" placeholder="Enter Lastname" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-sm-6 form-group">
                           <label>Mobile no:</label>
                           <asp:TextBox ID="txtcontactno" class="form-control" placeholder="Enter Mobile No:" runat="server"></asp:TextBox>
                        </div>
                        <div class="reset-button">
                           <asp:Button ID="save" class="btn btn-success" runat="server" Text="Save" 
                              style="float:right;" onclick="save_Click"
                              ></asp:Button>
                        </div>
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
      <div class="col-sm-12">
         <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
               <div class="btn-group"> 
                  <a class="btn btn-primary" href="table.html"> <i class="fa fa-list"></i>Assign Plan List </a>  
               </div>
            </div>
            <div class="panel-body">
               <div class="body">
                  <!-- tabs -->
                  <div class="sky-tabs sky-tabs-pos-top-left sky-tabs-anim-flip sky-tabs-response-to-icons">
                     <input type="radio" name="sky-tabs" checked id="sky-tab1" class="sky-tab-content-1">
                     <label for="sky-tab1"><span><span><img src="assets\dist\img\me.png" height=30px width=30px/>Me</span></span></label>
                     <input type="radio" name="sky-tabs" id="sky-tab2" class="sky-tab-content-2">
                     <label for="sky-tab2"><span><span><img src="assets\dist\img\hw.png" height=40px width=40px/>Me + My Wife</span></span></label>
                     <input type="radio" name="sky-tabs" id="sky-tab3" class="sky-tab-content-3">
                     <label for="sky-tab3"><span><span><img src="assets\dist\img\hw1.png" height=40px width=40px/>Me + My Wife and 1 Child</span></span></label>
                     <input type="radio" name="sky-tabs" id="sky-tab4" class="sky-tab-content-4">
                     <label for="sky-tab4"><span><span><img src="assets\dist\img\hw2.png" height=40px width=40px/>Me + My Wife and 2 Child</span></span></label>
                     <input type="radio" name="sky-tabs" id="sky-tab5" class="sky-tab-content-5">
                     <label for="sky-tab5"><span><span><img src="assets\dist\img\parents.png" height=40px width=40px/>My Parents</span></span></label>
                     <label class="switcher"><span><span><a href="#"><i class="icon-reorder"></i>Tabs</a></span></span></label>
                     <ul>
                        <li class="sky-tab-content-1">
                           <div class="typography">
                              <asp:DropDownList ID="DropDownList1" class="form-control" runat="server" 
                                 >
                                 <asp:ListItem Value="18 yr"></asp:ListItem>
                                 <asp:ListItem Value="19 yr"></asp:ListItem>
                                 <asp:ListItem Value="20 yr"></asp:ListItem>
                                 <asp:ListItem Value="21 yr"></asp:ListItem>
                                 <asp:ListItem Value="22 yr"></asp:ListItem>
                                 <asp:ListItem Value="23 yr"></asp:ListItem>
                                 <asp:ListItem Value="24 yr"></asp:ListItem>
                                 <asp:ListItem Value="25 yr"></asp:ListItem>
                                 <asp:ListItem Value="26 yr"></asp:ListItem>
                                 <asp:ListItem Value="27 yr"></asp:ListItem>
                                 <asp:ListItem Value="28 yr"></asp:ListItem>
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
                                 <asp:ListItem Value="100 yr"></asp:ListItem>
                              </asp:DropDownList>
                              <br>
                              <br>
                              <asp:UpdatePanel ID="l1" runat="server">
                                 <ContentTemplate>
                                    <asp:LinkButton ID="LinkButton1" class="btn btn-outline-primary" runat="server" OnClick="LinkButton1_Click"> <i class="hvr-buzz-out fa fa-plus-square-o"></i>Want to Add More Members??</asp:LinkButton>
                                 </ContentTemplate>
                              </asp:UpdatePanel>
                           </div>
                        </li>
                        <li class="sky-tab-content-2">
                           <div class="typography">
                              <asp:DropDownList ID="DropDownList2" class="form-control" runat="server" 
                                 >
                                 <asp:ListItem Value="18 yr"></asp:ListItem>
                                 <asp:ListItem Value="19 yr"></asp:ListItem>
                                 <asp:ListItem Value="20 yr"></asp:ListItem>
                                 <asp:ListItem Value="21 yr"></asp:ListItem>
                                 <asp:ListItem Value="22 yr"></asp:ListItem>
                                 <asp:ListItem Value="23 yr"></asp:ListItem>
                                 <asp:ListItem Value="24 yr"></asp:ListItem>
                                 <asp:ListItem Value="25 yr"></asp:ListItem>
                                 <asp:ListItem Value="26 yr"></asp:ListItem>
                                 <asp:ListItem Value="27 yr"></asp:ListItem>
                                 <asp:ListItem Value="28 yr"></asp:ListItem>
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
                                 <asp:ListItem Value="100 yr"></asp:ListItem>
                              </asp:DropDownList>
                              <br>
                              <br>
                              <asp:UpdatePanel ID="l2" runat="server">
                                 <ContentTemplate>
                                    <asp:LinkButton ID="LinkButton2" CSSClass="btn" runat="server" OnClick="LinkButton2_Click">Want to Add More Members??</asp:LinkButton>
                                 </ContentTemplate>
                              </asp:UpdatePanel>
                           </div>
                        </li>
                        <li class="sky-tab-content-3">
                           <div class="typography">
                              <asp:DropDownList ID="DropDownList3" class="form-control" runat="server" 
                                 >
                                 <asp:ListItem Value="3-12 Month"></asp:ListItem>
                                 <asp:ListItem Value="1 yr"></asp:ListItem>
                                 <asp:ListItem Value="2 yr"></asp:ListItem>
                                 <asp:ListItem Value="3 yr"></asp:ListItem>
                                 <asp:ListItem Value="4 yr"></asp:ListItem>
                                 <asp:ListItem Value="5 yr"></asp:ListItem>
                                 <asp:ListItem Value="6 yr"></asp:ListItem>
                                 <asp:ListItem Value="7 yr"></asp:ListItem>
                                 <asp:ListItem Value="8 yr"></asp:ListItem>
                                 <asp:ListItem Value="9 yr"></asp:ListItem>
                                 <asp:ListItem Value="10 yr"></asp:ListItem>
                                 <asp:ListItem Value="11 yr"></asp:ListItem>
                                 <asp:ListItem Value="12 yr"></asp:ListItem>
                                 <asp:ListItem Value="13 yr"></asp:ListItem>
                                 <asp:ListItem Value="14 yr"></asp:ListItem>
                                 <asp:ListItem Value="15 yr"></asp:ListItem>
                                 <asp:ListItem Value="16 yr"></asp:ListItem>
                                 <asp:ListItem Value="16 yr"></asp:ListItem>
                                 <asp:ListItem Value="17 yr"></asp:ListItem>
                                 <asp:ListItem Value="18 yr"></asp:ListItem>
                                 <asp:ListItem Value="19 yr"></asp:ListItem>
                                 <asp:ListItem Value="20 yr"></asp:ListItem>
                                 <asp:ListItem Value="21 yr"></asp:ListItem>
                                 <asp:ListItem Value="22 yr"></asp:ListItem>
                                 <asp:ListItem Value="23 yr"></asp:ListItem>
                                 <asp:ListItem Value="24 yr"></asp:ListItem>
                              </asp:DropDownList>
                           </div>
                           <br>
                           <br>
                           <div class="typography">
                              <asp:DropDownList ID="DropDownList4" class="form-control" runat="server" 
                                 >
                                 <asp:ListItem Value="18 yr"></asp:ListItem>
                                 <asp:ListItem Value="19 yr"></asp:ListItem>
                                 <asp:ListItem Value="20 yr"></asp:ListItem>
                                 <asp:ListItem Value="21 yr"></asp:ListItem>
                                 <asp:ListItem Value="22 yr"></asp:ListItem>
                                 <asp:ListItem Value="23 yr"></asp:ListItem>
                                 <asp:ListItem Value="24 yr"></asp:ListItem>
                                 <asp:ListItem Value="25 yr"></asp:ListItem>
                                 <asp:ListItem Value="26 yr"></asp:ListItem>
                                 <asp:ListItem Value="27 yr"></asp:ListItem>
                                 <asp:ListItem Value="28 yr"></asp:ListItem>
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
                                 <asp:ListItem Value="100 yr"></asp:ListItem>
                              </asp:DropDownList>
                              <br>
                              <br>
                              <asp:UpdatePanel ID="l3" runat="server">
                                 <ContentTemplate>
                                    <asp:LinkButton ID="LinkButton3" CSSClass="btn" runat="server" OnClick="LinkButton3_Click">Want to Add More Members??</asp:LinkButton>
                                 </ContentTemplate>
                              </asp:UpdatePanel>
                           </div>
                        </li>
                        <li class="sky-tab-content-4">
                           <div class="typography">
                              <asp:DropDownList ID="DropDownList5" class="form-control" runat="server" 
                                 >
                                 <asp:ListItem Value="18 yr"></asp:ListItem>
                                 <asp:ListItem Value="19 yr"></asp:ListItem>
                                 <asp:ListItem Value="20 yr"></asp:ListItem>
                                 <asp:ListItem Value="21 yr"></asp:ListItem>
                                 <asp:ListItem Value="22 yr"></asp:ListItem>
                                 <asp:ListItem Value="23 yr"></asp:ListItem>
                                 <asp:ListItem Value="24 yr"></asp:ListItem>
                                 <asp:ListItem Value="25 yr"></asp:ListItem>
                                 <asp:ListItem Value="26 yr"></asp:ListItem>
                                 <asp:ListItem Value="27 yr"></asp:ListItem>
                                 <asp:ListItem Value="28 yr"></asp:ListItem>
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
                                 <asp:ListItem Value="100 yr"></asp:ListItem>
                              </asp:DropDownList>
                           </div>
                           <br>
                           <br>
                           <div class="typography">
                              <asp:DropDownList ID="DropDownList6" class="form-control" runat="server" 
                                 >
                                 <asp:ListItem Value="3-12 Months"></asp:ListItem>
                                 <asp:ListItem Value="1 yr"></asp:ListItem>
                                 <asp:ListItem Value="2 yr"></asp:ListItem>
                                 <asp:ListItem Value="3 yr"></asp:ListItem>
                                 <asp:ListItem Value="4 yr"></asp:ListItem>
                                 <asp:ListItem Value="5 yr"></asp:ListItem>
                                 <asp:ListItem Value="6 yr"></asp:ListItem>
                                 <asp:ListItem Value="7 yr"></asp:ListItem>
                                 <asp:ListItem Value="8 yr"></asp:ListItem>
                                 <asp:ListItem Value="9 yr"></asp:ListItem>
                                 <asp:ListItem Value="10 yr"></asp:ListItem>
                                 <asp:ListItem Value="11 yr"></asp:ListItem>
                                 <asp:ListItem Value="12 yr"></asp:ListItem>
                                 <asp:ListItem Value="13 yr"></asp:ListItem>
                                 <asp:ListItem Value="14 yr"></asp:ListItem>
                                 <asp:ListItem Value="15 yr"></asp:ListItem>
                                 <asp:ListItem Value="16 yr"></asp:ListItem>
                                 <asp:ListItem Value="16 yr"></asp:ListItem>
                                 <asp:ListItem Value="17 yr"></asp:ListItem>
                                 <asp:ListItem Value="18 yr"></asp:ListItem>
                                 <asp:ListItem Value="19 yr"></asp:ListItem>
                                 <asp:ListItem Value="20 yr"></asp:ListItem>
                                 <asp:ListItem Value="21 yr"></asp:ListItem>
                                 <asp:ListItem Value="22 yr"></asp:ListItem>
                                 <asp:ListItem Value="23 yr"></asp:ListItem>
                                 <asp:ListItem Value="24 yr"></asp:ListItem>
                              </asp:DropDownList>
                              <br>
                              <br>
                              <asp:UpdatePanel ID="l4" runat="server">
                                 <ContentTemplate>
                                    <asp:LinkButton ID="LinkButton4" CSSClass="btn" runat="server" OnClick="LinkButton4_Click">Want to Add More Members??</asp:LinkButton>
                                 </ContentTemplate>
                              </asp:UpdatePanel>
                           </div>
                        </li>
                        <li class="sky-tab-content-5">
                           <div class="typography">
                              <asp:DropDownList ID="DropDownList7" class="form-control" runat="server" 
                                 >
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
                                 <asp:ListItem Value="100 yr"></asp:ListItem>
                              </asp:DropDownList>
                              <br>
                              <br>
                              <asp:UpdatePanel ID="l5" runat="server">
                                 <ContentTemplate>
                                    <asp:LinkButton ID="LinkButton5" runat="server" CSSClass="btn" OnClick="LinkButton5_Click">Want to Add More Members??</asp:LinkButton>
                                 </ContentTemplate>
                              </asp:UpdatePanel>
                           </div>
                        </li>
                     </ul>
                  </div>
                  <!--/ tabs -->
               </div>
   </asp:Panel>
   <asp:UpdatePanel ID="modal" runat="server">
   <ContentTemplate>
   <div class="modal right fade" id="myModal" >
   <div class="modal-dialog">
   <div class="modal-content">
   <div class="modal-header">
   <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
   <h1 class="modal-title">Add Other Members</h1>
   </div>
   <div class="modal-body">
   <p>
   <button class="form-control" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
   Self
   </button>
   </p>
   <div class="collapse" id="collapseExample">
   <div class="card card-body">
   <asp:DropDownList ID="ddlself" class="form-control"  runat="server">
   <asp:ListItem>Select Age</asp:ListItem>
   <asp:ListItem Value="18 yr"></asp:ListItem>
   <asp:ListItem Value="19 yr"></asp:ListItem>
   <asp:ListItem Value="20 yr"></asp:ListItem>
   <asp:ListItem Value="21 yr"></asp:ListItem>
   <asp:ListItem Value="22 yr"></asp:ListItem>
   <asp:ListItem Value="23 yr"></asp:ListItem>
   <asp:ListItem Value="24 yr"></asp:ListItem>
   <asp:ListItem Value="25 yr"></asp:ListItem>
   <asp:ListItem Value="26 yr"></asp:ListItem>
   <asp:ListItem Value="27 yr"></asp:ListItem>
   <asp:ListItem Value="28 yr"></asp:ListItem>
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
   <asp:ListItem Value="100 yr"></asp:ListItem>
   </asp:DropDownList>
   </div>
   </div>
   <p>
   <button class="form-control" type="button" data-toggle="collapse" data-target="#collapseExample1" aria-expanded="false" aria-controls="collapseExample">
   Spouse
   </button>
   </p>
   <div class="collapse" id="collapseExample1">
   <div class="card card-body">
   <asp:DropDownList ID="ddlspouse" class="form-control" runat="server">
   <asp:ListItem>Select Age</asp:ListItem>
   <asp:ListItem Value="18 yr"></asp:ListItem>
   <asp:ListItem Value="19 yr"></asp:ListItem>
   <asp:ListItem Value="20 yr"></asp:ListItem>
   <asp:ListItem Value="21 yr"></asp:ListItem>
   <asp:ListItem Value="22 yr"></asp:ListItem>
   <asp:ListItem Value="23 yr"></asp:ListItem>
   <asp:ListItem Value="24 yr"></asp:ListItem>
   <asp:ListItem Value="25 yr"></asp:ListItem>
   <asp:ListItem Value="26 yr"></asp:ListItem>
   <asp:ListItem Value="27 yr"></asp:ListItem>
   <asp:ListItem Value="28 yr"></asp:ListItem>
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
   <asp:ListItem Value="100 yr"></asp:ListItem>
   </asp:DropDownList>
   </div>
   </div>
   <p>
   <button class="form-control" type="button" data-toggle="collapse" data-target="#collapseExample2" aria-expanded="false" aria-controls="collapseExample">
   Son
   </button>
   </p>
   <div class="collapse" id="collapseExample2">
   <div class="card card-body">
   <asp:DropDownList ID="ddlson"  class="form-control" runat="server">
   <asp:ListItem>Select Age</asp:ListItem>
   <asp:ListItem Value="3-12 Months"></asp:ListItem>
   <asp:ListItem Value="1 yr"></asp:ListItem>
   <asp:ListItem Value="2 yr"></asp:ListItem>
   <asp:ListItem Value="3 yr"></asp:ListItem>
   <asp:ListItem Value="4 yr"></asp:ListItem>
   <asp:ListItem Value="5 yr"></asp:ListItem>
   <asp:ListItem Value="6 yr"></asp:ListItem>
   <asp:ListItem Value="7 yr"></asp:ListItem>
   <asp:ListItem Value="8 yr"></asp:ListItem>
   <asp:ListItem Value="9 yr"></asp:ListItem>
   <asp:ListItem Value="10 yr"></asp:ListItem>
   <asp:ListItem Value="11 yr"></asp:ListItem>
   <asp:ListItem Value="12 yr"></asp:ListItem>
   <asp:ListItem Value="13 yr"></asp:ListItem>
   <asp:ListItem Value="14 yr"></asp:ListItem>
   <asp:ListItem Value="15 yr"></asp:ListItem>
   <asp:ListItem Value="16 yr"></asp:ListItem>
   <asp:ListItem Value="17 yr"></asp:ListItem>
   <asp:ListItem Value="18 yr"></asp:ListItem>
   <asp:ListItem Value="19 yr"></asp:ListItem>
   <asp:ListItem Value="20 yr"></asp:ListItem>
   <asp:ListItem Value="21 yr"></asp:ListItem>
   <asp:ListItem Value="22 yr"></asp:ListItem>
   <asp:ListItem Value="23 yr"></asp:ListItem>
   <asp:ListItem Value="24 yr"></asp:ListItem>
   </asp:DropDownList>
   <%--   <asp:UpdatePanel ID="a" runat="server">
      <ContentTemplate>
      
      <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />
      </ContentTemplate></asp:UpdatePanel>--%>
   </div>
   <%--  <div class="card card-body">
      <asp:DropDownList ID="ddlson1"  class="form-control" runat="server" Enabled="False">
                                                       
      
      
                                                      <asp:ListItem>Select Age</asp:ListItem>
                                                       <asp:ListItem Value="3-12 Months"></asp:ListItem>
                                                      <asp:ListItem Value="1 yr"></asp:ListItem>
                                                      <asp:ListItem Value="2 yr"></asp:ListItem>
                                                      <asp:ListItem Value="3 yr"></asp:ListItem>
                                                      <asp:ListItem Value="4 yr"></asp:ListItem>
                                                      <asp:ListItem Value="5 yr"></asp:ListItem>
                                                      <asp:ListItem Value="6 yr"></asp:ListItem>
                                                      <asp:ListItem Value="7 yr"></asp:ListItem>
                                                      <asp:ListItem Value="8 yr"></asp:ListItem>
                                                      <asp:ListItem Value="9 yr"></asp:ListItem>
                                                      <asp:ListItem Value="10 yr"></asp:ListItem>
                                                      <asp:ListItem Value="11 yr"></asp:ListItem>
                                                      <asp:ListItem Value="12 yr"></asp:ListItem>
                                                      <asp:ListItem Value="13 yr"></asp:ListItem>
                                                      <asp:ListItem Value="14 yr"></asp:ListItem>
                                                      <asp:ListItem Value="15 yr"></asp:ListItem>
                                                      <asp:ListItem Value="16 yr"></asp:ListItem>
                                                      <asp:ListItem Value="17 yr"></asp:ListItem>
                                                      <asp:ListItem Value="18 yr"></asp:ListItem>
                                                      <asp:ListItem Value="19 yr"></asp:ListItem>
                                                      <asp:ListItem Value="20 yr"></asp:ListItem>
                                                      <asp:ListItem Value="21 yr"></asp:ListItem>
                                                      <asp:ListItem Value="22 yr"></asp:ListItem>
                                                      <asp:ListItem Value="23 yr"></asp:ListItem>
                                                      <asp:ListItem Value="24 yr"></asp:ListItem>
                                                      
                                                      
                                                       </asp:DropDownList>
      
      </div>
         <div class="card card-body">
      <asp:DropDownList ID="ddlson2"  class="form-control" runat="server" Enabled="False">
                                                       
      
      
                                                      <asp:ListItem>Select Age</asp:ListItem>
                                                       <asp:ListItem Value="3-12 Months"></asp:ListItem>
                                                      <asp:ListItem Value="1 yr"></asp:ListItem>
                                                      <asp:ListItem Value="2 yr"></asp:ListItem>
                                                      <asp:ListItem Value="3 yr"></asp:ListItem>
                                                      <asp:ListItem Value="4 yr"></asp:ListItem>
                                                      <asp:ListItem Value="5 yr"></asp:ListItem>
                                                      <asp:ListItem Value="6 yr"></asp:ListItem>
                                                      <asp:ListItem Value="7 yr"></asp:ListItem>
                                                      <asp:ListItem Value="8 yr"></asp:ListItem>
                                                      <asp:ListItem Value="9 yr"></asp:ListItem>
                                                      <asp:ListItem Value="10 yr"></asp:ListItem>
                                                      <asp:ListItem Value="11 yr"></asp:ListItem>
                                                      <asp:ListItem Value="12 yr"></asp:ListItem>
                                                      <asp:ListItem Value="13 yr"></asp:ListItem>
                                                      <asp:ListItem Value="14 yr"></asp:ListItem>
                                                      <asp:ListItem Value="15 yr"></asp:ListItem>
                                                      <asp:ListItem Value="16 yr"></asp:ListItem>
                                                      <asp:ListItem Value="17 yr"></asp:ListItem>
                                                      <asp:ListItem Value="18 yr"></asp:ListItem>
                                                      <asp:ListItem Value="19 yr"></asp:ListItem>
                                                      <asp:ListItem Value="20 yr"></asp:ListItem>
                                                      <asp:ListItem Value="21 yr"></asp:ListItem>
                                                      <asp:ListItem Value="22 yr"></asp:ListItem>
                                                      <asp:ListItem Value="23 yr"></asp:ListItem>
                                                      <asp:ListItem Value="24 yr"></asp:ListItem>
                                                      
                                                      
                                                       </asp:DropDownList>
      
      </div>
         <div class="card card-body">
      <asp:DropDownList ID="ddlson3"  class="form-control" runat="server" Enabled="False">
                                                       
      
      
                                                      <asp:ListItem>Select Age</asp:ListItem>
                                                       <asp:ListItem Value="3-12 Months"></asp:ListItem>
                                                      <asp:ListItem Value="1 yr"></asp:ListItem>
                                                      <asp:ListItem Value="2 yr"></asp:ListItem>
                                                      <asp:ListItem Value="3 yr"></asp:ListItem>
                                                      <asp:ListItem Value="4 yr"></asp:ListItem>
                                                      <asp:ListItem Value="5 yr"></asp:ListItem>
                                                      <asp:ListItem Value="6 yr"></asp:ListItem>
                                                      <asp:ListItem Value="7 yr"></asp:ListItem>
                                                      <asp:ListItem Value="8 yr"></asp:ListItem>
                                                      <asp:ListItem Value="9 yr"></asp:ListItem>
                                                      <asp:ListItem Value="10 yr"></asp:ListItem>
                                                      <asp:ListItem Value="11 yr"></asp:ListItem>
                                                      <asp:ListItem Value="12 yr"></asp:ListItem>
                                                      <asp:ListItem Value="13 yr"></asp:ListItem>
                                                      <asp:ListItem Value="14 yr"></asp:ListItem>
                                                      <asp:ListItem Value="15 yr"></asp:ListItem>
                                                      <asp:ListItem Value="16 yr"></asp:ListItem>
                                                      <asp:ListItem Value="17 yr"></asp:ListItem>
                                                      <asp:ListItem Value="18 yr"></asp:ListItem>
                                                      <asp:ListItem Value="19 yr"></asp:ListItem>
                                                      <asp:ListItem Value="20 yr"></asp:ListItem>
                                                      <asp:ListItem Value="21 yr"></asp:ListItem>
                                                      <asp:ListItem Value="22 yr"></asp:ListItem>
                                                      <asp:ListItem Value="23 yr"></asp:ListItem>
                                                      <asp:ListItem Value="24 yr"></asp:ListItem>
                                                      
                                                      
                                                       </asp:DropDownList>
      
      </div>--%>
   </div>
   <p>
   <button class="form-control" type="button" data-toggle="collapse" data-target="#collapseExample3" aria-expanded="false" aria-controls="collapseExample">
   Daughter
   </button>
   </p>
   <div class="collapse" id="collapseExample3">
   <div class="card card-body">
   <asp:DropDownList ID="ddldaughter"  class="form-control" runat="server">
   <asp:ListItem>Select Age</asp:ListItem>
   <asp:ListItem Value="3-12 Months"></asp:ListItem>
   <asp:ListItem Value="1 yr"></asp:ListItem>
   <asp:ListItem Value="2 yr"></asp:ListItem>
   <asp:ListItem Value="3 yr"></asp:ListItem>
   <asp:ListItem Value="4 yr"></asp:ListItem>
   <asp:ListItem Value="5 yr"></asp:ListItem>
   <asp:ListItem Value="6 yr"></asp:ListItem>
   <asp:ListItem Value="7 yr"></asp:ListItem>
   <asp:ListItem Value="8 yr"></asp:ListItem>
   <asp:ListItem Value="9 yr"></asp:ListItem>
   <asp:ListItem Value="10 yr"></asp:ListItem>
   <asp:ListItem Value="11 yr"></asp:ListItem>
   <asp:ListItem Value="12 yr"></asp:ListItem>
   <asp:ListItem Value="13 yr"></asp:ListItem>
   <asp:ListItem Value="14 yr"></asp:ListItem>
   <asp:ListItem Value="15 yr"></asp:ListItem>
   <asp:ListItem Value="16 yr"></asp:ListItem>
   <asp:ListItem Value="17 yr"></asp:ListItem>
   <asp:ListItem Value="18 yr"></asp:ListItem>
   <asp:ListItem Value="19 yr"></asp:ListItem>
   <asp:ListItem Value="20 yr"></asp:ListItem>
   <asp:ListItem Value="21 yr"></asp:ListItem>
   <asp:ListItem Value="22 yr"></asp:ListItem>
   <asp:ListItem Value="23 yr"></asp:ListItem>
   <asp:ListItem Value="24 yr"></asp:ListItem>
   </asp:DropDownList>
   </div>
   <%--    <div class="card card-body">
      <asp:DropDownList ID="ddldaughter1"  class="form-control" runat="server">
                                                    
      
      
                                                   <asp:ListItem>Select Age</asp:ListItem>
                                                    <asp:ListItem Value="3-12 Months"></asp:ListItem>
                                                   <asp:ListItem Value="1 yr"></asp:ListItem>
                                                   <asp:ListItem Value="2 yr"></asp:ListItem>
                                                   <asp:ListItem Value="3 yr"></asp:ListItem>
                                                   <asp:ListItem Value="4 yr"></asp:ListItem>
                                                   <asp:ListItem Value="5 yr"></asp:ListItem>
                                                   <asp:ListItem Value="6 yr"></asp:ListItem>
                                                   <asp:ListItem Value="7 yr"></asp:ListItem>
                                                   <asp:ListItem Value="8 yr"></asp:ListItem>
                                                   <asp:ListItem Value="9 yr"></asp:ListItem>
                                                   <asp:ListItem Value="10 yr"></asp:ListItem>
                                                   <asp:ListItem Value="11 yr"></asp:ListItem>
                                                   <asp:ListItem Value="12 yr"></asp:ListItem>
                                                   <asp:ListItem Value="13 yr"></asp:ListItem>
                                                   <asp:ListItem Value="14 yr"></asp:ListItem>
                                                   <asp:ListItem Value="15 yr"></asp:ListItem>
                                                   <asp:ListItem Value="16 yr"></asp:ListItem>
                                                   <asp:ListItem Value="17 yr"></asp:ListItem>
                                                   <asp:ListItem Value="18 yr"></asp:ListItem>
                                                   <asp:ListItem Value="19 yr"></asp:ListItem>
                                                   <asp:ListItem Value="20 yr"></asp:ListItem>
                                                   <asp:ListItem Value="21 yr"></asp:ListItem>
                                                   <asp:ListItem Value="22 yr"></asp:ListItem>
                                                   <asp:ListItem Value="23 yr"></asp:ListItem>
                                                   <asp:ListItem Value="24 yr"></asp:ListItem>
                                                   
                                                   
                                                    </asp:DropDownList>
      </div>
      <div class="card card-body">
      <asp:DropDownList ID="ddldaughter2"  class="form-control" runat="server">
                                                    
      
      
                                                   <asp:ListItem>Select Age</asp:ListItem>
                                                    <asp:ListItem Value="3-12 Months"></asp:ListItem>
                                                   <asp:ListItem Value="1 yr"></asp:ListItem>
                                                   <asp:ListItem Value="2 yr"></asp:ListItem>
                                                   <asp:ListItem Value="3 yr"></asp:ListItem>
                                                   <asp:ListItem Value="4 yr"></asp:ListItem>
                                                   <asp:ListItem Value="5 yr"></asp:ListItem>
                                                   <asp:ListItem Value="6 yr"></asp:ListItem>
                                                   <asp:ListItem Value="7 yr"></asp:ListItem>
                                                   <asp:ListItem Value="8 yr"></asp:ListItem>
                                                   <asp:ListItem Value="9 yr"></asp:ListItem>
                                                   <asp:ListItem Value="10 yr"></asp:ListItem>
                                                   <asp:ListItem Value="11 yr"></asp:ListItem>
                                                   <asp:ListItem Value="12 yr"></asp:ListItem>
                                                   <asp:ListItem Value="13 yr"></asp:ListItem>
                                                   <asp:ListItem Value="14 yr"></asp:ListItem>
                                                   <asp:ListItem Value="15 yr"></asp:ListItem>
                                                   <asp:ListItem Value="16 yr"></asp:ListItem>
                                                   <asp:ListItem Value="17 yr"></asp:ListItem>
                                                   <asp:ListItem Value="18 yr"></asp:ListItem>
                                                   <asp:ListItem Value="19 yr"></asp:ListItem>
                                                   <asp:ListItem Value="20 yr"></asp:ListItem>
                                                   <asp:ListItem Value="21 yr"></asp:ListItem>
                                                   <asp:ListItem Value="22 yr"></asp:ListItem>
                                                   <asp:ListItem Value="23 yr"></asp:ListItem>
                                                   <asp:ListItem Value="24 yr"></asp:ListItem>
                                                   
                                                   
                                                    </asp:DropDownList>
      </div>
      <div class="card card-body">
      <asp:DropDownList ID="ddldaughter3"  class="form-control" runat="server">
                                                    
      
      
                                                   <asp:ListItem>Select Age</asp:ListItem>
                                                    <asp:ListItem Value="3-12 Months"></asp:ListItem>
                                                   <asp:ListItem Value="1 yr"></asp:ListItem>
                                                   <asp:ListItem Value="2 yr"></asp:ListItem>
                                                   <asp:ListItem Value="3 yr"></asp:ListItem>
                                                   <asp:ListItem Value="4 yr"></asp:ListItem>
                                                   <asp:ListItem Value="5 yr"></asp:ListItem>
                                                   <asp:ListItem Value="6 yr"></asp:ListItem>
                                                   <asp:ListItem Value="7 yr"></asp:ListItem>
                                                   <asp:ListItem Value="8 yr"></asp:ListItem>
                                                   <asp:ListItem Value="9 yr"></asp:ListItem>
                                                   <asp:ListItem Value="10 yr"></asp:ListItem>
                                                   <asp:ListItem Value="11 yr"></asp:ListItem>
                                                   <asp:ListItem Value="12 yr"></asp:ListItem>
                                                   <asp:ListItem Value="13 yr"></asp:ListItem>
                                                   <asp:ListItem Value="14 yr"></asp:ListItem>
                                                   <asp:ListItem Value="15 yr"></asp:ListItem>
                                                   <asp:ListItem Value="16 yr"></asp:ListItem>
                                                   <asp:ListItem Value="17 yr"></asp:ListItem>
                                                   <asp:ListItem Value="18 yr"></asp:ListItem>
                                                   <asp:ListItem Value="19 yr"></asp:ListItem>
                                                   <asp:ListItem Value="20 yr"></asp:ListItem>
                                                   <asp:ListItem Value="21 yr"></asp:ListItem>
                                                   <asp:ListItem Value="22 yr"></asp:ListItem>
                                                   <asp:ListItem Value="23 yr"></asp:ListItem>
                                                   <asp:ListItem Value="24 yr"></asp:ListItem>
                                                   
                                                   
                                                    </asp:DropDownList>
      </div>--%>
   </div>
   <p>
   <button class="form-control" type="button" data-toggle="collapse" data-target="#collapseExample4" aria-expanded="false" aria-controls="collapseExample">
   Father
   </button>
   </p>
   <div class="collapse" id="collapseExample4">
   <div class="card card-body">
   <asp:DropDownList ID="ddlfather" class="form-control"  runat="server">
   <asp:ListItem>Select Age</asp:ListItem>
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
   <asp:ListItem Value="100 yr"></asp:ListItem>
   </asp:DropDownList>
   </div>
   </div>
   <p>
   <button class="form-control" type="button" data-toggle="collapse" data-target="#collapseExample5" aria-expanded="false" aria-controls="collapseExample">
   Mother
   </button>
   </p>
   <div class="collapse" id="collapseExample5">
   <div class="card card-body">
   <asp:DropDownList ID="ddlmother" class="form-control"  runat="server">
   <asp:ListItem>Select Age</asp:ListItem>
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
   <asp:ListItem Value="100 yr"></asp:ListItem>
   </asp:DropDownList>
   </div>
   </div>
   <p>
   <button class="form-control" type="button" data-toggle="collapse" data-target="#collapseExample6" aria-expanded="false" aria-controls="collapseExample">
   Grand Father
   </button>
   </p>
   <div class="collapse" id="collapseExample6">
   <div class="card card-body">
   <asp:DropDownList ID="ddlgf" class="form-control" runat="server">
   <asp:ListItem>Select Age</asp:ListItem>
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
   <asp:ListItem Value="100 yr"></asp:ListItem>
   </asp:DropDownList>
   </div>
   </div>
   <p>
   <button class="form-control" type="button" data-toggle="collapse" data-target="#collapseExample7" aria-expanded="false" aria-controls="collapseExample">
   Grand Mother
   </button>
   </p>
   <div class="collapse" id="collapseExample7">
   <div class="card card-body">
   <asp:DropDownList ID="ddlgm" class="form-control"  runat="server">
   <asp:ListItem>Select Age</asp:ListItem>
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
   <asp:ListItem Value="100 yr"></asp:ListItem>
   </asp:DropDownList>
   </div>
   </div>                                     
   <p>
   <button class="form-control" type="button" data-toggle="collapse" data-target="#collapseExample8" aria-expanded="false" aria-controls="collapseExample">
   Father in-law
   </button>
   </p>
   <div class="collapse" id="collapseExample8">
   <div class="card card-body">
   <asp:DropDownList ID="ddlfil" class="form-control" runat="server">
   <asp:ListItem>Select Age</asp:ListItem>
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
   <asp:ListItem Value="100 yr"></asp:ListItem>
   </asp:DropDownList>
   </div>
   </div>
   <p>
   <button class="form-control" type="button" data-toggle="collapse" data-target="#collapseExample9" aria-expanded="false" aria-controls="collapseExample">
   Mother in-law
   </button>
   </p>
   <div class="collapse" id="collapseExample9">
   <div class="card card-body">
   <asp:DropDownList ID="ddlmil" class="form-control" runat="server">
   <asp:ListItem>Select Age</asp:ListItem>
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
   <asp:ListItem Value="100 yr"></asp:ListItem>
   </asp:DropDownList>
   </div>
   </div>
   </div>
   </div>
   <div class="modal-footer">
   <asp:Button ID="close" class="btn btn-warning" runat="server" Text="Close" data-dismiss="modal"
      ></asp:Button>
   <asp:Button ID="update" class="btn btn-success" runat="server" Text="Continue"
      ></asp:Button>
   </div>
   </div>
   </div>
   </div>
   </ContentTemplate>
   </asp:UpdatePanel>
   <!-- /.content -->
   </div> <!-- /.content-wrapper -->
   </div>
</asp:Content>
