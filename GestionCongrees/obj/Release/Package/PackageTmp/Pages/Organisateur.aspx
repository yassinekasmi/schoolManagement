<%@ Page Title="" Language="C#" MasterPageFile="~/Partages/MasterPage.Master" AutoEventWireup="true" CodeBehind="Organisateur.aspx.cs" Inherits="GestionCongrees.Pages.Organisateur" %>
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
                        <li class="active">Organisateur
                        </li>
                    </ul>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="portlet light">
                                <div class="portlet-title">
                                    <div class="caption">
                                        <i class="fa fa-navicon font-green-sharp"></i>
                                        <span class="caption-subject font-green-sharp bold uppercase">Liste des organisateurs</span>
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
                                                                                 <div class="col-md-2">
                                                                                    <div class="form-group">
                                                                                       
                                                                                        <asp:DropDownList ID="EntiteSearch" runat="server" CssClass="form-control input-sm">
                                                                                        </asp:DropDownList>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-2">
                                                                                    <div class="form-group">
                                                                                       
                                                                                        <asp:TextBox ID="CinSearch" runat="server" CssClass="form-control input-sm" placeholder="Mot-clé"></asp:TextBox>
                                                                                    </div>
                                                                                </div>
                                                                              <%--  <div class="col-md-2">
                                                                                    <div class="form-group">
                                                                                     
                                                                                        <asp:TextBox ID="NomSearch" runat="server" CssClass="form-control input-sm" placeholder="Nom"></asp:TextBox>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-2">
                                                                                    <div class="form-group">
                                                                                    
                                                                                        <asp:TextBox ID="PrenomSearch" runat="server" CssClass="form-control input-sm" placeholder="Prénom"></asp:TextBox>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-2">
                                                                                    <div class="form-group">
                                                                                        
                                                                                        <asp:TextBox ID="SpecialiteSearch" runat="server" CssClass="form-control input-sm" placeholder="Spécialité"></asp:TextBox>
                                                                                    </div>
                                                                                </div>--%>
                                                                                
                                                                                <div class="col-md-2" >
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
                                                <asp:LinkButton ID="addNew" Visible="false" runat="server" OnClick="addNew_Click" CssClass="btn green btn-sm"><i class="fa fa-plus"></i> Ajouter un nouveau organisateur</asp:LinkButton>
                                            </div>
                                            <div class="col-md-8" style="float: right;">
                                                <div class="col-md-7">
                                                </div>
                                                <div class="col-md-3 " style="margin-top: 5px; margin-bottom: 2px;"> 
                                              <%--      <asp:DropDownList runat="server" ID="impression" CssClass="form-control btn dropdown-toggle">
                                                        <asp:ListItem Selected="True" Value="Word" Text="Word" />
                                                        <asp:ListItem Value="Excel" Text="Excel" />
                                                    </asp:DropDownList>--%>
                                                </div>
                                                <div class="col-md-2 margin-bottom-20">
                                                    <div class="btn-group">
                                                        <asp:LinkButton ID="Btn_Print" OnClick="Btn_Print_Click" runat="server" CssClass="btn grey btn-sm"><i class="fa fa-print" style="margin-right: 4px;"></i>Imprimer</asp:LinkButton>
                                                    </div>
                                                </div>
                                            </div>
  
                                            <div class="col-md-12 GvOrganisateur">
                                                <asp:PlaceHolder runat="server" ID="boxMessage"></asp:PlaceHolder>
                                                <asp:GridView runat="server" ID="gv" CssClass="table table-striped table-bordered table-hover" OnPageIndexChanging="gv_PageIndexChanging" AutoGenerateColumns="false" DataKeyNames="id" AllowPaging="True" PageSize="10">
                                                    <Columns>
                                                         <asp:BoundField DataField="Entite.nom" HeaderText="Entité" />
                                                        <asp:BoundField DataField="cin" HeaderText="Cin" />
                                                        <asp:BoundField DataField="nom" HeaderText="Nom" />
                                                        <asp:BoundField DataField="prenom" HeaderText="Prénom" />
                                                        <asp:BoundField DataField="tel" HeaderText="Téléphone" />
                                                        <asp:BoundField DataField="email" HeaderText="Email" />                                                       
                                                        <asp:BoundField DataField="specialite" HeaderText="Spécialité" />
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
                                    <div class="col-md-3">
                                   <asp:DropDownList ID="Entite" runat="server" CssClass="form-control select2me"></asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ValidationGroup="element" ForeColor="Red" ControlToValidate="Entite"></asp:RequiredFieldValidator>
                                   </div>
                                 <div class="col-md-3">
                                      <asp:TextBox runat="server" ID="Cin" CssClass="form-control input-lg" placeholder="Cin"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ValidationGroup="element" ForeColor="Red" ControlToValidate="Cin"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-md-3">                                    
                                        <asp:TextBox runat="server" ID="Nom" CssClass="form-control input-lg" placeholder="Nom"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="a1" runat="server" ErrorMessage="*" ValidationGroup="element" ForeColor="Red" ControlToValidate="Nom"></asp:RequiredFieldValidator>
                                                                 
                                </div>
                                <div class="col-md-3">
                                 
                                             <asp:TextBox runat="server" ID="Prenom" CssClass="form-control input-lg" placeholder="Prénom"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ValidationGroup="element" ForeColor="Red" ControlToValidate="Prenom"></asp:RequiredFieldValidator>
                                
                               
                                </div>
                               
                            
                               <div class="col-md-3">
                                    <asp:TextBox runat="server" ID="specialite" CssClass="form-control input-lg" placeholder="Spécialité"></asp:TextBox>
                                </div>
                                <div class="col-md-3">
                                  
                                    <asp:TextBox runat="server" ID="Email" CssClass="form-control input-lg" placeholder="Email"></asp:TextBox>
                                </div>
                                <div class="col-md-3">
                                   <asp:TextBox runat="server" ID="Telephone" CssClass="form-control input-lg" placeholder="Téléphone"></asp:TextBox>
                                        
                                        <asp:RequiredFieldValidator ID="a6" runat="server" ErrorMessage="*" ValidationGroup="element" ForeColor="Red" ControlToValidate="Telephone"></asp:RequiredFieldValidator>
                                  
                                   
                                </div>
                               
                                <div class="col-md-3">
                                   
                                    <asp:FileUpload accept="application/vnd.openxmlformats-officedocument.wordprocessingml.document,application/pdf,application/msword" runat="server" ID="Photo" CssClass="form-control input-lg" />
                                </div>

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
