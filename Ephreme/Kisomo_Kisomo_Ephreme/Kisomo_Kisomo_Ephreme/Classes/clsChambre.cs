using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Kisomo_Kisomo_Ephreme.Classes
{
    internal class clsChambre
    {
        int id_Chambre;
        int numero;
        string contact;
        string refClasse;

        public int Id_Chambre { get => id_Chambre; set => id_Chambre = value; }
        public int Numero { get => numero; set => numero = value; }
        public string Contact { get => contact; set => contact = value; }
        public string RefClasse { get => refClasse; set => refClasse = value; }
    }
}
