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
        string tipoDoc
        {
            get
            {
                return ViewState["tipoDoc"].ToString();
            }
            set
            {
                ViewState["tipoDoc"] = value;
            }
        }
        double nroDoc
        {
            get
            {
                return (double)(ViewState["nroDoc"] ?? 0);
            }
            set
            {
                ViewState["nroDoc"] = value;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            pnl_siguiente.Visible = false;

            if (!IsPostBack) 
            {
                this.EnableViewState = true;
                this.tipoDoc = Session["tipo_documento"].ToString();
                this.nroDoc = Double.Parse(Session["nro_documento"].ToString());
            }
        }

        protected void siguiente_Click(object sender, EventArgs e)
        {

            Datos.Formulario2 ingresoDatosFamilia= new Datos.Formulario2();

            //string tipoID = tipoId.SelectedItem.ToString();
            //int    id_numDctos = int.Parse(id_numDcto.Text);
            string tipoID = this.tipoDoc;
            double id_numDctos = this.nroDoc;
            int    personas = int.Parse(numPersonas.Text);
            string enterado = enterados.SelectedItem.ToString();
            string acuerdo = deAcuerdo.SelectedItem.ToString();
            string embarazos = embarazo.Text;
            string alergia = alergias.SelectedItem.ToString();
            string alergico = alergicos.Text;


            ingresoDatosFamilia.ingresoDatosFamiliar(tipoID, id_numDctos, personas, enterado, acuerdo, embarazos, alergia, alergico);

            Session["tipo_documento"] = this.tipoDoc;
            Session["nro_documento"] = this.nroDoc;
            Response.Redirect("Formulario3.aspx");

            //pnl_guardar.Visible = false;
            //pnl_siguiente.Visible = true;
        }
    }
}