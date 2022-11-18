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
    public partial class EquipoLaboratorio2 : System.Web.UI.Page
    {
        protected static string laboratorio = "";
        

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
                    FillDrop();

                }
            }
        }

        protected void OnSelectedIndexChanged(object sender, EventArgs e)
        {
            //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + ddlSedes.SelectedItem.Value + "');", true);

            laboratorio = ddlSedes.SelectedItem.Value;
           
            //DataProducto.EditIndex = -1;
            this.BindGrid();

            //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);

        }

        protected void FillDrop()
        {
            DataTable Resultado = new DataTable();
            MantenimientoGeneral conexion = new MantenimientoGeneral();
            conexion.Query = "SELECT  Ubicacion.Id_Ubicacion, Ubicacion.Nombre FROM UsuarioUbicacion INNER JOIN Ubicacion ON UsuarioUbicacion.Id_Ubicacion = Ubicacion.Id_Ubicacion where Id_Usuario = '" + Session["Usuario"] + "'";
            Resultado = conexion.Buscar();

            ddlSedes.DataSource = Resultado;
            ddlSedes.DataTextField = "Nombre";
            ddlSedes.DataValueField = "Id_Ubicacion";
            ddlSedes.DataBind();
            ddlSedes.Items.Insert(0, new ListItem("<Selecciona un laboratorio>", "0"));

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

            if (laboratorio == "")
            {
                conexion.Query = "SELECT TOP (50) E.Id_Equipo as ID, id_ubicacion as Ubicacion,  E.[No. de Serie] as Serie,  E.descripcion as Descripcion,  E.Estado as Estado, E.Renovacion as Renovacion from Equipo as E inner join Sede as S on E.Sede=S.Id_Sede where E.Activo = 1";
                DataProducto.Visible = false;
                Resultado = conexion.Buscar();
            }
            else
            {
                DataProducto.Visible = true;
                conexion.Query = "SELECT E.Id_Equipo as ID,  E.id_ubicacion as Ubicacion, E.[No. de Serie] as Serie,  E.descripcion as Descripcion,  E.Estado as Estado, E.Renovacion as Renovacion  from Equipo as E inner join  Sede as S on E.Sede=S.Id_Sede where E.Id_Ubicacion = '" + laboratorio + "' and E.Activo = 1";
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
            var ddl = row.FindControl("ddl_estado") as DropDownList;
            string estado = ddl.SelectedItem.Text;
            //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + estado + "');", true);
            //string estado = (row.Cells[5].Controls[0]).ToString(); 

            var ddl2 = row.FindControl("ddl_renovacion") as DropDownList;
            string renovacion = ddl2.SelectedItem.Text;
            //string renovacion = (row.Cells[6].Controls[0] as TextBox).Text;


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
            conexion.Query = "UPDATE Equipo SET Activo = 0 WHERE Id_Equipo = '" + @idEquipo + "'";
            conexion.Buscar();

            this.BindGrid();
        }

        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            //control de dropdownlist de estado del equipo
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if ((e.Row.RowState & DataControlRowState.Edit) > 0)
                {
                    DropDownList ddList = (DropDownList)e.Row.FindControl("ddl_estado");

                    //return DataTable havinf department data
                    DataTable dt = new DataTable();
                    dt.Columns.Add("id");
                    dt.Columns.Add("Opcion");

                    DataRow renglon = dt.NewRow();
                    renglon["id"] = "1";
                    renglon["Opcion"] = "Funcional";
                    dt.Rows.Add(renglon);

                    renglon = dt.NewRow();
                    renglon["id"] = "2";
                    renglon["Opcion"] = "Obsoleto-Funcional";
                    dt.Rows.Add(renglon);

                    renglon = dt.NewRow();
                    renglon["id"] = "3";
                    renglon["Opcion"] = "Obsoleto";
                    dt.Rows.Add(renglon);

                    ddList.DataSource = dt;
                    ddList.DataTextField = "Opcion";
                    ddList.DataValueField = "id";
                    ddList.DataBind();

                    DataRowView dr = e.Row.DataItem as DataRowView;
                    ddList.SelectedValue = dr["Estado"].ToString();
                }
            }

            //control de dropdown de renovacion
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if ((e.Row.RowState & DataControlRowState.Edit) > 0)
                {
                    DropDownList ddList = (DropDownList)e.Row.FindControl("ddl_renovacion");

                    //return DataTable havinf department data
                    DataTable dt = new DataTable();
                    dt.Columns.Add("id");
                    dt.Columns.Add("Opcion");

                    DataRow renglon = dt.NewRow();
                    renglon["id"] = "1";
                    renglon["Opcion"] = "Si";
                    dt.Rows.Add(renglon);

                    renglon = dt.NewRow();
                    renglon["id"] = "2";
                    renglon["Opcion"] = "No";
                    dt.Rows.Add(renglon);


                    ddList.DataSource = dt;
                    ddList.DataTextField = "Opcion";
                    ddList.DataValueField = "id";
                    ddList.DataBind();

                    DataRowView dr = e.Row.DataItem as DataRowView;
                    ddList.SelectedValue = dr["Renovacion"].ToString();
                }
            }


            if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowIndex != DataProducto.EditIndex)
            {
                (e.Row.Cells[0].Controls[2] as LinkButton).Attributes["onclick"] = "return confirm('Quieres eliminar esta columna?');";
            }
        }

    }
}
