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
    public partial class CrearFamilia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null || !((bool[])(Session["Accesos"]))[6])
            {
                Session.Abandon();
                Response.Redirect("login.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    TextFamilia.Focus();
                }
            }
        }

        protected void ButtonIngresar_Click(object sender, EventArgs e)
        {
            MantFamilia mFamilia = new MantFamilia();
            List<string> Valores = new List<string>();
            DataTable Resultado = new DataTable();
            mFamilia.Query = "Select * from Familia where Nombre = '" + TextFamilia.Text.ToUpper() + "'";
            Resultado = mFamilia.Buscar();
            if (Resultado.Rows.Count < 1)
            {
                Valores.Add(TextFamilia.Text.ToUpper());
                mFamilia.Insertar(Valores);
                Response.Write("<script language=javascript>alert('Operación realizada exitosamente.'); window.location = 'CrearFamilia.aspx';</script>");
            }
            else
            {
                LabelError.Text = "El nombre ingresado ya existe.";
            }
        }
    }
}
