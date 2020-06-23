using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Microsoft.Practices.EnterpriseLibrary.Data;
using Microsoft.Practices.EnterpriseLibrary.Data.Sql;
using System.Data.Common;

namespace Datos
{
    public class Formulario2
    {
        public string ingresoDatosFamiliar(  string tipo_documento,
                                             int nro_documento,
                                             int nro_personas_que_habitan_su_hogar, 
                                             string todos_saben_que_va_a_adoptar, 
                                             string todos_estan_de_acuerdo, 
                                             string que_sucederia_en_caso_de_embarazo, 
                                             string alergias, 
                                             string que_pasaria_si_alguien_resultara_alergico)
        {
            ConexionBD con = new ConexionBD();
            string res = "";

            Database sql = new SqlDatabase(con.bdLocal);
            DbCommand cmd = sql.GetStoredProcCommand("insertarDatosFamiliares");
            sql.AddInParameter(cmd, "@tipoDoc", DbType.String, tipo_documento);
            sql.AddInParameter(cmd, "@nroDoc", DbType.Int32, nro_documento);
            sql.AddInParameter(cmd, "@nroPersonas", DbType.Int32, nro_personas_que_habitan_su_hogar);
            sql.AddInParameter(cmd, "@saben", DbType.String , todos_saben_que_va_a_adoptar);
            sql.AddInParameter(cmd, "@deAcuerdo", DbType.String , todos_estan_de_acuerdo);
            sql.AddInParameter(cmd, "@embarazo", DbType.String , que_sucederia_en_caso_de_embarazo);
            sql.AddInParameter(cmd, "@alergiasExistentes", DbType.String , alergias);
            sql.AddInParameter(cmd, "@alergiasAparezcan", DbType.String , que_pasaria_si_alguien_resultara_alergico);

            DataSet ds = sql.ExecuteDataSet(cmd);

            //DataTable dtConsulta;
            //dtConsulta = ds.Tables[0];

            return res;
        }
    }
}
