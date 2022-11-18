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
    public partial class CrearUbicacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null || !((bool[])(Session["Accesos"]))[5])
            {
                Session.Abandon();
                Response.Redirect("login.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    TextSalon.Focus();
                }
            }
        }

        protected void ButtonIngresar_Click(object sender, EventArgs e)
        {
            DataTable Resultado = new DataTable();
            MantUbicacion mUbicacion = new MantUbicacion();
            List<string> Valores = new List<string>();
            mUbicacion.Query = "Select Nombre from Ubicacion where Id_Ubicacion = '" + TextSalon.Text.ToUpper() + "'";
            Resultado = mUbicacion.Buscar();
            if (Resultado.Rows.Count  == 0)
            {
                Valores.Add(TextSalon.Text.ToUpper());
                Valores.Add(TextDesc.Text);
                mUbicacion.Insertar(Valores);
                Response.Write("<script language=javascript>alert('Operación realizada exitosamente.'); window.location = 'CrearUbicacion.aspx';</script>");
            }
            else
                LabelError.Text = "La ubicación ingresada ya existe.";
        }
    }
}
