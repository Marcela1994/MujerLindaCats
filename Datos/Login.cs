using Microsoft.Practices.EnterpriseLibrary.Data;
using Microsoft.Practices.EnterpriseLibrary.Data.Sql;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;

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

        public int crearUser(int doc, string usuario, string pass, string nombre) 
        {
            int res = 0;
            ConexionBD con = new ConexionBD();

            SqlConnection conexionSql = new SqlConnection(con.bdLocal);
            conexionSql.Open();
            SqlCommand command = new SqlCommand("insertarUsuario", conexionSql);
            command.CommandType = CommandType.StoredProcedure;

            command.Parameters.AddWithValue("@doc", doc);
            command.Parameters.AddWithValue("@usuario", usuario);
            command.Parameters.AddWithValue("@clave", pass);
            command.Parameters.AddWithValue("@nombre", nombre);

            res = command.ExecuteNonQuery();

            conexionSql.Close();
            return res;
        }
    }
}
