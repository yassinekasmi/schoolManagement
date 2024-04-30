<%@ Page Title="" Language="C#" MasterPageFile="~/Partages/MasterPage.Master" AutoEventWireup="true" CodeBehind="OrganisateurAeroport.aspx.cs" Inherits="GestionCongrees.Pages.OrganisateurAeroport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel runat="server" ID="updatePanel">
        <ContentTemplate>
            <div class="row">
                <div class="col-md-12">
                    <ul class="page-breadcrumb breadcrumb">
                        <li>
                            <i class="fa fa-circle"></i>
                            <a href="Acceuil.aspx">Acceuil</a><i class="fa fa-circle"></i>
                        </li>
                        <li class="active">Organisateurs d'aéroport
                        </li>
                    </ul>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="portlet light">
                                <div class="portlet-title">
                                    <div class="caption">
                                        <i class="fa fa-navicon font-green-sharp"></i>
                                        <span class="caption-subject font-green-sharp bold uppercase">Liste des organisateurs d'aéroport</span>
                                    </div>
                                </div>
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
                                                                   
                                                                        <div class="tools">
                                                                            <a href="javascript:;" class="collapse" data-original-title="" title=""></a>
                                                                        </div>
                                                                    </div>
                                                                    <div class="portlet-body" style="display: block;">
                                                                        <div class="panel-body ">
                                                                            <div class="row">
                                                                                 <div class="col-md-3">                                                                                  
                                                                                    <asp:DropDownList runat="server" ID="Aeroport_Search" CssClass="form-control select2me"></asp:DropDownList>
                                                                                </div>
                                                                                <div class="col-md-3">                                                                                   
                                                                                    <asp:DropDownList runat="server" ID="Organisateur_Search" CssClass="form-control select2me"></asp:DropDownList>
                                                                                </div>
                                                                               
                                                                            <%--    <div class="col-md-2">
                                                                                    <label class="label-control">
                                                                                        Date du joure  </label>
                                                                                    <asp:TextBox CssClass="form-control" ID="DateJoure_Search" runat="server" TextMode="Date"></asp:TextBox>
                                                                                </div>

                                                                                <div class="col-md-2">
                                                                                    <label class="label-control">
                                                                                        Heure début
                                                                                    </label>
                                                                                    <asp:TextBox Class=" form-control " ID="HeurDebut_Search" runat="server" TextMode="Time"></asp:TextBox>
                                                                                </div>
                                                                                <div class="col-md-2">
                                                                                    <label class="label-control">
                                                                                        Heure fin
                                                                                    </label>
                                                                                    <asp:TextBox Class=" form-control" ID="HeurFin_Search" runat="server" TextMode="Time"></asp:TextBox>
                                                                                </div> --%>
                                                                           
                                                                                <div class="col-md-6" >
                                                                                    <asp:LinkButton runat="server" ID="BtnSearch" OnClick="BtnSearch_Click" CssClass="btn default green-sharp"><i class="fa fa-search"></i></asp:LinkButton>
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
                                            <div class="col-md-4 margin-bottom-20">
                                                <asp:LinkButton ID="addNew" runat="server" Visible="false" OnClick="addNew_Click" CssClass="btn green btn-sm"><i class="fa fa-plus"></i> Affecter un organisateur à un aéroport</asp:LinkButton>
                                            </div>
                                            <div class="col-md-8" style="float: right;">
                                                <div class="col-md-7">
                                                </div>
                                                <div class="col-md-3 " style="margin-top: 5px; margin-bottom: 2px;">
                                                    <asp:DropDownList runat="server" ID="impression" CssClass="form-control btn dropdown-toggle">
                                                        <asp:ListItem Selected="True" Value="Word" Text="Word" />
                                                        <asp:ListItem Value="Excel" Text="Excel" />
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="col-md-2 margin-bottom-20">
                                                    <div class="btn-group">
                                                        <asp:LinkButton ID="Btn_Print" OnClick="Btn_Print_Click" runat="server" CssClass="btn grey btn-sm"><i class="fa fa-print" style="margin-right: 4px;"></i>Exporter</asp:LinkButton>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-md-12 GvOrganisateur">
                                                <asp:PlaceHolder runat="server" ID="boxMessage"></asp:PlaceHolder>
                                                <asp:GridView runat="server" ID="gv" CssClass="table table-striped table-bordered table-hover" OnPageIndexChanging="gv_PageIndexChanging" AutoGenerateColumns="false" DataKeyNames="id" AllowPaging="True" PageSize="10">
                                                    <Columns>
                                                         <asp:BoundField DataField="Aeroport.nom" HeaderText="Aéroport" />
                                                        <asp:BoundField DataField="Organisateur.nomPrenomTel" HeaderText="Organisateur" />
                                                       <%-- <asp:BoundField DataField="Organisateur.specialite" HeaderText="Spécialité" />--%>
                                                       
                                                    <%--    <asp:BoundField DataField="DateJour" HeaderText="Date du Jour" DataFormatString="{0:MM/dd/yyyy}" />
                                                        <asp:BoundField DataField="HeureD" HeaderText="Heure début" />
                                                        <asp:BoundField DataField="HeureF" HeaderText="Heur fin" />--%>
                                                        <asp:TemplateField Visible="false" ItemStyle-Width="">
                                                            <ItemTemplate>
                                                                <asp:LinkButton runat="server" CommandArgument='<%# Eval("id") %>' OnClick="btnedit_Click" ID="btnedit" CssClass="btn btn-sm"><i class="fa fa-edit font-yellow-crusta"></i></asp:LinkButton>
                                                                <asp:LinkButton runat="server" CommandName="DeleteItem" CommandArgument='<%# Eval("id") %>' OnClientClick="if(!confirm('Voulez-vous vraiment supprimer cet élément ?')) return false;" ID="btndelete" OnClick="btndelete_Click" CssClass="btn btn-sm"><i class="fa fa-trash font-red-flamingo"></i></asp:LinkButton>
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
            <div class="modal fade" id="Popup" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
                                        Aéroport
                                        <asp:RequiredFieldValidator ID="a44" runat="server" ErrorMessage="*" ValidationGroup="element" ForeColor="Red" ControlToValidate="Aeroport"></asp:RequiredFieldValidator>
                                    </label>
                                    <asp:DropDownList runat="server" ID="Aeroport" CssClass="form-control select2me"></asp:DropDownList>
                                </div>
                                <div class="col-md-4">
                                    <label class="label-control">
                                        Organisateur
                                        <asp:RequiredFieldValidator ID="a1" runat="server" ErrorMessage="*" ValidationGroup="element" ForeColor="Red" ControlToValidate="Organisateur"></asp:RequiredFieldValidator>
                                    </label>
                                    <asp:DropDownList runat="server" ID="Organisateur" CssClass="form-control select2me"></asp:DropDownList>
                                </div>
                             
                               <%-- <div class="col-md-4">
                                    <label class="label-control">
                                        Date du joure
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ValidationGroup="element" ForeColor="Red" ControlToValidate="Datejour"></asp:RequiredFieldValidator>
                                    </label>
                                    <asp:TextBox CssClass="form-control" ID="Datejour" runat="server" TextMode="Date"></asp:TextBox>
                                </div>

                                <div class="col-md-4">
                                    <label class="label-control">
                                        Heure début
                                    </label>
                                    <asp:TextBox Class=" form-control " ID="Heure_Debut" runat="server" TextMode="Time"></asp:TextBox>
                                </div>
                                <div class="col-md-4">
                                    <label class="label-control">
                                        Heure fin
                                    </label>
                                    <asp:TextBox Class=" form-control" ID="Heure_fin" runat="server" TextMode="Time"></asp:TextBox>
                                </div>--%>

                            </div>
                        </div>
                        <div class="modal-footer">
                            <asp:LinkButton runat="server" ValidationGroup="element" ID="btnEnregistrer" OnClick="btnEnregistrer_Click" CssClass="btn btn-primary btn-sm"><i class="fa fa-check"></i> Enregistrer</asp:LinkButton>
                            <asp:LinkButton runat="server" ID="btnAnnuler" OnClick="btnAnnuler_Click" CssClass="btn btn-danger btn-sm"><i class="fa fa-close"></i> Annuler</asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="btnEnregistrer" />
            <asp:AsyncPostBackTrigger ControlID="gv" />

        </Triggers>
    </asp:UpdatePanel>
</asp:Content>
