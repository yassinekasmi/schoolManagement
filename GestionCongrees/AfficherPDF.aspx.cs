using System;

namespace schoolManagement
{
    public partial class AfficherPDF : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                byte[] buffer = (byte[])Session["buffer"];

                var filename = "";
                var extension = false;

                if (Session["filename"] != null) filename = Session["filename"].ToString();
                if (Session["ex"] != null && Session["ex"].ToString() == "True") extension = true;
                Response.Clear();

                if (extension == true)
                {
                    Response.ContentType = "application/vnd.ms-word";
                    if (Session["ex"].ToString().ToLower() == "docx")
                    {
                        Response.AddHeader("Content-Disposition", "attachment; filename = Document.docx");
                    }
                    else
                        Response.AddHeader("Content-Disposition", "attachment; filename = Document.doc");
                }
                else
                {
                    Response.ContentType = "application/pdf";
                    Response.AppendHeader("Content-Disposition", "inline;filename=Document.pdf");
                }
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
