using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{   
		public class DatosPersonales
		{
			public int tipo_documento { get; set; }
			public int nro_documento { get; set; }
			public string nombres { get; set; }
			public string apellidos { get; set; }
			public string email { get; set; }
			public string direccion_hogar { get; set; }
			public string direccion_trabajo { get; set; }
			public string ocupacion { get; set; }
			public int telefono1 { get; set; }
			public int telefono2 { get; set; }
			public string facebook { get; set; }
			public string instagram { get; set; }
		}

}
