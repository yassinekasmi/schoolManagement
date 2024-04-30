<%@ Page Title="" Language="C#" MasterPageFile="~/Partages/MasterPage.Master" AutoEventWireup="true" CodeBehind="ParcourirParticipants.aspx.cs" Inherits="GestionCongrees.Pages.ParcourirParticipants" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .label {
            color: #000 !important;
        }

        .portlet.box > .portlet-body {
            padding: 10px;
        }

        .conjoint {
            color: #4a5991;
            padding: 6px 7px;
            font-size: 15px;
            font-weight: 600;
        }

        input[type=checkbox] {
            margin: 4px 12px 6px !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel runat="server" ID="updatePanel">
        <ContentTemplate>
            <div class="row">
                <div class="col-md-12" style="margin-top: 30px;">
                    <div class="portlet light">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-navicon font-green-sharp"></i>
                                <span class="caption-subject font-green-sharp bold uppercase">Charger la liste des participants</span>
                            </div>
                            <div class="col-md-3">
                                <asp:DropDownList runat="server" Enabled="false" ID="Congreliste" OnSelectedIndexChanged="Congreliste_SelectedIndexChanged" AutoPostBack="true" CssClass="btn input-sm">
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-3" style="margin-top: 9px;">
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </div>
                            <div class="col-md-3">
                                <asp:LinkButton runat="server" ID="ImportExcel" OnClick="ImportExcel_Click" CssClass="btn green btn-sm">Import Excel</asp:LinkButton>
                                <a class="btn yellow btn-sm" href="../ModelExcel/ModeleFichier.xlsx">Mdèle  excel</a>
                            </div>
                            <div class="col-md-12" style="padding: 20px;">
                                <div class="col-md-11">
                                    <div runat="server" id="NbExcel" visible="false">
                                        <h4>
                                            <span class="caption-subject bold">Le nombre de participants est :
                                                 <span runat="server" id="NbParticipants" style="color: red"></span></h4>
                                    </div>
                                </div>
                                <div class="col-md-1">
                                    <asp:LinkButton runat="server" Visible="false" ID="ValiderExcel" OnClick="ValiderExcel_Click" CssClass="btn btn-danger btn-sm">Valider</asp:LinkButton>
                                </div>
                            </div>
                            <div class="col-md-12 GvOrganisateur">
                                <asp:PlaceHolder runat="server" ID="boxMessage"></asp:PlaceHolder>
                                <div class="table-scrollable">
                                    <asp:GridView runat="server" ID="gvParticipant" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="false">
                                        <Columns>
                                            <asp:BoundField DataField="delegation" HeaderText="Délégation" />
                                            <asp:BoundField DataField="PayOrigine" HeaderText="PAYS D'ORIGINE" />
                                            <asp:BoundField DataField="nom" HeaderText="Nom" />
                                            <asp:BoundField DataField="prenom" HeaderText="Prénom" />
                                            <asp:BoundField DataField="NTel" HeaderText="NUM TELEPHONE" />
                                            <asp:BoundField DataField="titre" HeaderText="TITRE / POSTE" />
                                            <asp:BoundField DataField="NPassport" HeaderText="N° Passport" />
                                            <asp:BoundField DataField="NVolArrivee" HeaderText="N° VOL D'ARRIVÉE" />
                                            <asp:BoundField DataField="DateVolArrivee" HeaderText="DATE D'ARRIVÉE" />
                                            <asp:BoundField DataField="HeureVolArrivee" HeaderText="HEURE D'ARRIVÉE" />
                                            <asp:BoundField DataField="AeroportVolArrivee" HeaderText="AEROPORT D'ARRIVEE" />
                                            <asp:BoundField DataField="PayDestination" HeaderText="PAYS DE DESTINATION" />
                                            <asp:BoundField DataField="AeroportVolDepart" HeaderText="AEROPORT DE DEPART" />
                                            <asp:BoundField DataField="NVolDepart" HeaderText="NO. VOL DE DÉPART" />
                                            <asp:BoundField DataField="DateVolDepart" HeaderText="DATE DE DÉPART" />
                                            <asp:BoundField DataField="HeureVolDepart" HeaderText="HEURE DE DÉPART" />
                                            <asp:BoundField DataField="hotel" HeaderText="HOTEL" />
                                            <%-- <asp:BoundField DataField="Chef" HeaderText="Chef de la délégation" />
                                        <asp:BoundField DataField="Qualite" HeaderText="Qualité" />
                                        <asp:BoundField DataField="NonOfficiel" HeaderText="Non Officiel" />--%>
                                        </Columns>
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="ImportExcel" />
        </Triggers>
    </asp:UpdatePanel>
    <script>  
        if (window.history.replaceState) {
            window.history.replaceState(null, null, window.location.href);
        }
    </script>
</asp:Content>
