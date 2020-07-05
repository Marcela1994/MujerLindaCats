using Datos;
using Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PaginaMujerLinda
{
    public partial class Formulario4 : System.Web.UI.Page
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
            if (!IsPostBack)
            {
                this.EnableViewState = true;
                this.tipoDoc = Session["tipo_documento"].ToString();
                this.nroDoc = Double.Parse(Session["nro_documento"].ToString());
            }
        }

        protected void btnSiguiente_guardar_Click(object sender, EventArgs e)
        {
            DatosMascotas mas = new DatosMascotas();
            Formulario4Actuales formAct = new Formulario4Actuales();
            Formulario4Antiguos formAnt = new Formulario4Antiguos();

            mas.tipo_documento = this.tipoDoc;
            mas.nro_documento = this.nroDoc;
            mas.animales_ha_tenido = animalesTenido.Text;
            mas.donde_estan_antiguos = dondeEstan.Text;
            mas.porque_antiguos = porque.Text;
            mas.cuanto_tiempo_antiguos = cuantoTiempo.Text;
            mas.animales_actuales = animalesTiene.Text;
            mas.cuanto_tiempo_actuales = tiempo.Text;
            mas.como_llegaron = comoLlegaron.Text;
            mas.desparasitado = desparasitado.SelectedValue;
            mas.esterilizado = esterilizados.SelectedValue;
            mas.vacunado = vacunados.SelectedValue;
            mas.actividades = compañeroGato.Text;
            mas.dormira = dormitorio.Text;
            mas.permaneceraSolo = soledad.Text;
            mas.compartirConEl = compartir.Text;
            mas.nadieEnCasa = soledadEnCasa.Text;
            mas.mudarse = mudanza.Text;
            mas.gastos1 = gastos1.Text;
            mas.gastos2 = gastos2.Text;
            mas.gastos3 = gastos3.Text;
            mas.gastos4 = gastos4.Text;
            mas.hacerseCargo = responsable.Text;
            mas.provienenIngresos = ingresos.Text;
            mas.coberturaDeGastos = gastosCubiertos.Text;
            mas.periodoAjuste = adaptacion.Text;
            mas.tiempoAjuste = tiempoAdaptacion.Text;
            mas.visitaDomiciliaria = ddlVisitaDomiciliaria.SelectedValue;
            mas.seguimiento = ddlSeguimiento.SelectedValue;
            mas.contrato = ddlContrato.SelectedValue;

            int res = formAnt.ingresoDatosMascotasAntiguas(mas.tipo_documento, mas.nro_documento, mas.animales_ha_tenido, mas.donde_estan_antiguos, mas.porque_antiguos, mas.cuanto_tiempo_antiguos);
            int res2 = formAct.ingresoDatosMascotasActuales(mas.tipo_documento, mas.nro_documento, mas.animales_actuales, mas.cuanto_tiempo_actuales, mas.como_llegaron, mas.esterilizado, mas.desparasitado, mas.vacunado, mas.actividades, mas.dormira, mas.permaneceraSolo, mas.compartirConEl, mas.nadieEnCasa, mas.mudarse, mas.gastos1, mas.gastos2, mas.gastos3, mas.gastos4, mas.hacerseCargo, mas.provienenIngresos, mas.coberturaDeGastos, mas.periodoAjuste, mas.tiempoAjuste, mas.visitaDomiciliaria, mas.seguimiento, mas.contrato);

            if (res.Equals(1) && res2.Equals(1))
            {
                //mensaje_error.Text = "se registro correctamente el formulario 4";
                Response.Redirect("MostrarMascota.aspx");
            }
            else 
            {
                mensaje_error.Text = "no fue posible registrar la informacion del formulario 4";
            }
         }
    }
}