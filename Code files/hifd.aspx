<%@ Page Title="" Language="C#" MasterPageFile="~/header-footer.Master" AutoEventWireup="true" CodeBehind="hifd.aspx.cs" Inherits="InsuranceHub.hifd" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="aaa" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="bbb" runat="server">
    <ContentTemplate>
        <!-- Site wrapper -->
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
                        <h1>Insurance</h1>
                        <small>Health Insurance</small>
                        <ol class="breadcrumb hidden-xs">
                            <li><a href="Dashboard.aspx"><i class="pe-7s-home"></i> Home</a></li>
                            <li class="active">Dashboard</li>
                        </ol>
                    </div>
                </section>
                <!-- Main content -->
                         
         
               

              
                   <div class="row">
                        <!-- Form controls -->
                        <div class="col-sm-12">


                        <asp:UpdatePanel ID="mmm" runat="server">
                        <ContentTemplate>
                        <div class="table-responsive">
            <table class="table table-bordered table-hover">
                <caption>
                    <fieldset>
                        <asp:Repeater ID="rpt1" runat="server">
                            <HeaderTemplate>
                                <table ID="example1" class="table table-bordered">
                                    <tr>
                                        <th>
                                            Insured Name
                                        </th>
                                        <th>
                                            DOB
                                        </th>
                                        <th>
                                            Mobile No
                                        </th>
                                        <th>
                                          Address
                                        </th>
                                        <th>
                                           Gender
                                        </th>
                                                                        
                                        <th>
                                            Action
                                        </th>
                                    </tr>
                                                                
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <asp:Label ID="lbl0" runat="server" Text='<%# Eval("clientname") %>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="lbl1" runat="server" Text='<%# Eval("dobi") %>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="lbl2" runat="server" Text='<%# Eval("mobileno") %>'></asp:Label>
                                    </td>
                                                                    
                                    <td>
                                        <asp:Label ID="lbl3" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("gender") %>'></asp:Label>
                                    </td>

                                    <td>
                                    <asp:updatepanel runat="server" id="up" UpdateMode="Conditional">
                                        <contenttemplate>
                                        <asp:LinkButton ID="ipopup" runat="server" class="btn btn-info btn-xs" CommandArgument='<%# Eval("hid") %>'
                                       OnClick="ipopup_Click"><i class="fa fa-pencil"></i></asp:LinkButton>
                                           
                                            
                                        </contenttemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="ipopup" EventName="Click" />
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
                    </ContentTemplate>
                    </asp:UpdatePanel>
                    
                            
                                
                                    <asp:Panel ID="pa1" runat="server">
                                    <div class="panel-body">

                                    

                                        <div class="col-sm-6">
                                        <span class="label label-success m-r-15">PROPOSER DETAILS</span>
                                        <br />
                                        <br />
                                        
                                            <div class="form-group">
                                                <label>Title:</label>
                                               <asp:DropDownList ID="ddltitle" class="form-control" runat="server">
                                                   <asp:ListItem>Mr</asp:ListItem>
                                                   <asp:ListItem>Mrs</asp:ListItem>
                                                   <asp:ListItem>Ms</asp:ListItem>
                                                   <asp:ListItem>Dr</asp:ListItem>
                                                </asp:DropDownList>
                                                
                                               
                                            </div>
                                         
                                            <div class="form-group">
                                                <label>Name:</label>
                                                <asp:TextBox ID="full_name"  class="form-control" placeholder="Full Name" Rows="3" runat="server"></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                              <label>Gender:</label>&nbsp;&nbsp;&nbsp;&nbsp;
                                               <asp:RadioButton ID="malerad" GroupName="a" Text="Male" runat="server"></asp:RadioButton>&nbsp;&nbsp;
                                               <asp:RadioButton ID="femalerad" GroupName="a" Text="Female" runat="server"></asp:RadioButton>
                                            <asp:Label ID="Label1" runat="server"></asp:Label>
                                            </div>
                                            <br />
                                            

                                            <div class="form-group">
                                              <label>Height:</label>&nbsp;&nbsp;
                                               <asp:DropDownList ID="ddlih" runat="server" class="form-control">
                                                            <asp:ListItem>2 feet</asp:ListItem>
                                                            <asp:ListItem>2 feet 1 inch</asp:ListItem>
                                                            <asp:ListItem>2 feet 2 inch</asp:ListItem>
                                                            <asp:ListItem>2 feet 3 inch</asp:ListItem>
                                                            <asp:ListItem>2 feet 4 inch</asp:ListItem>
                                                            <asp:ListItem>2 feet 5 inch</asp:ListItem>
                                                            <asp:ListItem>2 feet 6 inch</asp:ListItem>
                                                            <asp:ListItem>2 feet 7 inch</asp:ListItem>
                                                            <asp:ListItem>2 feet 8 inch</asp:ListItem>
                                                            <asp:ListItem>2 feet 9 inch</asp:ListItem>
                                                            <asp:ListItem>3 feet</asp:ListItem>
                                                            <asp:ListItem>3 feet 1 inch</asp:ListItem>
                                                            <asp:ListItem>3 feet 2 inch</asp:ListItem>
                                                            <asp:ListItem>3 feet 3 inch</asp:ListItem>
                                                            <asp:ListItem>3 feet 4 inch</asp:ListItem>
                                                            <asp:ListItem>3 feet 5 inch</asp:ListItem>
                                                            <asp:ListItem>3 feet 6 inch</asp:ListItem>
                                                            <asp:ListItem>3 feet 7 inch</asp:ListItem>
                                                            <asp:ListItem>3 feet 8 inch</asp:ListItem>
                                                            <asp:ListItem>3 feet 9 inch</asp:ListItem>
                                                            <asp:ListItem>4 feet</asp:ListItem>
                                                            <asp:ListItem>4 feet 1 inch</asp:ListItem>
                                                            <asp:ListItem>4 feet 2 inch</asp:ListItem>
                                                            <asp:ListItem>4 feet 3 inch</asp:ListItem>
                                                            <asp:ListItem>4 feet 4 inch</asp:ListItem>
                                                            <asp:ListItem>4 feet 5 inch</asp:ListItem>
                                                            <asp:ListItem>4 feet 6 inch</asp:ListItem>
                                                            <asp:ListItem>4 feet 7 inch</asp:ListItem>
                                                            <asp:ListItem>4 feet 8 inch</asp:ListItem>
                                                            <asp:ListItem>4 feet 9 inch</asp:ListItem>
                                                            <asp:ListItem>5 feet</asp:ListItem>
                                                            <asp:ListItem>5 feet 1 inch</asp:ListItem>
                                                            <asp:ListItem>5 feet 2 inch</asp:ListItem>
                                                            <asp:ListItem>5 feet 3 inch</asp:ListItem>
                                                            <asp:ListItem>5 feet 4 inch</asp:ListItem>
                                                            <asp:ListItem>5 feet 5 inch</asp:ListItem>
                                                            <asp:ListItem>5 feet 6 inch</asp:ListItem>
                                                            <asp:ListItem>5 feet 7 inch</asp:ListItem>
                                                            <asp:ListItem>5 feet 8 inch</asp:ListItem>
                                                            <asp:ListItem>5 feet 9 inch</asp:ListItem>
                                                            <asp:ListItem>6 feet</asp:ListItem>
                                                            <asp:ListItem>7 feet 1 inch</asp:ListItem>
                                                            <asp:ListItem>7 feet 2 inch</asp:ListItem>
                                                            <asp:ListItem>7 feet 3 inch</asp:ListItem>
                                                            <asp:ListItem>7 feet 4 inch</asp:ListItem>
                                                            <asp:ListItem>7 feet 5 inch</asp:ListItem>
                                                            <asp:ListItem>7 feet 6 inch</asp:ListItem>
                                                            <asp:ListItem>7 feet 7 inch</asp:ListItem>
                                                            <asp:ListItem>7 feet 8 inch</asp:ListItem>
                                                            <asp:ListItem>7 feet 9 inch</asp:ListItem>
                                                            <asp:ListItem>8 feet</asp:ListItem>
                                                            <asp:ListItem>8 feet 1 inch</asp:ListItem>
                                                            <asp:ListItem>8 feet 2 inch</asp:ListItem>
                                                            <asp:ListItem>8 feet 3 inch</asp:ListItem>
                                                            <asp:ListItem>8 feet 4 inch</asp:ListItem>
                                                            <asp:ListItem>8 feet 5 inch</asp:ListItem>
                                                            <asp:ListItem>8 feet 6 inch</asp:ListItem>
                                                            <asp:ListItem>8 feet 7 inch</asp:ListItem>
                                                            <asp:ListItem>8 feet 8 inch</asp:ListItem>
                                                            <asp:ListItem>8 feet 9 inch</asp:ListItem>
                                                            <asp:ListItem>9 feet</asp:ListItem>
                                                            <asp:ListItem>9 feet 1 inch</asp:ListItem>
                                                            <asp:ListItem>9 feet 2 inch</asp:ListItem>
                                                            <asp:ListItem>9 feet 3 inch</asp:ListItem>
                                                            <asp:ListItem>9 feet 4 inch</asp:ListItem>
                                                            <asp:ListItem>9 feet 5 inch</asp:ListItem>
                                                            <asp:ListItem>9 feet 6 inch</asp:ListItem>
                                                            <asp:ListItem>9 feet 7 inch</asp:ListItem>
                                                            <asp:ListItem>9 feet 8 inch</asp:ListItem>
                                                            <asp:ListItem>9 feet 9 inch</asp:ListItem>
                                                            <asp:ListItem>10 feet</asp:ListItem>
                                                        </asp:DropDownList>
                                            
                                            </div>

                                       
                                            </div>


                                            <div class="col-sm-6">
                                           
                                        <br />
                                        <br />
                                       
                                            <div class="form-group">
                                                <label>Date Of Birth:</label>
                                               <asp:TextBox ID="txtdob"  class="form-control" TextMode=Date runat="server"></asp:TextBox>
                                            <asp:Label ID="Label2" runat="server"></asp:Label>
                                            </div>
                                          
                                            <div class="form-group">
                                             <label>Mobile No:</label><br>
                                             <asp:TextBox ID="txtmobileno"  class="form-control" placeholder="Mobile No.."  runat="server"></asp:TextBox>
                                             </div>
                                         
                                         <div class="form-group">
                                          <label>Email Id:</label><br>
                                          <asp:TextBox ID="txtemailid"  class="form-control" placeholder="Email" runat="server"></asp:TextBox>
                                      </div>  
                                      <div class="form-group">
                                                <label>Weight:</label>
                                                <asp:TextBox ID="txtiw"  class="form-control" placeholder="Weight" Rows="3" runat="server"></asp:TextBox>
                                      <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server"
                                    TargetControlID="txtiw" FilterType="Numbers">
                                    </cc1:FilteredTextBoxExtender>
                                    <asp:Label ID="Label3" runat="server"></asp:Label>
                                      </div>                                     
                                      </div>
                                   
                                   

                                 
                             </div>


                              <div class="panel-body">
                                
                                <div class="col-sm-6">
                                        <span class="label label-success m-r-15">CORRESPONDENCE ADDRESS</span>
                                        <br />
                                        <br />
                                            <div class="form-group">
                                                <label>Adreess:</label>
                                               <asp:TextBox ID="txtaddress" TextMode="MultiLine"  class="form-control" placeholder="Address.." Rows="3" runat="server"></asp:TextBox>
                                 <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server"
                                    TargetControlID="txtaddress" FilterType="UppercaseLetters , LowercaseLetters, Custom" ValidChars=" ">
                                    </cc1:FilteredTextBoxExtender>
                                    <br><br>
                                    <asp:Label ID="Label4" runat="server"></asp:Label>           
                                            </div>
                                         
                                            
                                           
                                            
                                            

                               </div>


                               

                             
                     </div>
                     <div class="reset-button">
                        <asp:Button ID="cancel" class="btn btn-warning" runat="server" Text="Reset" 
                                ></asp:Button>
                        <asp:Button ID="save" class="btn btn-success" runat="server" Text="Save" OnClick="save1_Click"
                                ></asp:Button>
                                  
                         </div>
                         
                         </asp:Panel>

            
                       <asp:Panel ID="pa2" runat="server">
                    
                       <div class="col-xs-12 col-sm-12">
                            <div class="panel panel-bd lobidrag">
                                <div class="panel-heading">
                                    <div class="panel-title">
                                        <h4>Insured Details</h4>
                                    </div>
                                </div>
                                <div class="panel-body">




                         


                               
                               <%--<div class="form-group">
                                            <label class="label label-success-outline m-r-15">Enter the Number Of Members.</label>
                                            <asp:TextBox ID="totalmember" runat="server"></asp:TextBox>
                                          <asp:Button ID="tmember" class="btn btn-success" runat="server" 
                                                Text="Add Members" onclick="tmember_Click" 
                                            ></asp:Button>
                               </div>--%>
                              

                                        
                                    <div class="table-responsive">
                                        <table  class="table table-bordered table-striped table-hover">
                                            
                                                <tr>
                                                    <th>Insured Name:</th>
                                                    <th>Date Of Birth</th>
                                                    <th>Insured Member Relation To Proposer</th>
                                                    <th>Height*
                                                    (in feet and inches)</th>
                                                    <th>Weight*
                                                    (in Kgs)</th>
                                                    <th>Add Members</th>
                                                </tr>
                                             <asp:panel ID="pnlmember" runat="server">

                                            <tbody>
                                                
                                                
                                                <tr>
                                                
                                                    <td id="membername" runat="server">
                                                        <asp:TextBox ID="txtmembername" runat="server" class="form-control"></asp:TextBox>
                                                    </td>
                                                    <td  id="memberdob" runat="server">
                                                        <asp:TextBox ID="txtidob" runat="server" TextMode=Date class="form-control"></asp:TextBox>
                                                    </td>
                                                    <td  id="memberrelation" runat="server">
                                                        <asp:DropDownList ID="ddlrelation" runat="server" class="form-control">
                                                        <asp:ListItem Text="Relation" Selected></asp:ListItem>
                                                            
                                                            <asp:ListItem>Wife</asp:ListItem>
                                                            <asp:ListItem>Husband</asp:ListItem>
                                                            <asp:ListItem>Son</asp:ListItem>
                                                            <asp:ListItem>Daughter</asp:ListItem>
                                                            <asp:ListItem>Father</asp:ListItem>
                                                            <asp:ListItem>Mother</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td  id="memberheight" runat="server">
                                                        <asp:DropDownList ID="ddlheight" runat="server" class="form-control">
                                                        <asp:ListItem Text="Height" Selected></asp:ListItem>
                                                            <asp:ListItem>2 feet</asp:ListItem>
                                                            <asp:ListItem>2 feet 1 inch</asp:ListItem>
                                                            <asp:ListItem>2 feet 2 inch</asp:ListItem>
                                                            <asp:ListItem>2 feet 3 inch</asp:ListItem>
                                                            <asp:ListItem>2 feet 4 inch</asp:ListItem>
                                                            <asp:ListItem>2 feet 5 inch</asp:ListItem>
                                                            <asp:ListItem>2 feet 6 inch</asp:ListItem>
                                                            <asp:ListItem>2 feet 7 inch</asp:ListItem>
                                                            <asp:ListItem>2 feet 8 inch</asp:ListItem>
                                                            <asp:ListItem>2 feet 9 inch</asp:ListItem>
                                                            <asp:ListItem>3 feet</asp:ListItem>
                                                            <asp:ListItem>3 feet 1 inch</asp:ListItem>
                                                            <asp:ListItem>3 feet 2 inch</asp:ListItem>
                                                            <asp:ListItem>3 feet 3 inch</asp:ListItem>
                                                            <asp:ListItem>3 feet 4 inch</asp:ListItem>
                                                            <asp:ListItem>3 feet 5 inch</asp:ListItem>
                                                            <asp:ListItem>3 feet 6 inch</asp:ListItem>
                                                            <asp:ListItem>3 feet 7 inch</asp:ListItem>
                                                            <asp:ListItem>3 feet 8 inch</asp:ListItem>
                                                            <asp:ListItem>3 feet 9 inch</asp:ListItem>
                                                            <asp:ListItem>4 feet</asp:ListItem>
                                                            <asp:ListItem>4 feet 1 inch</asp:ListItem>
                                                            <asp:ListItem>4 feet 2 inch</asp:ListItem>
                                                            <asp:ListItem>4 feet 3 inch</asp:ListItem>
                                                            <asp:ListItem>4 feet 4 inch</asp:ListItem>
                                                            <asp:ListItem>4 feet 5 inch</asp:ListItem>
                                                            <asp:ListItem>4 feet 6 inch</asp:ListItem>
                                                            <asp:ListItem>4 feet 7 inch</asp:ListItem>
                                                            <asp:ListItem>4 feet 8 inch</asp:ListItem>
                                                            <asp:ListItem>4 feet 9 inch</asp:ListItem>
                                                            <asp:ListItem>5 feet</asp:ListItem>
                                                            <asp:ListItem>5 feet 1 inch</asp:ListItem>
                                                            <asp:ListItem>5 feet 2 inch</asp:ListItem>
                                                            <asp:ListItem>5 feet 3 inch</asp:ListItem>
                                                            <asp:ListItem>5 feet 4 inch</asp:ListItem>
                                                            <asp:ListItem>5 feet 5 inch</asp:ListItem>
                                                            <asp:ListItem>5 feet 6 inch</asp:ListItem>
                                                            <asp:ListItem>5 feet 7 inch</asp:ListItem>
                                                            <asp:ListItem>5 feet 8 inch</asp:ListItem>
                                                            <asp:ListItem>5 feet 9 inch</asp:ListItem>
                                                            <asp:ListItem>6 feet</asp:ListItem>
                                                            <asp:ListItem>7 feet 1 inch</asp:ListItem>
                                                            <asp:ListItem>7 feet 2 inch</asp:ListItem>
                                                            <asp:ListItem>7 feet 3 inch</asp:ListItem>
                                                            <asp:ListItem>7 feet 4 inch</asp:ListItem>
                                                            <asp:ListItem>7 feet 5 inch</asp:ListItem>
                                                            <asp:ListItem>7 feet 6 inch</asp:ListItem>
                                                            <asp:ListItem>7 feet 7 inch</asp:ListItem>
                                                            <asp:ListItem>7 feet 8 inch</asp:ListItem>
                                                            <asp:ListItem>7 feet 9 inch</asp:ListItem>
                                                            <asp:ListItem>8 feet</asp:ListItem>
                                                            <asp:ListItem>8 feet 1 inch</asp:ListItem>
                                                            <asp:ListItem>8 feet 2 inch</asp:ListItem>
                                                            <asp:ListItem>8 feet 3 inch</asp:ListItem>
                                                            <asp:ListItem>8 feet 4 inch</asp:ListItem>
                                                            <asp:ListItem>8 feet 5 inch</asp:ListItem>
                                                            <asp:ListItem>8 feet 6 inch</asp:ListItem>
                                                            <asp:ListItem>8 feet 7 inch</asp:ListItem>
                                                            <asp:ListItem>8 feet 8 inch</asp:ListItem>
                                                            <asp:ListItem>8 feet 9 inch</asp:ListItem>
                                                            <asp:ListItem>9 feet</asp:ListItem>
                                                            <asp:ListItem>9 feet 1 inch</asp:ListItem>
                                                            <asp:ListItem>9 feet 2 inch</asp:ListItem>
                                                            <asp:ListItem>9 feet 3 inch</asp:ListItem>
                                                            <asp:ListItem>9 feet 4 inch</asp:ListItem>
                                                            <asp:ListItem>9 feet 5 inch</asp:ListItem>
                                                            <asp:ListItem>9 feet 6 inch</asp:ListItem>
                                                            <asp:ListItem>9 feet 7 inch</asp:ListItem>
                                                            <asp:ListItem>9 feet 8 inch</asp:ListItem>
                                                            <asp:ListItem>9 feet 9 inch</asp:ListItem>
                                                            <asp:ListItem>10 feet</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td  id="memberweight" runat="server">
                                                        <asp:TextBox ID="txtweight" runat="server" class="form-control"></asp:TextBox>
                                                    </td>
                                                    <td>

                                                    
                                                    <asp:LinkButton ID="addbtn" runat="server" class="btn btn-success" Text="Add" CommandArgument='<%# Eval("memberid") %>' OnClick="addbtn_Click"></asp:LinkButton>
                                                    </td>
                                                   
                                                </tr>



                                               



                                                


                                                
                                                
                                            </tbody>
                                            </asp:panel>
                                        </table>

                                        <div class="reset-button">

                                     
                                    <asp:Button ID="Button1" class="btn btn-warning" runat="server" Text="Reset" 
                                            ></asp:Button>
                                    <asp:Button ID="nextbtn" class="btn btn-success" runat="server" Text="Next" OnClick="nextbtn_Click"
                                     ></asp:Button>
                                     <br />
                                     <br />
                                     <asp:Label ID="Label5" runat="server"></asp:Label>
                                     
                                  
                                                 </div>
                                    </div>
                                </div>
                            </div>
                         </div>
                   

                       </asp:Panel>



                     


                 
            </div>
             </div>
       


           <div class="table-responsive">
            <table class="table table-bordered table-hover">
                <caption>
                    <fieldset>
                        <asp:Repeater ID="rpt" runat="server">
                            <HeaderTemplate>
                                <table ID="example1" class="table table-bordered">
                                    <tr>
                                        <th>
                                            Member Name
                                        </th>
                                        <th>
                                            DOB
                                        </th>
                                        <th>
                                            Relation
                                        </th>
                                        <th>
                                            Height
                                        </th>
                                        <th>
                                            Weight
                                        </th>
                                                                        
                                        <th>
                                            Action
                                        </th>
                                    </tr>
                                                                
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <asp:Label ID="lbl0" runat="server" Text='<%# Eval("membername") %>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="lbl1" runat="server" Text='<%# Eval("dobm") %>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="lbl2" runat="server" Text='<%# Eval("rtop") %>'></asp:Label>
                                    </td>
                                                                    
                                    <td>
                                        <asp:Label ID="lbl3" runat="server" Text='<%# Eval("height") %>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("weight") %>'></asp:Label>
                                    </td>

                                    <td>
                                   
                                       <%-- <asp:LinkButton ID="edit" runat="server" class="btn btn-info btn-xs" CommandArgument='<%# Eval("memberid") %>'
                                          OnClick="edit_Click"><i 
                                            class="fa fa-pencil"></i></asp:LinkButton>--%>
                                            <asp:LinkButton ID="del" runat="server" class="btn btn-danger btn-xs" 
                                            CommandArgument='<%# Eval("memberid") %>' OnClick="del_Click"><i 
                                            class="fa fa-trash-o"></i></asp:LinkButton>
                                        
                                                                        
                                                                        
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
                    
                   
                 

