using Datos;
using Modelo;
using System;
using System.Web.UI;


namespace PaginaMujerLinda
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Consultar();
        }

        public void Consultar()
        {
            Datos.ConexionBD con = new ConexionBD();
            Mascota mascota = new Mascota();
            mascota = con.ejecutarProcedimineto();
            lblnombre.Text = mascota.nombre;
            
        }
    }
}