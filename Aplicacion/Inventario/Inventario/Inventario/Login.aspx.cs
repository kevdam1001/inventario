using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;
using System.Data;
using System.Net.Mail;
using System.Security.Cryptography;

namespace Inventario
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextUsuario.Focus();
        }

        protected void ButtonAceptar_Click(object sender, EventArgs e)
        {
            string[] Opciones = new string[8];
            bool[] Existe = new bool[8];
            string menu = null;
            bool[] Accesos = new bool[35];
            DataTable Resultado = new DataTable();
            MantenimientoGeneral conexion = new MantenimientoGeneral();
            conexion.Query = "Select Contraseña,Id_Rol from Usuario where Estado = '1' and Usuario = '" + TextUsuario.Text + "'";
            Resultado = conexion.Buscar();
            if (Resultado.Rows.Count > 0)
            {
                if (Resultado.Rows[0].ItemArray[0].ToString() == TextPass.Text)
                {
                    Session.Add("Usuario", TextUsuario.Text);
                    Session.Add("Rol", Resultado.Rows[0].ItemArray[1].ToString());
                    conexion.Query = "select Pagina.Id_Pagina, Pagina.Menu from Pagina,RolPagina where RolPagina.Id_Rol='" + Session["Rol"] + "'and Pagina.Id_Pagina=RolPagina.Id_Pagina and Pagina.Estado = '1'";
                    Resultado = conexion.Buscar();
                    menu = "<li ><a href='Principal.aspx'>Inicio</a><ul></ul></li>"; 
                    foreach (DataRow r in Resultado.Rows)
                    {
                        Accesos[Convert.ToInt32(r[0])] = true;
                        if (r[1].ToString().Contains("Reportes"))
                        {
                            if (!Existe[6])
                            {
                                Opciones[6] = "<li ><a href='Reportes.aspx'>Reportes</a><ul>";
                                Existe[6] = true;
                            }
                        }
                        else if (r[1].ToString().Contains("Usuarios"))
                        {
                            if (!Existe[0])
                            {
                                Opciones[0] = "<li ><a href='#'>Usuarios</a><ul>";
                                Existe[0] = true;
                            }
                            Opciones[0] += r[1].ToString();
                        }
                        else if (r[1].ToString().Contains("Roles"))
                        {
                            if (!Existe[1])
                            {
                                Opciones[1] = "<li ><a href='#'>Rol</a><ul>";
                                Existe[1] = true;
                            }
                            Opciones[1] += r[1].ToString();
                        }
                        else if (r[1].ToString().Contains("Producto"))
                        {
                            if (!Existe[2])
                            {
                                Opciones[2] = "<li ><a href='#'>Producto</a><ul>";
                                Existe[2] = true;
                            }
                            Opciones[2] += r[1].ToString();
                        }
                        else if (r[1].ToString().Contains("Equipo"))
                        {
                            if (!Existe[3])
                            {
                                Opciones[3] = "<li ><a href='#'>Equipo</a><ul>";
                                Existe[3] = true;
                            }
                            Opciones[3] += r[1].ToString();
                        }
                        else if (r[1].ToString().Contains("Herramienta"))
                        {
                            if (!Existe[4])
                            {
                                Opciones[4] = "<li ><a href='#'>Herramienta</a><ul>";
                                Existe[4] = true;
                            }
                            Opciones[4] += r[1].ToString();
                        }
                        else if (r[1].ToString().Contains("Cristaleria"))
                        {
                            if (!Existe[5])
                            {
                                Opciones[5] = "<li ><a href='#'>Cristaleria</a><ul>";
                                Existe[5] = true;
                            }
                            Opciones[5] += r[1].ToString();
                        }
                        else
                        {
                            if (!Existe[7])
                            {
                                Opciones[7] = "<li ><a href='#'>Catálogos</a><ul>";
                                Existe[7] = true;
                            }
                            Opciones[7] += r[1].ToString();
                        }
                    }

                    for (int i = 0; i < Existe.Length; i++)
                    {
                        if (Existe[i])
                            menu += Opciones[i] + "</ul></li>";
                    }

                    Session.Add("Menu", menu);
                    Session.Add("Accesos", Accesos);
                    Session.Timeout = 20;
                    Response.Redirect("Principal.aspx");
                }
            }
            LabelError.Text = "Usuario y/o contraseña invalida.";
            TextUsuario.Text = "";
            TextPass.Text = "";
            TextUsuario.Focus();
            LabelError.Visible = true;
        }
    }
}
