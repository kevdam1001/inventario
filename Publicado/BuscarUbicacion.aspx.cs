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
    public partial class BuscarUbicacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"]==null||!((bool[])(Session["Accesos"]))[29])
            {
                Session.Abandon();
                Response.Redirect("login.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    txtBusquedaUbicacion.Focus();
                }
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            MantUbicacion mUbicacion = new MantUbicacion();
            List<string> Datos = new List<string>();
            DataTable Resultados = new DataTable();
            lblError.Visible = false;

            Datos.Add(txtBusquedaUbicacion.Text);
            Resultados = mUbicacion.Buscar(Datos);

            if (Resultados.Rows.Count>0)
            {
                gvListadoEncontrado.DataSource = Resultados;
                gvListadoEncontrado.DataBind();
            }
            else
            {
                gvListadoEncontrado.DataSource = null;
                gvListadoEncontrado.DataBind();
                lblError.Visible = true;
            }
        }
    }
}