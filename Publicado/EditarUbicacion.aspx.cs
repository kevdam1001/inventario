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
    public partial class EditarUbicacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"]==null||!((bool[])(Session["Accesos"]))[29])
            {
                Session.Abandon();
                Response.Redirect("login.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    MantUbicacion conexion = new MantUbicacion();
                    DataTable Resultado = new DataTable();
                    txtIDU.Focus();

                    conexion.Query = "exec BuscarUbicacionID '" + Request.QueryString["IdU"] + "'";
                    Resultado = conexion.Buscar();

                    txtIDU.Text = Resultado.Rows[0][0].ToString();
                    txtNombre.Text = Resultado.Rows[0][1].ToString();
                }
            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            DataTable Resultado = new DataTable();
            MantUbicacion mUbicacion = new MantUbicacion();
            List<string> Valores = new List<string>();

            Valores.Add(txtIDU.Text);
            Valores.Add(txtNombre.Text);

            mUbicacion.Actualizar(Valores);

            Response.Write("<script language = javascript>alert('Operación realizada exitosamente.');window.location='BuscarUbicacion.aspx';</script>");
        }
    }
}