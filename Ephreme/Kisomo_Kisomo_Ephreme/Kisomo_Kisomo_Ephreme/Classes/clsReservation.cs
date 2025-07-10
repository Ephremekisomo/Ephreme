using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Kisomo_Kisomo_Ephreme.Classes
{
    internal class clsReservation
    {
      int  id_Reservation;
	  int  refClient ;
      int	refChambre ;
	  DateTime  DateEntre ;
      DateTime  DateSortie ;

        public int Id_Reservation { get => id_Reservation; set => id_Reservation = value; }
        public int RefClient { get => refClient; set => refClient = value; }
        public int RefChambre { get => refChambre; set => refChambre = value; }
        public DateTime DateEntre1 { get => DateEntre; set => DateEntre = value; }
        public DateTime DateSortie1 { get => DateSortie; set => DateSortie = value; }
    }
}
