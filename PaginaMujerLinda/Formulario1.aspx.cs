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
        string tipoDoc { 
            get 
            {
                return ViewState["tipoDoc"].ToString();
            }
            set 
            {
                ViewState["tipoDoc"] = value;
            }
        }
        double nroDoc {
            get
            {
                return (double) (ViewState["nroDoc"] ?? 0);
            }
            set
            {
                ViewState["nroDoc"] = value;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            pnl_siguiente.Visible = false;
        }

        protected void siguiente_Click(object sender, EventArgs e)
        {
            Datos.Formulario1 insertDatosPersonales = new Datos.Formulario1();
            double id_numDctos = Double.Parse(id_numDcto.Text);
            string tipoID = tipoId.SelectedItem.ToString();
            string nombre = nombres.Text;
            string apellido = apellidos.Text;
            string correo = email.Text;
            string dir_recidencia = direccion1.Text;
            string dir_trabajo = direccion2.Text;
            string oficio = ocupacion.Text;
            int    tel1 = int.Parse(telefono1.Text);
            int    tel2 = int.Parse(telefono2.Text);
            string face = facebook.Text;
            string inst = instagram.Text;

            insertDatosPersonales.ingresoInformacionPersonal(tipoID, id_numDctos,nombre, apellido, correo, dir_recidencia, dir_trabajo, oficio, tel1, tel2, face, inst);

            this.tipoDoc = tipoID;
            this.nroDoc = id_numDctos;
            Session["tipo_documento"] = this.tipoDoc;
            Session["nro_documento"] = this.nroDoc;
            Response.Redirect("Formulario2.aspx");
            //Server.Transfer("Formulario2.aspx");

            //pnl_guardar.Visible = false;
            //pnl_siguiente.Visible = true;
            //pnl_siguiente.Focus();

        }
    }
}