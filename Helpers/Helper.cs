using System;
using System.IO;

namespace Helpers
{
    public class Helper
    {
        public void ExceptionManag(Exception ex)
        {
            if (File.Exists("C:\\logDRE\\logCongre.txt"))
            {
                try
                {
                    StreamWriter fichierLog = new StreamWriter("C:\\logDRE\\logCongre.txt", true);
                    fichierLog.WriteLine("/////////////////////////////////////////////////////////////");
                    fichierLog.WriteLine(ex.ToString());
                    fichierLog.Close();
                }
                catch { }
            }
        }

        public static string RemplacerAccentues(string objet)
        {
            if (!string.IsNullOrEmpty(objet))
            {
                objet = objet.Replace("&nbsp;", " ");  
                objet = objet.Replace("é;", "é");  
                objet = objet.Replace("&amp;", "&");  
                objet = objet.Replace("&#244;", "ô");
                objet = objet.Replace("&#232;", "è");
                objet = objet.Replace("&#233;", "é");
                objet = objet.Replace("&#39;", "'"); 
                objet = objet.Replace("&#224;", "à");  
                objet = objet.Replace("&ugrave;", "ù");
                objet = objet.Replace("&eacute;", "é");
                objet = objet.Replace("&egrave;", "è");
                objet = objet.Replace("&ecirc;", "ê");
                objet = objet.Replace("&acirc;", "â");
                objet = objet.Replace("&agrave;", "à");
                objet = objet.Replace("&icirc;", "î");
                objet = objet.Replace("&ocirc;", "ô");
                objet = objet.Replace("&ccedil;", "ç");
                objet = objet.Replace("&lt;", "<");
                objet = objet.Replace("&gt;", ">");
                objet = objet.Replace("&oelig;", "œ");
                objet = objet.Replace("&ucirc;", "û");
                objet = objet.Replace("&amp;", "&");
                objet = objet.Replace("&raquo;", "»");
                objet = objet.Replace("&laquo;", "«");
                objet = objet.Replace("&Ccedil;", "Ç");
                objet = objet.Replace("&Ntilde;", "Ñ");
                objet = objet.Replace("&ntilde;", "ñ");
                objet = objet.Replace("&Uuml;", "Ü");
                objet = objet.Replace("&uuml;", "ü");
                objet = objet.Replace("&Ucirc;", "Û");
                objet = objet.Replace("&uacute;", "ú");
                objet = objet.Replace("&Ugrave;", "Ù");
                objet = objet.Replace("&otilde;", "õ");
                objet = objet.Replace("&Ocirc;", "Ô");
                objet = objet.Replace("<br />", "");
                objet = objet.Trim();

            }
            return objet;
        }

    }
}
