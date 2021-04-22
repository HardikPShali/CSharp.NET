<%@ Page Title="" Language="C#" MasterPageFile="~/header-footer.Master" AutoEventWireup="true" CodeBehind="insutype-list.aspx.cs" Inherits="InsuranceHub.insutype_list" %>
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
               <i class="pe-7s-box1"></i>
            </div>
            <div class="header-title">
               <form action="#" method="get" class="sidebar-form search-box pull-right hidden-md hidden-lg hidden-sm">
                  <div class="input-group">
                     <input type="text" name="q" class="form-control" placeholder="Search...">
                     <span class="input-group-btn">
                     <button type="submit" name="search" id="search-btn" class="btn"><i class="fa fa-search"></i></button>
                     </span>
                  </div>
               </form>
               <h1>Insurance Type</h1>
               <small>Insurance Type list</small>
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
                        <div class="btn-group"> 
                           <a class="btn btn-success" href="add_insutype.aspx"> <i class="fa fa-plus"></i> Add Insurance Type
                           </a>  
                        </div>
                     </div>
                     <div class="panel-body">
                        
                        <div class="table-responsive">
                           <table class="table table-bordered table-hover">
                              <fieldset>
                                 <asp:Repeater ID="rpt" runat="server">
                                    <HeaderTemplate>
                                       <table id="example1" class="table table-bordered table-striped">
                                          <tr>
                                             <th>Insurance Type
                                             </th>
                                             <th>Action
                                             </th>
                                          </tr>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                    <tr>
                                    <td>
                                    <asp:Label ID="lbl0" runat="server" Text='<%# Eval("type") %>'></asp:Label>
                                    </td>
                                    
                                    <td>
                                    <asp:updatepanel runat="server" id="up" >
                                    <contenttemplate>
                                    <%--<asp:LinkButton ID="edit" runat="server" class="btn btn-info btn-xs" CommandArgument='<%# Eval("hospital_id") %>'
                                       OnClick="edit_Click"><i 
                                       class="fa fa-pencil"></i></asp:LinkButton>--%>
                                    <asp:LinkButton ID="Edit" runat="server" class="btn btn-info btn-xs" CommandArgument='<%# Eval("insu_type_id") %>'
                                      OnClick="edit_Click" ><i
                                       class="fa fa-pencil"></i></asp:LinkButton>
                                    <asp:LinkButton ID="del" runat="server" class="btn btn-danger btn-xs" 
                                       CommandArgument='<%# Eval("insu_type_id") %>' OnClick="del_Click"><i 
                                       class="fa fa-trash-o"></i></asp:LinkButton>
                                    </contenttemplate>
                                    <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="Edit" EventName="Click" />
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
                     <h1 class="modal-title">Update Insurance Type</h1>
                  </div>
                   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                       <ContentTemplate>
                       
                  <div class="modal-body">
                     <div class="form-group">
                        <label>Insurance Type:</label>
                        <asp:TextBox ID="txttype" class="form-control"  runat="server"></asp:TextBox>
                     </div>
                   
                  </div>
                  </ContentTemplate>
                   </asp:UpdatePanel>
                  <div class="modal-footer">
                     <asp:Button ID="close" class="btn btn-warning" runat="server" Text="Reset" data-dismiss="modal"
                        ></asp:Button>
           <%--          <asp:Button ID="update" class="btn btn-success" runat="server" Text="Save Changes" CommandArgument='<%# Eval("insu_type_id") %>' 
                     OnClick="update_Click"
                       ></asp:Button>--%>
                      <asp:Button ID="update" OnClick="update_Click" runat="server" class="btn btn-success" runat="server" Text="Save Changes" CommandArgument='<%# Eval("insu_type_id") %>' />
                  </div>
               </div>
            </div>
         </div>
         <!--
            <!-- /.content -->
      </div>
      <!-- /.content-wrapper -->
   </div>
</asp:Content>
