using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Logica;

namespace Inventario
{
    public partial class BuscarPresentacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"]==null||!((bool[])(Session["Accesos"]))[30])
            {
                Session.Abandon();
                Response.Redirect("login.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    txtBuscarPresentacion.Focus();
                }
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            MantPresentacion mPresentacion = new MantPresentacion();
            List<string> Datos = new List<string>();
            DataTable Resultados = new DataTable();
            lblError.Visible = false;

            Datos.Add(txtBuscarPresentacion.Text);
            Resultados = mPresentacion.Buscar(Datos);

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