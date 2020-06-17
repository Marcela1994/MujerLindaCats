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
    public class Login
    {
        public int validarUser(string user, string pass)
        {
            ConexionBD con = new ConexionBD();
            int res = 0;

            Database SqlBdd = new SqlDatabase(con.bdLocal);
            DbCommand Comando = SqlBdd.GetStoredProcCommand("consulta_usuario");
            SqlBdd.AddInParameter(Comando, "@user", DbType.String, user);
            SqlBdd.AddInParameter(Comando, "@pass", DbType.String, pass);

            DataSet DS = SqlBdd.ExecuteDataSet(Comando);

            DataTable dtConsulta;
            dtConsulta = DS.Tables[0];
            res = int.Parse(dtConsulta.Rows[0]["existe"].ToString());
            return res;
        } 
    }
}
