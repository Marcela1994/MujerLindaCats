using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PaginaMujerLinda
{
    public partial class Formulario2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void siguiente_click(object sender, EventArgs e)
        {

            Datos.Formulario2 ingresoDatosFamilia= new Datos.Formulario2();

            string tipoID = tipoId.Text;
            int    id_numDctos = int.Parse(id_numDcto.Text);
            int    personas = int.Parse(numPersonas.Text);
            string enterado = enterados.Text;
            string acuerdo = deAcuerdo.Text;
            string embarazos = embarazo.Text;
            string alergia = alergias.Text;
            string alergico = alergicos.Text;

            ingresoDatosFamilia.ingresoDatosFamiliar(tipoID, id_numDctos, personas, enterado, acuerdo, embarazos, alergia, alergico);

        }
    }
}