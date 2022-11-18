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
    public partial class IngresoHerramienta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null || !((bool[])(Session["Accesos"]))[16])
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
                    conexion.Query = "SELECT Ubicacion.Id_Ubicacion + ' ' + Ubicacion.Nombre FROM UsuarioUbicacion INNER JOIN Ubicacion ON UsuarioUbicacion.Id_Ubicacion = Ubicacion.Id_Ubicacion where Id_Usuario = '" + Session["Usuario"] + "'";
                    Resultado = conexion.Buscar();
                    TextDesc.Focus();

                    foreach (DataRow r in Resultado.Rows)
                    {
                        Ubicación.Items.Add(r[0].ToString());
                    }
                }
            }
        }

        protected void ButtonIngresar_Click(object sender, EventArgs e)
        {
            DataTable Resultado = new DataTable();
            MantHerramienta mHerramienta = new MantHerramienta();
            List<String> Valores = new List<string>();
            Valores.Add(TextDesc.Text);
            Valores.Add(Ubicación.SelectedValue.Split(' ')[0]);
            Valores.Add(TextCantidad.Text);
            Valores.Add(TextMarca.Text);
            mHerramienta.Insertar(Valores);
            Response.Write("<script language=javascript>alert('Operación realizada exitosamente.'); window.location = 'IngresoHerramienta.aspx';</script>");
        }
    }
}
