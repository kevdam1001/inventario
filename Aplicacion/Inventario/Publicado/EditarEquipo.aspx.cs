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
    public partial class EditarEquipo : System.Web.UI.Page
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
                if (!Page.IsPostBack)
                {
                    MantEquipo conexion = new MantEquipo();
                    DataTable Resultado = new DataTable();
                    List<string> Datos = new List<string>();
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
                    conexion.Query = "exec BuscarEquipoMod " + Request.QueryString["co"] + ",'" + Request.QueryString["se"] + "'";
                    Resultado = conexion.Buscar();
                    Tipo.SelectedValue = Resultado.Rows[0][0].ToString();
                    TextCodigo.Text = Resultado.Rows[0][1].ToString();
                    TextSerie.Text = Resultado.Rows[0][2].ToString();
                    TextMarca.Text = Resultado.Rows[0][3].ToString();
                    Ubicación.SelectedValue = Resultado.Rows[0][4].ToString();
                    TextDesc.Text = Resultado.Rows[0][5].ToString();
                    CheckActivo.Checked = (bool)Resultado.Rows[0][6];
                }
            }
        }

        protected void ButtonIngresar_Click(object sender, EventArgs e)
        {
            DataTable Resultado = new DataTable();
            MantEquipo mEquipo = new MantEquipo();
            List<String> Valores = new List<string>();
       
                Valores.Add(TextCodigo.Text);
                Valores.Add(TextSerie.Text);
                Valores.Add(TextMarca.Text);
                Valores.Add(Ubicación.SelectedValue.Split(' ')[0]);
                Valores.Add(Tipo.SelectedValue);
                Valores.Add(TextDesc.Text);
                Valores.Add(CheckActivo.Checked.ToString());
                mEquipo.Actualizar(Valores);
                Response.Write("<script language=javascript>alert('Operación realizada exitosamente.');window.location = 'BuscarEquipo.aspx';</script>");
        }
    }
}