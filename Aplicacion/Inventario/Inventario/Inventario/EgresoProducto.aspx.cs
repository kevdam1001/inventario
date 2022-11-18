using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;
using System.Data;
using System.Drawing;

namespace Inventario
{
    public partial class EgresoProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null || !((bool[])(Session["Accesos"]))[11])
            {
                Session.Abandon();
                Response.Redirect("login.aspx");
            }
            else
            {
                if (!Page.IsPostBack)
                {
                    TextBusqueda.Focus();
                    MantenimientoGeneral conexion = new MantenimientoGeneral();
                    DataTable Resultado = new DataTable();

                    conexion.Query = "SELECT    Ubicacion.Id_Ubicacion + ' ' + Ubicacion.Nombre FROM UsuarioUbicacion INNER JOIN Ubicacion ON UsuarioUbicacion.Id_Ubicacion = Ubicacion.Id_Ubicacion where Id_Usuario = '" + Session["Usuario"] + "'";
                    Resultado = conexion.Buscar();

                    foreach (DataRow r in Resultado.Rows)
                    {
                        Ubicación.Items.Add(r[0].ToString());
                    }

                    conexion.Query = "Select Nombre from Sede";
                    Resultado = conexion.Buscar();

                    Sede.Items.Clear();
                    Sede.Items.Add("-- Seleccione --");

                    foreach (DataRow r in Resultado.Rows)
                    {
                        Sede.Items.Add(r[0].ToString());
                    }

                    conexion.Query = "Select Descripcion from Ciclo where Estado = 1 order by Id_Ciclo desc";
                    Resultado = conexion.Buscar();

                    Ciclo.Items.Clear();

                    foreach (DataRow r in Resultado.Rows)
                    {
                        Ciclo.Items.Add(r[0].ToString());
                    }

                    //Iniciar en campus Central e ingenieria
                    string Dia="", Mes="";
                    
                    if (DateTime.Today.Day < 10)
                        Dia = "0" + DateTime.Today.Day.ToString();
                    else
                        Dia = DateTime.Today.Day.ToString();

                    if (DateTime.Today.Month < 10)
                        Mes = "0" + DateTime.Today.Month.ToString();
                    else
                        Mes = DateTime.Today.Month.ToString();

                    Sede.SelectedIndex = 1;
                    Sede_SelectedIndexChanged(Sede, new System.EventArgs());
                    Facultad.SelectedIndex = 1;
                    Facultad_SelectedIndexChanged(Facultad, new System.EventArgs());
                    TextFecha.Text = Dia + "/" + Mes + "/" + DateTime.Today.Year.ToString();
                }
            }
        }

        protected void ButtonBuscar_Click(object sender, EventArgs e)
        {
            EntradaProducto mProducto = new EntradaProducto();
            List<string> Datos = new List<string>();
            DataTable Resultado = new DataTable();
            PanelBusqueda.Visible = true;
            PanelEgreso.Visible = false;
            LError.Visible = false;
            Datos.Add(TextBusqueda.Text);
            Datos.Add(Ubicación.SelectedValue.Split(' ')[0]);
            Resultado = mProducto.Buscar(Datos);
            if (Resultado.Rows.Count > 0)
            {
                Data.DataSource = Resultado;
                Data.DataBind();
                for (int i = 0; i < Resultado.Rows.Count; i++)
                {
                    Data.Rows[i].Cells[4].Text = Data.Rows[i].Cells[4].Text.Split(' ')[0];
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

        protected void Data_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //if (e.Row.RowType == DataControlRowType.DataRow)
            //{
            //    int limite = Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Limite"));
            //    int unidades = Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Cantidad"));
            //    if (unidades <= limite)
            //        e.Row.BackColor = Color.LightYellow;
            //}
        }

        protected void Data_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int i;
            DataTable Actual = new DataTable();
            i = Convert.ToInt32(e.CommandArgument);
            LabelEntrada.Text = Data.Rows[i].Cells[0].Text;
            Actual.Columns.Add(Data.Columns[1].HeaderText);
            Actual.Columns.Add(Data.Columns[2].HeaderText);
            Actual.Columns.Add(Data.Columns[3].HeaderText);
            Actual.Columns.Add(Data.Columns[4].HeaderText);
            Actual.Columns.Add(Data.Columns[5].HeaderText);
            Actual.Columns.Add("Total Disponible");
            Actual.Rows.Add(Data.Rows[i].Cells[1].Text, Server.HtmlDecode(Data.Rows[i].Cells[2].Text), Data.Rows[i].Cells[3].Text, Data.Rows[i].Cells[4].Text, Data.Rows[i].Cells[5].Text, (Convert.ToDouble(Data.Rows[i].Cells[3].Text.Split(' ')[0]) * Convert.ToDouble(Data.Rows[i].Cells[5].Text)).ToString() + " " + Data.Rows[i].Cells[3].Text.Split(' ')[1]);
            Detalle.DataSource = Actual;
            Detalle.DataBind();
            PanelBusqueda.Visible = false;
            PanelEgreso.Visible = true;
            TextUnidades.Focus();
        }

        protected void ButtonGuardar_Click(object sender, EventArgs e)
        {
            ErrorCant.Text = "";
            if ((Opciones.SelectedIndex == 0 && Convert.ToDouble(TextUnidades.Text) <= Convert.ToDouble(Detalle.Rows[4].Cells[1].Text)) || (Opciones.SelectedIndex == 1 && Convert.ToDouble(TextUnidades.Text) <= Convert.ToDouble(Detalle.Rows[5].Cells[1].Text.Split(' ')[0])))
            {
                SalidaProducto SProducto = new SalidaProducto();
                DataTable Resultado = new DataTable();
                List<string> Valores = new List<string>();
                Valores.Add(Sede.SelectedValue);
                Valores.Add(Facultad.SelectedValue);
                Valores.Add(Curso.SelectedValue);
                Valores.Add(Carrera.SelectedValue);
                Valores.Add(Practica.SelectedValue);
                Valores.Add(TextAl.Text);
                Valores.Add(Detalle.Rows[0].Cells[1].Text);
                Valores.Add(TextUnidades.Text);
                Valores.Add(TextUsuario.Text);
                Valores.Add(Ciclo.SelectedValue);
                Valores.Add(Session["Usuario"].ToString());
                Valores.Add(TextFecha.Text);
                Valores.Add(LabelEntrada.Text);
                Valores.Add(TextOb.Text);
                Valores.Add(Opciones.SelectedIndex.ToString());
                SProducto.Insertar(Valores);

                foreach (Control c in PanelEgreso.Controls)
                {
                    if (c is TextBox)
                        ((TextBox)c).Text = string.Empty;
                }
                TextBusqueda.Text = string.Empty;
                TextBusqueda.Focus();
                PanelEgreso.Visible = false;
                PanelBusqueda.Visible = true;
                Data.DataSource = null;
                Data.DataBind();
                Response.Write("<script language=javascript>alert('Operación realizada exitosamente.'); window.location = 'EgresoProducto.aspx';</script>");
            }
            else
            {
                ErrorCant.Text = "Cantidad ingresada mayor a la existente.";
            }
        }

        protected void Sede_SelectedIndexChanged(object sender, EventArgs e)
        {
            MantenimientoGeneral conexion = new MantenimientoGeneral();
            DataTable Resultado = new DataTable();
            conexion.Query = "exec BuscarFacultad '" + Sede.SelectedItem.Text + "'";
            Resultado = conexion.Buscar();
            Curso.Items.Clear();
            Curso.Items.Add("-- Seleccione --");
            Practica.Items.Clear();
            Carrera.Items.Clear();
            Carrera.Items.Add("-- Seleccione --");
            Practica.Items.Add("-- Seleccione --");
            Facultad.Items.Clear();
            Facultad.Items.Add("-- Seleccione --");
            foreach (DataRow r in Resultado.Rows)
            {
                Facultad.Items.Add(r[0].ToString());
            }
        }

        protected void Facultad_SelectedIndexChanged(object sender, EventArgs e)
        {
            MantenimientoGeneral conexion = new MantenimientoGeneral();
            DataTable Resultado = new DataTable();
            conexion.Query = "exec BuscarCarrera '" + Sede.SelectedItem.Text + "','"+ Facultad.SelectedItem.Text+"'";
            Resultado = conexion.Buscar();
            Carrera.Items.Clear();
            Carrera.Items.Add("-- Seleccione --");
            Practica.Items.Clear();
            Practica.Items.Add("-- Seleccione --");
            Curso.Items.Clear();
            Curso.Items.Add("-- Seleccione --");
            foreach (DataRow r in Resultado.Rows)
            {
                Carrera.Items.Add(r[0].ToString());
            }
        }

        protected void Carrera_SelectedIndexChanged(object sender, EventArgs e)
        {
            MantenimientoGeneral conexion = new MantenimientoGeneral();
            DataTable Resultado = new DataTable();
            conexion.Query = "exec BuscarCurso '" + Sede.SelectedItem.Text + "','" + Facultad.SelectedItem.Text + "','"+Carrera.SelectedItem.Text +"'";
            Resultado = conexion.Buscar();
            Practica.Items.Clear();
            Practica.Items.Add("-- Seleccione --");
            Curso.Items.Clear();
            Curso.Items.Add("-- Seleccione --");
            foreach (DataRow r in Resultado.Rows)
            {
                Curso.Items.Add(r[0].ToString());
            }
        }

        protected void Curso_SelectedIndexChanged(object sender, EventArgs e)
        {
            MantenimientoGeneral conexion = new MantenimientoGeneral();
            DataTable Resultado = new DataTable();
            conexion.Query = "exec BuscarPractica '" + Curso.SelectedItem.Text + "'";
            Resultado = conexion.Buscar();
            Practica.Items.Clear();
            Practica.Items.Add("-- Seleccione --");
            foreach (DataRow r in Resultado.Rows)
            {
                Practica.Items.Add(r[0].ToString());
            }
        }
    }
}
