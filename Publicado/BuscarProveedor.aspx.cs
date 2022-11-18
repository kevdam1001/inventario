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
    public partial class EditarProveedor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"]==null || !((bool[])(Session["Accesos"]))[27])
            {
                Session.Abandon();
                Response.Redirect("login.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    txtBusquedaNit.Focus();
                }
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            MantProveedor mProveedor = new MantProveedor();
            List<string> Datos = new List<string>();
            DataTable Resultados = new DataTable();
            lblError.Visible = false;

            Datos.Add(txtBusquedaNit.Text);
            Resultados = mProveedor.Buscar(Datos);

            if (Resultados.Rows.Count>0)
            {
                //Resultados.Columns.RemoveAt(Resultados.Columns.Count - 1);
                gvListadoEncontrado.DataSource = Resultados;
                gvListadoEncontrado.DataBind();
            }
            else
            {
                Resultados = null;
                gvListadoEncontrado.DataSource = null;
                gvListadoEncontrado.DataBind();
                lblError.Visible = true;
            }
        }
    }
}