<%@ Page Title="" Language="C#" MasterPageFile="~/Partages/MasterPage.Master" AutoEventWireup="true" CodeBehind="CongreOperation.aspx.cs" Inherits="GestionCongrees.Pages.CongreOperation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        label .control-label {
            margin-top: 10px !important;
            margin-bottom: 10px !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel runat="server" ID="panel">
        <ContentTemplate>
            <div class="row">
                <div class="col-md-12">
                    <div class="portlet light">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-navicon font-green-sharp"></i>
                                <span class="caption-subject font-green-sharp bold uppercase" id="congrertitle" runat="server">Détails du Congré </span>
                            </div>
                        </div>
                        <div class="portlet-body" style="padding-top: 39px;">
                            <div class="tabbable">
                                <ul class="nav nav-tabs nav-tabs-lg">
                                    <li class="active" id="li1">
                                        <a href="#tab_3" data-toggle="tab" id="a1" style="font-size: 16px;" onclick="RemoveStyleDisplay()">Participant </a>
                                    </li>
                                    <%-- <li>
                                        <a href="#tab_0" data-toggle="tab" style="font-size: 16px;">Programme </a>
                                    </li>--%>
                                    <li id="li2">
                                        <a href="#tab_4" data-toggle="tab" id="a2" style="font-size: 16px;">Organisateur
                                        </a>
                                    </li>
                                    <li id="li3">
                                        <a href="#tab_5" data-toggle="tab" id="a4" style="font-size: 16px;">Aéroport
                                        </a>
                                    </li>
                                    <li id="li4">
                                        <a href="#tab_6" data-toggle="tab" id="a5" style="font-size: 16px;">Hotel
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="tab-content">
                                <div class="tab-pane" id="tab_0">
                                    <div class="table-toolbar">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="btn-group">
                                                    <%--   <asp:LinkButton ID="" OnClick="programme_Click" runat="server" CssClass="btn green btn-sm"><i class="fa fa-plus"></i> Ajouter un programme</asp:LinkButton>
                                                    --%>
                                                    <a class="btn green btn-sm" style="margin-left: 0px;" data-toggle="modal" href="#Popup_Programme" runat="server" id="programme"><i class="fa fa-plus"></i>Ajouter un programme</a>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="portlet light">
                                                <div class="portlet-body">
                                                    <div class="table-toolbar">
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <asp:GridView runat="server" ID="GridView2" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="false" DataKeyNames="id">
                                                                    <Columns>
                                                                        <asp:BoundField DataField="titre" HeaderText="Titre" />
                                                                        <asp:TemplateField ItemStyle-Width="100" HeaderText="Plus">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton runat="server" CommandArgument='<%# Eval("id") %>' ID="btndownload" CssClass="btn btn-sm"><i class="fa fa-download font-green-meadow"></i></asp:LinkButton>
                                                                            </ItemTemplate>
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField ItemStyle-Width="100" HeaderText="Plus">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton runat="server" CommandArgument='<%# Eval("id") %>' ID="btnedit" CssClass="btn btn-sm"><i class="fa fa-edit font-yellow-crusta"></i></asp:LinkButton>
                                                                                <asp:LinkButton runat="server" CommandArgument='<%# Eval("id") %>' ID="btndelete" CssClass="btn btn-sm"><i class="fa fa-trash font-red-flamingo"></i></asp:LinkButton>
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
                                <div class="tab-pane active" id="tab_3">
                                    <asp:UpdatePanel runat="server" ID="updatePanelParticipant">
                                        <ContentTemplate>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="portlet light" style="border: none;">
                                                        <div class="portlet-body">
                                                            <div class="table-toolbar">
                                                                <div class="row">
                                                                    <div class="panel-group" id="accordion1">
                                                                        <div class="row">
                                                                            <div class="col-md-12">
                                                                                <div class="tabbable-custom tabbable-noborder">
                                                                                    <div class="tab-content">
                                                                                        <asp:Panel ID="panel2" runat="server" CssClass="panelform portlet borderGrey">
                                                                                            <div class="portlet box portletSerach">
                                                                                                <div class="portlet-title">
                                                                                                    <div class="caption">
                                                                                                        <span class="caption-subject bold uppercase" style="color: black;">Recherche </span>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="tools">
                                                                                                    <a href="javascript:;" class="collapse" data-original-title="" title=""></a>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="portlet-body" style="display: block;">
                                                                                                <div class="panel-body ">
                                                                                                    <div class="row">

                                                                                                        <div class="col-md-2">
                                                                                                            <div class="form-group">
                                                                                                                <label class="label">Aéroport d'arrivée </label>
                                                                                                                <asp:DropDownList ID="AeroportarriverP" runat="server" CssClass="form-control input-sm">
                                                                                                                </asp:DropDownList>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                        <div class="col-md-2">
                                                                                                            <div class="form-group">
                                                                                                                <label class="label">Du : </label>
                                                                                                                <asp:TextBox CssClass="form-control input-sm" ID="DtaeArriverDu" runat="server" TextMode="Date"></asp:TextBox>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                        <div class="col-md-2">
                                                                                                            <div class="form-group">
                                                                                                                <label class="label">Au : </label>
                                                                                                                <asp:TextBox CssClass="form-control input-sm" ID="DtaeArriverOu" runat="server" TextMode="Date"></asp:TextBox>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                        <div class="col-md-2">
                                                                                                            <div class="form-group">
                                                                                                                <label class="label">Aéroport de départ </label>
                                                                                                                <asp:DropDownList ID="AeroportDepartP" runat="server" CssClass="form-control input-sm">
                                                                                                                </asp:DropDownList>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                        <div class="col-md-2">
                                                                                                            <div class="form-group">
                                                                                                                <label class="label">Du : </label>
                                                                                                                <asp:TextBox CssClass="form-control input-sm" ID="DateDepartDu" runat="server" TextMode="Date"></asp:TextBox>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                        <div class="col-md-2">
                                                                                                            <div class="form-group">
                                                                                                                <label class="label">Au : </label>
                                                                                                                <asp:TextBox CssClass="form-control input-sm" ID="DateArriverOu" runat="server" TextMode="Date"></asp:TextBox>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="row">
                                                                                                        <div class="col-md-3">
                                                                                                            <div class="form-group">
                                                                                                                <label class="label">Pays / Organisme :</label>
                                                                                                                <asp:TextBox runat="server" ID="pays" CssClass="form-control input-sm"></asp:TextBox>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                        <div class="col-md-3">
                                                                                                            <div class="form-group">
                                                                                                                <label class="label">Hotel :</label>
                                                                                                                <asp:DropDownList runat="server" ID="hotelParticipant" CssClass="form-control input-sm"></asp:DropDownList>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                        <div class="col-md-3">
                                                                                                            <div class="form-group">
                                                                                                                <label class="label">Chauffeur :</label>
                                                                                                                <asp:DropDownList runat="server" ID="ChauffeurParticipant" CssClass="form-control input-sm"></asp:DropDownList>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                        <div class="col-md-3">
                                                                                                            <div class="form-group">
                                                                                                                <label class="label">Véhicule :</label>
                                                                                                                <asp:DropDownList runat="server" ID="Vehicule" CssClass="form-control input-sm"></asp:DropDownList>
                                                                                                            </div>
                                                                                                        </div>



                                                                                                    </div>
                                                                                                    <div class="row">
                                                                                                        <div class="col-md-3">
                                                                                                            <div class="form-group">
                                                                                                                <label class="label">Accompagnateur :</label>
                                                                                                                <asp:DropDownList runat="server" ID="Accopagnateur" CssClass="form-control input-sm">
                                                                                                                    <asp:ListItem Value="-1">Choisir un accompagnateur</asp:ListItem>
                                                                                                                    <asp:ListItem Value="0">accompagnateur 1</asp:ListItem>
                                                                                                                    <asp:ListItem Value="1">accompagnateur 2</asp:ListItem>
                                                                                                                </asp:DropDownList>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                        <div class="col-md-3">
                                                                                                            <div class="form-group">
                                                                                                                <label class="label">Statut :</label>
                                                                                                                <asp:DropDownList runat="server" ID="statut" CssClass="form-control input-sm">
                                                                                                                    <asp:ListItem Value="-1">Choisir un statut</asp:ListItem>
                                                                                                                    <asp:ListItem Value="0">Valide</asp:ListItem>
                                                                                                                    <asp:ListItem Value="1">Non Valide</asp:ListItem>
                                                                                                                </asp:DropDownList>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                        <div class="col-md-3">
                                                                                                            <div class="form-group">
                                                                                                                <label class="label">Mot-clé : </label>
                                                                                                                <asp:TextBox runat="server" ID="motcle" CssClass="form-control input-sm"></asp:TextBox>
                                                                                                            </div>
                                                                                                        </div>

                                                                                                        <div class="col-md-3" style="margin-top: 20px;">
                                                                                                            <asp:LinkButton runat="server" ID="BtnSearchParticipant" OnClick="BtnSearchParticipant_Click" CssClass="btn default green-sharp"><i class="fa fa-search"></i></asp:LinkButton>
                                                                                                            &nbsp;
                                                                                                          <asp:LinkButton runat="server" ID="BtnRefresh" OnClick="BtnRefresh_Click" CssClass="btn default yellow-crusta"><i class="fa fa-refresh"></i></asp:LinkButton>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </asp:Panel>

                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-4">
                                                                        <div class="col-md-4 margin-bottom-20">
                                                                            <div class="btn-group">
                                                                                <asp:LinkButton runat="server" ID="AddParticipant" OnClick="AddParticipant_Click" CssClass="btn green btn-sm"><i class="fa fa-plus"></i> Ajouter un nouveau participant</asp:LinkButton>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-8" id="BtnExport" style="float: right;">
                                                                        <div class="col-md-7">
                                                                        </div>
                                                                        <div class="col-md-3 " style="margin-top: 5px; margin-bottom: 2px;">
                                                                            <asp:DropDownList runat="server" ID="impressionParticipant" CssClass="form-control btn dropdown-toggle">
                                                                                <asp:ListItem Selected="True" Value="Word" Text="Word" />
                                                                                <asp:ListItem Value="Excel" Text="Excel" />
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                        <div class="col-md-2 margin-bottom-20">
                                                                            <div class="btn-group">
                                                                                <asp:LinkButton ID="Btn_PrintParticipant" OnClick="Btn_PrintParticipant_Click" runat="server" CssClass="btn grey btn-sm"><i class="fa fa-print" style="margin-right: 4px;"></i>Exporter</asp:LinkButton>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="GvParticipant">
                                                                        <div class="col-md-12" id="gridParticipant" style="padding-left: 5px; padding-right: 11px;">
                                                                            <asp:GridView runat="server" ID="gvParticipant" AllowPaging="True" PageSize="10" OnPageIndexChanging="gvParticipant_PageIndexChanging" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="false" DataKeyNames="id">
                                                                                <Columns>
                                                                                    <asp:BoundField DataField="Delegations.Delegation" HeaderText="Délégation" />
                                                                                    <asp:BoundField DataField="nom" HeaderText="Nom" />
                                                                                    <asp:BoundField DataField="prenom" HeaderText="Prénom" />
                                                                                    <asp:BoundField DataField="NPassportDelegue" HeaderText="N° Passport" />
                                                                                    <asp:BoundField DataField="Titres.Titre" HeaderText="Titre" />
                                                                                    <asp:BoundField DataField="Vehicule.matricule" HeaderText="Véhicule" />
                                                                                    <asp:BoundField DataField="Organisateur.cin" HeaderText="Accompagnateur" />
                                                                                    <asp:BoundField DataField="Hotel.nom" HeaderText="Hôtel" />
                                                                                    <%--   <asp:TemplateField HeaderText="Status">
                                                                                        <ItemTemplate>
                                                                                            <asp:Label ID="lblstatus" runat="server" Text='<%# (((int)Eval("status")) == 1) ? "Valider" : "Non Valide" %>' />
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateField>--%>

                                                                                    <asp:BoundField DataField="Vehicule.matricule" HeaderText="Véhicule" />
                                                                                    <asp:BoundField DataField="Organisateur.cin" HeaderText="Accompagnateur" />
                                                                                    <asp:BoundField DataField="Hotel.nom" HeaderText="Hotel" />
                                                                               <%--     <asp:TemplateField ItemStyle-Width="100" HeaderText="Plus">
                                                                                        <ItemTemplate>
                                                                                            <asp:LinkButton runat="server" CommandArgument='<%# Eval("id") %>' ID="btndetail" CssClass="btn btn-sm" OnClick="btndetail_Click"><i class="fa fa-edit font-yellow-crusta"></i></asp:LinkButton>
                                                                                            <asp:LinkButton runat="server" CommandName="DeleteItem" CommandArgument='<%# Eval("id") %>' OnClientClick="if(!confirm('Voulez-vous vraiment supprimer cet élément ?')) return false;" ToolTip="suppression" ID="btndeleteParticipant" OnClick="btndeleteParticipant_Click" CssClass="btn btn-sm"><i class="fa fa-trash font-red-flamingo"></i></asp:LinkButton>
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateField>--%>
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
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                                <div class="tab-pane" id="tab_4">
                                    <div class="table-toolbar">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="portlet light" style="border: none;">
                                                    <div class="portlet-body">
                                                        <div class="table-toolbar">
                                                            <div class="row">
                                                                <div class="panel-group" id="accordion2">
                                                                    <div class="row">
                                                                        <div class="col-md-12">
                                                                            <div class="tabbable-custom tabbable-noborder">
                                                                                <div class="tab-content">
                                                                                    <asp:Panel ID="panel1" runat="server" CssClass="panelform portlet borderGrey">
                                                                                        <div class="portlet box portletSerach">
                                                                                            <div class="portlet-title">
                                                                                                <div class="caption">
                                                                                                    <span class="caption-subject bold uppercase" style="color: black;">Recherche </span>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="tools">
                                                                                                <a href="javascript:;" class="collapse" data-original-title="" title=""></a>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="portlet-body" style="display: block;">
                                                                                            <div class="panel-body ">
                                                                                                <div class="row">
                                                                                                    <div class="col-md-3">
                                                                                                        <div class="form-group">
                                                                                                            <label class="label">CIN :</label>
                                                                                                            <asp:TextBox ID="CinSearch" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="col-md-3">
                                                                                                        <div class="form-group">
                                                                                                            <label class="label">Nom :</label>
                                                                                                            <asp:TextBox ID="NomSearch" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="col-md-3">
                                                                                                        <div class="form-group">
                                                                                                            <label class="label">Prenom : </label>
                                                                                                            <asp:TextBox ID="PrenomSearch" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="col-md-3">
                                                                                                        <div class="form-group">
                                                                                                            <label class="label">Entité </label>
                                                                                                            <asp:DropDownList ID="EntiteSearch" runat="server" CssClass="form-control input-sm">
                                                                                                            </asp:DropDownList>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="row">

                                                                                                    <div class="col-md-3">
                                                                                                        <div class="form-group">
                                                                                                            <label class="label">Mission : </label>
                                                                                                            <asp:DropDownList ID="MissionSearch" runat="server" CssClass="form-control input-sm">
                                                                                                            </asp:DropDownList>

                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="col-md-3">
                                                                                                        <div class="form-group">
                                                                                                            <label class="label">Mot-clé : </label>
                                                                                                            <asp:TextBox runat="server" ID="mot_cleOrganisateur" CssClass="form-control input-sm"></asp:TextBox>
                                                                                                        </div>
                                                                                                    </div>


                                                                                                    <div class="col-md-3" style="margin-top: 20px;">
                                                                                                        <asp:LinkButton runat="server" ID="BtnSearchOrganisateur" OnClick="BtnSearchOrganisateur_Click" CssClass="btn default green-sharp"><i class="fa fa-search"></i></asp:LinkButton>
                                                                                                        &nbsp;
                                                                                    <asp:LinkButton runat="server" ID="BtnRefreshOrganisateur" OnClick="BtnRefreshOrganisateur_Click" CssClass="btn default yellow-crusta"><i class="fa fa-refresh"></i></asp:LinkButton>
                                                                                                    </div>
                                                                                                    <div class="col-md-3">
                                                                                                    </div>

                                                                                                </div>

                                                                                            </div>
                                                                                        </div>
                                                                                    </asp:Panel>

                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <asp:PlaceHolder runat="server" ID="boxMessage"></asp:PlaceHolder>
                                                                <div class="col-md-4">
                                                                    <div class="btn-group margin-bottom-20">
                                                                        <%--<a class="btn green btn-sm" style="margin-left: 0px;" data-toggle="modal" href="#PopupOrganisateur"   runat="server" id=""><i class="fa fa-plus"></i>Ajouter un organisateur</a>--%>
                                                                        <asp:LinkButton runat="server" ValidationGroup="element" ID="addOrganisateur" OnClick="addOrganisateur_Click" CssClass="btn green btn-sm"><i class="fa fa-plus"></i> Ajouter un organisateur</asp:LinkButton>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-8" style="float: right;">
                                                                    <div class="col-md-7">
                                                                    </div>
                                                                    <div class="col-md-3 " style="margin-top: 5px; margin-bottom: 2px;">
                                                                        <asp:DropDownList runat="server" ID="impressionOrganisateur" CssClass="form-control btn dropdown-toggle">
                                                                            <asp:ListItem Selected="True" Value="Word" Text="Word" />
                                                                            <asp:ListItem Value="Excel" Text="Excel" />
                                                                        </asp:DropDownList>
                                                                    </div>
                                                                    <div class="col-md-2 margin-bottom-20">
                                                                        <div class="btn-group">
                                                                            <asp:LinkButton ID="Btn_PrintOrganisateur" OnClick="Btn_PrintOrganisateur_Click" runat="server" CssClass="btn grey btn-sm"><i class="fa fa-print" style="margin-right: 4px;"></i>Exporter</asp:LinkButton>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12 GvOrganisateur">
                                                                    <asp:GridView runat="server" ID="gvOrganisateur" AllowPaging="True" PageSize="10" OnPageIndexChanging="gvOrganisateur_PageIndexChanging" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="false" DataKeyNames="id">
                                                                        <Columns>
                                                                            <asp:BoundField DataField="Organisateur.nom" HeaderText="Nom" />
                                                                            <asp:BoundField DataField="Organisateur.prenom" HeaderText="Prenom" />
                                                                            <asp:BoundField DataField="Organisateur.cin" HeaderText="Cin" />
                                                                            <asp:BoundField DataField="Organisateur.tel" HeaderText="Telephone" />
                                                                            <asp:BoundField DataField="Organisateur.email" HeaderText="Email" />
                                                                            <asp:BoundField DataField="Organisateur.Entite.nom" HeaderText="Entite" />
                                                                            <asp:TemplateField HeaderText="Missions">
                                                                                <ItemTemplate>
                                                                                    <asp:Label runat="server" Text='<%# Get_Missions(int.Parse(Eval("idCongre").ToString()),int.Parse(Eval("idOrganisateur").ToString())) %>'></asp:Label>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField>
                                                                                <ItemTemplate>
                                                                                    <asp:LinkButton runat="server" CommandArgument='<%# Eval("id") %>' ID="editOrganisateur" OnClick="editOrganisateur_Click" CssClass="btn btn-sm"><i class="fa fa-edit font-yellow-crusta"></i></asp:LinkButton>
                                                                                    <asp:LinkButton runat="server" CommandArgument='<%# Eval("id") %>' ID="deleteOrganisateur" OnClick="deleteOrganisateur_Click" CssClass="btn btn-sm" OnClientClick="if(!confirm('Voulez-vous vraiment supprimer cet élément ?')) return false;" ToolTip="Supression"><i class="fa fa-trash font-red-flamingo"></i></asp:LinkButton>
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
                                <div class="tab-pane" id="tab_5">
                                    <div class="table-toolbar">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="portlet light" style="border: none;">
                                                    <div class="portlet-body">
                                                        <div class="table-toolbar">
                                                            <div class="row">
                                                                <div class="panel-group" id="accordion3">
                                                                    <div class="row">
                                                                        <div class="col-md-12">
                                                                            <div class="tabbable-custom tabbable-noborder">
                                                                                <div class="tab-content">
                                                                                    <asp:Panel ID="panel3" runat="server" CssClass="panelform portlet borderGrey">
                                                                                        <div class="portlet box portletSerach">
                                                                                            <div class="portlet-title">
                                                                                                <div class="caption">
                                                                                                    <span class="caption-subject bold uppercase" style="color: black;">Recherche </span>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="tools">
                                                                                                <a href="javascript:;" class="collapse" data-original-title="" title=""></a>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="portlet-body" style="display: block;">
                                                                                            <div class="panel-body ">
                                                                                                <div class="row">
                                                                                                    <div class="col-md-4">
                                                                                                        <div class="form-group">
                                                                                                            <label class="label">Nom :</label>
                                                                                                            <asp:TextBox ID="NomAeroport" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="col-md-4">
                                                                                                        <div class="form-group">
                                                                                                            <label class="label">Ville :</label>
                                                                                                            <asp:TextBox ID="VilleAeroport" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="col-md-4" style="margin-top: 20px;">
                                                                                                        <asp:LinkButton runat="server" ID="BtnSearchAeroport" OnClick="BtnSearchAeroport_Click" CssClass="btn default green-sharp"><i class="fa fa-search"></i></asp:LinkButton>
                                                                                                        &nbsp;
                                                                                    <asp:LinkButton runat="server" ID="BtnRefreshAeroport" OnClick="BtnRefreshAeroport_Click" CssClass="btn default yellow-crusta"><i class="fa fa-refresh"></i></asp:LinkButton>
                                                                                                    </div>


                                                                                                </div>


                                                                                            </div>
                                                                                        </div>
                                                                                    </asp:Panel>

                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <asp:PlaceHolder runat="server" ID="PlaceHolder1"></asp:PlaceHolder>
                                                                <div class="col-md-4">
                                                                    <div class="btn-group margin-bottom-20">
                                                                        <asp:LinkButton runat="server" ValidationGroup="element" ID="AddAeroport" OnClick="AddAeroport_Click" CssClass="btn green btn-sm"><i class="fa fa-plus"></i> Ajouter un aéroport</asp:LinkButton>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-8" style="float: right;">
                                                                    <div class="col-md-7">
                                                                    </div>
                                                                    <div class="col-md-3 " style="margin-top: 5px; margin-bottom: 2px;">
                                                                        <asp:DropDownList ID="impressionAeroport" runat="server" CssClass="form-control btn dropdown-toggle">
                                                                            <asp:ListItem Selected="True" Value="Word" Text="Word" />
                                                                            <asp:ListItem Value="Excel" Text="Excel" />
                                                                        </asp:DropDownList>
                                                                    </div>
                                                                    <div class="col-md-2 margin-bottom-20">
                                                                        <div class="btn-group">
                                                                            <asp:LinkButton ID="Btn_PrintAeroport" OnClick="Btn_PrintAeroport_Click" runat="server" CssClass="btn grey btn-sm"><i class="fa fa-print" style="margin-right: 4px;"></i>Exporter</asp:LinkButton>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12 GvOrganisateur">
                                                                    <asp:GridView runat="server" ID="gvCongreAeroport" AllowPaging="True" PageSize="10" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="false" DataKeyNames="id">
                                                                        <Columns>
                                                                            <asp:BoundField DataField="nom" HeaderText="Nom" />
                                                                            <asp:BoundField DataField="ville" HeaderText="Ville" />
                                                                            <asp:TemplateField>
                                                                                <ItemTemplate>
                                                                                    <asp:LinkButton runat="server" CommandArgument='<%# Eval("id") %>' ID="deleteAeroport" OnClick="deleteAeroport_Click" CssClass="btn btn-sm" OnClientClick="if(!confirm('Voulez-vous vraiment supprimer cet élément ?')) return false;" ToolTip="Supression"><i class="fa fa-trash font-red-flamingo"></i></asp:LinkButton>
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
                                <div class="tab-pane" id="tab_6">
                                    <div class="table-toolbar">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="portlet light" style="border: none;">
                                                    <div class="portlet-body">
                                                        <div class="table-toolbar">
                                                            <div class="row">
                                                                <div class="panel-group" id="accordion4">
                                                                    <div class="row">
                                                                        <div class="col-md-12">
                                                                            <div class="tabbable-custom tabbable-noborder">
                                                                                <div class="tab-content">
                                                                                    <asp:Panel ID="panel4" runat="server" CssClass="panelform portlet borderGrey">
                                                                                        <div class="portlet box portletSerach">
                                                                                            <div class="portlet-title">
                                                                                                <div class="caption">
                                                                                                    <span class="caption-subject bold uppercase" style="color: black;">Recherche </span>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="tools">
                                                                                                <a href="javascript:;" class="collapse" data-original-title="" title=""></a>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="portlet-body" style="display: block;">
                                                                                            <div class="panel-body ">
                                                                                                <div class="row">
                                                                                                    <div class="col-md-4">
                                                                                                        <div class="form-group">
                                                                                                            <label class="label">Nom :</label>
                                                                                                            <asp:TextBox ID="NomHotel" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="col-md-4">
                                                                                                        <div class="form-group">
                                                                                                            <label class="label">Adresse :</label>
                                                                                                            <asp:TextBox ID="AdresseHotel" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="col-md-4" style="margin-top: 20px;">
                                                                                                        <asp:LinkButton runat="server" ID="BtnSearchHotel" OnClick="BtnSearchHotel_Click" CssClass="btn default green-sharp"><i class="fa fa-search"></i></asp:LinkButton>
                                                                                                        &nbsp;
                                                                                    <asp:LinkButton runat="server" ID="BtnRefreshHotel" OnClick="BtnRefreshHotel_Click" CssClass="btn default yellow-crusta"><i class="fa fa-refresh"></i></asp:LinkButton>
                                                                                                    </div>
                                                                                                    <div class="col-md-3">
                                                                                                    </div>

                                                                                                </div>


                                                                                            </div>
                                                                                        </div>
                                                                                    </asp:Panel>

                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <asp:PlaceHolder runat="server" ID="PlaceHolder2"></asp:PlaceHolder>
                                                                <div class="col-md-4">
                                                                    <div class="btn-group margin-bottom-20">
                                                                        <%--<a class="btn green btn-sm" style="margin-left: 0px;" data-toggle="modal" href="#PopupHotel" runat="server" id="a6"><i class="fa fa-plus"></i>Ajouter un hotel</a>--%>
                                                                        <asp:LinkButton runat="server" ValidationGroup="element" ID="addhotel" OnClick="addhotel_Click" CssClass="btn green btn-sm"><i class="fa fa-plus"></i> Ajouter un hotel</asp:LinkButton>

                                                                    </div>
                                                                </div>
                                                                <div class="col-md-8" style="float: right;">
                                                                    <div class="col-md-7">
                                                                    </div>
                                                                    <div class="col-md-3 " style="margin-top: 5px; margin-bottom: 2px;">
                                                                        <asp:DropDownList runat="server" ID="impressionHotel" CssClass="form-control btn dropdown-toggle">
                                                                            <asp:ListItem Selected="True" Value="Word" Text="Word" />
                                                                            <asp:ListItem Value="Excel" Text="Excel" />
                                                                        </asp:DropDownList>
                                                                    </div>
                                                                    <div class="col-md-2 margin-bottom-20">
                                                                        <div class="btn-group">
                                                                            <asp:LinkButton ID="Btn_PrintHotel" OnClick="Btn_PrintHotel_Click" runat="server" CssClass="btn grey btn-sm"><i class="fa fa-print" style="margin-right: 4px;"></i>Exporter</asp:LinkButton>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12 GvOrganisateur">
                                                                    <asp:GridView runat="server" ID="gvCongreHotel" AllowPaging="True" PageSize="10" OnPageIndexChanging="gvOrganisateur_PageIndexChanging" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="false" DataKeyNames="id">
                                                                        <Columns>
                                                                            <asp:BoundField DataField="nom" HeaderText="Nom" />
                                                                            <asp:BoundField DataField="adresse" HeaderText="Adresse" />
                                                                            <asp:BoundField DataField="tel" HeaderText="Téléphone" />
                                                                            <asp:BoundField DataField="email" HeaderText="Email" />
                                                                            <asp:BoundField DataField="siteWeb" HeaderText="Site Web" />
                                                                            <asp:TemplateField>
                                                                                <ItemTemplate>
                                                                                    <asp:LinkButton runat="server" ID="deleteHotel" OnClick="deleteHotel_Click" CommandArgument='<%# Eval("id") %>' CssClass="btn btn-sm" OnClientClick="if(!confirm('Voulez-vous vraiment supprimer cet élément ?')) return false;" ToolTip="Supression"><i class="fa fa-trash font-red-flamingo"></i></asp:LinkButton>
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
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="Popup_Programme" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" style="position: absolute; right: 21px" data-dismiss="modal" aria-hidden="true"></button>
                            <h4 class="modal-title">Ajouter un programme </h4>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="form-group">
                                    <label class="control-label col-md-2">Titre du Document</label>
                                    <div class="col-md-4">
                                        <asp:TextBox Class=" form-control input-lg" ID="TitreDocument" runat="server"></asp:TextBox>
                                    </div>
                                    <label class="control-label col-md-2">Document</label>
                                    <div class="col-md-4">
                                        <asp:FileUpload accept="application/vnd.openxmlformats-officedocument.wordprocessingml.document,application/pdf,application/msword" runat="server" ID="Document" AllowMultiple="true" CssClass="form-control input-lg" />
                                    </div>
                                    <br />
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <asp:LinkButton runat="server" ValidationGroup="element" ID="LinkButton1" CssClass="btn btn-primary btn-sm"><i class="fa fa-check"></i> Enregistrer</asp:LinkButton>
                            <asp:LinkButton runat="server" ID="Annuler" CssClass="btn btn-danger btn-sm"><i class="fa fa-close"></i> Annuler</asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="Popup_Programme2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" style="position: absolute; right: 21px" data-dismiss="modal" aria-hidden="true"></button>
                            <h4 class="modal-title">Ajouter un programme </h4>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="form-group">
                                    <label class="control-label col-md-2">Titre du Document</label>
                                    <div class="col-md-4">
                                        <asp:TextBox Class=" form-control input-lg" ID="TextBox1" runat="server"></asp:TextBox>
                                    </div>
                                    <label class="control-label col-md-2">Document</label>
                                    <div class="col-md-4">
                                        <asp:FileUpload accept="application/vnd.openxmlformats-officedocument.wordprocessingml.document,application/pdf,application/msword" runat="server" ID="FileUpload1" AllowMultiple="true" CssClass="form-control input-lg" />
                                    </div>
                                    <div class="col-md-12">
                                        <asp:GridView runat="server" ID="GridView1" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="false" DataKeyNames="id">
                                            <Columns>
                                                <asp:BoundField DataField="titre" HeaderText="Titre" />
                                                <asp:TemplateField ItemStyle-Width="100" HeaderText="Plus">
                                                    <ItemTemplate>
                                                        <asp:LinkButton runat="server" CommandArgument='<%# Eval("id") %>' ID="btndownload" CssClass="btn btn-sm"><i class="fa fa-download font-green-meadow"></i></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField ItemStyle-Width="100" HeaderText="Plus">
                                                    <ItemTemplate>
                                                        <asp:LinkButton runat="server" CommandArgument='<%# Eval("id") %>' ID="btnedit" CssClass="btn btn-sm"><i class="fa fa-edit font-yellow-crusta"></i></asp:LinkButton>
                                                        <asp:LinkButton runat="server" CommandArgument='<%# Eval("id") %>' ID="btndelete" CssClass="btn btn-sm"><i class="fa fa-trash font-red-flamingo"></i></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <asp:LinkButton runat="server" ValidationGroup="element" ID="LinkButton19" CssClass="btn btn-primary btn-sm"><i class="fa fa-check"></i> Enregistrer</asp:LinkButton>
                            <asp:LinkButton runat="server" ID="LinkButton20" CssClass="btn btn-danger btn-sm"><i class="fa fa-close"></i> Annuler</asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="PopupNewParticipants" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog" style="width: fit-content;">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" style="position: absolute; right: 21px" data-dismiss="modal" aria-hidden="true"></button>
                            <h4 class="modal-title caption-subject font-green-sharp bold uppercase" id="NomParticipant" runat="server"><i class="fa fa-user" style="margin-right: 5px; height: max-content;"></i></h4>
                        </div>
                        <div class="modal-body">
                            <div class="container" style="width: -webkit-fill-available;">
                                <div class="row">
                                    <div class="col-md-12" style="border-radius: 6px;">
                                        <div class="portlet box green-meadow" style="border: 1px solid lightgrey;">
                                            <div class="portlet-title">
                                                <div class="caption">
                                                    <span class="caption-subject uppercase font-grey-cararra">DELEGUE</span>
                                                </div>
                                            </div>
                                            <div class="portlet-body">
                                                <div class="row">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-1">NPassport</label>
                                                        <div class="col-md-3" style="margin-top: 10px; margin-bottom: 10px;">
                                                            <asp:TextBox Class=" form-control " ID="NPassport" runat="server"></asp:TextBox>
                                                        </div>
                                                        <label class="control-label col-md-1" style="margin-top: 10px; margin-bottom: 10px;">Nom</label>
                                                        <div class="col-md-3" style="margin-top: 10px; margin-bottom: 10px;">
                                                            <asp:TextBox Class=" form-control " ID="Nom" runat="server"></asp:TextBox>
                                                        </div>
                                                        <label class="control-label col-md-1" style="margin-top: 10px; margin-bottom: 10px;">Prénom</label>
                                                        <div class="col-md-3 " style="margin-top: 10px; margin-bottom: 10px;">
                                                            <asp:TextBox Class=" form-control " ID="Prenom" runat="server"></asp:TextBox>
                                                        </div>
                                                        <label class="control-label col-md-1" style="margin-top: 10px; margin-bottom: 10px;">Pays </label>
                                                        <div class="col-md-2" style="margin-top: 10px; margin-bottom: 10px;">
                                                            <asp:DropDownList runat="server" ID="PaysOrganisation" CssClass="form-control"></asp:DropDownList>
                                                        </div>
                                                        <label class="control-label col-md-1" style="margin-top: 10px; margin-bottom: 10px;">Qualité</label>
                                                        <div class="col-md-2" style="margin-top: 10px; margin-bottom: 10px;">
                                                            <asp:DropDownList runat="server" ID="Qualite" CssClass="form-control"></asp:DropDownList>
                                                        </div>
                                                        <label class="control-label col-md-1" style="margin-top: 10px; margin-bottom: 10px;">Téléphone</label>
                                                        <div class="col-md-2" style="margin-top: 10px; margin-bottom: 10px;">
                                                            <asp:TextBox Class=" form-control " ID="Tel" runat="server"></asp:TextBox>
                                                        </div>
                                                        <label class="control-label col-md-1" style="margin-top: 10px; margin-bottom: 10px;">Email</label>
                                                        <div class="col-md-2" style="margin-top: 10px; margin-bottom: 10px;">
                                                            <asp:TextBox Class=" form-control " ID="Email" runat="server"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12" style="border-radius: 6px;">
                                        <div class="portlet box blue-hoki" style="border: 1px solid lightgrey;">
                                            <div class="portlet-title">
                                                <div class="caption">
                                                    <span class="caption-subject uppercase font-grey-cararra">CONJOINT DELEGUE</span>
                                                </div>
                                            </div>
                                            <div class="portlet-body">
                                                <div class="row">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-1" style="margin-top: 10px; margin-bottom: 10px;">NPassport</label>
                                                        <div class="col-md-3" style="margin-top: 10px; margin-bottom: 10px;">
                                                            <asp:TextBox Class=" form-control " ID="NPassportConjoint" runat="server"></asp:TextBox>
                                                        </div>
                                                        <label class="control-label col-md-1" style="margin-top: 10px; margin-bottom: 10px;">Nom</label>
                                                        <div class="col-md-3" style="margin-top: 10px; margin-bottom: 10px;">
                                                            <asp:TextBox Class=" form-control " ID="NomConjoint" runat="server"></asp:TextBox>
                                                        </div>
                                                        <label class="control-label col-md-1" style="margin-top: 10px; margin-bottom: 10px;">Prénom</label>
                                                        <div class="col-md-3" style="margin-top: 10px; margin-bottom: 10px;">
                                                            <asp:TextBox Class=" form-control " ID="PrenomConjoint" runat="server"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12" style="border-radius: 6px;">
                                        <div class="portlet box grey-salsa" style="border: 1px solid lightgrey;">
                                            <div class="portlet-title">
                                                <div class="caption">
                                                    <span class="caption-subject uppercase font-grey-cararra">Arrivée</span>
                                                </div>
                                            </div>
                                            <div class="portlet-body">
                                                <div class="row">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-1" style="margin-top: 10px; margin-bottom: 10px;">N Vol</label>
                                                        <div class="col-md-2" style="margin-top: 10px; margin-bottom: 10px;">
                                                            <asp:TextBox Class=" form-control " ID="NVolArrivee" runat="server"></asp:TextBox>
                                                        </div>
                                                        <label class="control-label col-md-1" style="margin-top: 10px; margin-bottom: 10px;">Aeroport</label>
                                                        <div class="col-md-2" style="margin-top: 10px; margin-bottom: 10px;">
                                                            <asp:DropDownList runat="server" ID="AeroportArrivee" CssClass="form-control">
                                                            </asp:DropDownList>
                                                        </div>
                                                        <label class="control-label col-md-1" style="margin-top: 10px; margin-bottom: 10px;">Date Arrivée</label>
                                                        <div class="col-md-2" style="margin-top: 10px; margin-bottom: 10px;">
                                                            <asp:TextBox Class=" form-control " ID="DateArrivee" runat="server" TextMode="Date"></asp:TextBox>
                                                        </div>
                                                        <label class="control-label col-md-1" style="margin-top: 10px; margin-bottom: 10px;">Heure Arrivée</label>
                                                        <div class="col-md-2" style="margin-top: 10px; margin-bottom: 10px;">
                                                            <asp:TextBox Class=" form-control " ID="HeureArrivee" runat="server" TextMode="Time"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12" style="border-radius: 6px;">
                                        <div class="portlet box grey-salsa" style="border: 1px solid lightgrey;">
                                            <div class="portlet-title">
                                                <div class="caption">
                                                    <span class="caption-subject uppercase font-grey-cararra">Départ</span>
                                                </div>
                                            </div>
                                            <div class="portlet-body">
                                                <div class="row">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-1" style="margin-top: 10px; margin-bottom: 10px;">N Vol</label>
                                                        <div class="col-md-2" style="margin-top: 10px; margin-bottom: 10px;">
                                                            <asp:TextBox Class=" form-control " ID="NVolDepart" runat="server"></asp:TextBox>
                                                        </div>
                                                        <label class="control-label col-md-1" style="margin-top: 10px; margin-bottom: 10px;">Aeroport</label>
                                                        <div class="col-md-2" style="margin-top: 10px; margin-bottom: 10px;">
                                                            <asp:DropDownList runat="server" ID="AeroportDepart" CssClass="form-control">
                                                            </asp:DropDownList>
                                                        </div>
                                                        <label class="control-label col-md-1" style="margin-top: 10px; margin-bottom: 10px;">Date Départ</label>
                                                        <div class="col-md-2" style="margin-top: 10px; margin-bottom: 10px;">
                                                            <asp:TextBox Class=" form-control " ID="DateDepart" runat="server" TextMode="Date"></asp:TextBox>
                                                        </div>
                                                        <label class="control-label col-md-1" style="margin-top: 10px; margin-bottom: 10px;">Heure Départ</label>
                                                        <div class="col-md-2" style="margin-top: 10px; margin-bottom: 10px;">
                                                            <asp:TextBox Class=" form-control " ID="HeureDepart" runat="server" TextMode="Time"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12" style="border-radius: 6px;">
                                        <div class="portlet box grey-salt" style="border: 1px solid lightgrey;">
                                            <div class="portlet-title">
                                                <div class="caption">
                                                    <span class="caption-subject uppercase font-grey-cararra">Séjour</span>
                                                </div>
                                            </div>
                                            <div class="portlet-body">
                                                <div class="row">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-1" style="margin-top: 10px; margin-bottom: 10px;">Hotel</label>
                                                        <div class="col-md-3" style="margin-top: 10px; margin-bottom: 10px;">
                                                            <asp:DropDownList runat="server" ID="SejourHotel" CssClass="form-control input-sm">
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12" style="border-radius: 6px;">
                                        <div class="portlet box grey-silver" style="border: 1px solid lightgrey;">
                                            <div class="portlet-title">
                                                <div class="caption">
                                                    <span class="caption-subject uppercase font-grey-cararra">Accompagnanteur</span>
                                                </div>
                                            </div>
                                            <div class="portlet-body">
                                                <div class="row">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-2" style="margin-top: 10px; margin-bottom: 10px;">Accompagnant</label>
                                                        <div class="col-md-4" style="margin-top: 10px; margin-bottom: 10px;">
                                                            <asp:DropDownList runat="server" ID="AccompagnateurPart" CssClass="form-control input-sm">
                                                            </asp:DropDownList>
                                                        </div>
                                                        <div class="col-md-12" style="margin-top: 10px; margin-bottom: 10px;">
                                                            <asp:GridView runat="server" ID="gvAccompagnateur" Visible="false" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="false" DataKeyNames="id">
                                                                <Columns>
                                                                    <asp:BoundField DataField="cin" HeaderText="Cin" />
                                                                    <asp:BoundField DataField="nom" HeaderText="Nom" />
                                                                    <asp:BoundField DataField="prenom" HeaderText="Prénom" />
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
                                <div class="row">
                                    <div class="col-md-12" style="border-radius: 6px;">
                                        <div class="portlet box grey-silver" style="border: 1px solid lightgrey;">
                                            <div class="portlet-title">
                                                <div class="caption">
                                                    <span class="caption-subject uppercase font-grey-cararra">Chauffeur</span>
                                                </div>
                                            </div>
                                            <div class="portlet-body">
                                                <div class="row">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-2" style="margin-top: 10px; margin-bottom: 10px;">Chauffeur</label>
                                                        <div class="col-md-4" style="margin-top: 10px; margin-bottom: 10px;">
                                                            <asp:DropDownList runat="server" ID="ChauffeurPart" CssClass="form-control input-sm">
                                                            </asp:DropDownList>
                                                        </div>
                                                        <div class="col-md-12" style="margin-top: 10px; margin-bottom: 10px;">
                                                            <asp:GridView runat="server" ID="gvChauffeur" Visible="false" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="false" DataKeyNames="id">
                                                                <Columns>
                                                                    <asp:BoundField DataField="cin" HeaderText="Cin" />
                                                                    <asp:BoundField DataField="nom" HeaderText="Nom" />
                                                                    <asp:BoundField DataField="prenom" HeaderText="Prénom" />
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
                                <div class="row">
                                    <div class="col-md-12" style="border-radius: 6px;">
                                        <div class="portlet box grey-silver" style="border: 1px solid lightgrey;">
                                            <div class="portlet-title">
                                                <div class="caption">
                                                    <span class="caption-subject uppercase font-grey-cararra">Véhicule</span>
                                                </div>
                                            </div>
                                            <div class="portlet-body">
                                                <div class="row">
                                                    <div class="form-group">
                                                        <label class="control-label col-md-2" style="margin-top: 10px; margin-bottom: 10px;">Véhicule</label>
                                                        <div class="col-md-4" style="margin-top: 10px; margin-bottom: 10px;">
                                                            <asp:DropDownList runat="server" ID="VehiculePart" CssClass="form-control input-sm">
                                                            </asp:DropDownList>
                                                        </div>
                                                        <div class="col-md-12" style="margin-top: 10px; margin-bottom: 10px;">
                                                            <asp:GridView runat="server" ID="gvVehicule" Visible="false" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="false" DataKeyNames="id">
                                                                <Columns>
                                                                    <asp:BoundField DataField="matricule" HeaderText="Matricule" />
                                                                    <asp:BoundField DataField="modele" HeaderText="modele" />
                                                                    <asp:BoundField DataField="marque" HeaderText="marque" />
                                                                    <asp:BoundField DataField="description" HeaderText="description" />
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
                        <div class="modal-footer">
                            <asp:LinkButton runat="server" ValidationGroup="element" ID="EnregistrerParticipant" OnClick="EnregistrerParticipant_Click" CssClass="btn btn-primary btn-sm"><i class="fa fa-check"></i> Valider</asp:LinkButton>
                            <asp:LinkButton runat="server" ID="annulerParticipant" OnClick="annulerParticipant_Click" CssClass="btn btn-danger btn-sm"><i class="fa fa-close"></i> Annuler</asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="PopupOrganisateur" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" style="position: absolute; right: 21px" data-dismiss="modal" aria-hidden="true"></button>
                            <h4 class="modal-title" runat="server" id="titrpopup">Ajouter un Organisateur </h4>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="form-group">
                                    <label class="control-label col-md-2" style="margin-top: 20px;">Organisateur</label>
                                    <div class="col-md-10" style="margin-top: 20px;">
                                        <asp:DropDownList runat="server" ID="OrganisateurCongre" CssClass="form-control input-lg">
                                        </asp:DropDownList>
                                    </div>
                                    <label class="control-label col-md-2" style="margin-top: 20px;">Missions</label>
                                    <div class="col-md-4" style="margin-top: 20px;">
                                        <asp:ListBox ID="Mission" Style="width: 100%" Rows="6" SelectionMode="multiple" runat="server"></asp:ListBox>
                                    </div>
                                    <div class="col-md-2" style="text-align: center; margin-top: 35px;">
                                        <div class="form-group boxchange">
                                            <asp:Button ID="SendMission" OnClick="SendMission_Click" Text=">" runat="server" /><br />
                                            <br />
                                            <asp:Button ID="ResendMission" OnClick="ResendMission_Click" Text="<" runat="server" />
                                        </div>
                                    </div>
                                    <div class="col-md-4" style="margin-top: 20px;">
                                        <asp:ListBox ID="MissionValide" Style="width: 100%" Rows="6" SelectionMode="multiple" runat="server"></asp:ListBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <asp:LinkButton runat="server" ValidationGroup="element" ID="AddOrganisateurCongre" OnClick="AddOrganisateurCongre_Click" CssClass="btn btn-primary btn-sm"><i class="fa fa-check"></i> Enregistrer</asp:LinkButton>
                            <asp:LinkButton runat="server" ID="btnAnnuler" OnClick="btnAnnuler_Click" CssClass="btn btn-danger btn-sm"><i class="fa fa-close"></i> Annuler</asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="PopupAeroport" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" style="position: absolute; right: 21px" data-dismiss="modal" aria-hidden="true"></button>
                            <h4 class="modal-title">Ajouter un Aéroport </h4>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="form-group">
                                    <label class="control-label col-md-2" style="margin-top: 20px;">Aeroport</label>
                                    <div class="col-md-10" style="margin-top: 20px;">
                                        <asp:DropDownList runat="server" ID="Aeroport" CssClass="form-control input-lg">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <asp:LinkButton runat="server" ValidationGroup="element" ID="EnregistrerAeroportCongre" OnClick="EnregistrerAeroportCongre_Click" CssClass="btn btn-primary btn-sm"><i class="fa fa-check"></i> Enregistrer</asp:LinkButton>
                            <asp:LinkButton runat="server" ID="AnnulerAeroportCongre" OnClick="AnnulerAeroportCongre_Click" CssClass="btn btn-danger btn-sm"><i class="fa fa-close"></i> Annuler</asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="PopupHotel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" style="position: absolute; right: 21px" data-dismiss="modal" aria-hidden="true"></button>
                            <h4 class="modal-title">Ajouter un hotel </h4>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="form-group">
                                    <label class="control-label col-md-2" style="margin-top: 20px;">Hotel</label>
                                    <div class="col-md-10" style="margin-top: 20px;">
                                        <asp:DropDownList runat="server" ID="Hotel" CssClass="form-control input-lg">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <asp:LinkButton runat="server" ValidationGroup="element" ID="EnregisterCongreHotel" OnClick="EnregisterCongreHotel_Click" CssClass="btn btn-primary btn-sm"><i class="fa fa-check"></i> Enregistrer</asp:LinkButton>
                            <asp:LinkButton runat="server" ID="AnnulerCongreHotel" OnClick="AnnulerCongreHotel_Click" CssClass="btn btn-danger btn-sm"><i class="fa fa-close"></i> Annuler</asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="Annuler" />
            <asp:PostBackTrigger ControlID="btnAnnuler" />
            <asp:AsyncPostBackTrigger ControlID="gvParticipant" />
            <asp:AsyncPostBackTrigger ControlID="gvOrganisateur" />
        </Triggers>
    </asp:UpdatePanel>
    <script>

        function RemoveStyleDisplay() {
            document.getElementById('accordion1').style.cssText = 'display : block';
            document.getElementById('BtnExport').style.cssText = 'display : block';
            document.getElementById("gridParticipant").classList.remove("hide");
        }

        function display() {
            var element = document.getElementById("li2");
            element.classList.add("active");
            document.getElementById("tab_4").className = "row tab-pane active";

            var element1 = document.getElementById("li1");
            element1.classList.remove("active");
            document.getElementById("accordion1").style = "display : none";
            document.getElementById("BtnExport").style = "display : none";
            document.getElementById("gridParticipant").className = "hide";
        }

        function tab_4() {
            document.getElementById("tab_4").className = "row tab-pane active";
            document.getElementById("a2").ariaExpanded = "true";
            document.getElementById("li2").className = 'active';
            /**/
            document.getElementById("tab_3").className = "row tab-pane";
            document.getElementById("a1").ariaExpanded = "false";
            document.getElementById("li1").classList.remove('active');

            var element = document.getElementById('accordion1');
            element.style.removeProperty("display");
        }
        function tab_3() {
            document.getElementById("tab_3").className = "row tab-pane active";
            document.getElementById("a1").ariaExpanded = "true";
            document.getElementById("li1").className = 'active';
            /**/
            document.getElementById("tab_4").className = "row tab-pane";
            document.getElementById("a2").ariaExpanded = "false";
            document.getElementById("li2").classList.remove('active');

            var element = document.getElementById('accordion1');
            element.style.removeProperty("display");
        }

        function tab_5() {
            document.getElementById("tab_5").className = "row tab-pane active";
            document.getElementById("a4").ariaExpanded = "true";
            document.getElementById("li3").className = 'active';
            /**/
            document.getElementById("tab_4").className = "row tab-pane";
            document.getElementById("a2").ariaExpanded = "false";
            document.getElementById("li2").classList.remove('active');
            /**/
            document.getElementById("tab_3").className = "row tab-pane";
            document.getElementById("a1").ariaExpanded = "false";
            document.getElementById("li1").classList.remove('active');

        }
        function tab_6() {
            document.getElementById("tab_6").className = "row tab-pane active";
            document.getElementById("a5").ariaExpanded = "true";
            document.getElementById("li4").className = 'active';
            /**/
            document.getElementById("tab_4").className = "row tab-pane";
            document.getElementById("a2").ariaExpanded = "false";
            document.getElementById("li2").classList.remove('active');
            /**/
            document.getElementById("tab_3").className = "row tab-pane";
            document.getElementById("a1").ariaExpanded = "false";
            document.getElementById("li1").classList.remove('active');

        }
    </script>
</asp:Content>
