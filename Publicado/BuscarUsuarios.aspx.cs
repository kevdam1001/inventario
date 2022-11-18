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
    public partial class BuscarUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null || !((bool[])(Session["Accesos"]))[2])
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
            MantUsuario mUsuario = new MantUsuario();
            List<string> Datos = new List<string>();
            DataTable Resultado = new DataTable();
            LError.Visible = false;
            Datos.Add(TextBusqueda.Text);
            Resultado =  mUsuario.Buscar(Datos);
            if (Resultado.Rows.Count > 0)
            {
                Resultado.Columns.RemoveAt(Resultado.Columns.Count - 1);
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
        }
    }
}
