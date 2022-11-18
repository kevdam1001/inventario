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
    public partial class BuscarRoles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null || !((bool[])(Session["Accesos"]))[4])
            {
                Session.Abandon();
                Response.Redirect("login.aspx");
            }
            else
            {
                if (!Page.IsPostBack)
                {
                    MantenimientoGeneral conexion = new MantenimientoGeneral();
                    conexion.Query = "select Descripcion from Rol where Estado = 1 order by Id_Rol";
                    DataTable Resultado = new DataTable();
                    Resultado = conexion.Buscar();
                    foreach (DataRow r in Resultado.Rows)
                    {
                        ListRoles.Items.Add(r["Descripcion"].ToString());
                    }
                }
            }
        }

        protected void ButtonIngresar_Click(object sender, EventArgs e)
        {
            int i = 0;
            MantPermisos mPermisos = new MantPermisos();
            List<string> camps = new List<string>();
            DataTable Resultado = new DataTable();
            camps.Add(ListRoles.SelectedValue);
            Resultado = mPermisos.Buscar(camps);
            Data.DataSource = Resultado;
            Data.DataBind();
            foreach (GridViewRow Row in Data.Rows)
            {
                if(string.IsNullOrEmpty(Resultado.Rows[i][1].ToString()))
                    ((CheckBox)(Row.FindControl("Permiso"))).Checked = false;
                else
                    ((CheckBox)(Row.FindControl("Permiso"))).Checked = true;
                i++;
            }
            LabelRol.Text = ListRoles.SelectedValue;
            PanelBusqueda.Visible = false;
            PanelResultado.Visible = true;
        }

        protected void ButtonRegresar_Click(object sender, EventArgs e)
        {
            PanelResultado.Visible = false;
            PanelBusqueda.Visible = true;
        }   

        protected void ButtonGuardar_Click(object sender, EventArgs e)
        {
            MantPermisos mPermisos = new MantPermisos();
            List<string> camps = new List<string>();
            DataTable Resultado = new DataTable();
            mPermisos.Query = "delete RolPagina where Id_Rol = (select Id_Rol from Rol where Descripcion = '" + LabelRol.Text+"')";
            Resultado = mPermisos.Buscar();
            foreach (GridViewRow Row in Data.Rows)
            {
                if (((CheckBox)(Row.FindControl("Permiso"))).Checked)
                {
                    camps.Clear();
                    camps.Add(LabelRol.Text);
                    camps.Add(Row.Cells[0].Text);
                    mPermisos.Actualizar(camps);
                }
            }
           

            PanelResultado.Visible = false;
            PanelBusqueda.Visible = true;
            Response.Write("<script language=javascript>alert('Operación realizada exitosamente.');window.location = 'BuscarRoles.aspx';</script>");
        }
    }
}
