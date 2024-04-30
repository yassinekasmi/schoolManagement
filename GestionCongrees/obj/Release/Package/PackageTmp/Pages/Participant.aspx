<%@ Page Title="" Language="C#" MasterPageFile="~/Partages/MasterPage.Master" AutoEventWireup="true" CodeBehind="Participant.aspx.cs" Inherits="GestionCongrees.Pages.Participant" %>

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
                            <a href="#">Acceuil</a><i class="fa fa-circle"></i>
                        </li>
                        <li>
                            <a href="table_managed.html">Gestion</a>
                            <i class="fa fa-circle"></i>
                        </li>
                        <li class="active">Participant 
                        </li>
                    </ul>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="portlet light">
                                <div class="portlet-title">
                                    <div class="caption">
                                        <i class="fa fa-navicon font-green-sharp"></i>
                                        <span class="caption-subject font-green-sharp bold uppercase">Liste Des Participants</span>
                                    </div>
                                </div>
                                <div class="portlet-body">

                                    <div class="table-toolbar">
                                        <div class="row">
                                            <div class="col-md-4 margin-bottom-20">
                                                <asp:LinkButton ID="addNew" runat="server" OnClick="addNew_Click" CssClass="btn green btn-sm"><i class="fa fa-plus"></i> Ajouter un nouveau participant</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12">
                                                <asp:PlaceHolder runat="server" ID="boxMessage"></asp:PlaceHolder>
                                                <asp:GridView runat="server" ID="gv" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="false" DataKeyNames="id">
                                                    <Columns>
                                                        <asp:BoundField DataField="nom" HeaderText="Nom" />
                                                        <asp:BoundField DataField="prenom" HeaderText="Prénom" />
                                                        <asp:BoundField DataField="NPassportDelegue" HeaderText="N Passport Delegue" />
                                                       
                                                        <asp:BoundField DataField="pays" HeaderText="Pays" />
                                                        <asp:BoundField DataField="organisation" HeaderText="organisation" />
                                                        <asp:BoundField DataField="qualite" HeaderText="Qualité" />
                                                        
                                                        <asp:TemplateField ItemStyle-Width="100">
                                                            <ItemTemplate>
                                                                <asp:LinkButton runat="server" CommandArgument='<%# Eval("id") %>' OnClick="btnedit_Click" ID="btnedit" CssClass="btn btn-sm"><i class="fa fa-edit font-yellow-crusta"></i></asp:LinkButton>
                                                                 <asp:LinkButton runat="server"  CommandName="DeleteItem" CommandArgument='<%# Eval("id") %>' OnClientClick="if(!confirm('Voulez-vous vraiment supprimer cet élément ?')) return false;" ToolTip="supression" ID="btndelete" OnClick="btndelete_Click" CssClass="btn btn-sm"><i class="fa fa-trash font-red-flamingo"></i></asp:LinkButton>
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
                            <h4 class="modal-title">Ajouter un nouveau participant</h4>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <label class="label-control">
                                        Nom
                                        <asp:RequiredFieldValidator ID="a1" runat="server" ErrorMessage="*" ValidationGroup="element" ForeColor="Red" ControlToValidate="Nom"></asp:RequiredFieldValidator>
                                    </label>
                                    <asp:TextBox runat="server" ID="Nom" CssClass="form-control"></asp:TextBox>
                                </div>
                                
                                <div class="col-md-6">
                                    <label class="label-control">
                                        Prénom
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ValidationGroup="element" ForeColor="Red" ControlToValidate="Prenom"></asp:RequiredFieldValidator>
                                    </label>
                                    <asp:TextBox runat="server" ID="Prenom" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-md-6">
                                    <label class="label-control">
                                        N passport
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ValidationGroup="element" ForeColor="Red" ControlToValidate="NPassport"></asp:RequiredFieldValidator>
                                    </label>
                                    <asp:TextBox runat="server" ID="NPassport" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-md-6">
                                    <label class="label-control">
                                        Organisation
                                        <asp:RequiredFieldValidator ID="a6" runat="server" ErrorMessage="*" ValidationGroup="element" ForeColor="Red" ControlToValidate="Organisation"></asp:RequiredFieldValidator>
                                    </label>
                                    <asp:TextBox runat="server" ID="Organisation" CssClass="form-control"></asp:TextBox>
                                </div>
                                  <div class="col-md-6">
                                    <label class="label-control">
                                        Qualité
                                        <asp:RequiredFieldValidator ID="a7" runat="server" ErrorMessage="*" ValidationGroup="element" ForeColor="Red" ControlToValidate="Qualite"></asp:RequiredFieldValidator>
                                    </label>
                                    <asp:TextBox runat="server" ID="Qualite" CssClass="form-control"></asp:TextBox>
                                </div>
                                  <div class="col-md-6">
                                    <label class="label-control">
                                        Pays
                                        <asp:RequiredFieldValidator ID="a44" runat="server" ErrorMessage="*" ValidationGroup="element" ForeColor="Red" ControlToValidate="Pays"></asp:RequiredFieldValidator>
                                    </label>
                                    <asp:TextBox runat="server" ID="Pays" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-md-6">
                                    <label class="label-control">
                                        Email
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ValidationGroup="element" ForeColor="Red" ControlToValidate="Email"></asp:RequiredFieldValidator>
                                    </label>
                                    <asp:TextBox runat="server" ID="Email" CssClass="form-control"></asp:TextBox>
                                </div>

                                <div class="col-md-6">
                                    <label class="label-control">
                                        Téléphone
                                        <asp:RequiredFieldValidator ID="a4" runat="server" ErrorMessage="*" ValidationGroup="element" ForeColor="Red" ControlToValidate="Telephone"></asp:RequiredFieldValidator>
                                    </label>
                                    <asp:TextBox runat="server" ID="Telephone" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-md-6">
                                    <label class="label-control">Photo
                                    </label>
                                    <asp:FileUpload accept="application/vnd.openxmlformats-officedocument.wordprocessingml.document,application/pdf,application/msword" runat="server" ID="Photo" AllowMultiple="true" CssClass="form-control" />
                                 </div>
                              
                            </div>
                        </div>
                        <div class="modal-footer">
                            <asp:LinkButton runat="server" ValidationGroup="element" ID="btnEnregistrer" OnClick="btnEnregistrer_Click" CssClass="btn btn-primary btn-sm"><i class="fa fa-check"></i> Enregistrer</asp:LinkButton>
                            <asp:LinkButton runat="server" ID="btnAnnuler" OnClick="btnAnnuler_Click" CssClass="btn btn-danger btn-sm"><i class="fa fa-close"></i> Annuler</asp:LinkButton>

                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->

        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
