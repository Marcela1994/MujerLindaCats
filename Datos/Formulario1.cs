using Microsoft.Practices.EnterpriseLibrary.Data;
using Microsoft.Practices.EnterpriseLibrary.Data.Sql;
using Microsoft.Practices.Unity.InterceptionExtension;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Globalization;
using System.Linq;
using System.Net.Configuration;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class Formulario1
    {
        public string ingresoInformacionPersonal(string tipo_documento, int nro_documento, string nombres, string apellidos, string email, 
                                                 string direccion_hogar, string direccion_trabajo, string ocupacion, int telefono1, int telefono2,
                                                 string facebook, string instagram )
        {
            ConexionBD con = new ConexionBD();
            string res = "";

            Database sql = new SqlDatabase(con.bdLocal);
            DbCommand cmd = sql.GetStoredProcCommand("ingresoInformacionPersona");
            sql.AddInParameter(cmd, "@tipo_documento", DbType.String, tipo_documento);
            sql.AddInParameter(cmd, "@nro_documento", DbType.Int32, nro_documento);
            sql.AddInParameter(cmd, "@nombres", DbType.String, nombres);
            sql.AddInParameter(cmd, "@apellidos", DbType.String, apellidos);
            sql.AddInParameter(cmd, "@email", DbType.String, email);
            sql.AddInParameter(cmd, "@direccion_hogar", DbType.String, direccion_hogar);
            sql.AddInParameter(cmd, "@direccion_trabajo", DbType.String, direccion_trabajo);
            sql.AddInParameter(cmd, "@ocupacion", DbType.String, ocupacion);
            sql.AddInParameter(cmd, "@telefono1", DbType.Int32, telefono1);
            sql.AddInParameter(cmd, "@telefono2", DbType.Int32, telefono2);
            sql.AddInParameter(cmd, "@facebook", DbType.String, facebook);
            sql.AddInParameter(cmd, "@instagram", DbType.String, instagram);

            DataSet ds = sql.ExecuteDataSet(cmd);

            //DataTable dtConsulta;
            //dtConsulta = ds.Tables[0];

            return res;
        }
    }
}
