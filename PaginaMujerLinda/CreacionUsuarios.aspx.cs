using Datos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PaginaMujerLinda
{
    public partial class CreacionUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCrearUser_Click(object sender, EventArgs e)
        {
            int documento = int.Parse(txtDocumento.Text);
            string user = txtUsuario.Text;
            string pass = txtPassword.Text;
            string nombre = txtNombre.Text;

            Datos.Login ingreso = new Datos.Login();
            int res = ingreso.crearUser(documento, user, pass, nombre);
            if (res == 1)
            {
                mensaje_error.Text = "se registro correctamente";
            }
            else
            {
                mensaje_error.Text = "no fue posible registrar la mascota";
            }
        }
    }
}