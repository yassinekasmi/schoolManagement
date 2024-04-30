<%@ Page Title="" Language="C#" MasterPageFile="~/Partages/ParticipantPageMaster.Master" AutoEventWireup="true" CodeBehind="ParticipantSignIn.aspx.cs" Inherits="GestionCongrees.Pages.ParticipantSignIn" %>

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
                    <div class="col-md-12">
                        <h4 id="h4" runat="server" style="font-size: 26px; color: #adb5bd; padding-top: 10px; padding-left: 56px; padding-right: 40px;">Please enter your information!</h4>
                    </div>
                    <div class="col-md-12">
                        <h5 runat="server" id="AlertPanel" visible="False" style="font-size: 26px; padding-top: 10px; padding-left: 56px; padding-right: 40px;">
                            <asp:Label runat="server" ID="ErrorMessage" ForeColor="Red">You are already registered</asp:Label>
                        </h5>
                    </div>
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
                                <label class="control-label " runat="server" id="label1_4">Delegations</label>
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" Display="Dynamic" ForeColor="Red" ControlToValidate="PaysOrganisation" ValidationGroup="element" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:DropDownList runat="server" ID="PaysOrganisation" OnSelectedIndexChanged="PaysOrganisation_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div>
                                <label class="control-label " runat="server" id="label1_2">Last Name</label>
                                <asp:RequiredFieldValidator runat="server" ID="a2" Display="Dynamic" ForeColor="Red" ControlToValidate="Nom" ValidationGroup="element" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:TextBox runat="server" ID="Nom" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div>
                                <label class="control-label " runat="server" id="label1_3">First Name</label>
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" Display="Dynamic" ForeColor="Red" ControlToValidate="Prenom" ValidationGroup="element" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:TextBox runat="server" ID="Prenom" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>

                           <div class="col-md-3">
                            <div>
                                <label class="control-label " runat="server" id="label1_5">Title</label>
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" Display="Dynamic" ForeColor="Red" ControlToValidate="Qualite" ValidationGroup="element" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </div>
                            <div> 
                               <asp:DropDownList runat="server" ID="Qualite" CssClass="form-control"> </asp:DropDownList> 
                            </div>
                        </div> 

                        <div class="col-md-3">
                            <div>
                                <label class="control-label " runat="server" id="label1_1">Passport number</label>
                                <asp:RequiredFieldValidator runat="server" ID="a1" Display="Dynamic" ForeColor="Red" ControlToValidate="NPassport" ValidationGroup="element" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:TextBox runat="server" ID="NPassport" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                          
                        <div class="col-md-4">
                            <div>
                                <label class="control-label " runat="server" id="label1_6">phone number</label>
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" Display="Dynamic" ForeColor="Red" ControlToValidate="Tel" ValidationGroup="element" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:TextBox runat="server" ID="Tel" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div>
                                <label class="control-label " runat="server" id="label1_7">E-mail</label>
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
                        <span runat="server" class="caption-subject uppercase font-grey-cararra" id="span2">Conjoint</span>
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
                                    <label runat="server" class="control-label" id="label2_3">First Name</label>
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
                        <span runat="server" class="caption-subject uppercase font-grey-cararra" id="span3">Arrival</span>
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
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator10" InitialValue="-1" Display="Dynamic" ForeColor="Red" ControlToValidate="AeroportArrivee" ValidationGroup="element" ErrorMessage="*"></asp:RequiredFieldValidator>
                                </div>
                                <div>
                                    <asp:DropDownList runat="server" ID="AeroportArrivee" CssClass="form-control">
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
                        <span runat="server" class="caption-subject uppercase font-grey-cararra" id="span4">Departure</span>
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
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator14" InitialValue="-1" Display="Dynamic" ForeColor="Red" ControlToValidate="AeroportDepart" ValidationGroup="element" ErrorMessage="*"></asp:RequiredFieldValidator>
                                </div>
                                <div>
                                    <asp:DropDownList runat="server" ID="AeroportDepart" CssClass="form-control">
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div>
                                    <label runat="server" class="control-label " id="label4_3">Departure Date</label>
                                    <%--  <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="AeroportDepart" ControlToCompare="DateArrivee" Display="Dynamic" ErrorMessage="La date de départ doit être supérieure à la date d'arrivée" ForeColor="Red" Operator="LessThan" Type="Date" ></asp:CompareValidator>
                                    --%>
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
                        <span runat="server" class="caption-subject uppercase font-grey-cararra" id="span5">sojourn</span>
                    </div>
                </div>
                <div class="portlet-body">
                    <div class="row" style="padding-left: 20px; padding-right: 20px; padding-top: 30px; padding-bottom: 40px;">
                        <div class="form-group">
                            <div class="col-md-4" id="divHotel">
                                <div>
                                    <label runat="server" class="control-label " id="label5_1">Hotel</label>
                                    <asp:RequiredFieldValidator runat="server" InitialValue="-1" ID="RequiredFieldValidator17" Display="Dynamic" ForeColor="Red" ControlToValidate="HotelSejour" ValidationGroup="element" ErrorMessage="*"></asp:RequiredFieldValidator>
                                </div>
                                <div>
                                    <asp:DropDownList runat="server" ID="HotelSejour" CssClass="form-control">
                                    </asp:DropDownList>
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
                        <span runat="server" class="caption-subject uppercase font-grey-cararra" id="span6">Other</span>
                    </div>
                </div>
                <div class="portlet-body">
                    <div class="row" style="padding-left: 20px; padding-right: 20px; padding-top: 30px; padding-bottom: 40px;">
                        <div class="form-group">
                            <div class="col-md-4" id="Photo">
                                <div>
                                    <label runat="server" class="control-label " id="label5_6">Photo</label>
                                </div>
                                <div>
                                    <asp:FileUpload accept="application/vnd.openxmlformats-officedocument.wordprocessingml.document,application/pdf,application/msword" runat="server" ID="PhotoUpload" CssClass="form-control input-lg" />
                                </div>
                            </div>
                            <div class="col-md-4" id="Autrepiece">
                                <div>
                                    <label runat="server" class="control-label" id="label5_7">Other Parts</label>
                                </div>
                                <div>
                                    <asp:FileUpload accept="application/vnd.openxmlformats-officedocument.wordprocessingml.document,application/pdf,application/msword" runat="server" ID="Autrepieces" CssClass="form-control input-lg" />
                                </div>
                            </div>
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
                            <asp:LinkButton ID="btnEnregistrer" ValidationGroup="element" runat="server" OnClick="Enregistrer_Click" CssClass="btn red-haze btn-bg">Register</asp:LinkButton>
                        </div>
                    </div>
                </div>
            </td>
        </tr>
    </table>
    <script>
        function alertmsgFr() {
            alert('Votre inscription est complétée avec succès, veuillez vérifier votre e-mail pour valider l inscription');
        }
        function alertmsgAr() {
            alert('يرجى التحقق من بريدك الإلكتروني لتأكيد التسجيل');
        }
        function alertmsgEng() {
            alert('Your registration is successfully completed, please check your email to validate the registration');
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
</asp:Content>
