using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;
using System.Data;

namespace Inventario
{
    public partial class CrearRoles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null || !((bool[])(Session["Accesos"]))[3])
            {
                Session.Abandon();
                Response.Redirect("login.aspx");
            }
            else
            {
                if (!Page.IsPostBack)
                {
                    MantenimientoGeneral conexion = new MantenimientoGeneral();
                    conexion.Query = "select Nombre from Pagina where Estado = 1";
                    DataTable Resultado = new DataTable();
                    TextNombre.Focus();
                    Resultado = conexion.Buscar();
                    Data.DataSource = Resultado;
                    Data.DataBind();
                }
            }
        }

        protected void ButtonIngresar_Click(object sender, EventArgs e)
        {
            MantRoles mRoles = new MantRoles();
            MantPermisos mPermisos = new MantPermisos();
            List<string> camps = new List<string>();
            camps.Add(TextNombre.Text);
            mRoles.Insertar(camps);
            foreach (GridViewRow Row in Data.Rows)
            {
                if (((CheckBox)(Row.FindControl("Permiso"))).Checked)
                {
                    camps.Clear();
                    camps.Add(TextNombre.Text);
                    camps.Add(Row.Cells[0].Text);
                    mPermisos.Insertar(camps);
                }
            }
            Response.Write("<script language=javascript>alert('Operación realizada exitosamente.'); window.location = 'CrearRoles.aspx';</script>");
        }
    }
}
