<%@ Page Title="" Language="C#" MasterPageFile="~/Partages/MasterPage.Master" AutoEventWireup="true" CodeBehind="Acceuil.aspx.cs" Inherits="GestionCongrees.Pages.Acceuil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .label {
            color: #000 !important;
        }

        .portlet.box > .portlet-body {
            padding: 10px;
        }

        input[type=checkbox] {
            margin: 4px 12px 6px !important;
        }

        .table tbody tr th:last-child {
            min-width: 280px !important
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel runat="server" ID="updatePanel">
        <ContentTemplate>
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="portlet light">
                                <div class="portlet-title">
                                    <div class="caption">
                                        <i class="fa fa-navicon font-green-sharp"></i>
                                        <span class="caption-subject font-green-sharp bold">Liste des participants du congre 
                                    </div>
                                    <div class="col-md-3" style="margin-top: 5px;">
                                        <asp:DropDownList runat="server" ID="Congreliste" Enabled="false" OnSelectedIndexChanged="Congreliste_SelectedIndexChanged" AutoPostBack="true" CssClass="btn input-sm uppercase">
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:LinkButton runat="server" ID="AddParticipant" Visible="false" OnClick="AddParticipant_Click" CssClass="btn green btn-sm"><i class="fa fa-plus"></i> Ajouter participant</asp:LinkButton>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:LinkButton runat="server" ID="ParcourirParticipant" Visible="false" OnClick="ParcourirParticipant_Click" CssClass="btn btn-danger btn-sm"> Charger les participants XLS</asp:LinkButton>
                                    </div>
                                    <!-- start hide section print yassin -->
                                    <%-- <div class="col-md-2 display-none">--%>

                                    <div class="col-md-2 ">
                                        <div class="col-md-9">
                                            <asp:DropDownList CssClass="form-control" runat="server" ID="impression">
                                                <asp:ListItem Value="-1" Text="-- Exporter --"></asp:ListItem>
                                                <asp:ListItem Value="1" Text="Liste arrivée V1 pdf"></asp:ListItem>
                                                <asp:ListItem Value="2" Text="Liste départs V1 pdf"></asp:ListItem> 
                                                <asp:ListItem Value="3" Text="Liste arrivée v2 pdf"></asp:ListItem>
                                                <asp:ListItem Value="4" Text="Liste départs v2 pdf"></asp:ListItem>
                                                <asp:ListItem Value="5" Text="Liste excel"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div class="col-md-1" style="margin-top: -6px;">
                                            <div class="btn-group">
                                                <asp:LinkButton ID="Btn_Print" OnClick="Btn_Print_Click" runat="server" CssClass="btn default green-stripe btn-sm"><i class="fa fa-print" style="margin-right: 4px;"></i>Exporter</asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end hide section print yassin -->
                                    <%--    <div class="col-md-2 display-none" style="margin-left: 15px;">
                                        <asp:DropDownList CssClass="form-control" AutoPostBack="true" runat="server" ID="ListePrint" OnSelectedIndexChanged="ListePrint_SelectedIndexChanged">
                                            <asp:ListItem Value="-1" Text="-- Exporter --"></asp:ListItem>
                                            <asp:ListItem Value="1" Text="Liste arrivée pdf"></asp:ListItem>
                                            <asp:ListItem Value="2" Text="Liste départs pdf"></asp:ListItem>
                                            <asp:ListItem Value="3" Text="Liste arrivée excel"></asp:ListItem>
                                            <asp:ListItem Value="4" Text="Liste départs excel"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>--%>
                                </div>
                                <div class="portlet-body">
                                    <div class="table-toolbar">
                                        <div class="row">
                                            <div class="panel-group" id="accordion1">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="tabbable-custom tabbable-noborder">
                                                            <div class="tab-content">
                                                                <asp:Panel ID="panel2" runat="server">
                                                                    <div class="col-md-12">
                                                                        <div class="portlet box blue-steel">
                                                                            <div class="portlet-title">
                                                                                <div class="caption">
                                                                                    <span runat="server" class="caption-subject uppercase font-grey-cararra" id="span9">Recherche</span>
                                                                                </div>
                                                                            </div>
                                                                            <div class="portlet-body">
                                                                                <br />
                                                                                <div class="row">
                                                                                    <div class="col-md-3">
                                                                                        <div class="form-group">
                                                                                            <asp:DropDownList runat="server" ID="DelegationSearch" CssClass="form-control select2me"></asp:DropDownList>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-3">
                                                                                        <div class="form-group">

                                                                                            <asp:DropDownList runat="server" ID="pays" CssClass="form-control select2me"></asp:DropDownList>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-3">
                                                                                        <div class="form-group">
                                                                                            <asp:DropDownList runat="server" ID="titre" CssClass="form-control select2me"></asp:DropDownList>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-3">
                                                                                        <div class="form-group">
                                                                                            <asp:DropDownList runat="server" ID="Accopagnateur" CssClass="form-control select2me">
                                                                                            </asp:DropDownList>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <br />
                                                                                <div class="row">
                                                                                    <div class="form-group">
                                                                                        <div class="col-md-3">
                                                                                            <asp:DropDownList runat="server" ID="Vol_Arive_Numero" CssClass="form-control">
                                                                                            </asp:DropDownList>

                                                                                        </div>
                                                                                        <div class="col-md-3">
                                                                                            <asp:DropDownList runat="server" ID="DropDownAeroport_Arrivee" CssClass="form-control" placeholder="Aéroport d'arrivé">
                                                                                            </asp:DropDownList>
                                                                                        </div>
                                                                                        <div class="col-md-3">
                                                                                            <asp:DropDownList runat="server" ID="DateArrivee" CssClass="form-control">
                                                                                            </asp:DropDownList>
                                                                                        </div>
                                                                                        <div class="col-md-3">
                                                                                            <asp:DropDownList runat="server" ID="DropDownList_heure_arrive" CssClass="form-control">
                                                                                            </asp:DropDownList>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <br />
                                                                                <div class="row">
                                                                                    <div class="form-group">
                                                                                        <div class="col-md-3">
                                                                                            <asp:DropDownList runat="server" ID="Vol_Depart_Numero" CssClass="form-control">
                                                                                            </asp:DropDownList>

                                                                                        </div>
                                                                                        <div class="col-md-3">
                                                                                            <asp:DropDownList runat="server" ID="DropDownAeroport_Depart" CssClass="form-control">
                                                                                            </asp:DropDownList>
                                                                                        </div>
                                                                                        <div class="col-md-3">
                                                                                            <asp:DropDownList runat="server" ID="DropDownList_date_depart" CssClass="form-control">
                                                                                            </asp:DropDownList>
                                                                                        </div>
                                                                                        <div class="col-md-3">
                                                                                            <asp:DropDownList runat="server" ID="DropDownList_heure_depart" CssClass="form-control">
                                                                                            </asp:DropDownList>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <br />
                                                                                <div class="row">
                                                                                    <div class="form-group">

                                                                                        <div class="col-md-3">
                                                                                            <div class="form-group">
                                                                                                <asp:DropDownList runat="server" ID="Vehicule" CssClass="form-control select2me"></asp:DropDownList>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="col-md-3">
                                                                                            <div class="form-group">
                                                                                                <asp:DropDownList ID="Vehiculearriver" runat="server" CssClass="form-control select2me">
                                                                                                </asp:DropDownList>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="col-md-3">
                                                                                            <div class="form-group">
                                                                                                <asp:DropDownList ID="VehiculeDepart" runat="server" CssClass="form-control select2me">
                                                                                                </asp:DropDownList>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="col-md-3">
                                                                                            <div class="form-group">
                                                                                                <asp:DropDownList ID="Autrevehicule" runat="server" CssClass="form-control select2me">
                                                                                                </asp:DropDownList>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>

                                                                                <br />
                                                                                <div class="row">
                                                                                    <div class="form-group">
                                                                                        <div class="col-md-3">
                                                                                            <div class="form-group">
                                                                                                <asp:DropDownList runat="server" ID="hotelParticipant" CssClass="form-control select2me"></asp:DropDownList>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="col-md-3" style="margin-top: -12px;">
                                                                                            <label class="control-label" runat="server" id="label4"></label>
                                                                                            <asp:CheckBox ID="statut" runat="server" Text="Non officiel" />
                                                                                        </div>
                                                                                        <div class="col-md-4">

                                                                                            <div style="display: flex; margin: 0 20px 0 68px;" id="ResultSerach" runat="server" visible="false">
                                                                                                <h4>
                                                                                                    <%--<span runat="server" id="Span10" style="color: red">Résultat de la recherche : </span>--%>
                                                                                                    <span class="caption-subject font-green-sharp bold">Nb participants :
                                                                                                      <span runat="server" id="NbParticipants_Search" style="color: red;"></span></h4>
                                                                                                <h4 style="margin-left: 62px;">
                                                                                                    <span class="caption-subject font-green-sharp bold">Nb délégations :
                                                                                                      <span runat="server" id="NbDelegations_Search" style="color: red"></span></h4>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="col-md-2">
                                                                                            <asp:LinkButton runat="server" ID="BtnSearch" OnClick="BtnSearch_Click" CssClass="btn default green-sharp"><i class="fa fa-search"></i></asp:LinkButton>
                                                                                            <asp:LinkButton runat="server" ID="BtnRefresh" OnClick="BtnRefresh_Click" CssClass="btn default yellow-crusta"><i class="fa fa-refresh"></i></asp:LinkButton>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </asp:Panel>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div style="display: flex; margin: 0 20px 0 68px;">
                                                    <h4>
                                                        <span class="caption-subject font-green-sharp bold">Le nombre de participants est :
                                                        <span runat="server" id="NbParticipants" style="color: red;"></span></h4>
                                                    <h4 style="margin-left: 62px;">
                                                        <span class="caption-subject font-green-sharp bold">Le nombre de délégations est :
                                                        <span runat="server" id="NbDelegations" style="color: red"></span></h4>
                                                </div>
                                                <div style="display: flex; margin: 0 20px 0 20px;" >
                                                    <h4>
                                                        <span runat="server" id="Span6" style="color: red">NB :</span>
                                                        <span class="" style="background-color: #008B73; color: white; padding: 5px; border-radius: 5px 0 5px;">Le vert signifie un nouveau participant 
                                                    </h4>
                                                    <h4 style="margin-left: 20px; text-indent: 20px;">
                                                        <span class="" style="background-color: #F10202; color: white; padding: 5px; border-radius: 5px 0 5px;">Le rouge signifie que ce champ a été modifié 
                                                    </h4>
                                                    <h4 style="margin-left: 0 20px 0 20px; text-indent: 39px;">
                                                        <span class="" style="background-color: Gray; color: white; padding: 5px; border-radius: 5px 0 5px;">Le gris signifie que le participant est non officiel 
                                                    </h4>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <h5 runat="server" id="AlertPanel" visible="false" style="font-size: 26px; padding-top: 10px; padding-left: 56px; padding-right: 40px;">
                                    <asp:Label runat="server" ID="ErrorMessage" ForeColor="Red">Vous êtes déjà inscrit</asp:Label>
                                </h5>
                            </div>
                            <div class="col-md-12 GvOrganisateur">
                                <asp:PlaceHolder runat="server" ID="boxMessage"></asp:PlaceHolder>
                                <asp:HiddenField ID="hfGridData" runat="server" />
                                <div class="table-scrollable">
                                    <asp:GridView runat="server" ID="gvParticipant" CssClass="table table-striped table-bordered table-hover GVWithExport" AutoGenerateColumns="false" DataKeyNames="id" OnPageIndexChanging="gvParticipant_PageIndexChanging" AllowPaging="True" PageSize="10">
                                        <Columns>
                                            <asp:BoundField DataField="Delegations.Delegation" HeaderText="Délégation" />
                                            <asp:BoundField DataField="PaysOrigine" HeaderText="Pays d'origine" />
                                            <asp:BoundField DataField="nom" HeaderText="Nom" />
                                            <asp:BoundField DataField="prenom" HeaderText="Prénom" />
                                            <asp:BoundField DataField="tel" HeaderText="téléphone N°" />
                                            <asp:BoundField DataField="Titres.Titre" HeaderText="Titre" />
                                            <asp:BoundField DataField="NPassportDelegue" HeaderText="Passport N°" />
                                            <asp:BoundField DataField="NvolArrivee" HeaderText="N° vol d'arrivée" />
                                            <asp:BoundField DataField="DateArrivee" HeaderText="Date d'arrivée" DataFormatString="{0:dd/MM/yyyy}" />
                                            <asp:BoundField DataField="HeureArrivee" HeaderText="Heure d'arrivée" />
                                            <asp:BoundField DataField="Aeroport.nom" HeaderText="Aéroport d'arrivée" />
                                            <asp:BoundField DataField="PaysDestination" HeaderText="Pays de destination" />
                                            <asp:BoundField DataField="NvolDepart" HeaderText="N° vol de départ" />
                                            <asp:BoundField DataField="Aeroport1.nom" HeaderText="Aéroport de départ" />
                                            <asp:BoundField DataField="DateDepart" HeaderText="Date de départ" DataFormatString="{0:dd/MM/yyyy}" />
                                            <asp:BoundField DataField="HeureDepart" HeaderText="Heure de départ" />
                                            <asp:BoundField DataField="Hotel.nom" HeaderText="Hôtel" />
                                            <asp:BoundField DataField="Vehicule.matriculeType" HeaderText="Véhicule permanent" />
                                            <asp:BoundField DataField="Vehicule.nomPrenomTel" HeaderText="Chauffeur" /> 
                                            <asp:BoundField DataField="Vehicule1.matriculeType" HeaderText="Véhicule d'arrivée" />
                                            <asp:BoundField DataField="Vehicule1.nomPrenomTel" HeaderText="Chauffeur" /> 
                                            <asp:BoundField DataField="Vehicule3.matriculeType" HeaderText="Véhicule de départ" />
                                               <asp:BoundField DataField="Vehicule3.nomPrenomTel" HeaderText="Chauffeur" /> 
                                            <asp:BoundField DataField="Vehicule2.matriculeType" HeaderText="Autre Véhicule" />
                                               <asp:BoundField DataField="Vehicule2.nomPrenomTel" HeaderText="Chauffeur" /> 
                                            <asp:BoundField DataField="Organisateur.nomPrenomTel" HeaderText="Accompagnateur" />
                                            <asp:TemplateField HeaderText="Détails" Visible="false">
                                                <ItemTemplate>
                                                    <asp:LinkButton runat="server" CommandArgument='<%# Eval("id") %>' ID="btndetail" CssClass="btn btn-sm" OnClick="btndetail_Click"><i class="fa fa-edit font-yellow-crusta"></i></asp:LinkButton>
                                                    <asp:LinkButton runat="server" CommandName="DeleteItem" CommandArgument='<%# Eval("id") %>' OnClientClick="if(!confirm('Voulez-vous vraiment supprimer cet élément ?')) return false;" ID="btndelete" OnClick="btndelete_Click" CssClass="btn btn-sm" Visible="true"><i class="fa fa-trash font-red-flamingo"></i></asp:LinkButton>
                                                    <asp:LinkButton ID="AddConjoint" OnClick="AddConjoint_Click" Visible='<%# Eval("IdParent") != null ? false : true %>' CommandArgument='<%# Eval("id") %>' runat="server" Class="btn default yellow-crusta conjoint" Style="color: #4a5991; padding: 5px; font-size: 14px;"> Accompagnant</asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
            </div>
            </div>
                <%--ADD PARTICIPANT--%>
            <div class="modal fade" id="PopupAddParticipant" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" style="position: absolute; right: 21px" data-dismiss="modal" aria-hidden="true"></button>
                            <h4 class="modal-title caption-subject font-green-sharp bold uppercase" runat="server" id="NomParticipant"><i class="fa fa-user" style="margin-right: 5px; height: max-content;"></i></h4>
                        </div>
                        <div class="modal-body">
                            <div class="row" style="margin-left: 10px; margin-right: 10px;">
                                <div class="row" style="margin-left: 10px; margin-right: 10px;">
                                    <div class="col-md-12" style="border-radius: 6px;">
                                        <div class="portlet box green-meadow" style="border: 1px solid lightgrey;">
                                            <div class="portlet-title">
                                                <div class="caption">
                                                    <span runat="server" class="caption-subject uppercase font-grey-cararra" id="span2">Participant</span>
                                                </div>
                                            </div>
                                            <div class="portlet-body">
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <div>
                                                            <label class="control-label" runat="server" id="label1_4">Délégation</label>
                                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" Display="Dynamic" ForeColor="Red" ControlToValidate="Delegation" ValidationGroup="NewParticipant" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                        </div>
                                                        <div>
                                                            <asp:DropDownList runat="server" ID="Delegation" CssClass="form-control select2me"></asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div>
                                                            <label class="control-label" runat="server" id="label2">Pays d'origine</label>
                                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" Display="Dynamic" ForeColor="Red" ControlToValidate="PaysOrigine" ValidationGroup="NewParticipant" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                        </div>
                                                        <div>
                                                            <asp:TextBox runat="server" ID="PaysOrigine" CssClass="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div>
                                                            <label class="control-label " runat="server" id="label1_2">Nom</label>
                                                            <asp:RequiredFieldValidator runat="server" ID="a2" Display="Dynamic" ForeColor="Red" ControlToValidate="Nom_Participant" ValidationGroup="NewParticipant" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                        </div>
                                                        <div>
                                                            <asp:TextBox runat="server" ID="Nom_Participant" CssClass="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-3">
                                                        <div>
                                                            <label class="control-label " runat="server" id="label1_3">Prénom</label>
                                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" Display="Dynamic" ForeColor="Red" ControlToValidate="Prenom_Participant" ValidationGroup="NewParticipant" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                        </div>
                                                        <div>
                                                            <asp:TextBox runat="server" ID="Prenom_Participant" CssClass="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div>
                                                            <label class="control-label " runat="server" id="label1_6">Téléphone N°</label>
                                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" Display="Dynamic" ForeColor="Red" ControlToValidate="Tel_Participant" ValidationGroup="NewParticipant" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                        </div>
                                                        <div>
                                                            <asp:TextBox runat="server" ID="Tel_Participant" CssClass="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div>
                                                            <label class="control-label" runat="server" id="label1_5">Titre</label>
                                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" Display="Dynamic" ForeColor="Red" ControlToValidate="Titre_Participant" ValidationGroup="NewParticipant" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                        </div>
                                                        <div>
                                                            <asp:DropDownList runat="server" ID="Titre_Participant" CssClass="form-control"></asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div>
                                                            <label class="control-label " runat="server" id="label1_1">Passport N°</label>
                                                            <asp:RequiredFieldValidator runat="server" ID="a1" Display="Dynamic" ForeColor="Red" ControlToValidate="NPassport_Participant" ValidationGroup="NewParticipant" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                        </div>
                                                        <div>
                                                            <asp:TextBox runat="server" ID="NPassport_Participant" CssClass="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-3">
                                                        <div>
                                                            <label class="control-label " runat="server" id="label1_7">E-mail</label>
                                                            <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="NewParticipant" ControlToValidate="Email_participant" Display="Dynamic" ForeColor="Red" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
                                                        </div>
                                                        <div>
                                                            <asp:TextBox runat="server" ID="Email_participant" CssClass="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div>
                                                            <label class="control-label" runat="server" id="label1"></label>
                                                        </div>
                                                        <div>
                                                            <asp:CheckBox ID="NonOfficiel" Visible="true" runat="server" Text="Non officiel" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div style="margin-left: 10px; margin-right: 10px;">
                                    <div class="col-md-6" style="border-radius: 6px;">
                                        <div class="portlet box blue-hoki" style="border: 1px solid lightgrey;">
                                            <div class="portlet-title">
                                                <div class="caption">
                                                    <span runat="server" class="caption-subject uppercase font-grey-cararra" id="span3">Arrivée</span>
                                                </div>
                                            </div>
                                            <div class="portlet-body">
                                                <div class="row">
                                                    <div class="form-group">
                                                        <div class="col-md-6">
                                                            <div>
                                                                <label runat="server" class="control-label " id="label3_1">Vol N°</label>
                                                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator9" Display="Dynamic" ForeColor="Red" ControlToValidate="NumeroVol_Arriver" ValidationGroup="NewParticipant" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                            </div>
                                                            <div>
                                                                <asp:TextBox runat="server" ID="NumeroVol_Arriver" CssClass="form-control"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div>
                                                                <label runat="server" class="control-label " id="label3_2">Aéroport</label>
                                                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator10" InitialValue="-1" Display="Dynamic" ForeColor="Red" ControlToValidate="Aeroport_Arrivee" ValidationGroup="NewParticipant" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                            </div>
                                                            <div>
                                                                <asp:DropDownList runat="server" ID="Aeroport_Arrivee" CssClass="form-control">
                                                                </asp:DropDownList>
                                                            </div>
                                                            <br />
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div>
                                                                <label runat="server" class="control-label " id="label3_3">Date d'arrivée</label>
                                                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator11" Display="Dynamic" ForeColor="Red" ControlToValidate="Date_Arrivee" ValidationGroup="NewParticipant" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                            </div>
                                                            <div>
                                                                <asp:TextBox Class=" form-control " ID="Date_Arrivee" runat="server" TextMode="Date"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div>
                                                                <label runat="server" class="control-label " id="label3_4">Heure d'arrivée</label>
                                                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator12" Display="Dynamic" ForeColor="Red" ControlToValidate="Heure_Arrivee" ValidationGroup="NewParticipant" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                            </div>
                                                            <div>
                                                                <asp:TextBox Class=" form-control " ID="Heure_Arrivee" runat="server" TextMode="Time"></asp:TextBox>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div style="margin-left: 10px; margin-right: 10px;">
                                    <div class="col-md-6" style="border-radius: 6px;">
                                        <div class="portlet box blue-hoki" style="border: 1px solid lightgrey;">
                                            <div class="portlet-title">
                                                <div class="caption">
                                                    <span runat="server" class="caption-subject uppercase font-grey-cararra" id="span4">Départ</span>
                                                </div>
                                            </div>
                                            <div class="portlet-body">
                                                <div class="row">
                                                    <div class="form-group">
                                                        <div class="col-md-6">
                                                            <div>
                                                                <label runat="server" class="control-label " id="label4_1">Vol N°</label>
                                                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator13" Display="Dynamic" ForeColor="Red" ControlToValidate="NVol_Depart" ValidationGroup="NewParticipant" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                            </div>
                                                            <div>
                                                                <asp:TextBox runat="server" ID="NVol_Depart" CssClass="form-control"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div>
                                                                <label runat="server" class="control-label " id="label4_2">Aéroport</label>
                                                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator14" InitialValue="-1" Display="Dynamic" ForeColor="Red" ControlToValidate="Aeroport_Depart" ValidationGroup="NewParticipant" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                            </div>
                                                            <div>
                                                                <asp:DropDownList runat="server" ID="Aeroport_Depart" CssClass="form-control">
                                                                </asp:DropDownList>
                                                            </div>
                                                            <br />
                                                        </div>

                                                        <div class="col-md-3">
                                                            <div>
                                                                <label runat="server" class="control-label " id="label4_3">Date de départ</label>
                                                                <%--  <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="AeroportDepart" ControlToCompare="DateArrivee" Display="Dynamic" ErrorMessage="La date de départ doit être supérieure à la date d'arrivée" ForeColor="Red" Operator="LessThan" Type="Date" ></asp:CompareValidator>
                                                                --%>
                                                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator15" Display="Dynamic" ForeColor="Red" ControlToValidate="Date_Depart" ValidationGroup="NewParticipant" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                            </div>
                                                            <div>
                                                                <asp:TextBox Class="form-control" ID="Date_Depart" runat="server" TextMode="Date"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div>
                                                                <label runat="server" class="control-label " id="label4_4">Heure de départ</label>
                                                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator16" Display="Dynamic" ForeColor="Red" ControlToValidate="Heure_Depart" ValidationGroup="NewParticipant" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                            </div>
                                                            <div>
                                                                <asp:TextBox Class="form-control" ID="Heure_Depart" runat="server" TextMode="Time"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div>
                                                                <label runat="server" class="control-label" id="label3">Pays de destination</label>
                                                            </div>
                                                            <div>
                                                                <asp:TextBox runat="server" ID="Pays_destination" CssClass="form-control"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div style="margin-left: 10px; margin-right: 10px;">
                                    <div class="col-md-6" style="border-radius: 6px;">
                                        <div class="portlet box blue-hoki" style="border: 1px solid lightgrey;">
                                            <div class="portlet-title">
                                                <div class="caption">
                                                    <span runat="server" class="caption-subject uppercase font-grey-cararra" id="span1">Accompagnanteur</span>
                                                </div>
                                            </div>
                                            <div class="portlet-body">
                                                <div class="row">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-4">Accompagnanteur</label>
                                                        <div class="col-md-6">
                                                            <asp:DropDownList runat="server" ID="accompagnant_Participant" CssClass="form-control">
                                                            </asp:DropDownList>
                                                        </div>
                                                        <div class="col-md-12" style="margin-top: 10px; margin-bottom: 10px;">
                                                            <asp:GridView runat="server" ID="gv_accompagnant" Visible="false" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="false" DataKeyNames="id">
                                                                <Columns>
                                                                    <asp:BoundField DataField="nom" HeaderText="Nom" />
                                                                    <asp:BoundField DataField="prenom" HeaderText="Prénom" />
                                                                    <asp:BoundField DataField="cin" HeaderText="Cin" />
                                                                    <asp:BoundField DataField="tel" HeaderText="Téléphone" />
                                                                    <asp:BoundField DataField="email" HeaderText="Email" />
                                                                    <asp:BoundField DataField="Entite.nom" HeaderText="Entité" />
                                                                    <asp:BoundField DataField="specialite" HeaderText="Spécialité" />
                                                                </Columns>
                                                            </asp:GridView>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div style="margin-left: 10px; margin-right: 10px;">
                                    <div class="col-md-6" style="border-radius: 6px;">
                                        <div class="portlet box blue-hoki" style="border: 1px solid lightgrey;">
                                            <div class="portlet-title">
                                                <div class="caption">
                                                    <span runat="server" class="caption-subject uppercase font-grey-cararra" id="span5">Séjour</span>
                                                </div>
                                            </div>
                                            <div class="portlet-body">
                                                <div class="row">
                                                    <div class="form-group">
                                                        <div class="col-md-12" id="divHotel">
                                                            <label class="control-label col-md-4" style="margin-top: 10px; margin-bottom: 10px;">Hôtel</label>
                                                            <asp:RequiredFieldValidator runat="server" InitialValue="-1" ID="RequiredFieldValidator17" Display="Dynamic" ForeColor="Red" ControlToValidate="Hotel_Sejour" ValidationGroup="NewParticipant" ErrorMessage="*"></asp:RequiredFieldValidator>

                                                            <div class="col-md-6" style="margin-top: 10px; margin-bottom: 10px;">
                                                                <asp:DropDownList runat="server" ID="Hotel_Sejour" CssClass="form-control"></asp:DropDownList>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <div style="margin-left: 10px; margin-right: 10px;">
                                        <div class="col-md-6" style="border-radius: 6px;">
                                            <div class="portlet box blue-hoki" style="border: 1px solid lightgrey;">
                                                <div class="portlet-title">
                                                    <div class="caption">
                                                        <span class="caption-subject uppercase font-grey-cararra">Véhicule</span>
                                                    </div>
                                                </div>
                                                <div class="portlet-body">
                                                    <div class="row">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-3" style="margin-top: 10px; margin-bottom: 10px;">Véhicule</label>
                                                            <div class="col-md-6" style="margin-top: 10px; margin-bottom: 10px;">
                                                                <asp:DropDownList runat="server" ID="Vehicule_Participant" CssClass="form-control input-sm">
                                                                </asp:DropDownList>
                                                            </div>
                                                            <div class="col-md-12" style="margin-top: 10px; margin-bottom: 10px;">
                                                                <asp:GridView runat="server" ID="gvVehicule" Visible="false" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="false" DataKeyNames="id">
                                                                    <Columns>
                                                                        <asp:BoundField DataField="matriculeType" HeaderText="Matricule" />
                                                                        <asp:BoundField DataField="Organisateur.nomPrenomTel" HeaderText="Chauffeur" />
                                                                    </Columns>
                                                                </asp:GridView>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div style="margin-left: 10px; margin-right: 10px;">
                                        <div class="col-md-6" style="border-radius: 6px;">
                                            <div class="portlet box blue-hoki" style="border: 1px solid lightgrey;">
                                                <div class="portlet-title">
                                                    <div class="caption">
                                                        <span class="caption-subject uppercase font-grey-cararra">Photo</span>
                                                    </div>
                                                </div>
                                                <div class="portlet-body">
                                                    <div class="row">
                                                        <div class="form-group">
                                                            <label class="control-label col-md-1" style="margin-top: 10px; margin-bottom: 10px;">Photo</label>
                                                            <div class="col-md-4" style="margin-top: 10px; margin-bottom: 10px;">
                                                                <asp:FileUpload accept="application/vnd.openxmlformats-officedocument.wordprocessingml.document,application/pdf,application/msword" runat="server" ID="Photo_Upload" CssClass="form-control input-lg" />
                                                            </div>
                                                            <label class="control-label col-md-1" style="margin-top: 10px; margin-bottom: 10px;">Autres</label>
                                                            <div class="col-md-4" style="margin-top: 10px; margin-bottom: 10px;">
                                                                <asp:FileUpload accept="application/vnd.openxmlformats-officedocument.wordprocessingml.document,application/pdf,application/msword" runat="server" ID="Autrepieces" CssClass="form-control input-lg" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <asp:LinkButton runat="server" ValidationGroup="NewParticipant" ID="AjouterParticipant" OnClick="AjouterParticipant_Click" CssClass="btn btn-primary btn-sm"><i class="fa fa-check"></i>Enregistrer</asp:LinkButton>
                            <asp:LinkButton runat="server" ID="Anuler" OnClick="Anuler_Click" CssClass="btn btn-danger btn-sm"><i class="fa fa-close"></i>Annuler</asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="AjouterParticipant" />
            <%--  <asp:PostBackTrigger ControlID="ListePrint" />--%>
            <asp:AsyncPostBackTrigger ControlID="gvParticipant" />
        </Triggers>
    </asp:UpdatePanel>
    <script> 
        function AfficherPdf() {
            window.open('../AfficherPDF.aspx', '_blank');
        }
        function PdfViewer() {
            window.open('../PdfViewer.aspx', '_blank');
        }
        if (window.history.replaceState) {
            window.history.replaceState(null, null, window.location.href);
        }

    </script>
</asp:Content>
