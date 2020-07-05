using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PaginaMujerLinda
{
    public partial class Formulario3 : System.Web.UI.Page
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
            Datos.Formulario3 ingresoDatosVivienda = new Datos.Formulario3();

            double nroDoc = this.nroDoc;
            string tipoID = this.tipoDoc;
            string tipoVivi = tipoVivienda.SelectedItem.ToString();
            string suVivienda = suViviendaEs.SelectedItem.ToString();
            string permiteAnimals = permiteAnimales.SelectedItem.ToString();
            string veci = permiteAnimales.SelectedItem.ToString();
            string patiosTerrazas = patioTerraza.SelectedItem.ToString();
            string piso = pisoVive.Text;
            string mudanzas = mudanza.SelectedItem.ToString();
            string viajes = viaje.SelectedItem.ToString();

            ingresoDatosVivienda.ingresoInformacionVivienda
                (
                    tipoID, nroDoc, tipoVivi, suVivienda, permiteAnimals, veci,
                    patiosTerrazas, piso, mudanzas, viajes
                );

            Session["tipo_documento"] = this.tipoDoc;
            Session["nro_documento"] = this.nroDoc;
            Response.Redirect("Formulario4.aspx");
            //Server.Transfer("Formulario4.aspx");

            //pnl_guardar.Visible = false;
            //pnl_siguiente.Visible = true;
        }
    }
}