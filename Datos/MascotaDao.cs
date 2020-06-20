using Microsoft.Practices.EnterpriseLibrary.Data;
using Microsoft.Practices.EnterpriseLibrary.Data.Sql;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class MascotaDao
    {
        public int insertarMascota(string nombre, string edad, string color, string genero, string esterilizado, string vacunado, string desparasitado, byte[] foto)
        {
            int res = 0;
            ConexionBD con = new ConexionBD();
            //Database SqlBdd = new SqlDatabase(con.bdLocal);
            //DbCommand Comando = SqlBdd.GetStoredProcCommand("insertarMascota");

            SqlConnection conexionSql = new SqlConnection(con.bdLocal);
            conexionSql.Open();
            SqlCommand command = new SqlCommand("insertarMascota", conexionSql);
            command.CommandType = CommandType.StoredProcedure;

            /*
            SqlBdd.AddInParameter(Comando, "@nombre", DbType.String, nombre);
            SqlBdd.AddInParameter(Comando, "@edad", DbType.String, edad);
            SqlBdd.AddInParameter(Comando, "@color", DbType.String, color);
            SqlBdd.AddInParameter(Comando, "@genero", DbType.String, genero);
            SqlBdd.AddInParameter(Comando, "@esterilizado", DbType.String, esterilizado);
            SqlBdd.AddInParameter(Comando, "@vacuna", DbType.String, vacunado);
            SqlBdd.AddInParameter(Comando, "@desparasitado", DbType.String, desparasitado);
            SqlBdd.AddInParameter(Comando, "@foto", DbType.Byte, foto);
            DataSet DS = SqlBdd.ExecuteDataSet(Comando);
            */

            //SqlParameter paramCodRetorno = new SqlParameter("CantRegs", SqlDbType.Int);
            //paramCodRetorno.Direction = ParameterDirection.Output;
            //command.Parameters.Add(paramCodRetorno);

            command.Parameters.AddWithValue("nombre", nombre);
            command.Parameters.AddWithValue("edad", edad);
            command.Parameters.AddWithValue("color", color);
            command.Parameters.AddWithValue("genero", genero);
            command.Parameters.AddWithValue("esterilizado", esterilizado);
            command.Parameters.AddWithValue("vacuna", vacunado);
            command.Parameters.AddWithValue("desparasitado", desparasitado);
            command.Parameters.AddWithValue("foto", foto);

            res = command.ExecuteNonQuery();

            //DataTable dtConsulta;
            //dtConsulta = DS.Tables[0];
            //res = int.Parse(dtConsulta.Rows[0]["CantRegs"].ToString());
            
            conexionSql.Close();
            return res;
        }

        public DataTable MostrarMascota() {
            ConexionBD con = new ConexionBD();

            SqlConnection conexionSql = new SqlConnection(con.bdLocal);
            conexionSql.Open();
            SqlCommand command = new SqlCommand("insertarMascota", conexionSql);
            command.CommandType = CommandType.StoredProcedure;

            command.CommandText = "mostrarMascota";
            command.CommandType = CommandType.Text;
            command.Connection = conexionSql;
            

            DataTable mascota = new DataTable();
            mascota.Load(command.ExecuteReader());
            conexionSql.Close();
            return mascota;
            
        }
    }
}
