using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;
using System.Data;
using System.Drawing;

namespace Inventario
{
    public partial class AjustesProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null || !((bool[])(Session["Accesos"]))[12])
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
                        Ubicación.Items.Add(r[0].ToString());
                    }
                }
            }
        }

        protected void ButtonBuscar_Click(object sender, EventArgs e)
        {
            List<string> Datos = new List<string>();
            DataTable Resultado = new DataTable();
            PanelBusqueda.Visible = true;
            PanelDatos.Visible = false;
            LError.Visible = false;
            if (Tipo.SelectedIndex == 0)
            {
                EntradaProducto mProducto = new EntradaProducto();
                DataDevolucion.DataSource = null;
                DataDevolucion.DataBind();
                Datos.Add(TextBusqueda.Text);
                Datos.Add(Ubicación.SelectedValue.Split(' ')[0]);
                Resultado = mProducto.Buscar(Datos);
                if (Resultado.Rows.Count > 0)
                {
                    DataBaja.DataSource = Resultado;
                    DataBaja.DataBind();
                    for (int i = 0; i < Resultado.Rows.Count; i++)
                    {
                        DataBaja.Rows[i].Cells[4].Text = DataBaja.Rows[i].Cells[4].Text.Split(' ')[0];
                    }
                }
                else
                {
                    Resultado = null;
                    DataBaja.DataSource = null;
                    DataBaja.DataBind();
                    LError.Visible = true;
                    LError.Text = "No se han encotrado datos.";
                }
            }
            else
            {
                SalidaProducto mProducto = new SalidaProducto();
                DataBaja.DataSource = null;
                DataBaja.DataBind();
                Datos.Add(TextBusqueda.Text);
                Resultado = mProducto.Buscar(Datos);
                if (Resultado.Rows.Count > 0)
                {
                    DataDevolucion.DataSource = Resultado;
                    DataDevolucion.DataBind();
                    for (int i = 0; i < Resultado.Rows.Count; i++)
                    {
                        DataDevolucion.Rows[i].Cells[4].Text = DataDevolucion.Rows[i].Cells[4].Text.Split(' ')[0];
                    }
                }
                else
                {
                    Resultado = null;
                    DataDevolucion.DataSource = null;
                    DataDevolucion.DataBind();
                    LError.Text = "No se han encotrado datos.";
                }
            }
        }

        protected void Data_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int i;
            DataTable Actual = new DataTable();
            TextUnidades.Text = string.Empty;
            TextOb.Text = string.Empty;
            ErrorCant.Text = string.Empty;
            i = Convert.ToInt32(e.CommandArgument);
            Opciones.Enabled = true;
            LabelEntrada.Text = Tipo.SelectedIndex.ToString() + "," +DataBaja.Rows[i].Cells[0].Text;
            Actual.Columns.Add(DataBaja.Columns[1].HeaderText);
            Actual.Columns.Add(DataBaja.Columns[2].HeaderText);
            Actual.Columns.Add(DataBaja.Columns[3].HeaderText);
            Actual.Columns.Add(DataBaja.Columns[4].HeaderText);
            Actual.Columns.Add(DataBaja.Columns[5].HeaderText);
            Actual.Columns.Add("Total Disponible");
            Actual.Rows.Add(DataBaja.Rows[i].Cells[1].Text, Server.HtmlDecode(DataBaja.Rows[i].Cells[2].Text), Server.HtmlDecode(DataBaja.Rows[i].Cells[3].Text), DataBaja.Rows[i].Cells[4].Text, DataBaja.Rows[i].Cells[5].Text, (Convert.ToDouble(DataBaja.Rows[i].Cells[3].Text.Split(' ')[0]) * Convert.ToDouble(DataBaja.Rows[i].Cells[5].Text)).ToString() + " " + DataBaja.Rows[i].Cells[3].Text.Split(' ')[1]);
            Detalle.DataSource = Actual;
            Detalle.DataBind();
            PanelBusqueda.Visible = false;
            PanelDatos.Visible = true;
            Opcion.Text = "DAR DE BAJA PRODUCTO DEL INVENTARIO"; 
            TextUnidades.Focus();
        }

        protected void ButtonGuardar_Click(object sender, EventArgs e)
        {
            AjusteProducto Ajuste = new AjusteProducto();
            List<string> Valores = new List<string>();
            bool Continuar = false;
            string Cantidad = string.Empty;
            ErrorCant.Text = "";
            if (LabelEntrada.Text.Split(',')[0] == "0")
            {
                if ((Opciones.SelectedIndex == 0 && Convert.ToDouble(TextUnidades.Text) <= Convert.ToDouble(Detalle.Rows[4].Cells[1].Text)) || (Opciones.SelectedIndex == 1 && Convert.ToDouble(TextUnidades.Text) <= Convert.ToDouble(Detalle.Rows[5].Cells[1].Text.Split(' ')[0])))
                    Continuar = true;      
            }
            else if (LabelEntrada.Text.Split(',')[0] == "1")
            {
                if (Convert.ToDouble(TextUnidades.Text) <= Convert.ToDouble(Detalle.Rows[4].Cells[1].Text.Split(' ')[0]))
                    Continuar = true;
            }
            else
            {
                if (Convert.ToDouble(TextUnidades.Text) <= Convert.ToDouble(Detalle.Rows[5].Cells[1].Text.Split(' ')[0]))
                    Continuar = true;
            }

            if (Continuar)
            {
                Valores.Add(Detalle.Rows[0].Cells[1].Text);
                Valores.Add(LabelEntrada.Text.Split(',')[1]);
                Valores.Add(Session["Usuario"].ToString());
                Valores.Add(TextUnidades.Text);
                Valores.Add(Opciones.SelectedIndex.ToString());
                Valores.Add(LabelEntrada.Text.Split(',')[0]);
                Valores.Add(TextOb.Text);
                Ajuste.Insertar(Valores);
                PanelDatos.Visible = false;
                PanelBusqueda.Visible = true;
                DataBaja.DataSource = null;
                DataBaja.DataBind();
                DataDevolucion.DataSource = null;
                DataDevolucion.DataBind();
                TextBusqueda.Text = string.Empty;
                TextBusqueda.Focus();
                Response.Write("<script language=javascript>alert('Operación realizada exitosamente.'); window.location = 'AjustesProducto.aspx';</script>");
            }
            else
                ErrorCant.Text = "Catidad ingresada mayor a la disponible para esta operación.";

        }

        protected void DataDevolucion_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int i;
            DataTable Actual = new DataTable();
            TextUnidades.Text = string.Empty;
            TextOb.Text = string.Empty;
            ErrorCant.Text = string.Empty;
            i = Convert.ToInt32(e.CommandArgument);
            Opciones.SelectedIndex = 1;
            Opciones.Enabled = false;
            Actual.Columns.Add(DataDevolucion.Columns[1].HeaderText);
            Actual.Columns.Add(DataDevolucion.Columns[2].HeaderText);
            Actual.Columns.Add(DataDevolucion.Columns[3].HeaderText);
            Actual.Columns.Add(DataDevolucion.Columns[4].HeaderText);
            Actual.Columns.Add(DataDevolucion.Columns[5].HeaderText);
            
            if (e.CommandName == "Agregar")
            {
                LabelEntrada.Text = "2," + DataDevolucion.Rows[i].Cells[0].Text;
                Opcion.Text = "AGREGAR PRODUCTO A PRACTICA"; 
                Actual.Columns.Add("Disponible en Bodega");
                Actual.Rows.Add(DataDevolucion.Rows[i].Cells[1].Text,Server.HtmlDecode(DataDevolucion.Rows[i].Cells[2].Text), Server.HtmlDecode(DataDevolucion.Rows[i].Cells[3].Text), DataDevolucion.Rows[i].Cells[4].Text, DataDevolucion.Rows[i].Cells[5].Text, DataDevolucion.Rows[i].Cells[6].Text);
            }
            else
            {
                Opcion.Text = "RETIRAR PRODUCTO DE PRACTICA"; 
                LabelEntrada.Text = "1," + DataDevolucion.Rows[i].Cells[0].Text;
                Actual.Rows.Add(DataDevolucion.Rows[i].Cells[1].Text, Server.HtmlDecode(DataDevolucion.Rows[i].Cells[2].Text), Server.HtmlDecode(DataDevolucion.Rows[i].Cells[3].Text), DataDevolucion.Rows[i].Cells[4].Text, DataDevolucion.Rows[i].Cells[5].Text);
            }
            
            PanelBusqueda.Visible = false;
            PanelDatos.Visible = true;
            Detalle.DataSource = Actual;
            Detalle.DataBind();
            TextUnidades.Focus();
        }
    }
}
