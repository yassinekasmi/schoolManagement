<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="schoolManagement.Login" %>
  
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
                <h3 class="form-title" id="tr_1" runat="server">Authentification</h3>
                <div runat="server" id="AlertPanel" visible="False">
                    <asp:Label runat="server" ID="ErrorMessage" ForeColor="Red"></asp:Label>
                </div>

                <div class="form-group">
                    <label class="control-label visible-ie8 visible-ie9">Email</label>
                    <asp:TextBox runat="server" placeholder="Email" CssClass="form-control form-control-solid placeholder-no-fix" ID="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="Email" ErrorMessage="Le champ doit être saisi" ValidationGroup="LoginValidate" />
                </div>
                <div class="form-group">
                    <label class="control-label visible-ie8 visible-ie9">Mot de passe</label>
                    <asp:TextBox runat="server" TextMode="Password" placeholder="Mot De Passe" CssClass="form-control form-control-solid placeholder-no-fix" ID="MotPasse"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="MotPasse" ErrorMessage="Le champ doit être saisi" ValidationGroup="LoginValidate" />
                </div>
                <div class="form-actions">
                    <asp:Button Text="Connexion" OnClick="Login_Button_Click" CssClass="btn btn-success btn-block uppercase" ID="Login_Button" runat="server" ValidationGroup="LoginValidate" />
                </div>

            </div>
            <div class="copyright" id="tr_2" runat="server">
                2024 © .
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
            
        </div>
    </form>
</body>
</html>
