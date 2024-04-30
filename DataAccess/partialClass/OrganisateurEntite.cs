namespace DataAccess.partialClass
{
    public class OrganisateurEntite
    {
        public int id { get; set; }
        public string nom { get; set; }
        public string prenom { get; set; }
        public string email { get; set; }
        public string tel { get; set; }
        public string photoUrl { get; set; }
        public string fonction { get; set; }

        public string Entite { get; set; }
    }
    public class CongreOrganisme
    {
        public int id { get; set; }
        public string numero { get; set; }
        public string titre { get; set; }
        public string dateDebut { get; set; }
        public string dateFin { get; set; }
        public string details { get; set; }
        public string adresse { get; set; }
        public string planningUrl { get; set; }
        public string organisme { get; set; }
    }
}
