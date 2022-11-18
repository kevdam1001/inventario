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
    public partial class PrestamoEquipo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null || !((bool[])(Session["Accesos"]))[15])
            {
                Session.Abandon();
                Response.Redirect("login.aspx");
            }
            else
            {
                if (!Page.IsPostBack)
                {
                    TextBusqueda.Focus();
                    MantenimientoGeneral conexion = new MantenimientoGeneral();
                    DataTable Resultado = new DataTable();

                    conexion.Query = "SELECT    Ubicacion.Id_Ubicacion + ' ' + Ubicacion.Nombre FROM UsuarioUbicacion INNER JOIN Ubicacion ON UsuarioUbicacion.Id_Ubicacion = Ubicacion.Id_Ubicacion where Id_Usuario = '" + Session["Usuario"] + "'";
                    Resultado = conexion.Buscar();

                    foreach (DataRow r in Resultado.Rows)
                    {
                        Ubicacion.Items.Add(r[0].ToString());
                    }

                    conexion.Query = "Select descripcion from TipoEquipo";
                    Resultado = conexion.Buscar();

                    foreach (DataRow r in Resultado.Rows)
                    {
                        Tipo.Items.Add(r[0].ToString());
                    }
                }
            }
        }

        protected void ButtonBuscar_Click(object sender, EventArgs e)
        {
            MantPrestamoEquipo mPrestamo = new MantPrestamoEquipo();
            DataTable Resultado = new DataTable();
            List<string> Datos = new List<string>();
            LError.Visible = false;
            PanelBusqueda.Visible = true;
            PanelCampos.Visible = false;
            Datos.Add(TextBusqueda.Text);
            Datos.Add(Tipo.SelectedValue);
            Datos.Add(Ubicacion.SelectedValue.Split(' ')[0]);
            Resultado = mPrestamo.Buscar(Datos);
            if (Resultado.Rows.Count > 0)
            {
                Data.DataSource = Resultado;
                Data.DataBind();
            }
            else
            {
                Resultado = null;
                Data.DataSource = null;
                Data.DataBind();
                LError.Visible = true;
            }
        }

        protected void Data_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int i;
            DataTable Actual = new DataTable();
            i = Convert.ToInt32(e.CommandArgument);
            Actual.Columns.Add(Data.Columns[0].HeaderText);
            Actual.Columns.Add(Data.Columns[1].HeaderText);
            Actual.Columns.Add(Data.Columns[2].HeaderText);
            Actual.Columns.Add(Data.Columns[3].HeaderText);
            Actual.Rows.Add(Data.Rows[i].Cells[0].Text, Data.Rows[i].Cells[1].Text, Data.Rows[i].Cells[2].Text, Server.HtmlDecode(Data.Rows[i].Cells[3].Text));
            Detalle.DataSource = Actual;
            Detalle.DataBind();
            PanelBusqueda.Visible = false;
            PanelCampos.Visible = true;
            TextNombre.Focus();
        }

        protected void ButtonIngresar_Click(object sender, EventArgs e)
        {
            MantPrestamoEquipo mPrestamo = new MantPrestamoEquipo();
            List<string> valores = new List<string>();
            valores.Add(Session["Usuario"].ToString());
            valores.Add(TextNombre.Text);
            valores.Add(TextCarnet.Text);
            valores.Add(TextOb.Text);
            valores.Add(Detalle.Rows[0].Cells[1].Text);
            valores.Add(Detalle.Rows[1].Cells[1].Text);
            mPrestamo.Insertar(valores);
            Response.Write("<script language=javascript>alert('Operación realizada exitosamente.'); window.location = 'PrestamoEquipo.aspx';</script>");


        }
    }
}
