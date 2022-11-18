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
    public partial class EditarProveedor1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"]==null||!((bool[])(Session["Accesos"]))[27])
            {
                Session.Abandon();
                Response.Redirect("login.aspx");
            }
            else
            {
                if (!Page.IsPostBack)
                {
                    MantEquipo conexion = new MantEquipo();
                    DataTable Resultado = new DataTable();
                    txtNit.Focus();
                    //conexion.Query = "SELECT Ubicacion.Id_Ubicacion +' '+ Ubicacion.Nombre FROM UsuarioUbicacion INNER JOIN Ubicacion ON UsuarioUbicacion.Id_Ubicacion = Ubicacion.Id_Ubicacion WHERE Id_Usuario= '" + Session["Usuario"] + "'";
                    //Resultado = conexion.Buscar();

                    //foreach (DataRow r in Resultado.Rows) { 
                        
                    //}

                    conexion.Query = "exec BuscarProveedorId '" + Request.QueryString["nit"]+"'";
                    Resultado = conexion.Buscar();

                    txtNit.Text = Request.QueryString["nit"];
                    txtNombre.Text = Resultado.Rows[0][0].ToString();
                    txtDireccion.Text = Resultado.Rows[0][1].ToString();
                    txtRegimen.Text = Resultado.Rows[0][3].ToString();
                    txtContacto.Text = Resultado.Rows[0][4].ToString();
                    txtTelefono1.Text = Resultado.Rows[0][2].ToString();
                    txtTelefono2.Text = Resultado.Rows[0][6].ToString();
                    txtCorreo.Text = Resultado.Rows[0][5].ToString();

                }
            }

        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            DataTable Resultado = new DataTable();
            MantProveedor mProveedor = new MantProveedor();
            List<string> Valores = new List<string>();

            Valores.Add(txtNit.Text);
            Valores.Add(txtNombre.Text);
            Valores.Add(txtDireccion.Text);
            Valores.Add(txtTelefono1.Text);
            Valores.Add(txtRegimen.Text);
            Valores.Add(txtContacto.Text);
            Valores.Add(txtCorreo.Text);
            Valores.Add(txtTelefono2.Text);

            mProveedor.Actualizar(Valores);

            Response.Write("<script language=javascript>alert('Operación realizada exitosamente.');window.location='BuscarProveedor.aspx';</script>");
        }
    }
}