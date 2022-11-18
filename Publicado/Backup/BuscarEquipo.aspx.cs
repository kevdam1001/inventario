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
    public partial class BuscarEquipo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null || !((bool[])(Session["Accesos"]))[14])
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
            MantEquipo mEquipo = new MantEquipo();
            List<string> Datos = new List<string>();
            DataTable Resultado = new DataTable();
            LError.Visible = false;
            Datos.Add(TextBusqueda.Text);
            Datos.Add(TextSerie.Text);
            Resultado = mEquipo.Buscar(Datos);
            if (Resultado.Rows.Count > 0)
            {
                Data.DataSource = Resultado;
                Data.DataBind();
                for (int i = 0; i < Resultado.Rows.Count; i++)
                {
                    if (Data.Rows[i].Cells[5].Text.CompareTo("True") == 0)
                    {
                        Data.Rows[i].Cells[5].Text = "Si";
                    }
                    else
                    {
                        Data.Rows[i].Cells[5].Text = "No";
                    }
                }
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
