﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Partages/MasterPage.Master" AutoEventWireup="true" CodeBehind="Hotel.aspx.cs" Inherits="GestionCongrees.Pages.Hotel" %>
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
						 <li class="active">Paramétrage 
                             <i class="fa fa-circle"></i>
                        </li>
						<li class="active">
							Hôtel
						</li>
					</ul>
					<div class="row">
						<div class="col-md-12">
							<div class="portlet light">
								<div class="portlet-title">
									<div class="caption">
										<i class="fa fa-navicon font-green-sharp"></i>
										<span class="caption-subject font-green-sharp bold uppercase">Liste Des Hôtels</span>
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
                                                                    <div class="portlet-body" style="display: block;">
                                                                        <div class="panel-body ">
                                                                            <div class="row">
                                                                                <div class="col-md-3">
                                                                                    <div class="form-group"> 
                                                                                        <asp:TextBox  ID="NomSearch" PlaceHolder="Nom"  runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-3">
                                                                                    <div class="form-group"> 
                                                                                        <asp:TextBox  ID="AdresseSearch" PlaceHolder="Adresse"  runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                                    </div>
                                                                                </div>
                                                                                 <div class="col-md-3">
                                                                                   
                                                                                </div>
                                                                                 <div class="col-md-3" style="margin-top: 20px;">
                                                                                    <asp:LinkButton runat="server" ID="BtnSearch" OnClick="BtnSearch_Click"  CssClass="btn default green-sharp"><i class="fa fa-search"></i></asp:LinkButton>
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
												<div class="btn-group" > 
													<asp:LinkButton ID="addNew" Visible="false" runat="server" Onclick="addNew_Click" CssClass="btn green btn-sm"><i class="fa fa-plus"></i> Ajouter un nouveau hotel</asp:LinkButton>
												</div>
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
                                                <asp:GridView runat="server" ID="gv" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="false" DataKeyNames="id" AllowPaging="True" PageSize="10" OnPageIndexChanging="gv_PageIndexChanging">
                                                    <Columns>
                                                        <asp:BoundField DataField="nom" HeaderText="Nom" />
                                                        <asp:BoundField DataField="adresse" HeaderText="Adresse" />
                                                        <asp:BoundField DataField="tel" HeaderText="Téléphone" />
                                                        <asp:BoundField DataField="email" HeaderText="Email" />
                                                        <asp:BoundField DataField="siteWeb" HeaderText="Site Web" />
                                                        <asp:TemplateField  Visible="false">
                                                            <ItemTemplate>
                                                                <asp:LinkButton runat="server" CommandArgument='<%# Eval("id") %>' ID="btnedit" OnClick="btnedit_Click" CssClass="btn btn-sm"><i class="fa fa-edit font-yellow-crusta"></i></asp:LinkButton>
                                                               <asp:LinkButton runat="server"  CommandName="DeleteItem" CommandArgument='<%# Eval("id") %>' OnClientClick="if(!confirm('Voulez-vous vraiment supprimer cet élément ?')) return false;" ToolTip="حذف" ID="btndelete" OnClick="btndelete_Click" CssClass="btn btn-sm"><i class="fa fa-trash font-red-flamingo"></i></asp:LinkButton>
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
                            <h4 class="modal-title"> Hôtel  </h4>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-4">
                                    <label class="label-control">Nom
                                        <asp:RequiredFieldValidator ID="a2" runat="server" ErrorMessage="*" ValidationGroup="element" ForeColor="Red" ControlToValidate="Nom"></asp:RequiredFieldValidator>
                                    </label>
                                    <asp:TextBox runat="server" ID="Nom" CssClass="form-control"></asp:TextBox>
                                </div>
                                  <div class="col-md-4">
                                    <label class="label-control">Site Web </label>
                                    <asp:TextBox runat="server" ID="SiteWeb" CssClass="form-control"></asp:TextBox>
                                </div>
                                     <div class="col-md-4">
                                    <label class="label-control">Email </label> 
                                         <asp:TextBox runat="server" ID="Email" TextMode="MultiLine" Rows="2" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-md-6">
                                    <label class="label-control">Adresse   </label> 
                                      <asp:TextBox runat="server" ID="Adresse" TextMode="MultiLine" Rows="4" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-md-6">
                                    <label class="label-control">Téléphone  </label> 
                                     <asp:TextBox runat="server" ID="Telephone" TextMode="MultiLine" Rows="4" CssClass="form-control"></asp:TextBox>
                                </div>
                           
								<div class="col-md-6"></div>
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
            <asp:AsyncPostBackTrigger ControlID="gv" />
        </Triggers>
	</asp:UpdatePanel>
   
</asp:Content>