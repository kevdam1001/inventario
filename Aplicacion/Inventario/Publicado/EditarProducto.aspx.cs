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
                    ddlControlado.Items.Add("");
                    ddlExplosivo.Items.Add("");
                    ddlComburente.Items.Add("");
                    ddlInflamable.Items.Add("");
                    ddlIrritante.Items.Add("");
                    ddlNocivo.Items.Add("");
                    ddlToxicidad.Items.Add("");
                    ddlPAmbiente.Items.Add("");

                    for (int i = 0; i < 6; i++)
                    {
                        ddlClasificacion.Items.Add(i.ToString());
                        ddlControlado.Items.Add(i.ToString());
                        ddlExplosivo.Items.Add(i.ToString());
                        ddlComburente.Items.Add(i.ToString());
                        ddlInflamable.Items.Add(i.ToString());
                        ddlIrritante.Items.Add(i.ToString());
                        ddlNocivo.Items.Add(i.ToString());
                        ddlToxicidad.Items.Add(i.ToString());
                        ddlCorrosivo.Items.Add(i.ToString());
                        ddlPAmbiente.Items.Add(i.ToString());
                    }
                }
            }
        }
        protected void gvListadoEncontrado_RowCommand(object sender, GridViewCommandEventArgs e) {
            int i;
            i = Convert.ToInt32(e.CommandArgument);
            pnBusqueda.Visible = true;
            pnDatosEncontrados.Visible = false;
            pnIngreso.Visible = true;
            lblDescripcion.Text = gvListadoEncontrado.Rows[i].Cells[0].Text;
            txtNombre.Text = gvListadoEncontrado.Rows[i].Cells[1].Text;

            #region Rellenar ddl's con datos existentes
                       
            DataTable Resultado2 = new DataTable();
            MantProducto conexion2 = new MantProducto();
            //int i = 0;
            
            conexion2.Query = "select Familia.Nombre from Familia INNER JOIN Producto ON Familia.Id_Familia=Producto.Id_Familia Where Codigo= '" + lblDescripcion.Text + "'";
            Resultado2 = conexion2.Buscar();

            foreach (DataRow item in Resultado2.Rows)
            {
                ddlFamilia.SelectedItem.Equals(item.Equals(Resultado2));
            }

            //ddlFamilia.Text = Resultado2.ToString();

            

            
            //ddlFamilia.Text = ddlFamilia.SelectedItem.Equals(Resultado).ToString();
            //.Add(Resultado.ToString());

            //conexion.Query = "select 

            //foreach (DataRow item in Resultado.Rows)
            //{
                //ddlFamilia.SelectedIndex.
            //}

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
            
            //conexion.Query="select Familia.Id_Familia from Familia Where Nombre='"+ ddlFamilia.Text+"'";
            //Resultado = conexion.Buscar();


            Datos.Add(lblDescripcion.Text);
            Datos.Add(txtNombre.Text);
            Datos.Add(ddlFamilia.Text);
            Datos.Add(ddlClasificacion.Text);
            Datos.Add(ddlControlado.Text);
            Datos.Add(ddlExplosivo.Text);
            Datos.Add(ddlComburente.Text);
            Datos.Add(ddlInflamable.Text);
            Datos.Add(ddlIrritante.Text);
            Datos.Add(ddlNocivo.Text);
            Datos.Add(ddlToxicidad.Text);
            Datos.Add(ddlCorrosivo.Text);
            Datos.Add(ddlPAmbiente.Text);
            Datos.Add(txtCAS.Text);
            ActualizarP.Actualizar(Datos);
            Response.Write("<script language=javascript>alert('Operación realizada exitosamente.'); window.location = 'EditarProducto.aspx';</script>");

        }
    }
}
