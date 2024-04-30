namespace Helpers
{
    public static class HelperClass
    {

        public static readonly string GeneralErrorMessageTitle = "Erreur sur la page";
        public static readonly string GeneralErrorNomAndPrenom = "éxist déja.";
        public static readonly string GeneralErrorImpossible = "Impossible d'ajouter cette Ligne.";
        public static readonly string GeneralSuccessMessageTitle = "Succès";
        public static readonly string GeneralErrorMessage = "Un problème est survenu, nous sommes notifés et nous travaillons pour le résoudre, merci de réessayer";
        public static readonly string GeneralDisconnectedMessage = "Vous semblé  déconnecté, merci de vous reconnecter.";
        public static readonly string GeneralCantDeleteElementMessage = "Cet élément ne peut pas être supprimé, il est lié à d'autres éléments.";
        public const string GeneralSuccessMessage = "<div class='alert alert-success alert-dismissible' role='alert'>L’opération a été bien effectuée.<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button></div>";
        public const string ErrorMsg = "<div class='alert alert-danger alert-dismissible' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>Un participant doit être sélectionné.</div>";
        public const string ErrorMsgExcelNonValide = "<div class='alert alert-danger alert-dismissible' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>Fichier Excel invalide.</div>";
        public const string Msginscription = "<div class='alert alert-danger alert-dismissible' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>Participants déjà inscrits.</div>";

        public static readonly string AuthentificationFailedTitleMessage = "Echec d'autentification";

        public static readonly string AuthentificationFailedMessage = "Identifiant ou mot de passe incorrect";
        public const string ErrorMsgReponse = "<div class='alert alert-danger alert-dismissible' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>Merci de choisir un fichier excel.</div>";
        public const string MsgValider = "<div class='alert alert-success alert-dismissible' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>Confirmation réussie.</div>";
        public const string MsgAdd = "<div class='alert alert-success alert-dismissible' role='alert'>Enregistré avec succès.<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button></div>";
        public const string MsgUpdate = "<div class='alert alert-success alert-dismissible' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>Modifié avec succès.</div>";
        public const string Msgparticipantvide = "<div class='alert alert-danger alert-dismissible' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>Il n'y a pas de participants pour ce congre </div>";
        public const string ErrorMsgcongre = "<div class='alert alert-danger alert-dismissible' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button> ce congre a déjà été enregistré </div>";
        public const string ExcelEnCoursDutilisation = "<div class='alert alert-danger alert-dismissible' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button> Le ficher Excel il est en cours d'utilisation par un autre processus. </div>";

        public const string Photoext = "<div class='alert alert-danger alert-dismissible' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button> L'image doit contenir une extension de type  (jpg ou jpeg) </div>";
        public static string DefaultValue = "-1";
        public static string ArrivalList = "1";
        public static string DepartList = "2"; 
        public static string ArrivalListV2 = "3";
        public static string DepartListV2 = "4";
        public static string ListExcel = "5";
        public const string ExcelHeureDepart = "<div class='alert alert-danger alert-dismissible' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>Un problème est survenu lors du traitement de votre commande ! verifier l'heure de départ de ces participants </div>";
        public const string ExcelDateDepart = "<div class='alert alert-danger alert-dismissible' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>Un problème est survenu lors du traitement de votre commande ! verifier la date départ de ces participants </div>";
        public const string ExcelDateArrivee = "<div class='alert alert-danger alert-dismissible' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>Un problème est survenu lors du traitement de votre commande ! verifier la date d'arrivee de ces participants </div>";
        public const string ExcelHeureArrivee = "<div class='alert alert-danger alert-dismissible' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>Un problème est survenu lors du traitement de votre commande ! verifier l'heure d'arrivee de ces participants </div>";
      
    }
}
