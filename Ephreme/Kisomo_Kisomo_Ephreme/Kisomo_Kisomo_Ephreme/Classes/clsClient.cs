using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Kisomo_Kisomo_Ephreme.Classes
{
    internal class clsClient
    {
        int id_Client;
        string nom;
        string Adresse;
        string contact;

        public int Id_Client { get => id_Client; set => id_Client = value; }
        public string Nom { get => nom; set => nom = value; }
        public string Adresse1 { get => Adresse; set => Adresse = value; }
        public string Contact { get => contact; set => contact = value; }
    }
}
