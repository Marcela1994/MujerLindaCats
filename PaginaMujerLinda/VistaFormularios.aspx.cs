using Datos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PaginaMujerLinda
{
    public partial class VistaFormularios : System.Web.UI.Page
    {
        ResumenFormulario res;

        protected void Page_Load(object sender, EventArgs e)
        {
            res = new ResumenFormulario();
            ResumenFormularios_gr.DataSource = res.consultarFormulariosDiligenciados();
            ResumenFormularios_gr.DataBind();
        }

        protected void Grid_PreRender(object sender, EventArgs e)
        {
            GridViewToHtmlTable((GridView)sender);
        }

        protected void ResumenFormularios_gr_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            ResumenFormularios_gr.PageIndex = e.NewPageIndex;
            ResumenFormularios_gr.DataSource = res.consultarFormulariosDiligenciados();
            ResumenFormularios_gr.DataBind();
        }

        protected void ResumenFormularios_gr_SelectedIndexChanged(object sender, EventArgs e)
        {
            mainResumen.Controls.Clear();
            GridViewRow row = ResumenFormularios_gr.SelectedRow;
            int index = row.RowIndex;
            var rowValues = ResumenFormularios_gr.DataKeys[index].Values;
            
            //this.id_eb = rowValues["RADICADO"].ToString();
            //Server.Transfer("~/App_Root/Modules/Comercial/DetalleRenegociaciones.aspx");

        }

        public void GridViewToHtmlTable(GridView Grid)
        {
            if (Grid.Rows.Count > 0)
            {
                Grid.UseAccessibleHeader = true;
                Grid.HeaderRow.TableSection = TableRowSection.TableHeader;
                Grid.FooterRow.TableSection = TableRowSection.TableFooter;
            }

            if (Grid.TopPagerRow != null)
            {
                Grid.TopPagerRow.TableSection = TableRowSection.TableHeader;
            }

            if (Grid.BottomPagerRow != null)
            {
                Grid.BottomPagerRow.TableSection = TableRowSection.TableFooter;
            }
        }
    }
}