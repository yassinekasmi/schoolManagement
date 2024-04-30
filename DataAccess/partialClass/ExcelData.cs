using System;

namespace DataAccess.partialClass
{
    [Serializable]
    public class ExcelData
    {

        public string delegation { get; set; }
        public string PayOrigine { get; set; }
        public string nom { get; set; }
        public string prenom { get; set; }
        public string NTel { get; set; }
        public string titre { get; set; }
        public string NPassport { get; set; }
        public string NVolArrivee { get; set; }
        public string DateVolArrivee { get; set; }
        public string HeureVolArrivee { get; set; }
        public string AeroportVolArrivee { get; set; }
        public string PayDestination { get; set; }
        public string AeroportVolDepart { get; set; }
        public string NVolDepart { get; set; }
        public string DateVolDepart { get; set; }
        public string HeureVolDepart { get; set; }
        public string hotel { get; set; }
        public string Chef { get; set; }
        public string Qualite { get; set; }
        public string NonOfficiel { get; set; }


    }
}
