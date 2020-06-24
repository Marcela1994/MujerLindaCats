using Microsoft.Practices.EnterpriseLibrary.Data;
using Microsoft.Practices.EnterpriseLibrary.Data.Sql;
using System;
using System.Data;
using System.Data.SqlClient;


namespace Datos
{
    public class ResumenFormulario
    {
        public DataTable consultarFormulariosDiligenciados()
        {

            ConexionBD con = new ConexionBD();

            SqlConnection conexionSql = new SqlConnection(con.bdLocal);
            conexionSql.Open();
            SqlCommand command = new SqlCommand("resumenFormulario", conexionSql);
            command.CommandType = CommandType.StoredProcedure;

            command.CommandText = "resumenFormulario";
            command.CommandType = CommandType.Text;
            command.Connection = conexionSql;


            DataTable persona = new DataTable();
            persona.Load(command.ExecuteReader());
            conexionSql.Close();
            return persona;
        }
    }

    
}
