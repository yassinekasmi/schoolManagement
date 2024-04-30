<%@ Page Title="" Language="C#" MasterPageFile="~/Partages/MasterPage.Master" AutoEventWireup="true" CodeBehind="Eleves.aspx.cs" Inherits="schoolManagement.Pages.Eleves" %>
<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
    <style>
        .portlet.box.blue-madison {
            background-color: #e9ecf3 !important;
        }

        .table-bordered > tbody > tr > th {
            border: 1px solid #adaaaa;
        }

        .table-bordered, .table > tbody > tr > th, .table tbody tr td {
            border: 1px solid #bdbbbb;
            background: #e9ecf3;
            text-align: center;
            padding: 10px 20px 13px 0;
        }

        .table-scrollable {
            border-radius: 20px !important;
            border: none !important;
        }

        .table-bordered > tbody > tr > th {
            background: #b34d4d !important;
        }

        .container {
            width: 100% !important;
        }

            .container td:hover {
                background-color: #4db3a2;
                color: #000;
                font-weight: bold;
                box-shadow: #7F7C21 -1px 1px, #7F7C21 -2px 2px, #7F7C21 -3px 3px, #7F7C21 -4px 4px, #7F7C21 -5px 5px, #7F7C21 -6px 6px;
                transform: translate3d(6px, -6px, 0);
                transition-delay: 0s;
                transition-duration: 0.4s;
                transition-property: all;
            }

            .container th {
                font-weight: 800;
                color: #fff;
            }

            .container tr:last-child > td:hover {
                transform: none;
                box-shadow: none;
                font-weight: 800;
            }

            .container tr:last-child > td {
                font-weight: 800;
            }

        .portlet.box.blue-madison {
            height: auto;
        }

        .portlet.box.blue-madison {
            height: auto !important;
        }

        .dashboard-stat2 {
            border-radius: 23px 0px !important;
        }
        .dashboard-stat2 .display .number small{
            color : #000 !important;
        }
    </style>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
          
         
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
