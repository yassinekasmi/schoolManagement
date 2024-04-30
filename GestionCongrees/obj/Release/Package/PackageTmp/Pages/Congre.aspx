<%@ Page Title="" Language="C#" MasterPageFile="~/Partages/MasterPage.Master" AutoEventWireup="true" CodeBehind="Congre.aspx.cs" Inherits="GestionCongrees.Pages.Congre" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                        <li class="active">Congrè </li> 
                    </ul>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="portlet light">
                                <div class="portlet-title">
                                    <div class="caption">
                                        <i class="fa fa-navicon font-green-sharp"></i>
                                        <span class="caption-subject font-green-sharp bold uppercase">Liste Des Congrès</span>
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
                                                                                        <label class="label">Titre : </label>
                                                                                        <asp:TextBox ID="TitreSearch" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-3">
                                                                                    <div class="form-group">
                                                                                        <label class="label">Organisme </label>
                                                                                        <asp:DropDownList ID="OrganismeSearch" runat="server" CssClass="form-control input-sm">
                                                                                        </asp:DropDownList>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-3">
                                                                                    <div class="form-group">
                                                                                        <label class="label">Date de Début : </label>
                                                                                        <asp:TextBox CssClass="form-control input-sm" ID="DateDebutSearch" runat="server" TextMode="Date"></asp:TextBox>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-3">
                                                                                    <div class="form-group">
                                                                                        <label class="label">Date de Fin : </label>
                                                                                        <asp:TextBox CssClass="form-control input-sm" ID="DateFinSearch" runat="server" TextMode="Date"></asp:TextBox>
                                                                                    </div>
                                                                                </div> 
                                                                            </div> 
                                                                            <div class="row">
                                                                                <div class="col-md-4"> 
                                                                                </div>
                                                                                <div class="col-md-6">
                                                                                </div>
                                                                                <div class="col-md-2" style="margin-top: 20px;">
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
                                                <asp:LinkButton ID="AddNewCongre" runat="server" OnClick="AddNewCongre_Click" CssClass="btn green btn-sm"><i class="fa fa-plus"></i> Ajouter un nouveau congré</asp:LinkButton>
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
                                                <asp:GridView runat="server" ID="gv" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="false" DataKeyNames="id" OnPageIndexChanging="gv_PageIndexChanging" AllowPaging="True" PageSize="10">
                                                    <Columns>
                                                        <asp:BoundField DataField="titre" HeaderText="Titre" />
                                                        <asp:BoundField DataField="organisme.nom" HeaderText="Organisme" />
                                                        <asp:BoundField DataField="dateDebut" HeaderText="Date de Début" />
                                                        <asp:BoundField DataField="dateFin" HeaderText="Date de Fin" />
                                                        <asp:BoundField DataField="details" HeaderText="Details" /> 
                                                        <asp:TemplateField HeaderText="Statut">
                                                                   <ItemTemplate>
                                                                   <asp:Label runat="server" Text='<%#  getStatutCongre(Eval("statutcongre").ToString()) %>'></asp:Label>
                                                               </ItemTemplate>
                                                        </asp:TemplateField>

                                                        <asp:TemplateField ItemStyle-Width="50" HeaderText="Plus">
                                                            <ItemTemplate>
                                                                <asp:LinkButton runat="server" CommandArgument='<%# Eval("id") %>' ID="DetailCongre" OnClick="DetailCongre_Click" CssClass="btn btn-sm"><i class="fa fa-cog font-blue-hoki"></i></asp:LinkButton>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>

                                                        <asp:TemplateField ItemStyle-Width="50" HeaderText="Programme">
                                                            <ItemTemplate>
                                                                <asp:LinkButton runat="server" ID="btnUploadfile" OnClick="btnUploadfile_Click" CommandArgument='<%#Eval("id") %>'><i class="fa fa-folder" style="font-size:18px;color:#ffb703;font-weight:bold"></i></asp:LinkButton>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>

                                                        <asp:TemplateField ItemStyle-Width="100" HeaderText="Plus">
                                                            <ItemTemplate>
                                                                <asp:LinkButton runat="server" CommandArgument='<%# Eval("id") %>' ID="btnedit" OnClick="btnedit_Click" CssClass="btn btn-sm"><i class="fa fa-edit font-yellow-crusta"></i></asp:LinkButton>
                                                                <asp:LinkButton runat="server" ID="btndelete" ToolTip="suppression" OnClick="btndelete_Click" CssClass="btn btn-sm" CommandName="DeleteItem" CommandArgument='<%# Eval("id") %>' OnClientClick="if(!confirm('Voulez-vous vraiment supprimer cet élément ?')) return false;"><i class="fa fa-trash font-red-flamingo"></i></asp:LinkButton>

                                                            </ItemTemplate>

                                                        </asp:TemplateField>
                                                    </Columns>
                                                </asp:GridView>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!-- END EXAMPLE TABLE PORTLET-->
                        </div>
                    </div>
                    <!-- END PAGE CONTENT INNER -->
                </div>
            </div>
            <!--  popup file -->
            <div class="modal fade" id="PopupFiles" tabindex="-1" data-backdrop="static" aria-hidden="true" style="display: none;">
                <div class="modal-dialog modal-lg">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional">
                        <ContentTemplate>
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                         <button type="button" class="close" style="position: absolute; right: 21px" data-dismiss="modal" aria-hidden="true"></button>
                           
                                        <h4 class=" modal-title">Programme de congré</h4>
                                    </div>

                                  <div class="modal-body">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="panel panel-default">
                                                    <div class="panel-body">
                                                        <div class="row form-group">
                                                        </div>
                                                        <div class="row form-group">
                                                            <div class="col-md-2">
                                                                <label>
                                                                    Titre  
                                                               <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" Display="Dynamic" ForeColor="Red" ControlToValidate="TitreDoc" ValidationGroup="Newdoc" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                                </label>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <asp:TextBox runat="server" ID="TitreDoc" CssClass="form-control input-lg"></asp:TextBox>
                                                            </div>
                                                            <div class="col-md-2">
                                                                <label>
                                                                    Documents  
                                                               <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" Display="Dynamic" ForeColor="Red" ControlToValidate="Document2" ValidationGroup="Newdoc" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                                </label>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <asp:FileUpload accept="application/vnd.openxmlformats-officedocument.wordprocessingml.document,application/pdf,application/msword" runat="server" ID="Document2"  CssClass="form-control input-lg" />
                                                            </div>

                                                        </div>
                                                        <asp:LinkButton ID="linlUpload" OnClick="linlUpload_Click" runat="server" CssClass="btn btn-sm green-sharp enregistrerClass" ValidationGroup="Newdoc"><i class="fa fa-pencil"></i> Enregistrer</asp:LinkButton>
                                                    </div>

                                                    <div class="panel-body">
                                                        <asp:GridView runat="server" ID="gvDocuments" AutoGenerateColumns="false" DataKeyNames="ID" CssClass="table  table-striped table-bordered table-hover">
                                                            <Columns> 
                                                                <asp:BoundField HeaderText="Titre" DataField="Titre" />
                                                                <asp:TemplateField HeaderText="Télécharger">
                                                                    <ItemTemplate>
                                                                        <asp:LinkButton ID="BtnDownloade" OnClick="BtnDownloade_Click" ToolTip="Telecharger" CommandName="Del" CommandArgument='<%#Eval("Id") %>' runat="server" CssClass="glyphicon glyphicon-download font-blue" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="Supprimer">
                                                                    <ItemTemplate>
                                                                        <asp:LinkButton ToolTip="Supprimer" OnClick="Button_Delete_Click" CommandArgument='<%#Eval("Id") %>' runat="server" CssClass="glyphicon glyphicon-trash font-red" ID="Button_Delete" OnClientClick="return confirm('Voulez-vous supprimer cette ligne');" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                            </Columns>
                                                        </asp:GridView>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                            </div>
                                        </div>
                                        
                                    </div>
                                     <div class="modal-footer">
                            <asp:LinkButton runat="server" ID="Annuler" OnClick="Annuler_Click" CssClass="btn btn-sm red-flamingo"><i class="fa fa-close"></i> Annuler</asp:LinkButton>
                        </div>
                                </div>
                                </div>
                        </ContentTemplate>
                        <Triggers>
                            <asp:PostBackTrigger ControlID="linlUpload" />
                            <asp:AsyncPostBackTrigger ControlID="gv" />
                        </Triggers>
                    </asp:UpdatePanel>
                </div>
            </div>
            <!-- / popup file -->
            <div class="modal fade" id="Popup" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">

                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" style="position: absolute; right: 21px" data-dismiss="modal" aria-hidden="true"></button>
                            <h4 class="modal-title" runat="server" id="titrepopup"></h4>
                        </div>
                        <div class="modal-body">
                            <div class="row">

                                <div class="col-md-6">
                                    <label class="label-control">
                                        Titre
                                        <asp:RequiredFieldValidator ID="a1" runat="server" ErrorMessage="*" ValidationGroup="element" ForeColor="Red" ControlToValidate="Titre"></asp:RequiredFieldValidator>
                                    </label>
                                    <asp:TextBox runat="server" ID="Titre" CssClass="form-control input-lg"></asp:TextBox>
                                </div>

                                <div class="col-md-6">
                                    <label class="label-control">
                                        Organisme
                                        <asp:RequiredFieldValidator ID="a2" runat="server" ErrorMessage="*" ValidationGroup="element" ForeColor="Red" ControlToValidate="OrganismeCongre"></asp:RequiredFieldValidator>
                                    </label>
                                    <asp:DropDownList ID="OrganismeCongre" runat="server" CssClass="form-control select2me select2-offscreen input-lg"></asp:DropDownList>
                                </div>
                                <div class="col-md-6">
                                    <label class="label-control">
                                        Date Début
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ValidationGroup="element" ForeColor="Red" ControlToValidate="DateDebut"></asp:RequiredFieldValidator>
                                    </label>
                                    <asp:TextBox Class="datestyle form-control input-lg" ID="DateDebut" runat="server" TextMode="Date"></asp:TextBox>
                                </div>
                                <div class="col-md-6">
                                    <label class="label-control">
                                        Date Fin
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ValidationGroup="element" ForeColor="Red" ControlToValidate="DateFin"></asp:RequiredFieldValidator>
                                    </label>
                                    <asp:TextBox Class="datestyle form-control input-lg" ID="DateFin" runat="server" TextMode="Date"></asp:TextBox>
                                </div>
                                <div class="col-md-6 programme">
                                    <label class="control-label">
                                        Programme de congrè
                                       <%--<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator8dfg" Display="Dynamic" ForeColor="Red" ControlToValidate="Documents" ValidationGroup="NewPiece" ErrorMessage="*"></asp:RequiredFieldValidator>--%>
                                    </label>
                                    <asp:FileUpload accept="application/vnd.openxmlformats-officedocument.wordprocessingml.document,application/pdf,application/msword" runat="server" ID="Documents" AllowMultiple="true" CssClass="form-control input-lg" />
                                </div>
                                <div class="col-md-6 programme">
                                    <label class="control-label">
                                        Titre de programme 
                                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ValidationGroup="element" ForeColor="Red" ControlToValidate="TitreDocumment"></asp:RequiredFieldValidator>--%>
                                    </label>
                                    <asp:TextBox runat="server" ID="TitreDocumment" CssClass="form-control input-lg"></asp:TextBox>
                                </div>
                                <div class="col-md-12">
                                    <label class="label-control">
                                        Détails
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ValidationGroup="element" ForeColor="Red" ControlToValidate="Details"></asp:RequiredFieldValidator>
                                    </label>
                                    <asp:TextBox runat="server" ID="Details" CssClass="form-control input-lg" TextMode="MultiLine" Rows="4"></asp:TextBox>
                                </div>

                            </div>
                        </div>
                        <div class="modal-footer">
                            <asp:LinkButton runat="server" ValidationGroup="element" ID="btnEnregistrer" OnClick="btnEnregistrer_Click" CssClass="btn btn-primary btn-sm"><i class="fa fa-check"></i> Enregistrer</asp:LinkButton>
                            <asp:LinkButton runat="server" ID="btnAnnuler" CssClass="btn btn-danger btn-sm" OnClick="btnAnnuler_Click"><i class="fa fa-close"></i> Annuler</asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="btnEnregistrer" />
        </Triggers>
    </asp:UpdatePanel>
    <script>

        function AddclassHide() {
            var listCaption = document.getElementsByClassName("programme");
            for (var i = 0; i < listCaption.length; i++) {
                listCaption[i].classList.add("hide");
            }
        }
        function AfficherPDF() {
            
            window.open('../AfficherPDF.aspx', '_blank');
        }
        if (window.history.replaceState) {
            window.history.replaceState(null, null, window.location.href);
        }
    </script>
</asp:Content>
