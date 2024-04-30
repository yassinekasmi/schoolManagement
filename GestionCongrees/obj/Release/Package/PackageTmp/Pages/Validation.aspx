<%@ Page Title="" Language="C#" MasterPageFile="~/Partages/ParticipantPageMaster.Master" AutoEventWireup="true" CodeBehind="Validation.aspx.cs" Inherits="GestionCongrees.Pages.Validation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .portlet.box.blue-hoki {
            border: 1px solid #f2edf2;
            box-shadow: 3PX 3PX 3PX #f2edf2;
        }

        .portlet > .portlet-title > .caption {
            font-size: 20px;
        }

        .portlet {
            margin-bottom: 38px;
        }
    </style>
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="one columns" style="border: none; width: 100%;">
        <tr>
            <td class="wrapper last">

                <div class="row" id="h4Row">
                    <h4 class="col-md-12" id="h4" runat="server" style="font-size: 26px; color: #adb5bd; padding-top: 10px; padding-left: 56px; padding-right: 40px;">Your informations!</h4>
                </div>
            </td>
        </tr>
    </table>
    <span class="devider"></span>
    <div class="row" style="margin-left: 10px; margin-right: 10px;">
        <div class="col-md-12" style="border-radius: 6px;">
            <div class="portlet box blue-hoki" style="border: 1px solid lightgrey;">
                <div class="portlet-title">
                    <div class="caption">

                        <span class="caption-subject uppercase font-grey-cararra" id="span1" runat="server">Participant</span>
                   
                    </div>
                </div>
                <div class="portlet-body">
                    <div class="row" style="padding-left: 20px; padding-right: 20px; padding-top: 30px; padding-bottom: 40px;">

                        <div class="col-md-3">
                            <div>
                                <label runat="server" class="control-label " id="label1_1">Passport number</label>
                                <asp:RequiredFieldValidator runat="server" ID="a1" Display="Dynamic" ForeColor="Red" ControlToValidate="NPassport" ValidationGroup="element" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:TextBox runat="server" ID="NPassport" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div>
                                <label runat="server" class="control-label " id="label1_2">Last Name</label>
                                <asp:RequiredFieldValidator runat="server" ID="a2" Display="Dynamic" ForeColor="Red" ControlToValidate="Nom" ValidationGroup="element" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:TextBox runat="server" ID="Nom" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div>
                                <label runat="server" class="control-label " id="label1_3">First Name</label>
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" Display="Dynamic" ForeColor="Red" ControlToValidate="Prenom" ValidationGroup="element" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:TextBox runat="server" ID="Prenom" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div>
                                <label runat="server" class="control-label " id="label1_5">statut</label>
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" Display="Dynamic" ForeColor="Red" ControlToValidate="Qualite" ValidationGroup="element" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:TextBox runat="server" ID="Qualite" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <br />
                            <div>
                                <label runat="server" class="control-label " id="label1_4">Country or Organization</label>
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" Display="Dynamic" ForeColor="Red" ControlToValidate="PaysOrganisation" ValidationGroup="element" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:DropDownList runat="server" ID="PaysOrganisation" OnSelectedIndexChanged="PaysOrganisation_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control select2me"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <br />
                            <div>
                                <label runat="server" class="control-label " id="label1_6">phone number</label> 
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" Display="Dynamic" ForeColor="Red" ControlToValidate="Tel" ValidationGroup="element" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </div>
                            <div> 
                                <asp:TextBox runat="server" ID="Tel" CssClass="form-control"></asp:TextBox>
                            </div>
                             
                        </div>
                        <div class="col-md-4">
                            <br />
                            <div>
                                <label runat="server" class="control-label " id="label1_7">E-mail</label>
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" Display="Dynamic" ForeColor="Red" ControlToValidate="Email" ValidationGroup="element" ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="element" ControlToValidate="Email" Display="Dynamic" ForeColor="Red" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>

                            </div>
                            <div>
                                <asp:TextBox runat="server" ID="Email" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <div class="row" style="margin-left: 10px; margin-right: 10px;">
        <div class="col-md-12" style="border-radius: 6px;">
            <div class="portlet box blue-hoki" style="border: 1px solid lightgrey;">
                <div class="portlet-title">
                    <div class="caption">

                        <span class="caption-subject uppercase font-grey-cararra" id="span2" runat="server">Conjoint</span>

                    </div>
                </div>
                <div class="portlet-body">
                    <div class="row" style="padding-left: 20px; padding-right: 20px; padding-top: 30px; padding-bottom: 40px;">
                        <div class="form-group">
                            <div class="col-md-4">
                                <div>
                                    <label runat="server" class="control-label " id="label2_1">Passport number</label>
                                </div>
                                <div>
                                    <asp:TextBox runat="server" ID="NPassportConjoint" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div>
                                    <label runat="server" class="control-label " id="label2_2">Last Name</label>
                                </div>
                                <div>
                                    <asp:TextBox runat="server" ID="NomConjoint" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div>
                                    <label runat="server" class="control-label " id="label2_3">First Name</label>
                                </div>
                                <div>
                                    <asp:TextBox runat="server" ID="PrenomConjoint" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                    </div>


                </div>
            </div>
        </div>
    </div>
    <div class="row" style="margin-left: 10px; margin-right: 10px;">
        <div class="col-md-12" style="border-radius: 6px;">
            <div class="portlet box blue-hoki" style="border: 1px solid lightgrey;">
                <div class="portlet-title">
                    <div class="caption">
                        <span class="caption-subject uppercase font-grey-cararra" id="span3" runat="server">Arrival</span>
                    </div>
                </div>
                <div class="portlet-body">
                    <div class="row" style="padding-left: 20px; padding-right: 20px; padding-top: 30px; padding-bottom: 40px;">
                        <div class="form-group">
                            <div class="col-md-3">
                                <div>
                                    <label runat="server" class="control-label " id="label3_1">flight number</label>
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator9" Display="Dynamic" ForeColor="Red" ControlToValidate="NVolArrivee" ValidationGroup="element" ErrorMessage="*"></asp:RequiredFieldValidator>
                                </div>
                                <div>
                                    <asp:TextBox runat="server" ID="NVolArrivee" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div>
                                    <label runat="server" class="control-label " id="label3_2">Airport</label>
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator10" Display="Dynamic" ForeColor="Red" ControlToValidate="AeroportArrivee" ValidationGroup="element" ErrorMessage="*"></asp:RequiredFieldValidator>
                                </div>
                                <div>
                                    <asp:DropDownList runat="server" ID="AeroportArrivee" InitialValue="-1" CssClass="form-control">
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div>
                                    <label runat="server" class="control-label " id="label3_3">Arrival date</label>
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator11" Display="Dynamic" ForeColor="Red" ControlToValidate="DateArrivee" ValidationGroup="element" ErrorMessage="*"></asp:RequiredFieldValidator>
                                </div>
                                <div>
                                    <asp:TextBox Class=" form-control " ID="DateArrivee" runat="server" TextMode="Date"></asp:TextBox>

                                </div>
                            </div>
                            <div class="col-md-3">
                                <div>
                                    <label runat="server" class="control-label " id="label3_4">Arriving time</label>
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator12" Display="Dynamic" ForeColor="Red" ControlToValidate="HeureArrivee" ValidationGroup="element" ErrorMessage="*"></asp:RequiredFieldValidator>
                                </div>
                                <div>
                                    <asp:TextBox Class=" form-control " ID="HeureArrivee" runat="server" TextMode="Time"></asp:TextBox>
                                </div>
                            </div>

                        </div>
                    </div>


                </div>
            </div>
        </div>
    </div>
    <div class="row" style="margin-left: 10px; margin-right: 10px;">
        <div class="col-md-12" style="border-radius: 6px;">
            <div class="portlet box blue-hoki" style="border: 1px solid lightgrey;">
                <div class="portlet-title">
                    <div class="caption">
                        <span class="caption-subject uppercase font-grey-cararra" id="span4" runat="server">Departure</span>
                    </div>
                </div>
                <div class="portlet-body">
                    <div class="row" style="padding-left: 20px; padding-right: 20px; padding-top: 30px; padding-bottom: 40px;">
                        <div class="form-group">
                            <div class="col-md-3">
                                <div>
                                    <label runat="server" class="control-label " id="label4_1">flight number</label>
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator13" Display="Dynamic" ForeColor="Red" ControlToValidate="NVolDepart" ValidationGroup="element" ErrorMessage="*"></asp:RequiredFieldValidator>
                                </div>
                                <div>
                                    <asp:TextBox runat="server" ID="NVolDepart" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div>
                                    <label runat="server" class="control-label " id="label4_2">Airport</label>
                                    <asp:RequiredFieldValidator runat="server" InitialValue="-1" ID="RequiredFieldValidator14" Display="Dynamic" ForeColor="Red" ControlToValidate="AeroportDepart" ValidationGroup="element" ErrorMessage="*"></asp:RequiredFieldValidator>
                                </div>
                                <div>
                                    <asp:DropDownList runat="server" ID="AeroportDepart" CssClass="form-control">
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div>
                                    <label runat="server" class="control-label " id="label4_3">Departure Date</label>
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator15" Display="Dynamic" ForeColor="Red" ControlToValidate="DateDepart" ValidationGroup="element" ErrorMessage="*"></asp:RequiredFieldValidator>
                                </div>
                                <div>
                                    <asp:TextBox Class=" form-control " ID="DateDepart" runat="server" TextMode="Date"></asp:TextBox>

                                </div>
                            </div>
                            <div class="col-md-3">
                                <div>
                                    <label runat="server" class="control-label " id="label4_4">Departure time</label>
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator16" Display="Dynamic" ForeColor="Red" ControlToValidate="HeureDepart" ValidationGroup="element" ErrorMessage="*"></asp:RequiredFieldValidator>
                                </div>
                                <div>
                                    <asp:TextBox Class=" form-control " ID="HeureDepart" runat="server" TextMode="Time"></asp:TextBox>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <div class="row" style="margin-left: 10px; margin-right: 10px;">
        <div class="col-md-12" style="border-radius: 6px;">
            <div class="portlet box blue-hoki" style="border: 1px solid lightgrey;">
                <div class="portlet-title">
                    <div class="caption">
                        <span class="caption-subject uppercase font-grey-cararra" id="span5" runat="server">sojourn</span>
                    </div>
                </div>
                <div class="portlet-body">
                    <div class="row" style="padding-left: 20px; padding-right: 20px; padding-top: 30px; padding-bottom: 40px;">
                        <div class="form-group">
                            <div class="col-md-4" id="divHotel">
                                <div>
                                    <label runat="server" class="control-label" id="label5_1">Hotel</label>
                                    <asp:RequiredFieldValidator runat="server" InitialValue="-1" ID="RequiredFieldValidator17" Display="Dynamic" ForeColor="Red" ControlToValidate="HotelSejour" ValidationGroup="element" ErrorMessage="*"></asp:RequiredFieldValidator>
                                </div>
                                <div>
                                    <asp:DropDownList runat="server" ID="HotelSejour" CssClass="form-control">
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <%--  <div class="col-md-4">
                                <div>
                                   <label class="control-label " id="label5_2">Entry date</label>
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator18" Display="Dynamic" ForeColor="Red" ControlToValidate="DateEntree" ValidationGroup="element" ErrorMessage="*"></asp:RequiredFieldValidator>
                                </div>
                                <div>
                                    <asp:TextBox Class=" form-control " ID="DateEntree" runat="server"></asp:TextBox>
                             </div>
                            </div>
                            <div class="col-md-4">
                                <div>
                                   <label class="control-label " id="label5_3">Release date</label>
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator19" Display="Dynamic" ForeColor="Red" ControlToValidate="NVolDepart" ValidationGroup="element" ErrorMessage="*"></asp:RequiredFieldValidator>
                                </div>
                                <div>
                                <asp:TextBox Class=" form-control " ID="DateSortie" runat="server"></asp:TextBox>
                                </div>
                            </div>--%>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <div class="row" style="margin-left: 10px; margin-right: 10px;">
        <div class="col-md-12" style="border-radius: 6px;">
            <div class="portlet box blue-hoki" style="border: 1px solid lightgrey;">
                <div class="portlet-title">
                    <div class="caption">
                        <span class="caption-subject uppercase font-grey-cararra" id="span6" runat="server">Accompanist and Driver</span>
                    </div>
                </div>
                <div class="portlet-body">
                    <div class="row" style="padding-left: 20px; padding-right: 20px; padding-top: 30px; padding-bottom: 40px;">

                        <div class="form-group" style="margin-top: 10px; margin-bottom: 10px;">
                            <div class="col-md-4">
                                <div>
                                    <label runat="server" class="control-label " id="label6_1">Accompanist</label>
                                </div>
                                <div>
                                    <asp:TextBox runat="server" ID="AccompagnateurPart" CssClass="form-control" Enabled="false"></asp:TextBox>

                                </div>
                            </div>
                            <div class="col-md-4">
                                <div>
                                    <label runat="server" class="control-label " id="label6_2">Driver</label>
                                </div>
                                <div>

                                    <asp:TextBox runat="server" ID="ChauffeurPart" CssClass="form-control" Enabled="false"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div>
                                    <label runat="server" class="control-label " id="label6_3">Car</label>
                                </div>
                                <div>
                                    <asp:TextBox runat="server" ID="VehiculePart" CssClass="form-control" Enabled="false"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <div class="row" style="margin-left: 10px; margin-right: 10px;">
        <div class="col-md-12" style="border-radius: 6px;">
            <div class="portlet box blue-hoki" style="border: 1px solid lightgrey;">
                <div class="portlet-title">
                    <div class="caption">
                        <span class="caption-subject uppercase font-grey-cararra" id="span8" runat="server">Participant documents</span>
                    </div>
                </div>
                <div class="portlet-body">
                    <div class="row" style="padding-left: 56px; padding-right: 40px; padding-top: 30px; padding-bottom: 40px;">
                        <div class="col-md-12" style="margin-top: 35px; margin-bottom: 20px;">

                            <div class="col-md-3">
                                <div>
                                    <label runat="server" class="control-label " id="label8_1">Title</label>
                                </div>
                                <div>
                                    <asp:TextBox runat="server" ID="titreDocP" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div>
                                    <label runat="server" class="control-label " id="label8_2">Documents</label>
                                </div>
                                <div>
                                    <asp:FileUpload accept="application/vnd.openxmlformats-officedocument.wordprocessingml.document,application/pdf,application/msword" runat="server" ID="Autrepieces" CssClass="form-control input-lg" />
                                </div>
                                <br />
                            </div>

                            <asp:PlaceHolder runat="server" ID="PlaceHolder1"></asp:PlaceHolder>
                            <asp:GridView runat="server" ID="GridAutreDoc" CssClass="table table-striped table-bordered table-hover " AutoGenerateColumns="false" DataKeyNames="id">
                                <Columns>
                                    <asp:BoundField DataField="titre" HeaderText="title" />
                                    <asp:TemplateField HeaderText="Download">
                                        <ItemTemplate>
                                            <asp:LinkButton runat="server" CommandArgument='<%# Eval("id") %>' ID="DownloadeDocP" OnClick="DownloadeDocP_Click" CssClass="btn btn-sm"><i class="fa fa-download font-green-meadow"></i></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Delete">
                                        <ItemTemplate>
                                            <asp:LinkButton runat="server" CommandArgument='<%# Eval("id") %>' ID="DeleteDocP" OnClick="DeleteDocP_Click" CssClass="btn btn-sm"><i class="fa fa-trash"></i></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row" style="margin-left: 10px; margin-right: 10px;">
            <div class="col-md-12" style="border-radius: 6px;">
                <div class="portlet box blue-hoki" style="border: 1px solid lightgrey;">
                    <div class="portlet-title">
                        <div class="caption">
                            <span runat="server" class="caption-subject uppercase font-grey-cararra" id="span9">Photo</span>
                        </div>
                    </div>
                    <div class="portlet-body">
                        <div class="row" style="padding-left: 20px; padding-right: 20px; padding-top: 30px; padding-bottom: 40px;">
                            <div class="form-group">
                                <asp:PlaceHolder runat="server" ID="Photoext"></asp:PlaceHolder>
                                <div class="col-md-3" id="Photo">
                                    <div>
                                        <asp:FileUpload accept="application/vnd.openxmlformats-officedocument.wordprocessingml.document,application/pdf,application/msword" runat="server" ID="PhotoUpload" CssClass="form-control input-lg" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row" style="margin-left: 10px; margin-right: 10px;">
            <div class="col-md-12" style="border-radius: 6px;">
                <div class="portlet box blue-hoki" style="border: 1px solid lightgrey;">
                    <div class="portlet-title">
                        <div class="caption">
                            <span class="caption-subject uppercase font-grey-cararra" id="span7" runat="server">Documents related to the congress</span>
                        </div>
                    </div>
                    <div class="portlet-body">
                        <div class="row" style="padding-left: 56px; padding-right: 40px; padding-top: 30px; padding-bottom: 40px;">
                            <div class="col-md-12" style="margin-top: 35px; margin-bottom: 20px;">
                                <asp:PlaceHolder runat="server" ID="boxMessage"></asp:PlaceHolder>
                                <asp:GridView runat="server" ID="gv" CssClass="table table-striped table-bordered table-hover " AutoGenerateColumns="false" DataKeyNames="id">
                                    <Columns>
                                        <asp:BoundField DataField="titre" HeaderText="Title" />
                                        <asp:TemplateField HeaderText="Download">
                                            <ItemTemplate>
                                                <asp:LinkButton runat="server" CommandArgument='<%# Eval("id") %>' ID="BtnDownloade" OnClick="BtnDownloade_Click" CssClass="btn btn-sm"><i class="fa fa-download font-green-meadow"></i></asp:LinkButton>
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
        <span class="devider"></span>
        <table style="float: right;">
            <tr>
                <td class="wrapper last" style="padding-left: 40px; padding-right: 40px;">

                    <div class="row">
                        <div class="form-group">
                            <div class="col-md-12" style="margin-top: 10px; margin-bottom: 10px; float: right;">
                                <asp:LinkButton ID="btnvalider" OnClick="btnvalider_Click" runat="server" CssClass="btn red-haze btn-bg">
                                Validate</asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
        <script>

            function alertmsgFr() {
                alert('Vos informations ont été confirmées avec succès');
            }
            function alertmsgAr() {
                alert(' لقد تم تأكيد معلوماتك بنجاح');
            }
            function alertmsgEng() {
                alert('Your information has been successfully confirmed');
            }
            function langageDirectionRight() {
                var listCaption = document.getElementsByClassName("caption");
                for (var i = 0; i < listCaption.length; i++) {
                    listCaption[i].style.cssFloat = "right";
                }
                var listLabel = document.getElementsByClassName("control-label");
                for (var j = 0; j < listLabel.length; j++) {
                    listLabel[j].style.cssFloat = "right";
                }
                var listInput = document.getElementsByClassName("form-control");
                for (var k = 0; k < listInput.length; k++) {
                    listInput[k].style.textAlign = "right";
                }
                var listColMd3 = document.getElementsByClassName("col-md-3");
                for (var l = 0; l < listColMd3.length; l++) {
                    listColMd3[l].style.cssFloat = "right";
                }
                var listColMd4 = document.getElementsByClassName("col-md-4");
                for (var l = 0; l < listColMd4.length; l++) {
                    listColMd4[l].style.cssFloat = "right";
                }
                var listLogo = document.getElementsByClassName("page-logo");
                for (var f = 0; f < listLogo.length; f++) {
                    listLogo[f].style.cssFloat = "left";
                }
                var tabletr = document.getElementsByClassName("table");
                for (var f = 0; f < tabletr.length; f++) {
                    tabletr[f].style.direction = "rtl";
                }

                document.getElementById("divHotel").style.cssFloat = "right";
                document.getElementById("h4Row").style.cssFloat = "right";
            }
            function langageDirectionLeft() {
                var listCaption = document.getElementsByClassName("caption");
                for (var i = 0; i < listCaption.length; i++) {
                    listCaption[i].style.cssFloat = "left";
                }
                var listLabel = document.getElementsByClassName("control-label");
                for (var j = 0; j < listLabel.length; j++) {
                    listLabel[j].style.cssFloat = "left";
                }
                var listInput = document.getElementsByClassName("form-control");
                for (var k = 0; k < listInput.length; k++) {
                    listInput[k].style.textAlign = "left";
                }
                var listColMd3 = document.getElementsByClassName("col-md-3");
                for (var l = 0; l < listColMd3.length; l++) {
                    listColMd3[l].style.cssFloat = "left";
                }
                document.getElementById("divHotel").style.cssFloat = "left";
                document.getElementById("h4Row").style.cssFloat = "left";
            }
        </script>
        <script>
            function AfficherPDF() {

                window.open('../AfficherPDF.aspx', '_blank');
            }
            if (window.history.replaceState) {
                window.history.replaceState(null, null, window.location.href);
            }
        </script>
</asp:Content>
