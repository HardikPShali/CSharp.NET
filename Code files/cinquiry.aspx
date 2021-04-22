<%@ Page Title="" Language="C#" MasterPageFile="~/header-footer.Master" AutoEventWireup="true" CodeBehind="cinquiry.aspx.cs" Inherits="InsuranceHub.cinquiry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <asp:ScriptManager ID="abc" runat="server">
    </asp:ScriptManager>
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
                            <h1>Inquiry</h1>
                            <small>Customer Inquiry</small>
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
                                     
                                          <div class="table-responsive">
                                            <table class="table table-bordered table-hover">
                                                <caption>
                                                    <fieldset>
                                                        <asp:Repeater ID="rpt" runat="server">
                                                            <HeaderTemplate>
                                                                <table ID="example1" class="table table-bordered table-striped">
                                                                    <tr>
                                                                        <th>
                                                                            Name
                                                                        </th>
                                                                        <th>
                                                                            Email
                                                                        </th>
                                                                        <th>
                                                                            Sum Insured
                                                                        </th>
                                                                        <th>
                                                                            Mobile NO.
                                                                        </th>
                                                                        <th>
                                                                            Total Family Members
                                                                        </th>
                                                                        <th>
                                                                            Pincode
                                                                        </th>
                                                                        <th>
                                                                            Insurance Type
                                                                        </th>
                                                                       
                                                                    </tr>
                                                               
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label ID="lbl0" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="lbl1" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="lbl2" runat="server" Text='<%# Eval("sumi") %>'></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="lbl3" runat="server" Text='<%# Eval("mobile") %>'></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("totalfamily") %>'></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("pincode") %>'></asp:Label>
                                                                    </td>
                                                     
                                                                    <td>
                                                                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("insu_type") %>'></asp:Label>
                                                                    </td>
                                                          
                                                           
                                                            
                                                                 
                                                                </tr>
                                                            </ItemTemplate>
                                                            <FooterTemplate>
                                                                </table>
                                                            </FooterTemplate>
                                                        </asp:Repeater>
                                                      
                                                    </fieldset>
                                                </caption>
                        </table>
                    </div>

                    
                </div>
            </div>
            
        </div>
        
    </div>
</section>


    


     <!-- /.Modal Start -->

<!-- /.Modal-End -->                   <!--
<!-- /.content -->
                    </div>
                    <!-- /.content-wrapper -->
                </div>
</asp:Content>
