using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Logica;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Services.Description;

namespace Inventario
{
    public partial class EquipoLaboratorio : System.Web.UI.Page
    {
        protected static int numeroSede = 0;


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
                    BindGrid();

                }
            }
        }

        protected void OnSelectedIndexChanged(object sender, EventArgs e)
        {
            string message = ddlSedes.SelectedItem.Text + " - " + ddlSedes.SelectedItem.Value;
            if (ddlSedes.SelectedItem.Value == "Central")
            {
                numeroSede = 1;
            }
            if (ddlSedes.SelectedItem.Value == "Zacapa")
            {
                numeroSede = 2;
            }
            if (ddlSedes.SelectedItem.Value == "Escuintla")
            {
                numeroSede = 3;
            }
            if (ddlSedes.SelectedItem.Value == "Quetzal")
            {
                numeroSede = 4;
            }
            if (ddlSedes.SelectedItem.Value == "Verapaz")
            {
                numeroSede = 5;
            }
            if (ddlSedes.SelectedItem.Value == "Huehue")
            {
                numeroSede = 6;
            }

            //DataProducto.EditIndex = -1;
            this.BindGrid();

            //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);

        }

        protected void BindGrid()
        {
            DataTable Resultado = new DataTable();
            EntradaProducto mProducto = new EntradaProducto();
            MantPrestamoEquipo mEquipo = new MantPrestamoEquipo();
            List<string> Valores = new List<string>();

            MantenimientoGeneral conexion = new MantenimientoGeneral();
            //conexion.Query = "select top 20 EntradaProducto.Id_Producto as Producto, Producto.Nombre,Convert(varchar,Medida.Cantidad) +' ' + Medida.Descripcion as Presentación ,CONVERT(date, FechaVencimiento,103) as FechaVencimiento ,CantidadActual as Unidades,Convert(varchar, Convert(decimal(14,3),CantidadActual*Medida.Cantidad)) + ' ' + Medida.Descripcion as Existencia,Ubicacion.Nombre as Ubicación from EntradaProducto,Producto,Medida,Ubicacion,UsuarioUbicacion where EntradaProducto.Presentacion = Medida.Id_Medida and Producto.Codigo = EntradaProducto.Id_Producto and EntradaProducto.Id_Ubicacion = Ubicacion.Id_Ubicacion and CantidadActual > 0 and UsuarioUbicacion.Id_Usuario = '1234' and UsuarioUbicacion.Id_Ubicacion = Ubicacion.Id_Ubicacion ";

            //lClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + numeroSede + "');", true);

            if (numeroSede == 0)
            {
                conexion.Query = "SELECT TOP (50) E.Id_Equipo as ID, id_ubicacion as Ubicacion,  E.[No. de Serie] as Serie,  E.descripcion as Descripcion,  E.Estado as Estado, E.Renovacion as Renovacion from Equipo as E inner join Sede as S on E.Sede=S.Id_Sede";
                Resultado = conexion.Buscar();
            }
            else
            {
                conexion.Query = "SELECT TOP (50) E.Id_Equipo as ID, id_ubicacion as Ubicacion,  E.[No. de Serie] as Serie,  E.descripcion as Descripcion,  E.Estado as Estado, E.Renovacion as Renovacion from Equipo as E inner join Sede as S on E.Sede=S.Id_Sede where Sede = '" + numeroSede + "'";
                Resultado = conexion.Buscar();
            }

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
        }

        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            DataProducto.EditIndex = e.NewEditIndex;
            this.BindGrid();
        }
        protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = DataProducto.Rows[e.RowIndex];
            //int idEquipo = Convert.ToInt32(DataProducto.DataKeys[e.RowIndex].Values[0]);
            string idEquipo = (row.Cells[1].Controls[0] as TextBox).Text;
            string ubicacion = (row.Cells[2].Controls[0] as TextBox).Text;
            string serie = (row.Cells[3].Controls[0] as TextBox).Text;
            string descripcion = (row.Cells[4].Controls[0] as TextBox).Text;
            string estado = (row.Cells[5].Controls[0] as TextBox).Text;
            string renovacion = (row.Cells[6].Controls[0] as TextBox).Text;

            DataTable Resultado = new DataTable();
            MantenimientoGeneral conexion = new MantenimientoGeneral();
            //conexion.Query = "select top 20 EntradaProducto.Id_Producto as Producto, Producto.Nombre,Convert(varchar,Medida.Cantidad) +' ' + Medida.Descripcion as Presentación ,CONVERT(date, FechaVencimiento,103) as FechaVencimiento ,CantidadActual as Unidades,Convert(varchar, Convert(decimal(14,3),CantidadActual*Medida.Cantidad)) + ' ' + Medida.Descripcion as Existencia,Ubicacion.Nombre as Ubicación from EntradaProducto,Producto,Medida,Ubicacion,UsuarioUbicacion where EntradaProducto.Presentacion = Medida.Id_Medida and Producto.Codigo = EntradaProducto.Id_Producto and EntradaProducto.Id_Ubicacion = Ubicacion.Id_Ubicacion and CantidadActual > 0 and UsuarioUbicacion.Id_Usuario = '1234' and UsuarioUbicacion.Id_Ubicacion = Ubicacion.Id_Ubicacion ";
            conexion.Query = "UPDATE Equipo SET id_ubicacion = '" + ubicacion + "', [No. de Serie] = '" + serie + "',  Descripcion = '" + descripcion + "',  Estado = '" + estado + "', Renovacion = '" + renovacion + "' WHERE Id_Equipo = '" + idEquipo + "'";
            conexion.Buscar();

            DataProducto.EditIndex = -1;
            this.BindGrid();
        }

        protected void OnRowCancelingEdit(object sender, EventArgs e)
        {
            DataProducto.EditIndex = -1;
            this.BindGrid();
        }

        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = DataProducto.Rows[e.RowIndex];
            string idEquipo = (row.Cells[1].Controls[0] as TextBox).Text;

            DataTable Resultado = new DataTable();
            MantenimientoGeneral conexion = new MantenimientoGeneral();
            //conexion.Query = "select top 20 EntradaProducto.Id_Producto as Producto, Producto.Nombre,Convert(varchar,Medida.Cantidad) +' ' + Medida.Descripcion as Presentación ,CONVERT(date, FechaVencimiento,103) as FechaVencimiento ,CantidadActual as Unidades,Convert(varchar, Convert(decimal(14,3),CantidadActual*Medida.Cantidad)) + ' ' + Medida.Descripcion as Existencia,Ubicacion.Nombre as Ubicación from EntradaProducto,Producto,Medida,Ubicacion,UsuarioUbicacion where EntradaProducto.Presentacion = Medida.Id_Medida and Producto.Codigo = EntradaProducto.Id_Producto and EntradaProducto.Id_Ubicacion = Ubicacion.Id_Ubicacion and CantidadActual > 0 and UsuarioUbicacion.Id_Usuario = '1234' and UsuarioUbicacion.Id_Ubicacion = Ubicacion.Id_Ubicacion ";
            conexion.Query = "DELETE FROM Equipo WHERE Id_Equipo = '" + idEquipo + "'";
            conexion.Buscar();

            this.BindGrid();
        }

        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowIndex != DataProducto.EditIndex)
            {
                (e.Row.Cells[0].Controls[2] as LinkButton).Attributes["onclick"] = "return confirm('Quieres eliminar esta columna?');";
            }
        }

    }
}
