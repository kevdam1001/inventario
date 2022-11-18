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
    public partial class ModificarProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null || !((bool[])(Session["Accesos"]))[10])
            {
                Session.Abandon();
                Response.Redirect("login.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    txtCodProducto.Focus();
                    MantenimientoGeneral conexion = new MantenimientoGeneral();
                    DataTable Resultado = new DataTable();
                    //conexion.Query = "SELECT Ubicacion.Id_Ubicacion + ' ' + Ubicacion.Nombre FROM UsuarioUbicacion INNER JOIN Ubicacion ON UsuarioUbicacion.Id_Ubicacion = Ubicacion.Id_Ubicacion where Id_Usuario = '" + Session["Usuario"] + "'";
                    conexion.Query = "Select Nombre from Familia";
                    Resultado = conexion.Buscar();
                    foreach (DataRow r in Resultado.Rows)
                    {
                        //Ubicacion.Items.Add(r[0].ToString());
                        ddlFamilia.Items.Add(r[0].ToString());
                    }

                    ddlCorrosivo.Items.Add("");
                    ddlControlado.Items.Add("");
                    ddlExplosivo.Items.Add("");
                    ddlComburente.Items.Add("");
                    ddlinflamable.Items.Add("");
                    ddlIrritante.Items.Add("");
                    ddlNocivo.Items.Add("");
                    ddlToxicidad.Items.Add("");
                    ddlPeligrosoA.Items.Add("");

                    for (int i = 0; i < 6; i++)
                    {
                        ddlClasificacion.Items.Add(i.ToString());
                        ddlControlado.Items.Add(i.ToString());
                        ddlExplosivo.Items.Add(i.ToString());
                        ddlComburente.Items.Add(i.ToString());
                        ddlinflamable.Items.Add(i.ToString());
                        ddlIrritante.Items.Add(i.ToString());
                        ddlNocivo.Items.Add(i.ToString());
                        ddlToxicidad.Items.Add(i.ToString());
                        ddlCorrosivo.Items.Add(i.ToString());
                        ddlPeligrosoA.Items.Add(i.ToString());
                    }
                }
            }
        }

        //protected void Data_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    int i;
        //    i = Convert.ToInt32(e.CommandArgument);
        //    pnDatos.Visible = false;
        //    pnModificarProducto.Visible = true;
        //    lblDescripcion.Text = grDatosEncontrados.Rows[i].Cells[0].Text + "/" + grDatosEncontrados.Rows[i].Cells[1].Text;
        //    //LabelDesc.Text = Data.Rows[i].Cells[0].Text + "/" + Data.Rows[i].Cells[1].Text;
        //}


        protected void btnBuscarP_Click(object sender, EventArgs e)
        {
            MantProducto Producto = new MantProducto();
            List<string> Datos = new List<string>();
            DataTable Resultado = new DataTable();
            pnDatos.Visible = true;
            pnModificarProducto.Visible = true;
            lblMensaje.Visible = false;
            Datos.Add(txtCodProducto.Text);
            Resultado = Producto.Buscar(Datos);
            
            if (Resultado.Rows.Count>0)
            {
                grDatosEncontrados.DataSource = Resultado;
                grDatosEncontrados.DataBind();
            }
            else
            {
                Resultado = null;
                grDatosEncontrados.DataSource = null;
                grDatosEncontrados.DataBind();
                lblMensaje.Visible = true;
                lblMensaje.Text = "No se encontraron datos";
            }
        }

      

        protected void rowCommandDatos(object sender, GridViewCommandEventArgs e)
        {
            MantProducto Producto = new MantProducto();
            DataTable Resultado = new DataTable();

            if (e.CommandName=="Agregar")
            {
            int i;
            bool verdadero = true;

            i = Convert.ToInt32(e.CommandArgument);
            pnDatos.Visible = false;
            pnModificarProducto.Visible = verdadero;
            divModificar.Visible = verdadero;
            lblDescripcion.Text = grDatosEncontrados.Rows[i].Cells[0].Text;
            txtNombreProducto.Text = Convert.ToString((grDatosEncontrados.Rows[i].Cells[1].Text));

            }
        }
        
        protected void bntActualizar_Click(object sender, EventArgs e)
        {              
            MantProducto ActualizarProducto = new MantProducto();
            List<string> Datos = new List<string>();
            Datos.Add(lblDescripcion.Text);
            Datos.Add(txtNombreProducto.Text);
            Datos.Add(ddlFamilia.Text);
            Datos.Add(ddlClasificacion.Text);
            Datos.Add(ddlControlado.Text);
            Datos.Add(ddlExplosivo.Text);
            Datos.Add(ddlComburente.Text);
            Datos.Add(ddlinflamable.Text);
            Datos.Add(ddlIrritante.Text);
            Datos.Add(ddlNocivo.Text);
            Datos.Add(ddlToxicidad.Text);
            Datos.Add(ddlCorrosivo.Text);
            Datos.Add(ddlPeligrosoA.Text);
            Datos.Add(txtCAS.Text);
            ActualizarProducto.Actualizar(Datos);

            foreach (Control c in pnModificarProducto.Controls)
            {
                if (c is TextBox)
                {
                    ((TextBox)c).Text = string.Empty;
                }
            }
            txtCodProducto.Text = string.Empty;
            txtNombreProducto.Text = string.Empty;
            pnDatos.Visible = true;
            pnModificarProducto.Visible = false;
            grDatosEncontrados.DataSource = null;
            grDatosEncontrados.DataBind();
           Response.Write("<script language=javascript>alert('Operación realizada exitosamente.'); window.location = 'IngresoProducto.aspx';</script>");
        }
    }
}
