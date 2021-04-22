<%@ Page Title="" Language="C#" MasterPageFile="~/header-footer.Master" AutoEventWireup="true" CodeBehind="hishowplan.aspx.cs" Inherits="InsuranceHub.hishowplan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="abc" runat="server">
    </asp:ScriptManager>
   
            
                <!-- Site wrapper -->
                <div class="wrapper">
                    <div class="content-wrapper">
                        <!-- Content Header (Page header) -->
                        <section class="content-header">
                        <div class="header-icon">
                            <i class="pe-7s-box1"></i>
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
                            <h1>Policy</h1>
                            <small>Policy list</small>
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
                                    <div class="panel-heading">
                                           
                                    </div>
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="panel-header">
                                       
                                               
                                                     <div class="col-sm-4 col-xs-12">
                                                        <div class="dataTables_length">
                                                      
                                                      </div>
                                                  </div>
                                              </div>

                                          </div>
                                          <div class="table-responsive">
                                            <table class="table table-bordered table-hover">
                                                <caption>
                                                    <fieldset>
                                                        <asp:Repeater ID="rpt" runat="server">
                                                            <HeaderTemplate>
                                                                <table ID="example1" class="table table-bordered table-striped">
                                                                    <tr>
                                                                        <th>
                                                                            Policy Name
                                                                        </th>
                                                                        <th>
                                                                            Company
                                                                        </th>
                                                                        <th>
                                                                            Sum Insured
                                                                        </th>
                                                                        <th>
                                                                            Cost
                                                                        </th>
                                                                         <th>
                                                                            Buy
                                                                        </th>
                                                                        
                                                                    </tr>
                                                                
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label ID="lbl0" runat="server" Text='<%# Eval("pname") %>'></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Image ID="Image3" runat="server" ImageUrl='<%# Eval("image") %>'  Height="100" Width="100"/>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="lbl2" runat="server" Text='<%# Eval("sum_insured") %>'></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="lbl3" runat="server" Text='<%# Eval("cost") %>'></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:LinkButton ID="buybtn" runat="server" class="btn btn-success" Text="Buy" CommandArgument='<%# Eval("policy_id") %>' OnClick="buybtn_Click"></asp:LinkButton>
                                                                    </td>
                                                                    
                                                                    
                                                                   
                                                           
                                                            
                                                                 
                                                                </tr>
                                                            </ItemTemplate>
                                                            <FooterTemplate>
                                                                </table>
                                                            </FooterTemplate>
                                                        </asp:Repeater>
                                                      </table>
                                                    </fieldset>
                                                </caption>
                        </table>
                    </div>
              
                    
                </div>
            </div>
            
        </div>
        
    </div>
</section>


           


   
                    </div>
                    <!-- /.content-wrapper -->
                </div>

            
   
</asp:Content>