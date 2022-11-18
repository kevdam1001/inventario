using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using Logica;
using System.Data;

namespace Inventario
{
    public partial class rpPracticasProductosControlados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null || !((bool[])(Session["Accesos"]))[21])
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

                    conexion.Query = "Select Descripcion from Ciclo where Estado = 1 order by Id_Ciclo desc";
                    Resultado = conexion.Buscar();

                    Ciclo.Items.Clear();

                    foreach (DataRow r in Resultado.Rows)
                    {
                        Ciclo.Items.Add(r[0].ToString());
                    }

                    GenerarReporte();
                }
            }
        }

        private void setDBLOGONforREPORT(ConnectionInfo myconnectioninfo)
        {
            TableLogOnInfos mytableloginfos = new TableLogOnInfos();
            mytableloginfos = vProducto.LogOnInfo;
            foreach (TableLogOnInfo myTableLogOnInfo in mytableloginfos)
            {
                myTableLogOnInfo.ConnectionInfo = myconnectioninfo;
            }
        }

        protected void Regresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reportes.aspx");
        }

        private void GenerarReporte()
        {
            string decode = System.Text.ASCIIEncoding.ASCII.GetString(Convert.FromBase64String(Request.QueryString["str"]));

            MantenimientoGeneral Conexion = new MantenimientoGeneral();

            vProducto.ReportSource = null;
            ConnectionInfo myConnectionInfo = new ConnectionInfo();

            ParameterFields Param = new ParameterFields();
            ParameterField Campo = new ParameterField();
            ParameterDiscreteValue Valor = new ParameterDiscreteValue();

            myConnectionInfo.ServerName = Conexion.GetServer();
            myConnectionInfo.DatabaseName = Conexion.GetBase();
            myConnectionInfo.UserID = Conexion.GetUsuario();
            myConnectionInfo.Password = Conexion.GetContraseña();

            Campo.Name = "@Ciclo";
            Valor.Value = Ciclo.SelectedValue;
            Campo.CurrentValues.Add(Valor);
            Param.Add(Campo);

            Campo = new ParameterField();
            Valor = new ParameterDiscreteValue();

            Campo.Name = "@Ubicacion";
            Valor.Value = decode;
            Campo.CurrentValues.Add(Valor);
            Param.Add(Campo);

            vProducto.ParameterFieldInfo = Param;

            vProducto.ReportSource = Server.MapPath("rp_PracticasProductosControlados.rpt");
            setDBLOGONforREPORT(myConnectionInfo);
        }

        protected void Generar_Click(object sender, EventArgs e)
        {
            GenerarReporte();
        }
    }
}
