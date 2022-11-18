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
               
                conexion.Query = "Select Id_Ubicacion from Ubicacion";
                //conexion.Query = "SELECT    Ubicacion.Id_Ubicacion + ' ' + Ubicacion.Nombre FROM UsuarioUbicacion INNER JOIN Ubicacion ON UsuarioUbicacion.Id_Ubicacion = Ubicacion.Id_Ubicacion where Id_Usuario = '" + Session["Usuario"] + "'";

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
            MantenimientoGeneral spValidar = new MantenimientoGeneral();
            DataTable resultadoValidacion = new DataTable();       

            int i;
            i = Convert.ToInt32(e.CommandArgument);
            lblId.Text = gvDatosEncontrados.Rows[i].Cells[0].Text;
            spValidar.Query = "EXEC ValidarModificarIngreso '" + Convert.ToInt32(lblId.Text) + "'";
            resultadoValidacion = spValidar.Buscar();

            string ValidaModificacion = null;

            ValidaModificacion = resultadoValidacion.Rows[0].ItemArray[0].ToString();
            if (ValidaModificacion == "True")
            {
                pnDatosEncontrados.Visible = false;
                pnEditarIngreso.Visible = true;
                lblError.Visible = false;
                lblError.Text = "";
                //lblId.Text = gvDatosEncontrados.Rows[i].Cells[0].Text;
                lblDescripcion.Text = gvDatosEncontrados.Rows[i].Cells[1].Text + "/" + gvDatosEncontrados.Rows[i].Cells[2].Text;
                txtOrden.Text = gvDatosEncontrados.Rows[i].Cells[4].Text;
                txtFcompra.Text = gvDatosEncontrados.Rows[i].Cells[5].Text;

                #region Consultas para rellenar Controles
                /*Consulta para mostrar en los DropDownList*/
                MantenimientoGeneral conexion = new MantenimientoGeneral();
                DataTable resultado = new DataTable();
                DataTable resultado2 = new DataTable();
                DataTable resultado3 = new DataTable();

                conexion.Query = "SELECT Nit + ' / ' + Nombre FROM Proveedor INNER JOIN EntradaProducto ON EntradaProducto.Id_Proveedor = Proveedor.Nit Where EntradaProducto.Id_Entrada = '" + Convert.ToInt32(lblId.Text) + "'";
                resultado = conexion.Buscar();
                string valor = null;
                valor = resultado.Rows[0].ItemArray[0].ToString();
                ddlProveedor.SelectedValue = valor;

                conexion.Query = "Select Id_Ubicacion from EntradaProducto Where EntradaProducto.Id_Entrada = '" + Convert.ToInt32(lblId.Text) + "'";
                resultado = conexion.Buscar();
                ddlUbicacion.SelectedValue = resultado.Rows[0].ItemArray[0].ToString();

                conexion.Query = "Select NoFactura from EntradaProducto Where EntradaProducto.Id_Entrada = '" + Convert.ToInt32(lblId.Text) + "'";
                resultado2 = conexion.Buscar();
                txtFactura.Text = resultado2.Rows[0].ItemArray[0].ToString();

                conexion.Query = "Select Marca from EntradaProducto Where EntradaProducto.Id_Entrada = '" + Convert.ToInt32(lblId.Text) + "'";
                resultado3 = conexion.Buscar();
                txtMarca.Text = resultado3.Rows[0].ItemArray[0].ToString();

                conexion.Query = "Select Cantidad from EntradaProducto Where EntradaProducto.Id_Entrada = '" + Convert.ToInt32(lblId.Text) + "'";
                resultado = conexion.Buscar();
                txtUnidades.Text = resultado.Rows[0].ItemArray[0].ToString();

                //Variables utilizadas para Presentación:
                string CodMed, CantidadMed, DesMe, Concat = null;
                conexion.Query = "select Id_Medida from Medida INNER JOIN EntradaProducto ON EntradaProducto.Presentacion = Medida.Id_Medida Where EntradaProducto.Id_Entrada = '" + Convert.ToInt32(lblId.Text) + "'";
                resultado = conexion.Buscar();
                CodMed = resultado.Rows[0].ItemArray[0].ToString();

                conexion.Query = "select Medida.Cantidad from Medida INNER JOIN EntradaProducto ON EntradaProducto.Presentacion = Medida.Id_Medida Where EntradaProducto.Id_Entrada = '" + Convert.ToInt32(lblId.Text) + "'";
                resultado = conexion.Buscar();
                CantidadMed = resultado.Rows[0].ItemArray[0].ToString();

                conexion.Query = "select Descripcion from Medida INNER JOIN EntradaProducto ON EntradaProducto.Presentacion = Medida.Id_Medida Where EntradaProducto.Id_Entrada = '" + Convert.ToInt32(lblId.Text) + "'";
                resultado = conexion.Buscar();
                DesMe = resultado.Rows[0].ItemArray[0].ToString();

                Concat = CodMed + " - [" + CantidadMed + " " + DesMe + "]";

                ddlPresentacion.SelectedValue = Concat;

                conexion.Query = "Select PrecioUnitario from EntradaProducto Where EntradaProducto.Id_Entrada = '" + Convert.ToInt32(lblId.Text) + "'";
                resultado = conexion.Buscar();
                txtPrecio.Text = resultado.Rows[0].ItemArray[0].ToString();

                conexion.Query = "Select FechaVencimiento from EntradaProducto Where EntradaProducto.Id_Entrada = '" + Convert.ToInt32(lblId.Text) + "'";
                resultado = conexion.Buscar();
                txtFechaVencimiento.Text = resultado.Rows[0].ItemArray[0].ToString();

                conexion.Query = "Select Observaciones from EntradaProducto Where EntradaProducto.Id_Entrada = '" + Convert.ToInt32(lblId.Text) + "'";
                resultado = conexion.Buscar();
                TxtObservaciones.Text = resultado.Rows[0].ItemArray[0].ToString();
                #endregion
            }
            else
            {
                lblError.Visible = true;
                lblError.Text = "No se puede realizar solicitud. \n Ya existe producto egresado de Bodega.";
            }

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
            Datos.Add(lblId.Text);
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
