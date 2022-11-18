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
    public partial class BuscarFamilia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"]==null||!((bool[])(Session["Accesos"]))[28])
            {
                Session.Abandon();
                Response.Redirect("login.aspx");
            }
            else
            {
                if (!Page.IsPostBack)
                {
                    txtBusquedaFamilia.Focus();

                }
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            MantFamilia mFamilia = new MantFamilia();
            List<string> Datos = new List<string>();
            DataTable Resultados = new DataTable();
            lblError.Visible = false;

            Datos.Add(txtBusquedaFamilia.Text);
            Resultados = mFamilia.Buscar(Datos);

            if (Resultados.Rows.Count>0)
            {
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