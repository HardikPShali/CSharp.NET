<%@ Page Title="" Language="C#" MasterPageFile="~/header-footer.Master" AutoEventWireup="true" CodeBehind="terminsu.aspx.cs" Inherits="InsuranceHub.terminsu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
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
  
   <%--
  <%-- <asp:Panel ID="Panel1" runat="server">
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
                <div class="col-sm-2 form-group">

           <%--<asp:Label ID="name" runat="server" ></asp:Label>
                   
                     </div>

                       <div class="col-sm-2 form-group">
                       <asp:Label ID="gender" runat="server"></asp:Label>
                      
      
                     </div>
                      <div class="col-sm-2 form-group">
                       <asp:Label ID="ls" runat="server"></asp:Label>
                      
      
                     </div>
                     
                <%--       <div class="col-sm-2 form-group">
                       <asp:Label ID="age" runat="server"></asp:Label>
                  
      
                     </div>
                       <div class="col-sm-2 form-group">
                       <asp:Label ID="smoke" runat="server"></asp:Label>
                      
      
                     </div>
                            <div class="col-sm-2 form-group">
                       <asp:Label ID="income" runat="server"></asp:Label>
                      
      
                     </div>

                            <div class="col-sm-2 form-group">
                            <asp:Button ID="edit" class-="form=control" runat="server" Text="Edit" 
                                    ></asp:Button>
                     
                      
      
                     </div>
                     </div>
                     </div>
                     </div>
                     </div>
                     </div>
                     </section>

                      </asp:Panel>--%>
                      
                          <section class="content">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="panel panel-bd lobidrag">
                                 
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
                                                                            Company
                                                                        </th>
                                                                     
                                                                        
                                                                        
                                                                        <th>
                                                                            Sum Insured
                                                                        </th>
                                                                        <th>
                                                                            Cost
                                                                        </th>
                                                                        <th>
                                                                        </th>
                                                                    
                                                                    </tr>
                                                                
                                                            </HeaderTemplate>
                                <ItemTemplate>
                                    <tr>
                                        
                                        <td>
                                            <asp:Label ID="lbl1" runat="server" Text='<%# Eval("pname") %>'></asp:Label>
                                        </td>
                                       
                                        <td>
                                           <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>'  Height="100" Width="100"/>
                                          
                                        </td>
                                       
                                       

                                        
                                        <td>
                                            <asp:Label ID="Label11" runat="server" Text='<%# Eval("sum_insured") %>'></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label12" runat="server" Text='<%# Eval("cost") %>'></asp:Label>
                                        </td>
                                        <td>
                                        
                                        <asp:LinkButton ID="buy" CommandArgument='<%# Eval("policy_id") %>' OnClick="buy_Click"  class="btn btn-success" runat="server">Buy Now</asp:LinkButton>
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
                                                       
</div>
</div>
 
   
</asp:Content>
