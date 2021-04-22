<%@ Page Title="" Language="C#" MasterPageFile="~/header-footer.Master" AutoEventWireup="true" CodeBehind="insurance-list.aspx.cs" Inherits="InsuranceHub.insurance_list" %>
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
                            <small>Insurance Plan list</small>
                            <ol class="breadcrumb hidden-xs">
                                <li><a href="insurance.aspx"><i class="pe-7s-home"></i> Home</a></li>
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
                                            <a class="btn btn-success" href="insurance.aspx"> <i class="fa fa-plus"></i> Add Insurance Plan
                                            </a>  
                                        </div>        
                                    </div>
                                    <div class="panel-body">
                                        <div class="row">
                                         

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
                                                                            Policy No
                                                                        </th>
                                                                        <th>
                                                                            Name        
                                                                        </th>
                                                                        <th>
                                                                            Insurance
                                                                        </th>
                                                                        <th>
                                                                            Company Name
                                                                        </th>
                                                                        <th>
                                                                            Issue Date
                                                                        </th>
                                                                        <th>
                                                                            Validity
                                                                        </th>
                                                                        <th>
                                                                            No. Of Person
                                                                        </th>
                                                                        <th>
                                                                            Total Adult
                                                                        </th>
                                                                            <th>
                                                                            No. Of son
                                                                        </th>
                                                                        <th>
                                                                            No. Of Daughter
                                                                        </th>
                                                                        <th>
                                                                            Sum Insured
                                                                        </th>
                                                                        <th>
                                                                            Cost
                                                                        </th>
                                                                        
                                                                        <th>
                                                                            Action
                                                                        </th>
                                                                    </tr>
                                                                
                                                            </HeaderTemplate>
                                <ItemTemplate>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lbl0" runat="server" Text='<%# Eval("policy_no") %>'></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lbl1" runat="server" Text='<%# Eval("pname") %>'></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lbl2" runat="server" Text='<%# Eval("type") %>'></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lbl3" runat="server" Text='<%# Eval("cname") %>'></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("issuedate") %>'></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("validity") %>'></asp:Label>
                                        </td>


                                        <td>
                                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("no_of_person") %>'></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("total_adult") %>'></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("no_of_son") %>'></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("no_of_daughter") %>'></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("sum_insured") %>'></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label11" runat="server" Text='<%# Eval("cost") %>'></asp:Label>
                                        </td>
                                        
                                        
                                        
                                        <td>
                                        <asp:updatepanel runat="server" id="up" UpdateMode="Conditional">
                                            <contenttemplate>
                                            <asp:LinkButton ID="edit" runat="server" class="btn btn-info btn-xs" CommandArgument='<%# Eval("policy_id") %>' OnClick="edit_Click"><i class="fa fa-pencil"></i></asp:LinkButton>
                                            <asp:LinkButton ID="del" runat="server" class="btn btn-danger btn-xs" CommandArgument='<%# Eval("policy_id") %>' OnClick="del_Click"><i class="fa fa-trash-o"></i></asp:LinkButton>
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
                                                      </table>
                                                    </fieldset>
                                                </caption>
                       
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
                     <h1 class="modal-title">Update Policy</h1>
                  </div>
                   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                       <ContentTemplate>
                           
                          
                  <div class="modal-body">
                     <div class="form-group">
                        <label>Policy No:</label>
                        <asp:TextBox ID="txtpno" class="form-control" placeholder="Policy Number"  runat="server"></asp:TextBox>
                     </div>
                     <div class="form-group">
                        <label>Policy Name:</label>
                        <asp:TextBox ID="txtpname"  class="form-control" placeholder="Policy Name" runat="server"></asp:TextBox>
                     </div>
                     <div class="form-group">
                        <label>Insurance Type:</label>
                         <asp:DropDownList ID="txtinsutype" class="form-control" runat="server" AutoPostBack="true">
                         </asp:DropDownList>
                      <%--  <asp:TextBox ID="txtinsutype"  class="form-control" placeholder="Type" runat="server"></asp:TextBox>--%>
                     </div>
                     <div class="form-group">
                        <label>Insurance company:</label>
                         <asp:DropDownList ID="ddlcomp"  class="form-control" runat="server" AutoPostBack="true">
                         </asp:DropDownList>
                       <%-- <asp:TextBox ID="txtinsucomp"  class="form-control" placeholder="Insurance Company"  runat="server"></asp:TextBox>--%>
                     </div>
                     <div class="form-group">
                        <label>Issue Date:</label>
                        <asp:TextBox ID="txtissuedate" type="date" class="form-control" placeholder="Issue Date"  runat="server"></asp:TextBox>
                     </div>
                     <div class="form-group">
                        <label>Validity:</label><br> 
                        <asp:TextBox ID="txtvalidity" type="date" class="form-control" placeholder="Validity"  runat="server"></asp:TextBox>
                     </div>
                     <div class="form-group">
                        <label>No. Of Person:</label>
                        <asp:TextBox ID="txtnoofp"  class="form-control" placeholder="Total Person" Rows="3" runat="server"></asp:TextBox>
                     </div>
                     <div class="form-group">
                        <label>Total Adult:</label>
                        <asp:TextBox ID="txtadult"  class="form-control" placeholder="Total Adult" runat="server"></asp:TextBox>
                     </div>
                     <div class="form-group">
                        <label>No. Of Son:</label>
                        <asp:TextBox ID="txtson"  class="form-control"  placeholder="Son" runat="server"></asp:TextBox>
                     </div>
                     <div class="form-group">
                        <label>No. Of Daughter:</label>
                        <asp:TextBox ID="txtdaughter"  class="form-control"  placeholder="Daughter" runat="server"></asp:TextBox>
                     </div>
                     <div class="form-group">
                        <label>Sum Insured:</label>
                        <asp:TextBox ID="txtsuminsured"  class="form-control"  placeholder="Cover Plan" runat="server"></asp:TextBox>
                     </div>
                     <div class="form-group">
                        <label>Cost:</label>
                        <asp:TextBox ID="txtcost"  class="form-control" placeholder="Cost"  runat="server"></asp:TextBox>
                     </div>
                     
                  </div>
                  </ContentTemplate>
                   </asp:UpdatePanel>
                  <div class="modal-footer">
                     <asp:Button ID="close" class="btn btn-warning" runat="server" Text="Reset" data-dismiss="modal"
                        ></asp:Button>
                     
                            <asp:LinkButton ID="update" class="btn btn-success" OnClick="update_Click" runat="server" CommandArgument='<%# Eval("policy_id") %>'>Save Changes</asp:LinkButton>
                     
                                       </div>
               </div>
            </div>
         </div>

   

<!-- /.Modal-End -->                   <!--
<!-- /.content -->
                    </div>
                    <!-- /.content-wrapper -->
                </div>

            
   
</asp:Content>
