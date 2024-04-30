<%@ Page Title="" Language="C#" MasterPageFile="~/Partages/MasterPage.Master" AutoEventWireup="true" CodeBehind="Role.aspx.cs" Inherits="GestionCongrees.Pages.Role" %>
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
							<a href="table_managed.html">Paramétrage</a>
							<i class="fa fa-circle"></i>
						</li>
						<li class="active">
							Role
					
						</li>

				
					</ul>
					<div class="row">
						<div class="col-md-12">
							<div class="portlet light">
								<div class="portlet-title">
									<div class="caption">
										<i class="fa fa-navicon font-green-sharp"></i>
										<span class="caption-subject font-green-sharp bold uppercase">Liste Des Roles</span>
									</div>
								</div>
								<div class="portlet-body">
									<div class="table-toolbar">
										<div class="row" >
											<%--<div class="col-md-4 margin-bottom-20">
												<div class="btn-group" >
													<asp:LinkButton ID="addNew" runat="server" Onclick="addNew_Click" CssClass="btn green btn-sm"><i class="fa fa-plus"></i> Ajouter un nouveau role</asp:LinkButton>
												</div>
											</div>
											<div class="col-md-2" style="float: right;">

                                                <div class="col-md-6 " style="margin-top: 5px; margin-bottom: 2px;">

                                                    <asp:DropDownList runat="server" ID="Hotel" CssClass="form-control btn dropdown-toggle">
                                                        <asp:ListItem Selected="True" Value="-1">  PDF </asp:ListItem>
                                                        <asp:ListItem Value="1"> Word </asp:ListItem>
                                                        <asp:ListItem Value="1"> Excel </asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="col-md-6 margin-bottom-20">
                                                    <div class="btn-group">
                                                        <asp:LinkButton ID="Exporter" runat="server" CssClass="btn grey btn-sm"><i class="fa fa-print" style="margin-right: 4px;"></i>Exporter</asp:LinkButton>
                                                    </div>
                                                </div>
                                            </div>--%>

											<div class="col-md-12">
												 <asp:PlaceHolder runat="server" ID="boxMessage"></asp:PlaceHolder>
                                                <asp:GridView runat="server" ID="gv" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="false" DataKeyNames="id">
                                                    <Columns>
                                                        <asp:BoundField DataField="titre" HeaderText="Titre" />
                                                        <asp:BoundField DataField="description" HeaderText="Description" />
                                                        <asp:TemplateField ItemStyle-Width="100">
                                                            <ItemTemplate>
                                                                <asp:LinkButton runat="server" CommandArgument='<%# Eval("id") %>' ID="btnedit" OnClick="btnedit_Click"  CssClass="btn btn-sm"><i class="fa fa-edit font-yellow-crusta"></i></asp:LinkButton>
																
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
							<!-- END EXAMPLE TABLE PORTLET-->
						</div>
					</div>
					<!-- END PAGE CONTENT INNER -->
				</div>
			</div>
			<div class="modal fade" id="Popup" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                   
                    <div class="modal-content">
						<div class="modal-header">
                            <button type="button" class="close" style="position: absolute; right: 21px" data-dismiss="modal" aria-hidden="true"></button>
                            <h4 class="modal-title">Role</h4>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="label-control">Titre
                                        <asp:RequiredFieldValidator ID="a2" runat="server" ErrorMessage="*" ValidationGroup="element" ForeColor="Red" ControlToValidate="Titre"></asp:RequiredFieldValidator>
                                    </label>
                                    <asp:TextBox runat="server" ID="Titre" CssClass="form-control"></asp:TextBox>
                                </div>       

                                <div class="col-md-12">
                                    <label class="label-control">Description
                                        <asp:RequiredFieldValidator ID="a4" runat="server" ErrorMessage="*" ValidationGroup="element" ForeColor="Red" ControlToValidate="Description"></asp:RequiredFieldValidator>      
                                    </label>
                                    <asp:TextBox runat="server" ID="Description" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                                </div> 
                            </div>
                        </div>
                        <div class="modal-footer" >
                            <asp:LinkButton runat="server" OnClick="btnEnregistrer_Click" ValidationGroup="element" ID="btnEnregistrer" CssClass="btn btn-primary btn-sm"><i class="fa fa-check"></i> Enregistrer</asp:LinkButton>
                            <asp:LinkButton runat="server" ID="btnAnnuler" OnClick="btnAnnuler_Click" CssClass="btn btn-danger btn-sm"><i class="fa fa-close"></i> Annuler</asp:LinkButton>

                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
		</ContentTemplate>
	</asp:UpdatePanel>


</asp:Content>
 