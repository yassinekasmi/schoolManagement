using ClosedXML.Excel;
using DataAccess.partialClass;
using DocumentFormat.OpenXml.Spreadsheet;
using Helpers;
using ServiceClass;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity.Core;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Xceed.Words.NET;
using System.Globalization;
using NReco.PdfGenerator;

namespace schoolManagement.Pages
{
    public partial class Filieres : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                ScriptManager scriptManager = ScriptManager.GetCurrent(this.Page); 

                if (!IsPostBack)
                {
                     
                }
            }
            catch (Exception ex)
            {
                GlobalHelpers.Trace(ex);
            }
        }

        protected void ShowPopupAddReponse_Click(object sender, EventArgs e)
        {
            try
            { 
                ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "popup", "$('#PopupAddFilieres').modal('show');", true);
            }
            catch (Exception ex)
            {
                GlobalHelpers.Trace(ex);
             }
        }
    }
}