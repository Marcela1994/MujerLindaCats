using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class Formulario4Actuales
    {
        public int ingresoDatosMascotasActuales(string tipo_documento, double nro_documento, string animales_actuales, string cuanto_tiempo_actuales,
                                           string como_llegaron, string desparasitado, string esterilizado, string vacunado, string actividades,
                                           string dormira, string permaneceraSolo, string compartirConEl, string nadieEnCasa, string mudarse, string gastos1,
                                           string gastos2, string gastos3, string gastos4, string hacerseCargo, string provienenIngresos, string coberturaDeGastos,
                                           string periodoAjuste, string tiempoAjuste, string visitaDomiciliaria, string seguimiento, string contrato)
        {
            int res = 0;
            ConexionBD con = new ConexionBD();
            SqlConnection conexionSql = new SqlConnection(con.bdLocal);
            conexionSql.Open();
            SqlCommand command = new SqlCommand("insertarDatosMascotaActual", conexionSql);
            command.CommandType = CommandType.StoredProcedure;

            command.Parameters.AddWithValue("@tipoDoc", tipo_documento);
            command.Parameters.AddWithValue("@nroDoc", nro_documento);
            command.Parameters.AddWithValue("@animalesActuales", animales_actuales);
            command.Parameters.AddWithValue("@cuantoTiempo", cuanto_tiempo_actuales);
            command.Parameters.AddWithValue("@comoLlegaron", como_llegaron);
            command.Parameters.AddWithValue("@desparasitado", desparasitado);
            command.Parameters.AddWithValue("@esterilizado", esterilizado);
            command.Parameters.AddWithValue("@vacunado", vacunado);
            command.Parameters.AddWithValue("@actividades", actividades);
            command.Parameters.AddWithValue("@dormira", dormira);
            command.Parameters.AddWithValue("@permanecerSolo", permaneceraSolo);
            command.Parameters.AddWithValue("@compartirConEl", compartirConEl);
            command.Parameters.AddWithValue("@nadieEnCasa", nadieEnCasa);
            command.Parameters.AddWithValue("@mudarse", mudarse);
            command.Parameters.AddWithValue("@gasto1", gastos1);
            command.Parameters.AddWithValue("@gasto2", gastos2);
            command.Parameters.AddWithValue("@gasto3", gastos3);
            command.Parameters.AddWithValue("@gasto4", gastos4);
            command.Parameters.AddWithValue("@hacerseCargo", hacerseCargo);
            command.Parameters.AddWithValue("@provienenIngresos", provienenIngresos);
            command.Parameters.AddWithValue("@coberturaDeGasto", coberturaDeGastos);
            command.Parameters.AddWithValue("@periodoAjuste", periodoAjuste);
            command.Parameters.AddWithValue("@tiempoAjuste", tiempoAjuste);
            command.Parameters.AddWithValue("@visitaDomiciliaria", visitaDomiciliaria);
            command.Parameters.AddWithValue("@seguimiento", seguimiento);
            command.Parameters.AddWithValue("@contrato", contrato);

            try
            {
                res = command.ExecuteNonQuery();
            }
            catch(Exception e)
            {
                e.ToString();
            }
            return res;
        }
    }
}
