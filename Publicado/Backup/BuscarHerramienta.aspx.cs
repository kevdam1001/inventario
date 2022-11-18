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
    public partial class BuscarHerramienta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null || !((bool[])(Session["Accesos"]))[17])
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
            MantHerramienta mHerramienta = new MantHerramienta();
            List<string> Datos = new List<string>();
            DataTable Resultado = new DataTable();           
            Datos.Add(TextBusqueda.Text);
            Resultado =  mHerramienta.Buscar(Datos);
            if (Resultado.Rows.Count > 0)
            {
                Data.DataSource = Resultado;                 
                Data.DataBind(); 
            }
            else
            {
                Resultado = null;
                Data.DataSource = null;
                Data.DataBind();
            }
        }
    }
}
