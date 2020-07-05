using Microsoft.Practices.EnterpriseLibrary.Data;
using Microsoft.Practices.EnterpriseLibrary.Data.Sql;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Security;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class Formulario4Antiguos
    {
        public int ingresoDatosMascotasAntiguas(string tipo_documento, int nro_documento, string animales_ha_tenido, string donde_estan_antiguos,
                                           string porque_antiguos, string cuanto_tiempo_antiguos)
        {

            ConexionBD con = new ConexionBD();
            int res = 0;

            SqlConnection conexionSql = new SqlConnection(con.bdLocal);
            conexionSql.Open();
            SqlCommand command = new SqlCommand("insertarDatosAntiguasMascotas", conexionSql);
            command.CommandType = CommandType.StoredProcedure;

            command.Parameters.AddWithValue("@tipoDoc", tipo_documento);
            command.Parameters.AddWithValue("@nroDoc", nro_documento);
            command.Parameters.AddWithValue("@animalesAnteriores", animales_ha_tenido);
            command.Parameters.AddWithValue("@dondeEstan", donde_estan_antiguos);
            command.Parameters.AddWithValue("@porque", porque_antiguos);
            command.Parameters.AddWithValue("@cuantoTiempoAntiguos", cuanto_tiempo_antiguos);
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
