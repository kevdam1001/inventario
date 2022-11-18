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
    public partial class EditarPresentacion : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"]==null||!((bool[])(Session["Accesos"]))[30])
            {
                Session.Abandon();
                Response.Redirect("login.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    MantPresentacion conexion = new MantPresentacion();
                    DataTable resultado = new DataTable();
                    txtMedida.Focus();
                    txtPresentacion.Focus();
                    lblError.Visible = false;
                    
                    conexion.Query = "exec BuscarPresentacionID '" + Request.QueryString["idP"] + "'";
                    resultado = conexion.Buscar();

                    lblError.Text = resultado.Rows[0][0].ToString();
                    txtPresentacion.Text = resultado.Rows[0][1].ToString();
                    txtMedida.Text = resultado.Rows[0][2].ToString();
                    
                }
            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            DataTable Resultado = new DataTable();
            MantPresentacion mPresentacion = new MantPresentacion();
            List<string> Valores = new List<string>();

            Valores.Add(lblError.Text);
            Valores.Add(txtMedida.Text);
            Valores.Add(txtPresentacion.Text);
           
            mPresentacion.Actualizar(Valores);

            Response.Write("<script language = javascript>alert('Operación realizada exitosamente.');window.location='BuscarPresentacion.aspx';</script>");

        }
    }
}