<!-- /Moadl Start1 -->


  <%--          <div class="modal fade" id="myModal" >
            <div class="modal-dialog">
               <div class="modal-content">
                  <div class="modal-header">
                     <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                     <h1 class="modal-title">Update Members Details</h1>
                  </div>
                   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                       <ContentTemplate>
                       
                  <div class="modal-body">
                     <div class="form-group">
                        <label>Name:</label>
                        <asp:TextBox ID="mname" class="form-control"  runat="server"></asp:TextBox>
                     </div>
                     <div class="form-group">
                        <label>DOB:</label>
                        <asp:TextBox ID="mdob"  class="form-control" TextMode=Date runat="server"></asp:TextBox>
                     </div>
                     <div class="form-group">
                        <label>Relation:</label>
                       <asp:DropDownList ID="mddlr" runat="server" class="form-control">
                           
                            <asp:ListItem>Wife</asp:ListItem>
                            <asp:ListItem>Husband</asp:ListItem>
                            <asp:ListItem>Son</asp:ListItem>
                            <asp:ListItem>Daughter</asp:ListItem>
                            <asp:ListItem>Father</asp:ListItem>
                            <asp:ListItem>Mother</asp:ListItem>
                        </asp:DropDownList>



                     </div>
                     <div class="form-group">
                        <label>Height:</label>
                        <asp:DropDownList ID="mddlh" runat="server" class="form-control">
                            <asp:ListItem>2 feet</asp:ListItem>
                            <asp:ListItem>2 feet 1 inch</asp:ListItem>
                            <asp:ListItem>2 feet 2 inch</asp:ListItem>
                            <asp:ListItem>2 feet 3 inch</asp:ListItem>
                            <asp:ListItem>2 feet 4 inch</asp:ListItem>
                            <asp:ListItem>2 feet 5 inch</asp:ListItem>
                            <asp:ListItem>2 feet 6 inch</asp:ListItem>
                            <asp:ListItem>2 feet 7 inch</asp:ListItem>
                            <asp:ListItem>2 feet 8 inch</asp:ListItem>
                            <asp:ListItem>2 feet 9 inch</asp:ListItem>
                            <asp:ListItem>3 feet</asp:ListItem>
                            <asp:ListItem>3 feet 1 inch</asp:ListItem>
                            <asp:ListItem>3 feet 2 inch</asp:ListItem>
                            <asp:ListItem>3 feet 3 inch</asp:ListItem>
                            <asp:ListItem>3 feet 4 inch</asp:ListItem>
                            <asp:ListItem>3 feet 5 inch</asp:ListItem>
                            <asp:ListItem>3 feet 6 inch</asp:ListItem>
                            <asp:ListItem>3 feet 7 inch</asp:ListItem>
                            <asp:ListItem>3 feet 8 inch</asp:ListItem>
                            <asp:ListItem>3 feet 9 inch</asp:ListItem>
                            <asp:ListItem>4 feet</asp:ListItem>
                            <asp:ListItem>4 feet 1 inch</asp:ListItem>
                            <asp:ListItem>4 feet 2 inch</asp:ListItem>
                            <asp:ListItem>4 feet 3 inch</asp:ListItem>
                            <asp:ListItem>4 feet 4 inch</asp:ListItem>
                            <asp:ListItem>4 feet 5 inch</asp:ListItem>
                            <asp:ListItem>4 feet 6 inch</asp:ListItem>
                            <asp:ListItem>4 feet 7 inch</asp:ListItem>
                            <asp:ListItem>4 feet 8 inch</asp:ListItem>
                            <asp:ListItem>4 feet 9 inch</asp:ListItem>
                            <asp:ListItem>5 feet</asp:ListItem>
                            <asp:ListItem>5 feet 1 inch</asp:ListItem>
                            <asp:ListItem>5 feet 2 inch</asp:ListItem>
                            <asp:ListItem>5 feet 3 inch</asp:ListItem>
                            <asp:ListItem>5 feet 4 inch</asp:ListItem>
                            <asp:ListItem>5 feet 5 inch</asp:ListItem>
                            <asp:ListItem>5 feet 6 inch</asp:ListItem>
                            <asp:ListItem>5 feet 7 inch</asp:ListItem>
                            <asp:ListItem>5 feet 8 inch</asp:ListItem>
                            <asp:ListItem>5 feet 9 inch</asp:ListItem>
                            <asp:ListItem>6 feet</asp:ListItem>
                            <asp:ListItem>7 feet 1 inch</asp:ListItem>
                            <asp:ListItem>7 feet 2 inch</asp:ListItem>
                            <asp:ListItem>7 feet 3 inch</asp:ListItem>
                            <asp:ListItem>7 feet 4 inch</asp:ListItem>
                            <asp:ListItem>7 feet 5 inch</asp:ListItem>
                            <asp:ListItem>7 feet 6 inch</asp:ListItem>
                            <asp:ListItem>7 feet 7 inch</asp:ListItem>
                            <asp:ListItem>7 feet 8 inch</asp:ListItem>
                            <asp:ListItem>7 feet 9 inch</asp:ListItem>
                            <asp:ListItem>8 feet</asp:ListItem>
                            <asp:ListItem>8 feet 1 inch</asp:ListItem>
                            <asp:ListItem>8 feet 2 inch</asp:ListItem>
                            <asp:ListItem>8 feet 3 inch</asp:ListItem>
                            <asp:ListItem>8 feet 4 inch</asp:ListItem>
                            <asp:ListItem>8 feet 5 inch</asp:ListItem>
                            <asp:ListItem>8 feet 6 inch</asp:ListItem>
                            <asp:ListItem>8 feet 7 inch</asp:ListItem>
                            <asp:ListItem>8 feet 8 inch</asp:ListItem>
                            <asp:ListItem>8 feet 9 inch</asp:ListItem>
                            <asp:ListItem>9 feet</asp:ListItem>
                            <asp:ListItem>9 feet 1 inch</asp:ListItem>
                            <asp:ListItem>9 feet 2 inch</asp:ListItem>
                            <asp:ListItem>9 feet 3 inch</asp:ListItem>
                            <asp:ListItem>9 feet 4 inch</asp:ListItem>
                            <asp:ListItem>9 feet 5 inch</asp:ListItem>
                            <asp:ListItem>9 feet 6 inch</asp:ListItem>
                            <asp:ListItem>9 feet 7 inch</asp:ListItem>
                            <asp:ListItem>9 feet 8 inch</asp:ListItem>
                            <asp:ListItem>9 feet 9 inch</asp:ListItem>
                            <asp:ListItem>10 feet</asp:ListItem>
                        </asp:DropDownList>





                     </div>
                     <div class="form-group">
                        <label>Weight:</label>
                        <asp:TextBox ID="mweight"  runat="server" class="form-control"></asp:TextBox>
                     </div>
                     
                     
                     
                  </div>
                  </ContentTemplate>
                   </asp:UpdatePanel>
                  <div class="modal-footer">
                  <asp:updatepanel runat="server" id="Updatepanel3" UpdateMode="Conditional">
                                        <contenttemplate>
                     <asp:Button ID="close" class="btn btn-warning" runat="server" Text="Close" data-dismiss="modal"
                        ></asp:Button>
                     <asp:Button ID="update" class="btn btn-success" runat="server" Text="Save Changes" CommandArgument='<%# Eval("memberid") %>' 
                      OnClick="update_Click"></asp:Button>
                       </contenttemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="update" EventName="Click" />
                                        </Triggers>
                                    </asp:updatepanel>
                  </div>
               </div>
            </div>
         </div>--%>
         <!-- /Moadl end1 -->


         <!-- /Moadl Start2 -->


            
         <!-- /Moadl end2 -->


         <!-- /.content -->
     </div> <!-- /.content-wrapper -->
        </div>
        </ContentTemplate>
        </asp:UpdatePanel>

        <div class="modal fade" id="imodal" >
            <div class="modal-dialog">
               <div class="modal-content">
                  <div class="modal-header">
                     <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                     <h1 class="modal-title">Update Insured Details</h1>
                  </div>
                   <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                       <ContentTemplate>
                       
                  <div class="modal-body">
                     <div class="form-group">
                        <label>Name:</label>
                        <asp:TextBox ID="piname" class="form-control"  runat="server"></asp:TextBox>
                     </div>
                     <div class="form-group">
                        <label>DOB:</label>
                        <asp:TextBox ID="pidob"  class="form-control" TextMode=Date runat="server"></asp:TextBox>
                     </div>
                      


                     <div class="form-group">
                <label>Adreess:</label>
                <asp:TextBox ID="piaddress"  class="form-control" placeholder="Address.." Rows="3" runat="server"></asp:TextBox>
                        


                     </div>

                     <div class="form-group">
                        <label>Mobile No::</label>
                        <asp:TextBox ID="pimobileno"  class="form-control" placeholder="Address.." Rows="3" runat="server"></asp:TextBox>



                     </div>
                     
                     <div class="form-group">
                    <label>Gender:</label>&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="pimalerad" GroupName="a" Text="Male" runat="server"></asp:RadioButton>&nbsp;&nbsp;
                        <asp:RadioButton ID="pifemalerad" GroupName="a" Text="Female" runat="server"></asp:RadioButton>
                    </div>
                     
                  </div>
                  </ContentTemplate>
                   </asp:UpdatePanel>
                  <div class="modal-footer">


                   <asp:updatepanel runat="server" id="ipp" UpdateMode="Conditional">
                                        <contenttemplate>
                    <asp:Button ID="Button2" class="btn btn-warning" runat="server" Text="Close" data-dismiss="modal"></asp:Button>
                     <asp:Button ID="iupdate" class="btn btn-success" runat="server" Text="Save Changes"
                      CommandArgument='<%# Eval("memberid") %>' OnClick="iupdate_Click"></asp:Button>
                                           
                                            
                                        </contenttemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="iupdate" EventName="Click" />
                                        </Triggers>
                                    </asp:updatepanel>
                     
                    
                  </div>
               </div>
            </div>
         </div>
</asp:Content>