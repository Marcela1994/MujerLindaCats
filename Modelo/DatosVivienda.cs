using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public class DatosVivienda
    {
		public int tipo_documento { get; set; }
		public int nro_documento { get; set; }
		public string tipo_vivienda { get; set; }
		public string propia_alquilada { get; set; }
		public string permite_mascotas { get; set; }
		public string vecinos_contra_animales { get; set; }
		public string patio_terraza { get; set; }
		public string piso { get; set; }
		public string mudanza { get; set; }
		public string viajes { get; set; }
	}
}
