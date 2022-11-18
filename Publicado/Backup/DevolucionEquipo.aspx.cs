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
    public partial class DevolucionEquipo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null || !((bool[])(Session["Accesos"]))[23])
            {
                Session.Abandon();
                Response.Redirect("login.aspx");
            }
            else
            {
                if (!Page.IsPostBack)
                {
                    TextBusqueda.Focus();
                }
            }
        }

        protected void ButtonBuscar_Click(object sender, EventArgs e)
        {
            MantDevolucionEquipo mDevolucion = new MantDevolucionEquipo();
            DataTable Resultado = new DataTable();
            List<string> Datos = new List<string>();
            LError.Visible = false;
            PanelBusqueda.Visible = true;
            Datos.Add(Session["Usuario"].ToString());
            Datos.Add(TextBusqueda.Text);
            Resultado = mDevolucion.Buscar(Datos);
            if (Resultado.Rows.Count > 0)
            {
                DataEquipo.DataSource = Resultado;
                DataEquipo.DataBind();
            }
            else
            {
                Resultado = null;
                DataEquipo.DataSource = null;
                DataEquipo.DataBind();
                LError.Visible = true;
            }
        }

        protected void DataEquipo_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int i;
            MantDevolucionEquipo mDevolucion = new MantDevolucionEquipo();
            List<string> Datos = new List<string>();
            i = Convert.ToInt32(e.CommandArgument);
            Datos.Add(DataEquipo.Rows[i].Cells[0].Text);
            Datos.Add(Session["Usuario"].ToString());
            mDevolucion.Insertar(Datos);
            Response.Write("<script language=javascript>alert('Operación realizada exitosamente.'); window.location = 'DevolucionEquipo.aspx';</script>");

            
        }

    }
}
