namespace Helpers
{
    public static class Enumerations
    {
        public enum PopupImage
        {
            None, Success, Info, Tip, Error
        }

        public enum MessageRepositoryTypes
        {
            File, Events
        }

        public enum TraceType
        {
            Information, Warning, Error
        }

        public enum SessionKeywords
        {
            ConnectedUser, ConnectedClient, ConnectedOffice, ConnectedOfficeUser, TodaysRendezVousCount, OfficeClientsCount
        }

        public enum AlertType
        {
            GeneralInfo, NewRendezVous, NewMessage, NewTask
        }

        public enum QueryStringKeywords
        {
            ReturnUrl,
        }

        public enum TaskCategory
        {
            success, active, warning, danger
        }

        public enum ProcessName
        {

            Commande,
            DemandeMetrologie,
        }
        public enum ProcessShemaId
        {
            Commande = 60,
            Panne = 68,

        }
    }
}
