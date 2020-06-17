using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PaginaMujerLinda
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_ingresar_Click(object sender, EventArgs e)
        {
            Datos.Login acceso = new Datos.Login();
            string usuario = ingreso_user.Text;
            string password = ingreso_pass.Text;
            int res = acceso.validarUser(usuario, password);

            if (res == 1)
            {
                Server.Transfer("seleccion.aspx");
            }
            else 
            {
                Server.Transfer("PaginaError.aspx");
            }
        }
    }
}