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
    public partial class CrearPresentacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null || !((bool[])(Session["Accesos"]))[7])
            {
                Session.Abandon();
                Response.Redirect("login.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    TextMedida.Focus();
                }
            }
        }

        protected void ButtonIngresar_Click(object sender, EventArgs e)
        {
            DataTable Resultado = new DataTable();
            MantPresentacion mPresentacion = new MantPresentacion();
            List<string> Valores = new List<string>();
            mPresentacion.Query = "Select * from Medida where Descripcion = '" + TextMedida.Text.ToLower() + "' and Cantidad = " + TextCantidad.Text;
            Resultado = mPresentacion.Buscar();
            if (Resultado.Rows.Count  < 1)
            {
                Valores.Add(TextMedida.Text.ToLower());
                Valores.Add(TextCantidad.Text);
                mPresentacion.Insertar(Valores);
                Response.Write("<script language=javascript>alert('Operación realizada exitosamente.'); window.location = 'CrearPresentacion.aspx';</script>");
            }
            else
                LabelError.Text = "La presentación ingresada ya existe.";
        }
    }
}
