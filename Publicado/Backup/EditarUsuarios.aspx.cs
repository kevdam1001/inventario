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
    public partial class EditarUsuarios : System.Web.UI.Page
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
                if (!Page.IsPostBack)
                {
                    int i = 0;
                    string User = Request.QueryString["usr"];
                    MantenimientoGeneral conexion = new MantenimientoGeneral();
                    DataTable Resultado = new DataTable();
                    MantUsuario mUsuario = new MantUsuario();
                    TextUsuario.Focus();
                    mUsuario.Query = "Select * from Usuario where Usuario = '" + User + "'";
                    Resultado = mUsuario.Buscar();

                    if (!string.IsNullOrEmpty(User) && Resultado.Rows.Count > 0)
                    {
                        foreach (Control c in PanelCampos.Controls)
                        {
                            if (c is TextBox)
                            {
                                ((TextBox)c).Text = Resultado.Rows[0].ItemArray[i].ToString();
                                i++;
                            }
                        }

                        ListRol.SelectedValue = Resultado.Rows[0].ItemArray[4].ToString();
                        CheckBoxActivo.Checked = (bool)Resultado.Rows[0].ItemArray[5];

                        conexion.Query = "Select Id_Ubicacion,Nombre from Ubicacion";
                        Resultado = conexion.Buscar();
                        foreach (DataRow r in Resultado.Rows)
                        {
                            Ubicaciones.Items.Add(r["Id_Ubicacion"] + " " + r["Nombre"].ToString());
                        }

                        conexion.Query = "SELECT    Ubicacion.Id_Ubicacion + ' ' + Ubicacion.Nombre FROM UsuarioUbicacion INNER JOIN Ubicacion ON UsuarioUbicacion.Id_Ubicacion = Ubicacion.Id_Ubicacion where Id_Usuario = '" + User + "'";
                        Resultado = conexion.Buscar();

                        foreach (DataRow r in Resultado.Rows)
                        {
                            foreach (ListItem item in Ubicaciones.Items)
                                if (item.Text.CompareTo(r[0].ToString()) == 0)
                                    item.Selected = true;

                        }

                        conexion.Query = "select Descripcion from Rol order by Id_Rol";
                        Resultado = conexion.Buscar();
                        foreach (DataRow r in Resultado.Rows)
                        {
                            ListRol.Items.Add(r["Descripcion"].ToString());
                        }
                    }
                    else
                    {
                        Response.Redirect("Principal.aspx");
                    }
                }
            }
        }

        protected void ButtonContinuar_Click(object sender, EventArgs e)
        {
            MantUsuario mUsuario = new MantUsuario();
            List<String> Valores = new List<string>();
            Valores.Add(TextUsuario.Text);
            Valores.Add(TextNombre.Text);
            Valores.Add(TextApellido.Text);
            Valores.Add(TextCorreo.Text);
            Valores.Add(ListRol.SelectedValue.ToString());
            Valores.Add(CheckBoxActivo.Checked.ToString());
            mUsuario.Actualizar(Valores);
            Valores.Clear();

            mUsuario.Query = "Delete from UsuarioUbicacion where Id_Usuario ='"+TextUsuario.Text+"'";
            mUsuario.Buscar();

            for (int i = 0; i < Ubicaciones.Items.Count; i++)
            {
                if (Ubicaciones.Items[i].Selected)
                    Valores.Add(Ubicaciones.Items[i].Text);
            }
            
            if (Valores.Count > 0)
            {
                string[] IdUbicacion;
                for (int i = 0; i < Valores.Count; i++)
                {
                    IdUbicacion = Valores[i].Split(' ');
                    mUsuario.Query = "Insert into UsuarioUbicacion values ('" + TextUsuario.Text + "','" + IdUbicacion[0] + "')";
                    mUsuario.Buscar();
                }
            }
            Response.Write("<script language=javascript>alert('Operación realizada exitosamente.'); window.location = 'BuscarUsuarios.aspx';</script>");
        }
    }
}
