using Datos;
using Modelo;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PaginaMujerLinda
{
    public partial class PublicacionMascotas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void guardar_mascota_Click(object sender, EventArgs e)
        {
            int tamanio = ingreso_fotos.PostedFile.ContentLength;
            byte[] imagenOriginal = new byte[tamanio];
            ingreso_fotos.PostedFile.InputStream.Read(imagenOriginal, 0, tamanio);
            Bitmap imagenBinaria = new Bitmap(ingreso_fotos.PostedFile.InputStream);
            string imagenData64 = "data:image/jpg;base64," + Convert.ToBase64String(imagenOriginal);

            /* Redimencionar la imagen
            System.Drawing.Image imagenOriginalPequenia;
            int imagenPequenia = 200;
            imagenOriginalPequenia = RedimencionarImagen(imagenBinaria, imagenPequenia);
            byte[] imagenBinariaPequenia = new byte[imagenPequenia];
            ImageConverter convertidor = new ImageConverter();
            imagenBinariaPequenia = (byte[])convertidor.ConvertTo(imagenOriginalPequenia, typeof(byte[]));
            */

            Mascota mas = new Mascota();
            MascotaDao mdao = new MascotaDao();
            mas.nombre = nombre_mascota.Text;
            mas.edad = edad_mascota.Text;
            mas.color = color_mascota.Text;
            mas.genero = genero.SelectedItem.Text;
            mas.esterilizado = esterilizado.SelectedItem.Text;
            mas.vacunado = vacunado.SelectedItem.Text;
            mas.desparasitado = desparasitado.SelectedItem.Text;
            mas.foto = imagenOriginal;


            int res = mdao.insertarMascota(mas.nombre, mas.edad, mas.color, mas.genero, mas.esterilizado, mas.vacunado, mas.desparasitado, mas.foto);
            if (res == 1)
            {
                mensaje_error.Text = "se registro correctamente";
            }
            else
            {
                mensaje_error.Text = "no fue posible registrar la mascota";
            }

        }
        public System.Drawing.Image RedimencionarImagen(System.Drawing.Image ImagenOriginal, int Alto)
        {
            var Radio = (double)Alto / ImagenOriginal.Height;
            var NuevoAncho = (int)(ImagenOriginal.Width * Radio);
            var NuevoAlto = (int)(ImagenOriginal.Height * Radio);
            var NuevaImagenRedimencionada = new Bitmap(NuevoAncho, NuevoAlto);
            var g = Graphics.FromImage(NuevaImagenRedimencionada);
            g.DrawImage(ImagenOriginal, 0, 0, NuevoAncho, NuevoAlto);
            return NuevaImagenRedimencionada;
        }

    }
}