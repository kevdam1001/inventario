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
    public partial class CrearProveedor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null || !((bool[])(Session["Accesos"]))[8])
            {
                Session.Abandon();
                Response.Redirect("login.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    TextNit.Focus();
                }
            }
        }

        protected void ButtonIngresar_Click(object sender, EventArgs e)
        {
            DataTable Resultado = new DataTable();
            MantProveedor mProveedor = new MantProveedor();
            List<String> Valores = new List<string>();
            mProveedor.Query = "Select * from Proveedor where Nit = '"+TextNit.Text +"'";
            Resultado = mProveedor.Buscar();
            if (Resultado.Rows.Count < 1)
            {
                Valores.Add(TextNit.Text);
                Valores.Add(TextNombre.Text);
                Valores.Add(TextDireccion.Text);
                Valores.Add(TextTel1.Text);
                Valores.Add(TextRegimen.Text);
                Valores.Add(TextContacto.Text);
                Valores.Add(TextCorreo.Text);
                Valores.Add(TextTel2.Text);
                mProveedor.Insertar(Valores);
                Response.Write("<script language=javascript>alert('Operación realizada exitosamente.'); window.location = 'CrearProveedor.aspx';</script>");
            }
            else
            {
                LabelError.Text = "El proveedor ingresado ya existe.";
            }
        }
    }
}
