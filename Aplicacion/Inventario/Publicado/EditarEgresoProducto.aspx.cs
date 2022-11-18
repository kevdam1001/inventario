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
    public partial class EditarEgresoProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"]==null || !((bool[])(Session["Accesos"]))[11])
            {
                Session.Abandon();
                Response.Redirect("login.aspx");
            }
            else
            {
                if (!Page.IsPostBack)
                {
                    txtCodigo.Focus();
                    MantenimientoGeneral conexion = new MantenimientoGeneral();
                    DataTable Resultados = new DataTable();

                    conexion.Query = "Select Nombre from Sede";
                    Resultados = conexion.Buscar();
                    foreach (DataRow r in Resultados.Rows) {
                        ddlSede.Items.Add(r[0].ToString());
                    }
                    
                    conexion.Query = "Select Descripcion from Ciclo where Estado=1 order by Id_Ciclo desc";
                    Resultados = conexion.Buscar();

                    ddlCiclo.ClearSelection();

                    foreach (DataRow item in Resultados.Rows)
                    {
                        ddlCiclo.Items.Add(item[0].ToString());
                    }

                    ddlSede.SelectedIndex = 1;
                    ddlSede_SelectIndexChanged(ddlSede, new System.EventArgs());
                    ddlFacultad.SelectedIndex = 1;
                    ddlFacultad_SelectIndexChanged(ddlFacultad, new System.EventArgs());
                    txtFecha.Text = DateTime.Today.Year.ToString();
                }
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            SalidaProducto Busqueda = new SalidaProducto();
            List<string> Datos = new List<string>();
            DataTable Resultado = new DataTable();

            pnBusqueda.Visible = true;
            pnListadoEncontrado.Visible = true;
            pnEgresoProducto.Visible = false;
            lblError.Visible = false;
            Datos.Add(txtCodigo.Text);
            Resultado = Busqueda.BuscarESP(Datos);
            if (Resultado.Rows.Count>0)
            {
                gvDatosEncontrado.DataSource = Resultado;
                gvDatosEncontrado.DataBind();
                for (int i = 0; i < Resultado.Rows.Count; i++)
                {
                    gvDatosEncontrado.Rows[i].Cells[5].Text = gvDatosEncontrado.Rows[i].Cells[5].Text.Split(' ')[0];
                }
            }
            else
            {
                Resultado = null;
                gvDatosEncontrado.DataSource = null;
                gvDatosEncontrado.DataBind();
                lblError.Visible = true;
            }
            lblIndice.Focus();
        }

        protected void gbDatosEncontrados_RowCommand(object sender, GridViewCommandEventArgs e)
        {
           
            MantenimientoGeneral conexion = new MantenimientoGeneral();
            DataTable Resultados = new DataTable();
            DataTable Actual = new DataTable();
            int indice;
            indice = Convert.ToInt32(e.CommandArgument);
                        
            lblIndice.Text = gvDatosEncontrado.Rows[indice].Cells[0].Text;
            Actual.Columns.Add(gvDatosEncontrado.Columns[1].HeaderText);
            Actual.Columns.Add(gvDatosEncontrado.Columns[2].HeaderText);
            Actual.Rows.Add(gvDatosEncontrado.Rows[indice].Cells[1].Text,Server.HtmlDecode(gvDatosEncontrado.Rows[indice].Cells[2].Text));
            dvDetalleExistencia.DataSource = Actual;
            dvDetalleExistencia.DataBind();
            
            pnBusqueda.Visible = true;
            pnListadoEncontrado.Visible = false;
            pnEgresoProducto.Visible = true;
            txtCantidad.Focus();
            txtCantidad.Text = gvDatosEncontrado.Rows[indice].Cells[3].Text;
            ddlPractica.SelectedIndex.Equals(gvDatosEncontrado.Rows[indice].Cells[4].Text);
            //ddlPractica.Items.Add(gvDatosEncontrado.Rows[indice].Cells[3].Text);
            //ddlCurso.SelectedIndex = 0;
            ddlCurso.Items.Add(gvDatosEncontrado.Rows[indice].Cells[5].Text);
            txtFecha.Focus();
            txtFecha.Text = gvDatosEncontrado.Rows[indice].Cells[6].Text;

            //Rellenar otras casillas:
            conexion.Query = "Select Alumnos from SalidaProducto Where Id_Salida='" + Convert.ToInt32(lblIndice.Text) + "'";
            Resultados = conexion.Buscar();
            txtAlumnos.Text = Resultados.Rows[0].ItemArray[0].ToString();

            conexion.Query = "Select CodCatedratico from SalidaProducto Where Id_Salida='" + Convert.ToInt32(lblIndice.Text) + "'";
            Resultados = conexion.Buscar();
            txtCodUsuario.Text = Resultados.Rows[0].ItemArray[0].ToString();

            conexion.Query = "Select Observaciones from SalidaProducto Where Id_Salida='" + Convert.ToInt32(lblIndice.Text) + "'";
            Resultados = conexion.Buscar();
            txtObservaciones.Text = Resultados.Rows[0].ItemArray[0].ToString();
        }

        protected void ddlSede_SelectIndexChanged(object sender, EventArgs e)
        {
            MantenimientoGeneral conexion = new MantenimientoGeneral();
            DataTable resultado = new DataTable();
            conexion.Query = "exec BuscarFacultad'" + ddlSede.SelectedItem.Text + "'";
            resultado = conexion.Buscar();
            ddlCurso.Items.Clear();
            ddlCurso.Items.Add("-- Seleccione --");
            ddlPractica.Items.Clear();
            ddlPractica.Items.Add("-- Seleccione --");
            ddlCarrera.Items.Clear();
            ddlCarrera.Items.Add("-- Seleccione --");
            ddlFacultad.Items.Clear();
            ddlFacultad.Items.Add("-- Seleccione --");

            foreach (DataRow item in resultado.Rows)
            {
                ddlFacultad.Items.Add(item[0].ToString());
            }
        }

        protected void ddlFacultad_SelectIndexChanged(object sender, EventArgs e)
        {
            MantenimientoGeneral conexion = new MantenimientoGeneral();
            DataTable resultado = new DataTable();
            conexion.Query = "exec BuscarCarrera'" + ddlSede.SelectedItem.Text + "','" + ddlFacultad.SelectedItem.Text + "'";
            resultado = conexion.Buscar();
            ddlCarrera.Items.Clear();
            ddlCarrera.Items.Add("-- Seleccione --");
            ddlPractica.Items.Clear();
            ddlPractica.Items.Add("-- Seleccione --");
            ddlCurso.Items.Clear();
            ddlCurso.Items.Add("-- Seleccione --");

            foreach (DataRow item in resultado.Rows)
            {
                ddlCarrera.Items.Add(item[0].ToString());
            }
        }

        protected void ddlCarrera_SelectIndexChanged(object sender, EventArgs e)
        {
            MantenimientoGeneral conexion = new MantenimientoGeneral();
            DataTable resultado = new DataTable();
            conexion.Query = "exec BuscarCurso '" + ddlSede.SelectedItem.Text + "','" + ddlFacultad.SelectedItem.Text + "','" + ddlCarrera.SelectedItem.Text + "'";
            resultado = conexion.Buscar();
            ddlPractica.Items.Clear();
            ddlPractica.Items.Add("-- Seleccione --");
            ddlCurso.Items.Clear();
            ddlCurso.Items.Add("-- Seleccione --");

            foreach (DataRow item in resultado.Rows)
            {
                ddlCurso.Items.Add(item[0].ToString());
            }
        }

        protected void ddlCurso_SelectIndexChanged(object sender, EventArgs e)
        {
            MantenimientoGeneral conexion = new MantenimientoGeneral();
            DataTable resultado = new DataTable();
            conexion.Query = "exec BuscarPractica '" + ddlCurso.SelectedItem.Text + "'";
            resultado = conexion.Buscar();
            ddlPractica.Items.Clear();
            ddlPractica.Items.Add("-- Seleccione --");

            foreach (DataRow item in resultado.Rows)
            {
                ddlPractica.Items.Add(item[0].ToString());
            }
        }

        protected void gvDatosEncontrados_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void ddlPractica_SelectIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddlCiclo_SelectIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            //if (rblOpciones.SelectedIndex==0 && Convert.ToDouble(txtCantidad.Text)<= )
            //{
           
            SalidaProducto Actualizar = new SalidaProducto();
            List<string> Datos = new List<string>();
            Datos.Add(gvDatosEncontrado.Rows[0].Cells[1].Text);
            Datos.Add(lblIndice.Text);
            Datos.Add(ddlSede.Text);
            Datos.Add(ddlFacultad.Text);
            Datos.Add(ddlCurso.Text);
            Datos.Add(ddlCarrera.Text);
            Datos.Add(ddlPractica.Text);
            Datos.Add(txtAlumnos.Text);
            Datos.Add(txtCantidad.Text);
            Datos.Add(txtCodUsuario.Text);
            Datos.Add(ddlCiclo.Text);
            Datos.Add(Session["Usuario"].ToString());
            Datos.Add(txtFecha.Text);
            Datos.Add(txtObservaciones.Text);
            Actualizar.Actualizar(Datos);

            //Limpieza:
            foreach (Control item in pnEgresoProducto.Controls)
            {
                if (item is TextBox)
                {
                    ((TextBox)item).Text = string.Empty;
                }
            }
            txtCodigo.Text = string.Empty;
            pnListadoEncontrado.Visible = false;
            pnEgresoProducto.Visible = false;
            gvDatosEncontrado.DataSource = null;
            gvDatosEncontrado.DataBind();
            Response.Write("<script language=javascript>alert('Operación realizada exitosamente.');window.location='EditarEgresoProducto.aspx';</script>");

            //}
        }



    }
}
