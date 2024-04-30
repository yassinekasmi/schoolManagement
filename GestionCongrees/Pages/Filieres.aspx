<%@ Page Title="" Language="C#" MasterPageFile="~/Partages/MasterPage.Master" AutoEventWireup="true" CodeBehind="Filieres.aspx.cs" Inherits="schoolManagement.Pages.Filieres" %>

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

            .dashboard-stat2 .display .number small {
                color: #000 !important;
            }
    </style>

</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel runat="server" UpdateMode="Conditional" ID="panel">
        <ContentTemplate>
            <div class="container">
                <ul class="breadcrumb">
                    <li><a href="/Pages/Accueil.aspx">Acceuil</a></li>
                    <li class="active">Liste des filieres  
                    </li>
                </ul>
                <div class="row">
                    <div class="col-md-12">
                        <div class="tabbable-custom tabbable-noborder">
                            <div class="tab-content">
                                <asp:Panel ID="panel2" runat="server" CssClass="panelform portlet">
                                    <div class="portlet box blue-hoki">
                                        <div class="portlet-title">
                                            <div class="caption">
                                                <span class="caption-subject bold uppercase"><i class="fa fa-briefcase " style="margin-left: 10px"></i>Chercher une filiere  </span>
                                            </div>
                                            <div class="tools">
                                                <a href="javascript:;" class="collapse" data-original-title="" title=""></a>
                                            </div>
                                        </div>
                                        <div class="portlet-body" style="display: block;">
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="label">
                                                            Nom filiere
                                                        </label>
                                                        <asp:DropDownList runat="server" ID="Nomfiliere" CssClass="form-control"></asp:DropDownList>
                                                    </div>
                                                </div>
                                                <%--<div class="col-md-3">
                                                   <div class="form-group">
                                                     <label class="label"> 
                                                        </label>
                                                        <asp:TextBox Class="datestyle form-control input-sm" ID="DateReponse" runat="server" TextMode="Date"></asp:TextBox>
                                                     </div>
                                                </div> --%>

                                                <div class="col-md-3">
                                                    <div class="box-saerche" style="ma5gin-top: 15px;">
                                                        <asp:LinkButton runat="server" ID="BtnSearch" CssClass="btn default green-stripe"><i class="fa fa-search"></i></asp:LinkButton>&nbsp;
                                                    <asp:LinkButton runat="server" ID="BtnRefresh" CssClass="btn default yellow-stripe"><i class="fa fa-refresh"></i></asp:LinkButton>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                </asp:Panel>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-collapse collapse in" id="accordion1_1">
                        <div class="panel-body">
                            <asp:PlaceHolder runat="server" ID="boxMessage"></asp:PlaceHolder>
                            <div class="row">
                                <div class="col-md-12 col-md-12 col-sm-12 ">
                                    <asp:LinkButton class="btn btn-primary btn-sm" runat="server" ID="ShowPopupAddReponse" OnClick="ShowPopupAddReponse_Click"><i class="fa fa-plus"></i> Ajouter une filiere </asp:LinkButton>

                                    <asp:GridView runat="server" ID="gv" AutoGenerateColumns="false" DataKeyNames="Id_Rep" AllowPaging="true" CssClass="GvEng table table-striped table-bordered table-hover">
                                        <Columns>
                                            <asp:BoundField DataField="" HeaderText="" ItemStyle-CssClass="ID" />
                                            <asp:BoundField DataField="nomf" HeaderText="Nom filiere" />
                                        </Columns>
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

         <div class="modal fade" id="PopupAddFilieres" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog">
              <div class="modal-content">
                  <div class="modal-header">
                      <button type="button" class="close" style="position: absolute; right: 21px" data-dismiss="modal" aria-hidden="true"></button>
                      <h4 class="modal-title" id="titrePopup" runat="server" visible="false"></h4>
                  </div>
                  <div class="modal-body">
                      <div class="row">
                            <div class="col-md-4">
                              <label class="label-control">
                                  Filiere
                                  <asp:RequiredFieldValidator ID="a44" runat="server" ErrorMessage="*" ValidationGroup="element" ForeColor="Red" ControlToValidate="Hotel"></asp:RequiredFieldValidator>
                              </label>
                              <asp:DropDownList runat="server" ID="Hotel" CssClass="form-control select2me"></asp:DropDownList>
                          </div>
                          <div class="col-md-4">
                              <label class="label-control">
                                  Branche
                                  <asp:RequiredFieldValidator ID="a1" runat="server" ErrorMessage="*" ValidationGroup="element" ForeColor="Red" ControlToValidate="Organisateur"></asp:RequiredFieldValidator>
                              </label>
                              <asp:DropDownList runat="server" ID="Organisateur" CssClass="form-control select2me"></asp:DropDownList>
                          </div> 

                      </div>
                  </div>
                  <div class="modal-footer">
                      <asp:LinkButton runat="server" ValidationGroup="element" ID="btnEnregistrer"   CssClass="btn btn-primary btn-sm"><i class="fa fa-check"></i> Enregistrer</asp:LinkButton>
                      <asp:LinkButton runat="server" ID="btnAnnuler"  CssClass="btn btn-danger btn-sm"><i class="fa fa-close"></i> Annuler</asp:LinkButton>
                  </div>
              </div>
          </div>
      </div>
                 
                    
        </ContentTemplate>
        <Triggers>
            <%--   <asp:PostBackTrigger ControlID="Add_Reponse" />
            <asp:AsyncPostBackTrigger ControlID="GvEng" />--%>
        </Triggers>
    </asp:UpdatePanel>
    <script>

        function AfficherPdf() {
            window.open('../Afficher_Pdf.aspx', '_blank');
        }
        if (window.history.replaceState) {
            window.history.replaceState(null, null, window.location.href);
        }
    </script>
</asp:Content>
