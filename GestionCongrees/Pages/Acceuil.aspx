<%@ Page Title="" Language="C#" MasterPageFile="~/Partages/MasterPage.Master" AutoEventWireup="true" CodeBehind="Acceuil.aspx.cs" Inherits="schoolManagement.Pages.Acceuil" %>
<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
    <style>
        .portlet.box.blue-madison {
            background-color: #e9ecf3 !important;
        }

        .table-bordered > tbody > tr > th {
            border: 1px solid #adaaaa;
        }

        .table-bordered, .table > tbody > tr > th, .table tbody tr td {
            border: 1px solid #bdbbbb;
            background: #e9ecf3;
            text-align: center;
            padding: 10px 20px 13px 0;
        }

        .table-scrollable {
            border-radius: 20px !important;
            border: none !important;
        }

        .table-bordered > tbody > tr > th {
            background: #b34d4d !important;
        }

        .container {
            width: 100% !important;
        }

            .container td:hover {
                background-color: #4db3a2;
                color: #000;
                font-weight: bold;
                box-shadow: #7F7C21 -1px 1px, #7F7C21 -2px 2px, #7F7C21 -3px 3px, #7F7C21 -4px 4px, #7F7C21 -5px 5px, #7F7C21 -6px 6px;
                transform: translate3d(6px, -6px, 0);
                transition-delay: 0s;
                transition-duration: 0.4s;
                transition-property: all;
            }

            .container th {
                font-weight: 800;
                color: #fff;
            }

            .container tr:last-child > td:hover {
                transform: none;
                box-shadow: none;
                font-weight: 800;
            }

            .container tr:last-child > td {
                font-weight: 800;
            }

        .portlet.box.blue-madison {
            height: auto;
        }

        .portlet.box.blue-madison {
            height: auto !important;
        }

        .dashboard-stat2 {
            border-radius: 23px 0px !important;
        }
        .dashboard-stat2 .display .number small{
            color : #000 !important;
        }
    </style>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
          
            <asp:Panel runat="server" ID="Panel1" CssClass="row">
                <div class="col-md-12">
                    <div class="portlet box blue-madison">
                        <div class="portlet-title">
                            <div class="caption bold font-size-14px">
                                <i class="fa fa-briefcase"></i>Statistuique  
                            </div>
                            <div class="tools">
                                <a href="javascript:;" class="reload" data-original-title="" title=""></a>
                            </div>
                        </div>
                        <div class="row" style="margin: 50px" id="BoxStatistiques" runat="server"  >
                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12"> 
                                <div class="dashboard-stat2">
                                    <div class="display"> 
                                        <div class="number">
                                            <h3 class="font-red-haze">
                                                <a href="/Pages/ChercheBoite.aspx" class="font-green-sharp" runat="server" id="Count_AllBoites"></a>
                                            </h3>
                                            <small>Tronc Commun scientifique   </small>
                                        </div>
                                        <div class="icon">
                                            <img src="../Images/iconed.jpg" width="50" />
                                        </div>
                                    </div>
                                    <div class="progress-info">
                                        <div class="progress">
                                            <span style="width: 100%;" class="progress-bar progress-bar-success green-sharp">
                                                <span class="sr-only">76% progress</span>
                                            </span>
                                        </div> 
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                <div class="dashboard-stat2">
                                    <div class="display">
                                        <div class="number">
                                            <h3 class="font-red-haze">
                                                <a href="/Pages/Index.aspx?TypeArchiveID=1" class="font-green-sharp" runat="server" id="Count_AllArchive"></a>
                                            </h3>
                                            <small>Tronc commun d'une éducation authentique</small>
                                        </div>
                                        <div class="icon">
                                            <img src="../Images/iconed.jpg" width="50" />
                                        </div>
                                    </div>
                                    <div class="progress-info">
                                        <div class="progress">
                                            <span style="width: 100%;" class="progress-bar progress-bar-success red-haze">
                                                <span class="sr-only"></span>
                                            </span>
                                        </div> 
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                <div class="dashboard-stat2">
                                    <div class="display">
                                        <div class="number">
                                            <h3 class="font-blue-sharp">
                                                <a href="/Pages/Index.aspx?TypeArchiveID=2" class="font-green-sharp" runat="server" id="Count_AllDocumments"></a></h3>
                                            <small>Tronc commun littéraire et sciences humaines </small>
                                        </div>
                                        <div class="icon">
                                            <img src="../Images/iconed.jpg" width="50" />
                                        </div>
                                    </div>
                                    <div class="progress-info">
                                        <div class="progress">
                                            <span style="width: 100%;" class="progress-bar progress-bar-success blue-sharp">
                                                <span class="sr-only">45% grow</span>
                                            </span>
                                        </div>
                                        <div class="status">
                                            <div class="status-number">
                                                    45% 
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                <div class="dashboard-stat2">
                                    <div class="display">
                                        <div class="number">
                                            <h3 class="font-purple-soft">
                                                <a href="#" class="font-green-sharp" runat="server" ></a></h3>
                                            <small>Tronc commun technologie  </small>
                                        </div>
                                        <div class="icon">
                                            <img src="../Images/iconed.jpg" width="50" />
                                        </div>
                                    </div>
                                    <div class="progress-info">
                                        <div class="progress">
                                            <span style="width: 100%;" class="progress-bar progress-bar-success purple-soft">
                                                <span class="sr-only">56% change</span>
                                            </span>
                                        </div>
                                        <div class="status">
                                            <div class="status-number">
                                                <%--57%--%>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                <div class="dashboard-stat2">
                                    <div class="display">
                                        <div class="number">
                                            <h3 class="font-purple-soft">
                                                <a href="/Archive/GestionsBoitesArchiviste.aspx" class="font-green-sharp" runat="server" id="Count_AllBoiteNonAffecter"></a></h3>
                                            <small>   </small>
                                        </div>
                                        <div class="icon">
                                            <img src="../Images/iconed.jpg" width="50" />
                                        </div>
                                    </div>
                                    <div class="progress-info">
                                        <div class="progress">
                                            <span style="width: 100%;" class="progress-bar progress-bar-success purple-soft">
                                                <span class="sr-only">56% change</span>
                                            </span>
                                        </div>
                                        <div class="status">
                                            <div class="status-number">
                                                <%--  57%--%>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                <div class="dashboard-stat2">
                                    <div class="display">
                                        <div class="number">
                                            <h3 class="font-purple-soft"><a class="font-green-sharp" runat="server" id="Count_AllBoiteArchiver"></a></h3>
                                            <small> </small>
                                        </div>
                                        <div class="icon">
                                            <img src="../Images/iconed.jpg" width="50" />
                                        </div>
                                    </div>
                                    <div class="progress-info">
                                        <div class="progress">
                                            <span style="width: 100%;" class="progress-bar progress-bar-success purple-soft">
                                                <span class="sr-only">56% change</span>
                                            </span>
                                        </div>
                                        <div class="status">
                                            <div class="status-number">
                                                <%--  57%--%>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--------------------------------------------------%>
                            <div class="col-md-12 margin-bottom-10">
                                <div id="sample_6_wrapper" class="table-scrollable">
                                    <asp:GridView runat="server" ID="gvUser" CssClass="container table table-striped table-bordered table-hover dataTable no-footer" AutoGenerateColumns="false">
                                        <Columns>
                                            <asp:BoundField HeaderText="الإسم الشخصي " DataField="Prenom" />
                                            <asp:BoundField HeaderText="الإسم العائلي" DataField="Nom" />
                                            <asp:BoundField HeaderText="العلب" DataField="NombreBoite" />
                                            <asp:BoundField HeaderText="الملفات" DataField="NombreDossier" />
                                            <asp:BoundField HeaderText="الوثائق" DataField="NombreDocumment" />
                                        </Columns>
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
            </asp:Panel>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
