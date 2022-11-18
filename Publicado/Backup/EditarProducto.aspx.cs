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
    public partial class EditarProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"]==null || !((bool[])(Session["Accesos"]))[10])
            {
                Session.Abandon();
                Response.Redirect("login.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    txtBuscarProducto.Focus();
                    MantenimientoGeneral conexion = new MantenimientoGeneral();
                    DataTable Resultado = new DataTable();
                    conexion.Query = "Select Nombre from Familia";
                    Resultado = conexion.Buscar();


                    foreach (DataRow item in Resultado.Rows)
                    {
                        ddlFamilia.Items.Add(item[0].ToString());
                    }

                    ddlCorrosivo.Items.Add("");
                    ddlExplosivo.Items.Add("");
                    ddlComburente.Items.Add("");
                    ddlInflamable.Items.Add("");
                    ddlIrritante.Items.Add("");
                    ddlNocivo.Items.Add("");
                    ddlToxicidad.Items.Add("");
                    ddlPAmbiente.Items.Add("");
                }
            }
        }
        protected void gvListadoEncontrado_RowCommand(object sender, GridViewCommandEventArgs e) {
            int i;
            i = Convert.ToInt32(e.CommandArgument);
            pnBusqueda.Visible = true;
            pnDatosEncontrados.Visible = false;
            pnIngreso.Visible = true;
            lblDescripcion.Text = HttpUtility.HtmlDecode(gvListadoEncontrado.Rows[i].Cells[0].Text);

            for (int indices = 0; indices < 6; indices++)
            {
                ddlExplosivo.Items.Add(indices.ToString());
                ddlComburente.Items.Add(indices.ToString());
                ddlInflamable.Items.Add(indices.ToString());
                ddlIrritante.Items.Add(indices.ToString());
                ddlNocivo.Items.Add(indices.ToString());
                ddlToxicidad.Items.Add(indices.ToString());
                ddlCorrosivo.Items.Add(indices.ToString());
                ddlPAmbiente.Items.Add(indices.ToString());
            }

            #region Rellenar ddl's con datos existentes

            DataTable Resultado2 = new DataTable();
            MantProducto conexion = new MantProducto();
            MantProducto conexion2 = new MantProducto();

            conexion.Query = "Select Nombre from Producto Where Codigo= '" + lblDescripcion.Text + "'";
            Resultado2 = conexion.Buscar();
            txtNombre.Text = Resultado2.Rows[0].ItemArray[0].ToString();

            conexion2.Query = "select Familia.Nombre from Familia INNER JOIN Producto ON Familia.Id_Familia=Producto.Id_Familia Where Codigo= '" + lblDescripcion.Text + "'";
            Resultado2 = conexion2.Buscar();
            ddlFamilia.SelectedValue = Resultado2.Rows[0].ItemArray[0].ToString();

            conexion2.Query = "select Clasificacion from Producto Where Codigo= '" + lblDescripcion.Text + "'";
            Resultado2 = conexion2.Buscar();
            ddlClasificacion.SelectedValue = Resultado2.Rows[0].ItemArray[0].ToString();

            conexion.Query = "select Controlado from Producto Where Codigo= '" + lblDescripcion.Text + "'";
            Resultado2 = conexion.Buscar();
            string valor1 = null;
            valor1 = Resultado2.Rows[0].ItemArray[0].ToString();
            if (valor1 == "True")
            {
                ddlControlado.SelectedValue = "SI";
            }
            else
            {
                ddlControlado.SelectedValue = "NO";
            }

            conexion2.Query = "select Explosivo from Producto Where Codigo= '" + lblDescripcion.Text + "'";
            Resultado2 = conexion2.Buscar();
            ddlExplosivo.SelectedValue = Resultado2.Rows[0].ItemArray[0].ToString();

            conexion2.Query = "select Comburente from Producto Where Codigo= '" + lblDescripcion.Text + "'";
            Resultado2 = conexion2.Buscar();
            ddlComburente.SelectedValue = Resultado2.Rows[0].ItemArray[0].ToString();

            conexion2.Query = "Select Inflamable from Producto Where Codigo= '" + lblDescripcion.Text + "'";
            Resultado2 = conexion2.Buscar();
            ddlInflamable.SelectedValue = Resultado2.Rows[0].ItemArray[0].ToString();

            conexion2.Query = "select Irritante from Producto Where Codigo= '" + lblDescripcion.Text + "'";
            Resultado2 = conexion2.Buscar();
            ddlIrritante.SelectedValue = Resultado2.Rows[0].ItemArray[0].ToString();

            conexion2.Query = "select Nocivo from Producto Where Codigo= '" + lblDescripcion.Text + "'";
            Resultado2 = conexion2.Buscar();
            ddlNocivo.SelectedValue = Resultado2.Rows[0].ItemArray[0].ToString();

            conexion2.Query = "Select Toxicidad from Producto Where Codigo= '" + lblDescripcion.Text + "'";
            Resultado2 = conexion2.Buscar();
            ddlToxicidad.SelectedValue = Resultado2.Rows[0].ItemArray[0].ToString();

            conexion2.Query = "Select Corrosivo from Producto Where Codigo= '" + lblDescripcion.Text + "'";
            Resultado2 = conexion2.Buscar();
            ddlCorrosivo.SelectedValue = Resultado2.Rows[0].ItemArray[0].ToString();

            conexion2.Query = "select PeligrosoParaAmbiente from Producto Where Codigo= '" + lblDescripcion.Text + "'";
            Resultado2 = conexion2.Buscar();
            ddlPAmbiente.SelectedValue = Resultado2.Rows[0].ItemArray[0].ToString();

            conexion.Query = "Select CAS from Producto Where Codigo = '" + lblDescripcion.Text + "'";
            Resultado2 = conexion.Buscar();
            txtCAS.Text = Resultado2.Rows[0].ItemArray[0].ToString();

            #endregion 

            
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            MantProducto Productos = new MantProducto();
            List<string> Datos = new List<string>();
            DataTable resultado = new DataTable();

            pnBusqueda.Visible = true;
            pnDatosEncontrados.Visible = true;
            pnIngreso.Visible = false;
            lblError.Visible = false;
            Datos.Add(txtBuscarProducto.Text);
            resultado = Productos.Buscar(Datos);

            if (resultado.Rows.Count>0)
            {
                gvListadoEncontrado.DataSource = resultado;
                gvListadoEncontrado.DataBind();
            }
            else
            {
                resultado = null;
                gvListadoEncontrado.DataSource = null;
                gvListadoEncontrado.DataBind();
                lblError.Visible = true;
                lblError.Text = "No se han encontrado datos.";
            }
        }

        protected void gvListadoEncontrado_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            MantProducto ActualizarP = new MantProducto();
            List<string> Datos = new List<string>();
            MantenimientoGeneral conexion = new MantenimientoGeneral();

            Datos.Add(lblDescripcion.Text);
            Datos.Add(txtNombre.Text.ToString());
            Datos.Add(ddlFamilia.SelectedValue);
            if (ddlFamilia.SelectedValue == "Librería")
            {
                Datos.Add(ddlClasificacion.SelectedValue);
                Datos.Add(ddlControlado.SelectedItem.Value = "0");
                Datos.Add(ddlExplosivo.SelectedValue = "");
                Datos.Add(ddlComburente.SelectedValue = "");
                Datos.Add(ddlInflamable.SelectedValue = "");
                Datos.Add(ddlIrritante.SelectedValue = "");
                Datos.Add(ddlNocivo.SelectedValue = "");
                Datos.Add(ddlToxicidad.SelectedValue = "");
                Datos.Add(ddlCorrosivo.SelectedValue = "");
                Datos.Add(ddlPAmbiente.SelectedValue = "");
                Datos.Add(txtCAS.Text = "");
                Response.Write("<script language=javascript>alert('Productos de Familia Librería NO necesitan campos desde Controlado hasta CAS. Operación realizada exitosamente.'); window.location = 'EditarProducto.aspx';</script>");
            }
            else
            {
                Datos.Add(ddlClasificacion.SelectedValue);
                Datos.Add(ddlControlado.SelectedIndex.ToString());
                Datos.Add(ddlExplosivo.SelectedValue);
                Datos.Add(ddlComburente.SelectedValue);
                Datos.Add(ddlInflamable.SelectedValue);
                Datos.Add(ddlIrritante.SelectedValue);
                Datos.Add(ddlNocivo.SelectedValue);
                Datos.Add(ddlToxicidad.SelectedValue);
                Datos.Add(ddlCorrosivo.SelectedValue);
                Datos.Add(ddlPAmbiente.SelectedValue);
                Datos.Add(txtCAS.Text);
            }

            ActualizarP.Actualizar(Datos);
            Response.Write("<script language=javascript>alert('Operación realizada exitosamente.'); window.location = 'EditarProducto.aspx';</script>");

        }
    }
}
