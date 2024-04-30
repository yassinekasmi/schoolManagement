using Helpers.ServiceReference_Mail;
using SelectPdf;
using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace Helpers
{
    public static class GlobalHelpers
    {
        public static void SendNotification(string emails, string TemplateName, Dictionary<string, string> parametres)
        {
            using (var c = new ServiceReference_Mail.MailClient())
            {
                c.SendByTemplateName(new MailParams()
                {
                    MailTo = emails,
                    TemplateName = TemplateName,
                    Parametres = parametres
                });
            }
        }

        public static void Trace(object type, string msg)
        {
            StreamWriter w = System.IO.File.AppendText("C:\\logDRE\\schoolLog.txt");
            w.WriteLine("--Trace du " + "#" + DateTime.Now.ToString() + "#" + type.ToString() + "#" + msg);
            w.Close();
        }
        public static void Trace(Exception ex)
        {
            StreamWriter w = System.IO.File.AppendText("C:\\logDRE\\schoolLog.txt");
            w.WriteLine("---------------- Trace du " + DateTime.Now.ToString() + " ----------------");
            w.WriteLine("**Type : " + ex.GetType().FullName);
            w.WriteLine("**Source : " + ex.Source);
            w.WriteLine("**TargetSite : " + ex.TargetSite);
            w.WriteLine("**Message : " + ex.Message);
            w.WriteLine("**StackTrace : " + ex.StackTrace);
            if (ex.InnerException != null)
                w.WriteLine("**InnerException : " + ex.InnerException.ToString());
            w.WriteLine("**ToString : " + ex.ToString());
            w.WriteLine("**Line : " + new System.Diagnostics.StackTrace(ex, true).GetFrame(0).GetFileColumnNumber());
            w.WriteLine();
            w.Close();
        }
        public static void Trace(string exception)
        {
            try
            {
                StreamWriter w = System.IO.File.AppendText("C:\\logDRE\\schoolLog.txt");
                w.WriteLine("---------------- Trace du " + DateTime.Now.ToString() + " ----------------");
                w.WriteLine("**Custom : " + exception);
                w.WriteLine();
                w.Close();
            }
            catch (Exception exc)
            {
                GlobalHelpers.Trace(exc);
            }
        }

        public static void Trace(string module, string method, Exception ex)
        {
            StreamWriter w = System.IO.File.AppendText("C:\\logDRE\\schoolLog.txt");
            w.WriteLine("---------------- Trace du " + DateTime.Now.ToString() + " ----------------");
            w.WriteLine("**module : " + module);
            w.WriteLine("**method : " + method);
            w.WriteLine("**Type : " + ex.GetType().FullName);
            w.WriteLine("**Source : " + ex.Source);
            w.WriteLine("**TargetSite : " + ex.TargetSite);
            w.WriteLine("**Message : " + ex.Message);
            w.WriteLine("**StackTrace : " + ex.StackTrace);
            if (ex.InnerException != null)
                w.WriteLine("**InnerException : " + ex.InnerException.ToString());
            w.WriteLine("**ToString : " + ex.ToString());
            w.WriteLine("**Line : " + new System.Diagnostics.StackTrace(ex, true).GetFrame(0).GetFileColumnNumber());
            w.WriteLine();
            w.Close();
        }


        public static string ThousandSeparate(decimal? amount)
        {
            if (amount.HasValue)
                return amount.Value.ToString("#,##0.00");
            else
                return "";
        }


        public static string Encryptdata(string password)
        {
            string strmsg = string.Empty;
            byte[] encode = new byte[password.Length];
            encode = Encoding.UTF8.GetBytes(password);
            strmsg = Convert.ToBase64String(encode);
            return strmsg;
        }
        /// <summary>
        /// Function is used to Decrypt the password
        /// </summary>
        /// <param name="password"></param>
        /// <returns></returns>
        public static string Decryptdata(string encryptpwd)
        {
            string decryptpwd = string.Empty;
            UTF8Encoding encodepwd = new UTF8Encoding();
            Decoder Decode = encodepwd.GetDecoder();
            byte[] todecode_byte = Convert.FromBase64String(encryptpwd.Replace("+", ""));
            int charCount = Decode.GetCharCount(todecode_byte, 0, todecode_byte.Length);
            char[] decoded_char = new char[charCount];
            Decode.GetChars(todecode_byte, 0, todecode_byte.Length, decoded_char, 0);
            decryptpwd = new String(decoded_char);
            return decryptpwd;
        }

        public static IEnumerable<TSource> DistinctBy<TSource, TKey>
            (this IEnumerable<TSource> source, Func<TSource, TKey> keySelector)
        {
            HashSet<TKey> seenKeys = new HashSet<TKey>();
            foreach (TSource element in source)
            {
                if (seenKeys.Add(keySelector(element)))
                {
                    yield return element;
                }
            }
        }

        public static void SaveFile(string fileName, string path, System.Web.UI.WebControls.FileUpload fileUpload)
        {
            string FullPath = path + "//" + fileName;
            if (!System.IO.File.Exists(FullPath))
            {
                fileUpload.SaveAs(FullPath);
            }
        }

        public static Byte[] generatePdf(string htmlString, string Header = "")
        {
            try
            {
                HtmlToPdf converter = new HtmlToPdf();

                converter.Options.PdfPageSize = PdfPageSize.A4;
                converter.Options.DisplayFooter = true;
                converter.Options.AllowContentHeightResize = true;
                converter.Options.MaxPageLoadTime = 3000;
                converter.Options.PdfPageOrientation = PdfPageOrientation.Landscape;
                converter.Footer.DisplayOnFirstPage = true;
                converter.Footer.DisplayOnOddPages = true;
                converter.Footer.DisplayOnEvenPages = true;
                converter.Footer.Height = 50;

                converter.Options.DisplayHeader = true;
                converter.Header.Height = 50;
                converter.Header.DisplayOnFirstPage = false;

                converter.Options.MarginRight = 20;
                converter.Options.MarginLeft = 20;
                converter.Options.PageBreaksEnhancedAlgorithm = true;


                PdfTextSection HeaderHtml = new PdfTextSection(0, 10, Header, new System.Drawing.Font("Arial", 10));
                HeaderHtml.HorizontalAlign = PdfTextHorizontalAlign.Right; 
                converter.Header.Add(HeaderHtml);

                // page numbers can be added using a PdfTextSection object
                PdfTextSection text = new PdfTextSection(0, 10, "Page {page_number} sur {total_pages}  ", new System.Drawing.Font("Arial", 8));
                text.HorizontalAlign = PdfTextHorizontalAlign.Left;
                converter.Footer.Add(text);

                PdfDocument doc = converter.ConvertHtmlString(htmlString);

                //   PdfDocument doc = converter.ConvertHtmlString(htmlString);

                //Creates a new Memory stream
                MemoryStream stream = new MemoryStream();
                // Saves the document as stream
                doc.Save(stream);

                // close pdf document
                doc.Close();

                // Converts the PdfDocument object to byte form.
                byte[] docBytes = stream.ToArray();
                return docBytes;
            }
            catch (Exception ex)
            {
                string s = ex.Message;
            }
            return null;
        }


    }
}
