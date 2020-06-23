using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public class DatosFamiliares
    {
		public int tipo_documento { get; set; }
        public int nro_documento { get; set; }
        public int nro_personas_que_habitan_su_hogar { get; set; }
        public string todos_saben_que_va_a_adoptar { get; set; }
        public string todos_estan_de_acuerdo { get; set; }
        public string que_sucederia_en_caso_de_embarazo { get; set; }
        public string alergias { get; set; }
        public string que_pasaria_si_alguien_resultara_alergico { get; set; }
	}
}
