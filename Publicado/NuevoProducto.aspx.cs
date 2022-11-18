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
    public partial class NuevoProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null || !((bool[])(Session["Accesos"]))[9])
            {
                Session.Abandon();
                Response.Redirect("login.aspx");
            }
            else
            {
                if (!Page.IsPostBack)
                {
                    MantenimientoGeneral conexion = new MantenimientoGeneral();
                    DataTable Resultado = new DataTable();
                    conexion.Query = "select Id_Familia, Nombre from Familia";
                    Resultado = conexion.Buscar();
                    TextDescripcion.Focus();
                    foreach (DataRow r in Resultado.Rows)
                    {
                        Familia.Items.Add(r["Id_familia"] + " - " + r["Nombre"].ToString());
                    }

                    Corrosivo.Items.Add("");
                    Explosivo.Items.Add("");
                    Comburente.Items.Add("");
                    Inflamable.Items.Add("");
                    Nocivo.Items.Add("");
                    Irritante.Items.Add("");
                    Toxicidad.Items.Add("");
                    Peligroso.Items.Add("");
                    

                    for (int i = 0; i < 6; i++)
                    {
                        Corrosivo.Items.Add(i.ToString());
                        Explosivo.Items.Add(i.ToString());
                        Comburente.Items.Add(i.ToString());
                        Inflamable.Items.Add(i.ToString());
                        Nocivo.Items.Add(i.ToString());
                        Irritante.Items.Add(i.ToString());
                        Toxicidad.Items.Add(i.ToString());
                        Peligroso.Items.Add(i.ToString());
                    }
                }
            }            
        }

        protected void ButtonIngresar_Click(object sender, EventArgs e)
        {
            MantProducto mProducto = new MantProducto();
            DataTable Resultado = new DataTable();
            List<String> Valores = new List<string>();
            string Codigo = string.Empty;

            if (TextCodigo.Text.Length < 10)
            {
                //for (int i = 0; i < 10 - TextCodigo.Text.Length; i++)
                //{
                //    Codigo += "0";
                //}
                //Codigo = Codigo + TextCodigo.Text;
                Codigo = TextCodigo.Text;
            }
            //else
            //    Codigo = TextCodigo.Text;

            mProducto.Query = "Select Nombre from Producto where Codigo ='" + Codigo +"'" ;
            Resultado = mProducto.Buscar();

            if (Resultado.Rows.Count < 1)
            {
                Valores.Add(Codigo);
                Valores.Add(TextDescripcion.Text);
                Valores.Add(Familia.SelectedValue.Split('-')[0].Trim());
                Valores.Add(Clasificacion.SelectedValue);
                Valores.Add(Corrosivo.SelectedValue);
                Valores.Add(Explosivo.SelectedValue);
                Valores.Add(Comburente.SelectedValue);
                Valores.Add(Inflamable.SelectedValue);
                Valores.Add(Irritante.SelectedValue);
                Valores.Add(Nocivo.SelectedValue);
                Valores.Add(Toxicidad.SelectedValue);
                Valores.Add(Peligroso.SelectedValue);
                Valores.Add(Controlado.SelectedIndex.ToString());
                Valores.Add(TextCAS.Text);
                mProducto.Insertar(Valores);
                Response.Write("<script language=javascript>alert('Operación realizada exitosamente.');window.location = 'NuevoProducto.aspx';</script>");
                
            }
            else
            {
               LError.Text = "El código de producto ingresado ya existe.";
            }
        }
    }
}
