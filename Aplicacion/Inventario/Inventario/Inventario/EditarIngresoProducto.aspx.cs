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
    public partial class EditarIngresoProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null || !((bool[])(Session["Accesos"]))[9]) {
                Session.Abandon();
                Response.Redirect("login.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
 
                MantenimientoGeneral conexion = new MantenimientoGeneral();
                DataTable resultado = new DataTable();
               
                //conexion.Query = "SELECT Ubicacion.Id_Ubicacion + ' ' + Ubicacion.Nombre FROM UsuarioUbicacion INNER JOIN Ubicacion ON UsuarioUbicacion.Id_Ubicacion = Ubicacion.Id_Ubicacion where Id_Usuario = '" + Session["Usuario"] + "'";
                conexion.Query = "Select Id_Ubicacion from Ubicacion";
                resultado = conexion.Buscar();

                foreach (DataRow r in resultado.Rows)
                {
                    ddlBUbicacion.Items.Add(r[0].ToString());
                    ddlUbicacion.Items.Add(r[0].ToString());
                }

                //Otra Consulta:
                MantenimientoGeneral conexion2 = new MantenimientoGeneral();
                DataTable resultado2 = new DataTable();

                conexion2.Query = "select Id_Medida, Descripcion,Cantidad from Medida";
                resultado2 = conexion2.Buscar();
                foreach (DataRow r in resultado2.Rows)
                {
                    ddlPresentacion.Items.Add(r["Id_Medida"] + " - [" + r["Cantidad"] + " " + r["Descripcion"].ToString() + "]");
                }
                //Consulta Proveedor:
                MantenimientoGeneral conexion3 = new MantenimientoGeneral();
                DataTable resultado3 = new DataTable();

                conexion3.Query = "SELECT Nit + ' / ' + Nombre FROM Proveedor";
                resultado3 = conexion3.Buscar();

                foreach (DataRow r in resultado3.Rows)
                {
                    ddlProveedor.Items.Add(r[0].ToString());
                }
                }              
            }
        }

        protected void gvDatosEncontrados_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int i;
            i = Convert.ToInt32(e.CommandArgument);
            pnDatosEncontrados.Visible = false;
            pnEditarIngreso.Visible = true;
            lblDescripcion.Text = gvDatosEncontrados.Rows[i].Cells[0].Text + "/" + gvDatosEncontrados.Rows[i].Cells[1].Text;
            ddlUbicacion.SelectedItem.Value = Convert.ToString(gvDatosEncontrados.Rows[i].Cells[2].Text);
            txtOrden.Text = gvDatosEncontrados.Rows[i].Cells[3].Text;
            txtFcompra.Text = gvDatosEncontrados.Rows[i].Cells[4].Text;

            #region Consultas para rellenar Controles
            /*Consulta para mostrar en los DropDownList*/
            MantenimientoGeneral conexion = new MantenimientoGeneral();
            DataTable resultado = new DataTable();
            DataTable resultado2 = new DataTable();
            DataTable resultado3 = new DataTable();
           
            conexion.Query = "Select Id_Proveedor from EntradaProducto Where Id_Producto= '" + gvDatosEncontrados.Rows[i].Cells[0].Text + "' and OrdenDeCompra = '" + gvDatosEncontrados.Rows[i].Cells[3].Text + "'";
            resultado = conexion.Buscar();
            //ddlProveedor.SelectedValue.Contains(resultado.ToString());
            //ddlProveedor.
            //ddlProveedor.Text.Split('/')[0].Normalize() = resultado.ToString();

            conexion.Query = "Select NoFactura from EntradaProducto Where Id_Producto='" + gvDatosEncontrados.Rows[i].Cells[0].Text + "' and OrdenDeCompra = '" + gvDatosEncontrados.Rows[i].Cells[3].Text + "'";
            resultado2 = conexion.Buscar();
            txtFactura.Text = resultado2.Rows[0].ItemArray[0].ToString();

            conexion.Query = "Select Marca from EntradaProducto Where Id_Producto='" + gvDatosEncontrados.Rows[i].Cells[0].Text + "' and OrdenDeCompra = '" + gvDatosEncontrados.Rows[i].Cells[3].Text + "'";
            resultado3 = conexion.Buscar();
            txtMarca.Text = resultado3.Rows[0].ItemArray[0].ToString();

            conexion.Query = "Select Cantidad from EntradaProducto Where Id_Producto='" + gvDatosEncontrados.Rows[i].Cells[0].Text + "' and OrdenDeCompra = '" + gvDatosEncontrados.Rows[i].Cells[3].Text + "'";
            resultado = conexion.Buscar();
            txtUnidades.Text = resultado.Rows[0].ItemArray[0].ToString();

            conexion.Query = "Select PrecioUnitario from EntradaProducto Where Id_Producto='" + gvDatosEncontrados.Rows[i].Cells[0].Text + "' and OrdenDeCompra = '" + gvDatosEncontrados.Rows[i].Cells[3].Text + "'";
            resultado = conexion.Buscar();
            txtPrecio.Text = resultado.Rows[0].ItemArray[0].ToString();

            conexion.Query = "Select FechaVencimiento from EntradaProducto Where Id_Producto='" + gvDatosEncontrados.Rows[i].Cells[0].Text + "' and OrdenDeCompra = '" + gvDatosEncontrados.Rows[i].Cells[3].Text + "'";
            resultado = conexion.Buscar();
            txtFechaVencimiento.Text = resultado.Rows[0].ItemArray[0].ToString();

            conexion.Query = "Select Observaciones from EntradaProducto Where Id_Producto='" + gvDatosEncontrados.Rows[i].Cells[0].Text + "' and OrdenDeCompra = '" + gvDatosEncontrados.Rows[i].Cells[3].Text + "'";
            resultado = conexion.Buscar();
            TxtObservaciones.Text = resultado.Rows[0].ItemArray[0].ToString();
            #endregion 

        }

        protected void btnBusqueda_Click(object sender, EventArgs e)
        {
            EntradaProducto mProducto = new EntradaProducto();
            List<string> Datos = new List<string>();
            DataTable Resultado = new DataTable();
            pnDatosEncontrados.Visible = true;
            pnEditarIngreso.Visible = false;
            lblError.Visible = false;
            Datos.Add(txtCodigo.Text);
            Datos.Add(ddlBUbicacion.SelectedValue.Split(' ')[0]);
            Resultado = mProducto.BuscarEIP(Datos);
            if (Resultado.Rows.Count > 0)
            {
                gvDatosEncontrados.DataSource = Resultado;
                gvDatosEncontrados.DataBind();
            }
            else
            {
                Resultado = null;
                gvDatosEncontrados.DataSource = null;
                gvDatosEncontrados.DataBind();
                lblError.Visible = true;
                lblError.Text = "No se han encotrado datos.";
            }

                    }

        protected void gvDatosEncontrados_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void btnActualizarIngreso_Click(object sender, EventArgs e)
        {
            EntradaProducto ActualizarP = new EntradaProducto();
            List<string> Datos = new List<string>();
            MantProducto conexion = new MantProducto();

            Datos.Add(lblDescripcion.Text.Split('/')[0]);
            Datos.Add(ddlUbicacion.Text);
            Datos.Add(txtOrden.Text);
            Datos.Add(txtFactura.Text);
            Datos.Add((ddlPresentacion.Text.Split('-')[0]));
            Datos.Add(txtUnidades.Text);
            Datos.Add(txtFechaVencimiento.Text);
            Datos.Add(txtPrecio.Text);
            Datos.Add(txtFcompra.Text);
            Datos.Add(txtMarca.Text);
            Datos.Add(TxtObservaciones.Text);
            Datos.Add(ddlProveedor.Text.Split('/')[0]);          
    
            ActualizarP.Actualizar(Datos);

            foreach (Control item in pnEditarIngreso.Controls)
            {
                if (item is TextBox)
                {
                    ((TextBox)item).Text = string.Empty;
                }
            }

            txtCodigo.Text = string.Empty;
            pnDatosEncontrados.Visible = false;
            pnEditarIngreso.Visible = false;
            gvDatosEncontrados.DataSource = null;
            gvDatosEncontrados.DataBind();
            Response.Write("<script language=javascript>alert('Operación realizada exitosamente.'); window.location = 'EditarIngresoProducto.aspx';</script>");

        }

        protected void txtCodigo_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
