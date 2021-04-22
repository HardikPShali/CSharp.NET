<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="InsuranceHub.register" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>InsuranceHub</title>

    <!-- Favicon and touch icons -->
    <link rel="shortcut icon" href="assets/dist/img/ico/favicon.png" type="image/x-icon">
    
    <!-- Bootstrap -->
    <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <!-- Bootstrap rtl -->
    <!--<link href="assets/bootstrap-rtl/bootstrap-rtl.min.css" rel="stylesheet" type="text/css"/>-->
    <!-- Pe-icon-7-stroke -->
    <link href="assets/pe-icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet" type="text/css"/>
    <!-- style css -->
    <link href="assets/dist/css/stylehealth.min.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <div class="login-wrapper">
        <div class="back-link">
            <a href="Login.aspx" class="btn btn-success">Back to Login</a>
        </div>
        <div class="container-center lg">
            <div class="panel panel-bd">
                <div class="panel-heading">
                    <div class="view-header">
                        <div class="header-icon">
                            <i class="pe-7s-unlock"></i>
                        </div>
                        <div class="header-title">
                            <h3>Register</h3>
                            <small><strong>Please enter your data to register.</strong></small>
                        </div>
                    </div>
                </div>
                <div class="panel-body">
                    <form id="loginForm" novalidate runat="server">
                      <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                        <div class="row">
                            <div class="form-group col-lg-6">
                                <label>Username</label>
                                
                                <asp:TextBox ID="txtusername" runat="server" class="form-control" name="username"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server"  TargetControlID="txtusername" FilterType="UppercaseLetters, LowercaseLetters, Custom" ValidChars=" ">
                                </cc1:FilteredTextBoxExtender>
                                <span class="help-block small">Your unique username to app</span>
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                            </div>
                            <div class="form-group col-lg-6">
                                <label>Email Id</label>
                               
                                <asp:TextBox ID="txtemailid" runat="server" class="form-control" name="emailid"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server"  TargetControlID="txtemailid" FilterType="Numbers, LowercaseLetters, Custom" ValidChars=".@/">
                                </cc1:FilteredTextBoxExtender>
                                <span class="help-block small">Your address email to contact</span>
                                <asp:Label ID="Label2" runat="server"></asp:Label>
                            </div>
                            <div class="form-group col-lg-6">
                                <label>Password</label>
                                
                                <asp:TextBox ID="txtpass" runat="server" type="password" class="form-control" name="password"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server"  TargetControlID="txtpass" FilterType="Numbers, LowercaseLetters, UppercaseLetters, Custom" ValidChars=".@/">
                                </cc1:FilteredTextBoxExtender>
                                <span class="help-block small">Your hard to guess password</span>
                                 <asp:Label ID="Label3" runat="server"></asp:Label>
                            </div>
                            <div class="form-group col-lg-6">
                                <label>Confirm Password</label>
                               
                                <asp:TextBox ID="txtcpass" runat="server" type="password" class="form-control" name="cpassword"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server"  TargetControlID="txtcpass" FilterType="Numbers, LowercaseLetters, UppercaseLetters, Custom" ValidChars=".@/">
                                </cc1:FilteredTextBoxExtender>
                                <span class="help-block small">Please repeat your pasword</span>
                                <asp:Label ID="Label4" runat="server"></asp:Label>

                            </div>
                            
                            
                        </div>
                        <div>
                            <asp:Label ID="errormsg" runat="server"></asp:Label>
                            <asp:Button ID="registerbtn" class="btn btn-warning" runat="server" 
                                Text="Register" onclick="registerbtn_Click" />
                           <%-- <a class="btn btn-primary" href="Login.aspx">Login</a>--%>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- /.content-wrapper -->
    <!-- jQuery -->
    <script src="assets/plugins/jQuery/jquery-1.12.4.min.js" type="text/javascript"></script>
    <!-- bootstrap js -->
    <script src="assets/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>
