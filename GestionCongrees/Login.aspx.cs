using Helpers;
using ServiceClass;
using System;

namespace schoolManagement
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             

        }

        protected void Login_Button_Click(object sender, EventArgs e)
        { 
            try
            { 
                Response.Redirect("Pages/Acceuil.aspx", false); 
            }
            catch (Exception ex)
            {
                GlobalHelpers.Trace(ex);
                ErrorMessage.Text = "Vous avez détecté une erreur dans l'opération, veuillez ressaisir les informations\n" + ex.Message;
            }
        }
    }
}
