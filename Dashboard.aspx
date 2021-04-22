<%@ Page Title="" Language="C#" MasterPageFile="~/header-footer.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="InsuranceHub.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:ScriptManager ID="sc" runat="server"></asp:ScriptManager>
<script type ="text/javascript">

    windowwindow.onload = window.history.forward(0);
  
</script>
<div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                     <form action="#" method="get" class="sidebar-form search-box pull-right hidden-md hidden-lg hidden-sm">
                         
                        </form>   
                    <div class="header-icon">
                        <i class="fa fa-tachometer"></i>
                    </div>
                    <div class="header-title">
                        <h1> Dashboard</h1>
                        <small> Dashboard features</small>
                        <ol class="breadcrumb hidden-xs">
                            <li><a href="Dashboard.aspx"><i class="pe-7s-home"></i> Home</a></li>
                            <li class="active">Dashboard</li>
                        </ol>
                    </div>
                </section>
            <!-- Main content -->
                <section class="content">
                    <div class="row">
                  <a href="termtotalcollection.aspx">
                        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-3">

                       
                            <div class="panel panel-bd cardbox">
                                <div class="panel-body">
                            
                                    <div class="statistic-box">
                                        <h2><span class="count-number"><asp:Label ID="cnttotal" runat="server"></asp:Label></span>
                                        </h2>
                                    </div>
                                    <div class="items pull-left">
                                        <i class="fa fa-users fa-2x"></i>
                                        <h4>Total Collection </h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                          </a>
                          <a href="termtodaycollection.aspx">
                        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-3">
                            <div class="panel panel-bd cardbox">
                                <div class="panel-body">
                                    <div class="statistic-box">
                                        <h2><span class="count-number"><asp:Label ID="cnttoday" runat="server"></asp:Label></span>
                                        </h2>
                                    </div>
                                    <div class="items pull-left">
                                        <i class="fa fa-users fa-2x"></i>
                                        <h4>Today's Collection</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </a>
                       <a href="termexpirypoldata.aspx">
                        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-3">
                            <div class="panel panel-bd cardbox">
                                <div class="panel-body">
                                    <div class="statistic-box">
                                        <h2><span class="count-number"><asp:Label ID="cntex" runat="server"></asp:Label></span>
                                        </h2>
                                    </div>
                                    <div class="items pull-left">
                                        <i class="fa fa-user-circle fa-2x"></i>
                                        <h4>Expire Policy Data</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </a>
            
                     <%--   <div class="col-xs-6 col-sm-6 col-md-6 col-lg-3">
                            <div class="panel panel-bd cardbox">
                                <div class="panel-body">
                                    <div class="statistic-box">
                                        <h2><span class="count-number">9</span>
                                        </h2>
                                    </div>
                                    <div class="items pull-left">
                                        <i class="fa fa-users fa-2x"></i>
                                        <h4>Active Nurses</h4>
                                    </div>
                                </div>
                            </div>
                        </div>--%>
            
                  
                   
                    
                    </div>
               <!-- /.row -->
                </section> <!-- /.content -->
                
                <section class="content">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="panel panel-bd">
                                <div class="panel-heading">
                                    <h4><strong><center>Records Of Last 3 Months</center></strong></h4>    
                                </div>
                                <div class="panel-body">
                              
                             <div class="table-responsive">
                           <table class="table table-bordered table-hover">
                              <fieldset>
                                 <asp:Repeater ID="rpt" runat="server">
                                    <HeaderTemplate>
                                       <table id="example1" class="table table-bordered table-striped">
                                          <tr>
                                          <th>Policy No
                                             </th>
                                             <th>Name
                                             </th>
                                             <th>Gender
                                             </th>
                                             <th>Lifestage
                                             </th>
                                             <th>BirthDay
                                             </th>
                                             <th>Mobile No.
                                             </th>
                                             <th>Education
                                             </th>
                                             <th>Smoke
                                             </th>
                                              <th>Income
                                             </th>
                                               <th>Occupation
                                             </th>
                                               <th>Address
                                             </th>
                                             <th>Amount
                                             </th>
                                               <th>Payment Due
                                             </th>
                                             <th>Renew
                                             </th>
                                          </tr>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                    <tr>
                                    <td>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("policy_no") %>'></asp:Label>
                                    </td>
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
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("smoke") %>'></asp:Label>
                                    
                                    </td>
                                    <td>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("income") %>'></asp:Label>
                                    </td>
                                      <td>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("occupation") %>'></asp:Label>
                                    </td>
                                      <td>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                                    </td>
                                    <td>
                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("amount") %>'></asp:Label>
                                    </td>
                                      <td>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("date","{0:MM/dd/yyyy}")  %>'></asp:Label>
                                    </td>
                                      <td>
                                      <div class="panel-footer text-left">
                                      <asp:UpdatePanel ID="se" runat="server">
                                      <ContentTemplate>
                                
                                       <asp:LinkButton ID="renew" class="btn btn-info" OnClick="renew_Click" CommandArgument='<%# Eval("id") %>' runat="server"><span class="fa fa-refresh"></span></asp:LinkButton>
                                            </ContentTemplate>
                                            <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="renew" EventName="Click" />
                                            </Triggers>
                                            </asp:UpdatePanel>
                                    </div>
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
    
    </div>
</div>
</div>
</div>
</section>

 
                <section class="content">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="panel panel-bd">
                                <div class="panel-heading">
                                    <h4><strong><center>Records Of Last Month</center></strong></h4>    
                                </div>
                                <div class="panel-body">
                              
                             <div class="table-responsive">
                           <table class="table table-bordered table-hover">
                              <fieldset>
                                 <asp:Repeater ID="rpt1" runat="server">
                                    <HeaderTemplate>
                                       <table id="example1" class="table table-bordered table-striped">
                                          <tr>
                                          <th>Policy No
                                             </th>
                                             <th>Name
                                             </th>
                                             <th>Gender
                                             </th>
                                             <th>Lifestage
                                             </th>
                                             <th>BirthDay
                                             </th>
                                             <th>Mobile No.
                                             </th>
                                             <th>Education
                                             </th>
                                             <th>Smoke
                                             </th>
                                              <th>Income
                                             </th>
                                               <th>Occupation
                                             </th>
                                               <th>Address
                                             </th>
                                             <th>Amount
                                             </th>
                                               <th>Payment Due
                                             </th>
                                             <th>Renew
                                             </th>
                                          </tr>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                    <tr>
                                    <td>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("policy_no") %>'></asp:Label>
                                    </td>
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
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("smoke") %>'></asp:Label>
                                    
                                    </td>
                                    <td>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("income") %>'></asp:Label>
                                    </td>
                                      <td>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("occupation") %>'></asp:Label>
                                    </td>
                                      <td>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                                    </td>
                                    <td>
                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("amount") %>'></asp:Label>
                                    </td>
                                      <td>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("date","{0:MM/dd/yyyy}")  %>'></asp:Label>
                                    </td>
                                      <td>
                                      <div class="panel-footer text-left">
                                      <asp:UpdatePanel ID="se" runat="server">
                                      <ContentTemplate>
                                
                                       <asp:LinkButton ID="renew1" class="btn btn-info" OnClick="renew_Click" CommandArgument='<%# Eval("id") %>' runat="server"><span class="fa fa-refresh"></span></asp:LinkButton>
                                            </ContentTemplate>
                                            <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="renew1" EventName="Click" />
                                            </Triggers>
                                            </asp:UpdatePanel>
                                    </div>
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
    
    </div>
</div>
</div>
</div>
</section> 

            </div> <!-- /.content-wrapper -->
</asp:Content>
