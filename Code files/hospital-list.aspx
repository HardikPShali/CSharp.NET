<%@ Page Title="" Language="C#" MasterPageFile="~/header-footer.Master" AutoEventWireup="true"
   CodeBehind="hospital-list.aspx.cs" Inherits="InsuranceHub.hospital_list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
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
               <h1>Hospital</h1>
               <small>Hospital list</small>
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
                           <a class="btn btn-success" href="add_hospital.aspx"> <i class="fa fa-plus"></i> Add Hospital
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
                                             <th>Name
                                             </th>
                                             <th>Address
                                             </th>
                                             <th>Email
                                             </th>
                                             <th>Website
                                             </th>
                                             <th>City
                                             </th>
                                             <th>Pincode
                                             </th>
                                             <th>Image
                                             </th>
                                             <th>Contact Number
                                             </th>
                                             <th>Action
                                             </th>
                                          </tr>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                    <tr>
                                    <td>
                                    <asp:Label ID="lbl0" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                                    </td>
                                    <td>
                                    <asp:Label ID="lbl1" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                                    </td>
                                    <td>
                                    <asp:Label ID="lbl2" runat="server" Text='<%# Eval("emailid") %>'></asp:Label>
                                    </td>
                                    <td>
                                    <asp:Label ID="lbl3" runat="server" Text='<%# Eval("website") %>'></asp:Label>
                                    </td>
                                    <td>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("city") %>'></asp:Label>
                                    </td>
                                    <td>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("pincode") %>'></asp:Label>
                                    </td>
                                    <td>
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>'  Height="100" Width="100"/>
                                    </td>
                                    <td>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("contactno") %>'></asp:Label>
                                    </td>
                                    <td>
                                    <asp:updatepanel runat="server" id="up" >
                                    <contenttemplate>
                                    <%--<asp:LinkButton ID="edit" runat="server" class="btn btn-info btn-xs" CommandArgument='<%# Eval("hospital_id") %>'
                                       OnClick="edit_Click"><i 
                                       class="fa fa-pencil"></i></asp:LinkButton>--%>
                                    <asp:LinkButton ID="Edit" runat="server" class="btn btn-info btn-xs" CommandArgument='<%# Eval("hospital_id") %>'
                                       OnClick="Edit_Click"><i
                                       class="fa fa-pencil"></i></asp:LinkButton>
                                    <asp:LinkButton ID="del" runat="server" class="btn btn-danger btn-xs" 
                                       CommandArgument='<%# Eval("hospital_id") %>' OnClick="del_Click"><i 
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
         <%--<div class="modal fade" id="mymodal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h1 class="modal-title">Update Hospital</h1>
                    </div>
                    <div class="modal-body">
                        
            
            
                        <div class="form-group">
                        <label>Company Name:</label>
                       <asp:TextBox ID="txtcname" type="text" class="form-control" placeholder="Company Name" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Address of company:</label>
                        <asp:TextBox ID="txtcadd"  class="form-control" placeholder="Address" Rows="3" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Email:</label>
                         <asp:TextBox ID="txtcemail"  class="form-control" placeholder="Email" runat="server"></asp:TextBox>
                    </div>
                    
                    
                    
                    <div class="form-group">
                        <label>Website:</label>
                       <asp:TextBox ID="txtcwebsite"  class="form-control"  text="https://" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>City:</label>
                       <asp:TextBox ID="txtcity"  class="form-control" placeholder="City"  runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                     <label>Pincode:</label><br>
                     <asp:TextBox ID="txtcpincode"  class="form-control" placeholder="Pincode"  runat="server"></asp:TextBox>
            
                 </div>
                 <div class="form-group">
                        <label>Picture upload</label>
                        <asp:FileUpload ID="cimg" runat="server"></asp:FileUpload>
                    </div>
                 <div class="form-check">
                  <label>Contact Number:</label><br>
                  <asp:TextBox ID="txtconatct"  class="form-control" placeholder="Contact number" runat="server"></asp:TextBox>
              </div>                                       
            
            
            
            
            
                        </div>
                        <div class="modal-footer">
            
            <asp:Button ID="close" class="btn btn-warning" runat="server" Text="Reset" data-dismiss="modal"
                    ></asp:Button>
            <asp:Button ID="update" class="btn btn-success" runat="server" Text="Save Changes"
                    ></asp:Button>
            
            
            
            
                            
                        </div>
                    </div>
                    </div>
                    </div>--%>
         <div class="modal fade" id="myModal" >
            <div class="modal-dialog">
               <div class="modal-content">
                  <div class="modal-header">
                     <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                     <h1 class="modal-title">Update Hospital</h1>
                  </div>
                   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                       <ContentTemplate>
                       
                  <div class="modal-body">
                     <div class="form-group">
                        <label>Hospital Name:</label>
                        <asp:TextBox ID="txtcname" class="form-control"  runat="server"></asp:TextBox>
                     </div>
                     <div class="form-group">
                        <label>Address of Hospital:</label>
                        <asp:TextBox ID="txtcadd"  class="form-control" placeholder="Address" Rows="3" runat="server"></asp:TextBox>
                     </div>
                     <div class="form-group">
                        <label>Email:</label>
                        <asp:TextBox ID="txtcemail"  class="form-control" placeholder="Email" runat="server"></asp:TextBox>
                     </div>
                     <div class="form-group">
                        <label>Website:</label>
                        <asp:TextBox ID="txtcwebsite"  class="form-control"  text="https://" runat="server"></asp:TextBox>
                     </div>
                     <div class="form-group">
                        <label>City:</label>
                        <asp:TextBox ID="txtcity"  class="form-control" placeholder="City"  runat="server"></asp:TextBox>
                     </div>
                     <div class="form-group">
                        <label>Pincode:</label><br>
                        <asp:TextBox ID="txtcpincode"  class="form-control" placeholder="Pincode"  runat="server"></asp:TextBox>
                     </div>
                     <div class="form-group">
                        <label>Picture :</label>
                        <br>
                         <asp:Image ID="Image2" runat="server" Height="100" Width="100" />
                        <asp:FileUpload ID="cimg" runat="server"></asp:FileUpload>
                     </div>
                     <div class="form-check">
                        <label>Contact Number:</label><br>
                        <asp:TextBox ID="txtconatct"  class="form-control" placeholder="Contact number" runat="server"></asp:TextBox>
                     </div>
                  </div>
                  </ContentTemplate>
                   </asp:UpdatePanel>
                  <div class="modal-footer">
                     <asp:Button ID="close" class="btn btn-warning" runat="server" Text="Reset" data-dismiss="modal"
                        ></asp:Button>
                     <asp:Button ID="update" class="btn btn-success" runat="server" Text="Save Changes" CommandArgument='<%# Eval("hospital_id") %>' 
                      OnClick="update_Click"  ></asp:Button>
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