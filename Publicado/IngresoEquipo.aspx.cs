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
    public partial class IngresoEquipo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null || !((bool[])(Session["Accesos"]))[13])
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
                    TextCodigo.Focus();
                    conexion.Query = "SELECT Ubicacion.Id_Ubicacion + ' ' + Ubicacion.Nombre FROM UsuarioUbicacion INNER JOIN Ubicacion ON UsuarioUbicacion.Id_Ubicacion = Ubicacion.Id_Ubicacion where Id_Usuario = '" + Session["Usuario"] + "'";
                    Resultado = conexion.Buscar();

                    foreach (DataRow r in Resultado.Rows)
                    {
                        Ubicación.Items.Add(r[0].ToString());
                    }

                    conexion.Query = "Select descripcion from TipoEquipo";
                    Resultado = conexion.Buscar();

                    foreach (DataRow r in Resultado.Rows)
                    {
                        Tipo.Items.Add(r[0].ToString());
                    }
                }
            }
        }

        protected void ButtonIngresar_Click(object sender, EventArgs e)
        {
            DataTable Resultado = new DataTable();
            MantEquipo mEquipo = new MantEquipo();
            List<String> Valores = new List<string>();
            mEquipo.Query = "select * from equipo where Codigo = '"+TextCodigo.Text +"' and [No. de Serie] = '"+TextSerie.Text+"'";
            Resultado = mEquipo.Buscar();

            if (Resultado.Rows.Count < 1)
            {
                Valores.Add(TextCodigo.Text);
                Valores.Add(TextSerie.Text);
                Valores.Add(TextMarca.Text);
                Valores.Add(Ubicación.SelectedValue.Split(' ')[0]);
                Valores.Add(Tipo.SelectedValue);
                Valores.Add(TextDesc.Text);
                Valores.Add("1");
                Valores.Add("0");
                mEquipo.Insertar(Valores);
                Response.Write("<script language=javascript>alert('Operación realizada exitosamente.');window.location = 'IngresoEquipo.aspx';</script>");
            }
            else
            {
                mensaje.Text = "El codigo y No. de serie ingresados ya existen.";
            }
        }
    }
}
