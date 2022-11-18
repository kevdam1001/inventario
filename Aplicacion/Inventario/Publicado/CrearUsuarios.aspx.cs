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
    public partial class CrearUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null || !((bool[])(Session["Accesos"]))[1])
            {
                Session.Abandon();
                Response.Redirect("login.aspx");
            }
            else
            {
                if (!Page.IsPostBack)
                {
                    MantenimientoGeneral conexion = new MantenimientoGeneral();
                    conexion.Query = "select Descripcion from Rol order by Id_Rol";
                    DataTable Resultado = new DataTable();
                    Resultado = conexion.Buscar();
                    TextNombre.Focus();
                    foreach (DataRow r in Resultado.Rows)
                    {
                        ListRol.Items.Add(r["Descripcion"].ToString());
                    }
                    conexion.Query = "Select Id_Ubicacion,Nombre from Ubicacion";
                    Resultado = conexion.Buscar();
                    foreach (DataRow r in Resultado.Rows)
                    {
                        Ubicaciones.Items.Add(r["Id_Ubicacion"] + " " + r["Nombre"].ToString());
                    }
                    
                }
            }
        }

        protected void ButtonIngresar_Click(object sender, EventArgs e)
        {
            DataTable Resultado = new DataTable();
            MantUsuario mUsuario = new MantUsuario();
            List<String> Valores = new List<string>();
            List<String> Valores1 = new List<string>();

            mUsuario.Query = "Select * from Usuario where Usuario = '" + TextUsuario.Text+"'";
            Resultado = mUsuario.Buscar();
            for (int i = 0; i < Ubicaciones.Items.Count; i++)
            {
                if (Ubicaciones.Items[i].Selected)
                    Valores1.Add(Ubicaciones.Items[i].Text);
            }
                if (Resultado.Rows.Count < 1 && Valores1.Count > 0)
                {
                    Valores.Clear();
                    Valores.Add(TextUsuario.Text);
                    Valores.Add(TextNombre.Text);
                    Valores.Add(TextApellido.Text);
                    Valores.Add(TextCorreo.Text);
                    Valores.Add(TextPass.Text);
                    Valores.Add("1");
                    Valores.Add(ListRol.SelectedValue.ToString());
                    mUsuario.Insertar(Valores);
                    
                    string[] IdUbicacion;
                    for (int i = 0; i < Valores1.Count; i++)
                    {
                        IdUbicacion = Valores1[i].Split(' ');
                        mUsuario.Query = "Insert into UsuarioUbicacion values ('" + TextUsuario.Text + "','" + IdUbicacion[0] + "')";
                        mUsuario.Buscar();
                    }

                    foreach (Control c in PanelCampos.Controls)
                    {
                        if (c is TextBox)
                            ((TextBox)c).Text = string.Empty;
                    }

                    Response.Write("<script language=javascript>alert('Operación realizada exitosamente.'); window.location = 'CrearUsuarios.aspx';</script>");
                }
                else
                {
                    if(Valores.Count == 0 && Resultado.Rows.Count == 1)
                    Usr.Text = "El usuario ingresado ya exsite y debes elegir al menos una ubicación";
                    else
                        if(Valores.Count == 0)
                            Usr.Text = "Debes elegir al menos una ubicación";
                        else
                            Usr.Text = "El usuario ingresado ya existe";
                }
        }
    }
}
