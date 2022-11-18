using Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Inventario
{
    public partial class BuscarReactivo : System.Web.UI.Page
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
                    TextBusqueda.Focus();
                }
            }
        }

        protected void ButtonBuscar_Click(object sender, EventArgs e)
        {
            MantProducto Productos = new MantProducto();
            List<string> Datos = new List<string>();
            DataTable Resultado = new DataTable();
            LError.Visible = false;
            Datos.Add(TextBusqueda.Text);
            Resultado = Productos.Buscar2(Datos);
            if (Resultado.Rows.Count > 0)
            {
               // Resultado.Columns.RemoveAt(Resultado.Columns.Count - 1);
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
            /*
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
             
             
             
             */

        }
    }
}