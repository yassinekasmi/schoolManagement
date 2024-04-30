<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginParticipant.aspx.cs" Inherits="GestionCongrees.Pages.LoginParticipant" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css" />
    <link href="../assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="../assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
    <link href="../assets/global/plugins/bootstrap/css/bootstrap-rtl.min.css" rel="stylesheet" type="text/css" />
    <link href="../assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css" />
    <link href="../assets/admin/pages/css/login-rtl.css" rel="stylesheet" type="text/css" />
    <link href="../assets/global/css/components-rounded.css" id="style_components" rel="stylesheet" type="text/css" />
    <link href="../assets/global/css/plugins-rtl.css" rel="stylesheet" type="text/css" />
    <link href="../assets/admin/layout/css/layout-rtl.css" rel="stylesheet" type="text/css" />
    <link href="../assets/admin/layout/css/themes/default-rtl.css" rel="stylesheet" type="text/css" id="style_color" />
    <link href="../assets/admin/layout/css/custom-rtl.css" rel="stylesheet" type="text/css" />
    <link href="../assets/style.css" rel="stylesheet" />
    <style>
        select.input-sm {
            background-color: #eceef1;
            color: #333333;
            border-radius: 6px;
            height: 24px;
        }


        .login .content {
            width: 425px;
        }

        .label {
            color: #364150;
        }

        .modal-title {
            color: #364150;
        }
    </style>
</head>
<body class="login" style="background-color: #364158;">
    <form id="form1" runat="server">

        <div style="padding-top: 4px;">
            <div class="menu-toggler sidebar-toggler">
            </div>
            <div class="logo">
                <a href="index.html">
                    <img src="../assets/admin/layout3/img/logoM.png" alt="logo" style="padding-top: 10px" />
                </a>
            </div>
            <div class="content">
                <h3 class="form-title" id="tr_1" runat="server">Sign In</h3>
                <div runat="server" id="AlertPanel" visible="False">
                    <asp:Label runat="server" ID="ErrorMessage" ForeColor="Red"></asp:Label>
                </div>
                <div class="form-group">
                    <label class="control-label visible-ie8 visible-ie9">Email</label>
                    <asp:TextBox runat="server" placeholder="E-mail" CssClass="form-control form-control-solid placeholder-no-fix" ID="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="Email" ErrorMessage="Le champ doit être saisi" ValidationGroup="LoginValidate" />
                </div>
                <div class="form-group">
                    <label class="control-label visible-ie8 visible-ie9">Mot de passe</label>
                    <asp:TextBox runat="server" TextMode="Password" placeholder="Password" CssClass="form-control form-control-solid placeholder-no-fix" ID="MotPasse"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="MotPasse" ErrorMessage="Le champ doit être saisi" ValidationGroup="LoginValidate" />
                </div>
                <div class="form-actions">
                    <asp:Button Text="Login" OnClick="Login_Button_Click" CssClass="btn btn-success btn-block uppercase" ID="Login_Button" runat="server" ValidationGroup="LoginValidate" />
                    <asp:LinkButton ID="forget_password" OnClick="forget_password_Click" runat="server" CssClass="forget-password">Forgot Password?</asp:LinkButton>
                </div>
            </div>
            <div class="copyright" id="tr_2" runat="server">
                2022 © House of Representatives.
            </div>
            <div class="modal fade " id="Popup" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog ">
                    <div class="modal-content">
                        <div class="modal-header ">
                            <button type="button" class="close" style="position: absolute; right: 21px" data-dismiss="modal" aria-hidden="true"></button>
                            <h4 class="modal-title" id="h4" runat="server">Forget Password</h4>
                        </div>
                        <div class="modal-body">
                            <div class="row forget-form">
                                <div class="col-md-12">
                                    <label class="label-control" id="l_1" runat="server">
                                        Enter your e-mail address below to reset your password.
											<asp:RequiredFieldValidator ID="a2" runat="server" ErrorMessage="*" ValidationGroup="element" ForeColor="Red" ControlToValidate="ForgotEmail"></asp:RequiredFieldValidator>
                                    </label>
                                    <span runat="server" id="messageEmailNotFound" visible="false" style="color:red;">Email Not Found! Check Your Email!</span>
                                    <asp:TextBox runat="server" ID="ForgotEmail" CssClass="form-control"></asp:TextBox>
                                </div>
                      
                            </div>
                        </div>
                        <div class="modal-footer">
                            <asp:LinkButton runat="server" ValidationGroup="element" ID="btnEnvoyer" OnClick="btnEnvoyer_Click" CssClass="btn btn-success uppercase btn-sm"><i class="fa fa-check"></i> Submit</asp:LinkButton>
                            <asp:LinkButton runat="server" ID="btnAnnuler" CssClass="btn btn-danger btn-sm"><i class="fa fa-close"></i> Cancel</asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
            <script src="../assets/global/plugins/jquery.min.js" type="text/javascript"></script>
            <script src="../assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
            <script src="../assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
            <script src="../assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
            <script src="../assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
            <script src="../assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
            <script src="../assets/global/plugins/jquery-validation/js/jquery.validate.min.js" type="text/javascript"></script>
            <script src="../assets/global/scripts/metronic.js" type="text/javascript"></script>
            <script src="../assets/admin/layout/scripts/layout.js" type="text/javascript"></script>
            <script src="../assets/admin/layout/scripts/demo.js" type="text/javascript"></script>
            <script src="../assets/admin/pages/scripts/login.js" type="text/javascript"></script>
            <script>
                jQuery(document).ready(function () {
                    Metronic.init(); // init metronic core components
                    Layout.init(); // init current layout
                    Login.init();
                    Demo.init();
                });
            </script>
            <script>
                function langageDirectionRight() {

                    var listInput = document.getElementsByClassName("form-control");
                    for (var k = 0; k < listInput.length; k++) {
                        listInput[k].style.textAlign = "right";
                    }
                    document.getElementById("forget_password").style.cssFloat = "right";
                }
                function langageDirectionLeft() {

                    var listInput = document.getElementsByClassName("form-control");
                    for (var k = 0; k < listInput.length; k++) {
                        listInput[k].style.textAlign = "left";
                    }
                    document.getElementById("forget_password").style.cssFloat = "left";
                }
            </script>
        </div>
    </form>

</body>
</html>
