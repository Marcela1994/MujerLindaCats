using System.Data;
using System.Data.Common;
using Microsoft.Practices.EnterpriseLibrary.Data;
using Microsoft.Practices.EnterpriseLibrary.Data.Sql;
using Modelo;

namespace Datos
{
    public class ConexionBD
    {
        public string bdLocal = @"packet size=4096; persist security info=True; Data Source=DESKTOP-D4K75HQ\MARCE; Initial Catalog=proyecto; Integrated Security=SSPI; Timeout=300";
    }
}
