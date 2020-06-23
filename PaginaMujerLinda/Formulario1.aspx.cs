using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PaginaMujerLinda
{
    public partial class Formulario1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void siguiente_Click(object sender, EventArgs e)
        {
            Datos.Formulario1 insertDatosPersonales = new Datos.Formulario1();
            string id_numDctos = id_numDcto.Text;
            int    tipoID = int.Parse(tipoId.Text);
            string nombre = nombres.Text;
            string apellido = apellidos.Text;
            string correo = email.Text;
            string dir_recidencia = direccion1.Text;
            string dir_trabajo = direccion2.Text;
            string oficio = ocupacion.Text;
            int    tel1 = Int32.Parse(telefono1.Text);
            int    tel2 = Int32.Parse(telefono2.Text);
            string face = facebook.Text;
            string inst = instagram.Text;

            insertDatosPersonales.ingresoInformacionPersonal(id_numDctos, tipoID, nombre, apellido, correo, dir_recidencia, dir_trabajo, oficio, tel1, tel2, face, inst);
    

        }
    }
}