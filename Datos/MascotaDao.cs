using Microsoft.Practices.EnterpriseLibrary.Data;
using Microsoft.Practices.EnterpriseLibrary.Data.Sql;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class MascotaDao
    {
        public int insertarMascota(string nombre, string edad, string color, string genero, string esterilizado, string vacunado, string desparasitado)
        {
            ConexionBD con = new ConexionBD();
            int res = 0;
            Database SqlBdd = new SqlDatabase(con.bdLocal);
            DbCommand Comando = SqlBdd.GetStoredProcCommand("insertarMascota");
            SqlBdd.AddInParameter(Comando, "@nombre", DbType.String, nombre);
            SqlBdd.AddInParameter(Comando, "@edad", DbType.String, edad);
            SqlBdd.AddInParameter(Comando, "@color", DbType.String, color);
            SqlBdd.AddInParameter(Comando, "@genero", DbType.String, genero);
            SqlBdd.AddInParameter(Comando, "@esterilizado", DbType.String, esterilizado);
            SqlBdd.AddInParameter(Comando, "@vacuna", DbType.String, vacunado);
            SqlBdd.AddInParameter(Comando, "@desparasitado", DbType.String, desparasitado);

            DataSet DS = SqlBdd.ExecuteDataSet(Comando);

            DataTable dtConsulta;
            dtConsulta = DS.Tables[0];
            res = int.Parse(dtConsulta.Rows[0]["CantRegs"].ToString());
            return res;
        }
    }
}
