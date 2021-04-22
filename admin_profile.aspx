<%@ Page Title="" Language="C#" MasterPageFile="~/header-footer.Master" AutoEventWireup="true" CodeBehind="admin_profile.aspx.cs" Inherits="InsuranceHub.admin_profile" %>
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
                            <h1>Admin</h1>
                            <small>Admin Profile</small>
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
                                        User Name
                                    </th>
                                    <th>
                                        Email Id
                                    </th>
                                    <th>
                                        Password
                                    </th>
                                                               
                                    <th>
                                        Action
                                    </th>
                                </tr>
                                                                
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <asp:Label ID="lbl0" runat="server" Text='<%# Eval("username") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lbl1" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lbl2" runat="server" Text='<%# Eval("password") %>'></asp:Label>
                                </td>
                                                                    
                                <td>
                                <asp:updatepanel runat="server" id="up" UpdateMode="Conditional">
                                    <contenttemplate>
                                    <asp:LinkButton ID="edit" runat="server" class="btn btn-info btn-xs"
                                        CommandArgument='<%# Eval("lid") %>'
                                        OnClick="edit_Click"><i 
                                        class="fa fa-pencil"></i></asp:LinkButton>
                                                                           
                                    </contenttemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="edit" EventName="Click" />
                                    </Triggers>
                                </asp:updatepanel>
                                                                        
                                                                        
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


           <div class="modal fade" id="myModal" >
            <div class="modal-dialog">
               <div class="modal-content">
                  <div class="modal-header">
                     <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                     <h1 class="modal-title">Update Admin Profile</h1>
                  </div>
                   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                       <ContentTemplate>
                       
                  <div class="modal-body">
                     <div class="form-group">
                        <label>User Name:</label>
                        <asp:TextBox ID="txtuname" class="form-control"  runat="server"></asp:TextBox>
                     </div>
                     <div class="form-group">
                        <label>Email Id:</label>
                        <asp:TextBox ID="txtuemailid"  class="form-control"  runat="server"></asp:TextBox>
                     </div>
                     <div class="form-group">
                        <label>Password:</label>
                        <asp:TextBox ID="txtupass"  class="form-control"  runat="server"></asp:TextBox>
                     </div>

                  </div>
                  </ContentTemplate>
                   </asp:UpdatePanel>
                  <div class="modal-footer">
                     <asp:Button ID="close" class="btn btn-warning" runat="server" Text="Close" data-dismiss="modal"
                        ></asp:Button>
                     <asp:Button ID="update" class="btn btn-success" runat="server" Text="Save Changes" CommandArgument='<%# Eval("lid") %>' 
                      OnClick="update_Click"  ></asp:Button>
                  </div>
               </div>
            </div>
         </div>


     <!-- /.Modal Start -->

<!-- /.Modal-End -->                   <!--
<!-- /.content -->
                    </div>
                    <!-- /.content-wrapper -->
                </div>

            
   
</asp:Content>