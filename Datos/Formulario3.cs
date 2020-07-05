using Microsoft.Practices.EnterpriseLibrary.Data;
using Microsoft.Practices.EnterpriseLibrary.Data.Sql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.Common;


namespace Datos
{
    public class Formulario3
    {
        public string ingresoInformacionVivienda
        (
            string tipo_documento,
            double nro_documento,
            string tipo_vivienda,
            string propia_alquilada,
            string permite_mascotas,
            string vecinos_contra_animales,
            string patio_terraza,
            string piso,
            string mudanza,
            string viajes
        )
        {

            ConexionBD con = new ConexionBD();
            string res = "";

            Database sql = new SqlDatabase(con.bdLocal);
            DbCommand cmd = sql.GetStoredProcCommand("insertarDatosVivienda");
            sql.AddInParameter(cmd, "@tipoDoc", DbType.String, tipo_documento);
            sql.AddInParameter(cmd, "@nroDoc", DbType.Int64, nro_documento);
            sql.AddInParameter(cmd, "@tipoVivienda", DbType.String, tipo_vivienda);
            sql.AddInParameter(cmd, "@propiaAlquilada", DbType.String, propia_alquilada);
            sql.AddInParameter(cmd, "@permiteMascotas", DbType.String, permite_mascotas);
            sql.AddInParameter(cmd, "@vecinos", DbType.String, vecinos_contra_animales);
            sql.AddInParameter(cmd, "@patioTerraza", DbType.String, patio_terraza);
            sql.AddInParameter(cmd, "@piso", DbType.String, piso);
            sql.AddInParameter(cmd, "@mudanza", DbType.String, mudanza);
            sql.AddInParameter(cmd, "@viajes", DbType.String, viajes);

            DataSet ds = sql.ExecuteDataSet(cmd);

            //DataTable dtConsulta;
            //dtConsulta = ds.Tables[0];

            return res;
        }
    }
}
