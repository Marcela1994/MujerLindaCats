using System.Data;
using System.Data.Common;
using Microsoft.Practices.EnterpriseLibrary.Data;
using Microsoft.Practices.EnterpriseLibrary.Data.Sql;
using Modelo;

namespace Datos
{
    public class ConexionBD
    {
        public string bdLocal = @"Data Source = tcp:mujerlindaserver.database.windows.net,1433;Initial Catalog=mujerlinda;Persist Security Info=False;User ID=deisycuellarg;Password=Deftones92*;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
    }
}
