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
    public partial class CambioPswd : System.Web.UI.Page
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
                if (!IsPostBack)
                {
                    TextPass.Focus();
                }
            }
        }

        protected void ButtonIngresar_Click(object sender, EventArgs e)
        {
            MantContraseña Mcontraseña = new MantContraseña();
            List<string> Valores = new List<string>();
            DataTable Resultado = new DataTable();
            Valores.Add(Session["Usuario"].ToString());
            Resultado = Mcontraseña.Obtener(Valores);
            if (Resultado.Rows.Count == 1 && Resultado.Rows[0][0].ToString().CompareTo(TextPass.Text) == 0)
            {
                Valores.Add(TextNueva.Text);
                Mcontraseña.Actualizar(Valores);
                Session.Abandon();
                Response.Write("<script language=javascript>alert('Operación realizada exitosamente.'); window.location = 'Login.aspx';</script>");   
            }
            else
            {
                LabelError.Visible = true;
                TextPass.Text = string.Empty;
                TextPass.Focus();
            }
        }
    }
}
