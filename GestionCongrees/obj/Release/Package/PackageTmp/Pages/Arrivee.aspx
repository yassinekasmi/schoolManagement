<%@ Page Title="" Language="C#" MasterPageFile="~/Partages/MasterPage.Master" AutoEventWireup="true" CodeBehind="Arrivee.aspx.cs" Inherits="GestionCongrees.Pages.Arrivee" %>

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

        .table tbody tr th:nth-of-type(19),
        .table tbody tr th:nth-of-type(20),
        .table tbody tr th:nth-of-type(21),
        .table tbody tr th:nth-of-type(22) {
            min-width: 195px !important;
        }

        .ListVehicule {
            font-size: 18px;
            border: none;
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
                                        <span class="caption-subject font-green-sharp bold uppercase">Suivi le transport
                                         <%--   <span style="color: red" runat="server" id="congrertitle"></span></span>--%>
                                    </div>
                                    <div class="col-md-8"></div>
                                    <div class="col-md-8">
                                        <div style="display: flex; margin: 0 20px 0 20px;">
                                            <h4>
                                                <span class="caption-subject bold">Le nombre de participants est :
                                                        <span runat="server" id="NbParticipants" style="color: red"></span></h4>
                                            <h4 style="margin-left: 20px;">
                                                <span class="caption-subject bold">Le nombre de délégations est :
                                                        <span runat="server" id="NbDelegations" style="color: red"></span>
                                                    <div id="sparkline_bar">
                                                        <canvas width="90" height="45" style="display: inline-block; width: 90px; height: 45px; vertical-align: top;"></canvas>
                                                    </div></h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="portlet-body">
                                    <div class="table-toolbar">
                                        <div class="row">
                                            <div class="col-md-12 margin-bottom-20">
                                                <div class="col-md-2">
                                                    <asp:LinkButton runat="server" ID="Valider" Visible="false" OnClick="Valider_Click" CssClass="btn green btn-sm"><i class="fa fa-plus"></i>  Valider </asp:LinkButton>
                                                </div>
                                                <div class="col-md-2">
                                                    <asp:DropDownList runat="server" ID="TrieAeroportArriver" OnSelectedIndexChanged="TrieAeroportArriver_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control dropdown-toggle">
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="col-md-2">
                                                    <asp:DropDownList runat="server" ID="TrieAeroportDepart" OnSelectedIndexChanged="TrieAeroportDepart_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control dropdown-toggle">
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="col-md-2">
                                                    <asp:DropDownList runat="server" Visible="false" ID="TrierPar" OnSelectedIndexChanged="TrierPar_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control dropdown-toggle">
                                                        <asp:ListItem Selected="True" Value="-1" Text="-- Trier par --" />
                                                        <asp:ListItem Value="1" Text="Date d'arrivée" />
                                                        <asp:ListItem Value="2" Text="Date de départ" />
                                                    </asp:DropDownList>
                                                </div>
                                                <%-- <div class="col-md-2 margin-bottom-20">
                                                     <asp:DropDownList CssClass="form-control dropdown-toggle" AutoPostBack="true" runat="server" ID="ListePrint" OnSelectedIndexChanged="ListePrint_SelectedIndexChanged">
                                                        <asp:ListItem Value="-1" Text="-- Exporter --"></asp:ListItem>
                                                        <asp:ListItem Value="1" Text="Liste Arrivée"></asp:ListItem>
                                                        <asp:ListItem Value="2" Text="Liste Départs"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>--%>

                                                <div class="col-md-3 ">
                                                    <div class="col-md-8">
                                                        <asp:DropDownList CssClass="form-control" runat="server" ID="impression" Visible="false">  
                                                            <asp:ListItem Value="-1" Text="-- Exporter --"></asp:ListItem>
                                                            <asp:ListItem Value="1" Text="Liste arrivée pdf"></asp:ListItem>
                                                            <asp:ListItem Value="2" Text="Liste départs pdf"></asp:ListItem> 
                                                            <asp:ListItem Value="5" Text="Liste excel"></asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                    <div class="col-md-1" style="margin-top: -6px;">
                                                        <div class="btn-group">
                                                            <asp:LinkButton ID="Btn_Print" Visible="false" OnClick="Btn_Print_Click" runat="server" CssClass="btn default green-stripe btn-sm"><i class="fa fa-print" style="margin-right: 4px;"></i>Exporter</asp:LinkButton>
                                                        </div>
                                                    </div>
                                                </div>

                                                <%--  <div class="col-md-2">
                                                    <div class="col-md-10" style="margin-top: 5px; margin-bottom: 2px;">
                                                        <asp:DropDownList runat="server" Visible="false" ID="impression" CssClass="form-control btn dropdown-toggle">
                                                            <asp:ListItem Selected="True" Value="Word" Text="Word" />
                                                            <asp:ListItem Value="Excel" Text="Excel" />
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>--%>
                                                <form>
                                                    <div class="col-md-12 GvOrganisateur">
                                                        <asp:PlaceHolder runat="server" ID="boxMessage"></asp:PlaceHolder>
                                                        <div class="table-scrollable">
                                                            <asp:GridView runat="server" ID="gvParticipant" CssClass="table table-striped table-bordered table-hover" OnRowDataBound="gvParticipant_RowDataBound" AutoGenerateColumns="false" DataKeyNames="id" OnPageIndexChanging="gvParticipant_PageIndexChanging" AllowPaging="True" PageSize="10">
                                                                <%--OnPageIndexChanging="gvParticipant_PageIndexChanging" AllowPaging="True" PageSize="10"--%>
                                                                <Columns>
                                                                    <asp:TemplateField>
                                                                        <HeaderTemplate>
                                                                            <asp:CheckBox ID="indice1" runat="server" AutoPostBack="true" OnCheckedChanged="indice1_CheckedChanged" />
                                                                        </HeaderTemplate>
                                                                        <ItemTemplate>
                                                                            <asp:CheckBox ID="indice" runat="server"></asp:CheckBox>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:BoundField DataField="Delegation" HeaderText="Délégation" />
                                                                    <asp:BoundField DataField="PaysOrigine" HeaderText="Pays d'origine" />
                                                                    <asp:BoundField DataField="nom" HeaderText="Nom" />
                                                                    <asp:BoundField DataField="prenom" HeaderText="Prénom" />
                                                                    <asp:BoundField DataField="tel" HeaderText="Téléphone N°" />
                                                                    <asp:BoundField DataField="Titre" HeaderText="Titre" />
                                                                    <asp:BoundField DataField="NPassportDelegue" HeaderText="Passport N°" />
                                                                    <asp:BoundField DataField="NvolArrivee" HeaderText="N° vol d'arrivée" />
                                                                    <asp:BoundField DataField="DateArrivee" HeaderText="Date d'arrivée" DataFormatString="{0:dd/MM/yyyy}" />
                                                                    <asp:BoundField DataField="HeureArrivee" HeaderText="Heure d'arrivée" />
                                                                    <asp:BoundField DataField="AreoportArrivee" HeaderText="Aéroport d'arrivée" />
                                                                    <asp:BoundField DataField="PaysDestination" HeaderText="Pays de destination" />
                                                                    <asp:BoundField DataField="NvolDepart" HeaderText="N° vol de départ" />
                                                                    <asp:BoundField DataField="AreoportDepart" HeaderText="Aéroport de départ" />
                                                                    <asp:BoundField DataField="DateDepart" HeaderText="Date de départ" DataFormatString="{0:dd/MM/yyyy}" />
                                                                    <asp:BoundField DataField="HeureDepart" HeaderText="Heure de départ" />
                                                                    <asp:BoundField DataField="Hotel" HeaderText="Hôtel" />
                                                                    <asp:TemplateField HeaderText="Véhicule permanent" ItemStyle-HorizontalAlign="Center" ControlStyle-CssClass="ListVehicule">
                                                                        <ItemTemplate>
                                                                            <asp:DropDownList DataValueField="id" DataTextField="matriculeType" ID="DropDownList_IdVehicule" CssClass="btn dropdown-toggle btn-default" runat="server" Width="100%">
                                                                            </asp:DropDownList>
                                                                            <asp:HiddenField ID="HiddenIDParticipant" runat="server" Value="false" />
                                                                            <asp:HiddenField ID="HiddenTrace" runat="server" Value="false" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Véhicule d'arrivée" ItemStyle-HorizontalAlign="Center" ControlStyle-CssClass="ListVehicule">
                                                                        <ItemTemplate>
                                                                            <asp:DropDownList DataValueField="id" DataTextField="matriculeType" ID="DropDownList_IdVehiculeArrivee" CssClass="btn dropdown-toggle btn-default" runat="server" Width="100%">
                                                                            </asp:DropDownList>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Véhicule de départ" ItemStyle-HorizontalAlign="Center" ControlStyle-CssClass="ListVehicule">
                                                                        <ItemTemplate>
                                                                            <asp:DropDownList DataValueField="id" DataTextField="matriculeType" ID="DropDownList_IdVehiculeDepart" CssClass="btn dropdown-toggle btn-default" runat="server" Width="100%">
                                                                            </asp:DropDownList>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Autre Véhicule" ItemStyle-HorizontalAlign="Center" ControlStyle-CssClass="ListVehicule">
                                                                        <ItemTemplate>
                                                                            <asp:DropDownList DataValueField="id" DataTextField="matriculeType" ID="DropDownList_IdVehiculeAutre" CssClass="btn dropdown-toggle btn-default" runat="server" Width="100%">
                                                                            </asp:DropDownList>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:BoundField DataField="CadreAeroport" HeaderText="Cadre Aéroport" />
                                                                    <asp:BoundField DataField="Accompagnateur" HeaderText="Accompagnateur" />
                                                                    <asp:BoundField DataField="CadreHotel" HeaderText="Cadre Hôtel" />
                                                                </Columns>
                                                            </asp:GridView>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
        </ContentTemplate>
        <Triggers>
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
