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
    public partial class Principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null)
            {
                Session.Abandon();
                Response.Redirect("login.aspx");
            }
            else
            {
                if (!Page.IsPostBack)
                {
                        DataTable Resultado = new DataTable();
                        EntradaProducto mProducto = new EntradaProducto();
                        MantPrestamoEquipo mEquipo = new MantPrestamoEquipo();
                        List<string> Valores = new List<string>();
                        
                        Valores.Add(Session["Usuario"].ToString());
                        Resultado = mProducto.Obtener(Valores);
                        if (Resultado.Rows.Count > 0)
                        {
                            LabelProductos.Visible = true;
                            DataProducto.DataSource = Resultado;
                            DataProducto.DataBind();
                            for (int i = 0; i < Resultado.Rows.Count; i++)
                            {
                                DataProducto.Rows[i].Cells[4].Text = DataProducto.Rows[i].Cells[4].Text.Split(' ')[0];
                            }
                        }

                        Resultado = mEquipo.Obtener(Valores);
                        if (Resultado.Rows.Count > 0)
                        {
                            LabelEquipo.Visible = true;
                            DataEquipo.DataSource = Resultado;
                            DataEquipo.DataBind();
                        }
                }
            }
        }
    }
}
