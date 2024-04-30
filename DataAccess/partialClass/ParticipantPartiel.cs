using System;

namespace DataAccess.partialClass
{
    public class ParticipantPartiel
    {
        public int id { get; set; }
        public string Delegation { get; set; }
        public string PaysOrigine { get; set; }
        public string nom { get; set; }
        public Nullable<bool> nomUpdate { get; set; }
        public string prenom { get; set; }
        public Nullable<bool> prenomUpdate { get; set; }
        public string tel { get; set; }
        public string Titre { get; set; }
        public Nullable<bool> TitreUpdate { get; set; }
        public string NPassportDelegue { get; set; }
        public string NvolArrivee { get; set; }
        public Nullable<bool> NvolArriveeUpdate { get; set; }
        public Nullable<System.DateTime> DateArrivee { get; set; }
        public Nullable<bool> DateArriveeUpdate { get; set; }
        public Nullable<System.TimeSpan> HeureArrivee { get; set; }
        public Nullable<bool> HeureArriveeUpdate { get; set; }
        public string AreoportArrivee { get; set; }
        public Nullable<int> IdAreoportArrivee { get; set; }
        public Nullable<bool> IdAreoportArriveeUpdate { get; set; }
        public string PaysDestination { get; set; }
        public string AreoportDepart { get; set; }
        public Nullable<int> IdAreoportDepart { get; set; }
        public Nullable<bool> IdAreoportDepartUpdate { get; set; }
        public string NvolDepart { get; set; }
        public Nullable<bool> NvolDepartUpdate { get; set; }
        public Nullable<System.DateTime> DateDepart { get; set; }
        public Nullable<bool> DateDepartUpdate { get; set; }
        public Nullable<System.TimeSpan> HeureDepart { get; set; }
        public Nullable<bool> HeureDepartUpdate { get; set; }
        public string Hotel { get; set; }
        public Nullable<int> IdHotelUpdate { get; set; }
        public string Accompagnateur { get; set; }
        public Nullable<bool> NonOfficiel { get; set; }
        public Nullable<int> IdVehicule { get; set; }
        public Nullable<int> IdVehiculeArrivee { get; set; }
        public Nullable<int> IdVehiculeDepart { get; set; }
        public Nullable<int> IdVehiculeAutre { get; set; }
        public Nullable<int> IdCongre { get; set; }
        public string motPasse { get; set; }
        public Nullable<int> IdParent { get; set; }
        public string email { get; set; }
        public string photoUrl { get; set; }
        public Nullable<int> IdTitre { get; set; }
        public Nullable<int> status { get; set; }
        public string CreateBy { get; set; }
        public Nullable<System.DateTime> DateCreation { get; set; }
        public string UpdateBy { get; set; }
        public Nullable<System.DateTime> DateUpdate { get; set; }
        public int trace { get; set; }

        public string CadreHotel { get; set; }
        public string CadreAeroport { get; set; }

    }
}
