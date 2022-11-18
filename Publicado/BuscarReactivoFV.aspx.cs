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
    public partial class BuscarReactivoFV : System.Web.UI.Page
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
                    string Dia = DateTime.DaysInMonth(DateTime.Today.Year, DateTime.Today.Month).ToString();
                    string Mes = "";

                    if (int.Parse(Dia) < 10)
                        Dia = "0" + Dia;


                    if (DateTime.Today.Month < 10)
                        Mes = "0" + DateTime.Today.Month.ToString();
                    else
                        Mes = DateTime.Today.Month.ToString();

                    TextBusqueda.Text = "01/" + Mes + "/" + DateTime.Today.Year.ToString();
                    TextBusqueda2.Text = Dia + "/" + Mes + "/" + DateTime.Today.Year.ToString();
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
            Datos.Add(TextBusqueda2.Text);
            Resultado = Productos.Buscar3(Datos);
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
        }
    }
}