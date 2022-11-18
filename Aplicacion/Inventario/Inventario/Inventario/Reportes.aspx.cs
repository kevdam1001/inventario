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
    public partial class Reportes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null || !((bool[])(Session["Accesos"]))[21])
            {
                Session.Abandon();
                Response.Redirect("login.aspx");
            }
            else
            {
                if (!Page.IsPostBack)
                {
                    MantenimientoGeneral conexion = new MantenimientoGeneral();
                    DataTable Resultado = new DataTable();
                    conexion.Query = "SELECT    Ubicacion.Id_Ubicacion + ' ' + Ubicacion.Nombre FROM UsuarioUbicacion INNER JOIN Ubicacion ON UsuarioUbicacion.Id_Ubicacion = Ubicacion.Id_Ubicacion where Id_Usuario = '" + Session["Usuario"] + "'";
                    Resultado = conexion.Buscar();

                    foreach (DataRow r in Resultado.Rows)
                    {
                        Ubicación.Items.Add(r[0].ToString());
                    }
                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string str = Ubicación.SelectedValue;
            str = str.Split(' ')[0];
            string encode = Convert.ToBase64String(System.Text.ASCIIEncoding.ASCII.GetBytes(str));
            Response.Redirect("rpProductosSinExistencia.aspx?str=" + encode);
        }

        protected void LinkButton_Click(object sender, EventArgs e)
        {
            string str = Ubicación.SelectedValue;
            str = str.Split(' ')[0];
            string encode = Convert.ToBase64String(System.Text.ASCIIEncoding.ASCII.GetBytes(str));
            Response.Redirect("rpProductosControlados.aspx?str=" + encode);
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            string str = Ubicación.SelectedValue;
            str = str.Split(' ')[0];
            string encode = Convert.ToBase64String(System.Text.ASCIIEncoding.ASCII.GetBytes(str));
            Response.Redirect("rpCostoPracticas.aspx?str=" + encode);
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            string str = Ubicación.SelectedValue;
            str = str.Split(' ')[0];
            string encode = Convert.ToBase64String(System.Text.ASCIIEncoding.ASCII.GetBytes(str));
            Response.Redirect("rpPracticasProductosControlados.aspx?str=" + encode);
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            string str = Ubicación.SelectedValue;
            str = str.Split(' ')[0];
            string encode = Convert.ToBase64String(System.Text.ASCIIEncoding.ASCII.GetBytes(str));
            Response.Redirect("rpInventarioEquipo.aspx?str=" + encode);
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            string str = Ubicación.SelectedValue;
            str = str.Split(' ')[0];
            string encode = Convert.ToBase64String(System.Text.ASCIIEncoding.ASCII.GetBytes(str));
            Response.Redirect("rpProductosDisponibles.aspx?str=" + encode);
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            string str = Ubicación.SelectedValue;
            str = str.Split(' ')[0];
            string encode = Convert.ToBase64String(System.Text.ASCIIEncoding.ASCII.GetBytes(str));
            Response.Redirect("rpSalidaProducto.aspx?str=" + encode);
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            string str = Ubicación.SelectedValue;
            str = str.Split(' ')[0];
            string encode = Convert.ToBase64String(System.Text.ASCIIEncoding.ASCII.GetBytes(str));
            Response.Redirect("rpBajasProducto.aspx?str=" + encode);
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            string str = Ubicación.SelectedValue;
            str = str.Split(' ')[0];
            string encode = Convert.ToBase64String(System.Text.ASCIIEncoding.ASCII.GetBytes(str));
            Response.Redirect("rpIngresoProducto.aspx?str=" + encode);
        }
    }
}
