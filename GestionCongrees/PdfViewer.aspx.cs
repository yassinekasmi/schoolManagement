using System;

namespace schoolManagement
{
    public partial class PdfViewer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            try

            {

                byte[] buffer = (byte[])Session["buffer"];

                var filename = Session["filename"].ToString();

                Response.Clear();

                Response.ContentType = "application/pdf";

                Response.AppendHeader("Content-Disposition", "inline;filename=" + filename + ".pdf");

                Response.BufferOutput = true;

                Response.AddHeader("Content-Length", buffer.Length.ToString());

                Response.BinaryWrite(buffer);

                Response.End();

            }

            catch (Exception ex)
            {

                Helpers.GlobalHelpers.Trace(ex);
                Console.WriteLine("to console: " + ex);
                return;

            }
        }
    }
}