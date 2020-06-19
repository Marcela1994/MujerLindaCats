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
    public partial class Publicacion_Mascotas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void guardar_mascota_Click(object sender, EventArgs e)
        {
            Mascota mas = new Mascota();
            MascotaDao mdao = new MascotaDao();
            mas.nombre = nombre_mascota.Text;
            mas.edad = edad_mascota.Text;
            mas.color = color_mascota.Text;
            mas.genero = genero.SelectedItem.Text;
            mas.esterilizado = esterilizado.SelectedItem.Text;
            mas.vacunado = vacunado.SelectedItem.Text;
            mas.desparasitado = desparasitado.SelectedItem.Text;
            int res = mdao.insertarMascota(mas.nombre, mas.edad, mas.color, mas.genero, mas.esterilizado, mas.vacunado, mas.desparasitado);
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