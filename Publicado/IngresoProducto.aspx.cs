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
    public partial class IngresoProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null || !((bool[])(Session["Accesos"]))[9])
            {
                Session.Abandon();
                Response.Redirect("login.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    TextBusqueda.Focus();
                    MantenimientoGeneral conexion = new MantenimientoGeneral();
                    DataTable Resultado = new DataTable();
                    conexion.Query = "SELECT Ubicacion.Id_Ubicacion + ' ' + Ubicacion.Nombre FROM UsuarioUbicacion INNER JOIN Ubicacion ON UsuarioUbicacion.Id_Ubicacion = Ubicacion.Id_Ubicacion where Id_Usuario = '" + Session["Usuario"] + "'";
                    Resultado = conexion.Buscar();

                    foreach (DataRow r in Resultado.Rows)
                    {
                        Ubicacion.Items.Add(r[0].ToString());
                    }

                    conexion.Query = "select Id_Medida, Descripcion,Cantidad from Medida";
                    Resultado = conexion.Buscar();
                    foreach (DataRow r in Resultado.Rows)
                    {
                        Presentacion.Items.Add(r["Id_Medida"] + " - [" + r["Cantidad"] + " " + r["Descripcion"].ToString() + "]");
                    }

                    conexion.Query = "SELECT Nit + ' / ' + Nombre FROM Proveedor";
                    Resultado = conexion.Buscar();

                    foreach (DataRow r in Resultado.Rows)
                    {
                        Proveedor.Items.Add(r[0].ToString());
                    }
                }
            }
                        
        }

        protected void Data_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int i;
            i = Convert.ToInt32(e.CommandArgument);
            PanelBusqueda.Visible = false;
            PanelIngreso.Visible = true;
            LabelDesc.Text = Data.Rows[i].Cells[0].Text + "/" + Data.Rows[i].Cells[1].Text;
        }

        protected void ButtonBuscar_Click(object sender, EventArgs e)
        {
            MantProducto mProducto = new MantProducto();
            List<string> Datos = new List<string>();
            DataTable Resultado = new DataTable();
            PanelBusqueda.Visible = true;
            PanelIngreso.Visible = false;
            LError.Visible = false;
            Datos.Add(TextBusqueda.Text);
            Resultado = mProducto.Buscar(Datos);
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
                LError.Text = "No se han encotrado datos.";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            EntradaProducto EProducto = new EntradaProducto();
            List<string> Datos = new List<string>();
            Datos.Add(LabelDesc.Text.Split('/')[0]);
            Datos.Add(Ubicacion.SelectedValue.Split(' ')[0]);
            Datos.Add(TextOrden.Text);
            Datos.Add(TextFactura.Text);
            Datos.Add(Presentacion.SelectedValue.Split('-')[0].Trim());
            Datos.Add(TextUnidades.Text);
            Datos.Add(TextFecha.Text);
            Datos.Add(TextPrecio.Text);
            Datos.Add(Session["Usuario"].ToString());
            Datos.Add(TextFcompra.Text);
            Datos.Add(TextMarca.Text);
            Datos.Add(TextOb.Text);
            Datos.Add(Proveedor.SelectedValue.Split('/')[0].Trim());
            EProducto.Insertar(Datos);
            
            foreach (Control c in PanelIngreso.Controls)
            {
                if (c is TextBox)
                    ((TextBox)c).Text = string.Empty;
            }
            TextBusqueda.Text = string.Empty;
            TextBusqueda.Focus();
            PanelIngreso.Visible = false;
            PanelBusqueda.Visible = true;
            Data.DataSource = null;
            Data.DataBind();
            Response.Write("<script language=javascript>alert('Operación realizada exitosamente.'); window.location = 'IngresoProducto.aspx';</script>");
        }

        protected void Data_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
