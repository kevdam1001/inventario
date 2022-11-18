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
    public partial class rpProductosControlados : System.Web.UI.Page
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

            Campo.Name = "@Ubicacion";
            Valor.Value = decode;
            Campo.CurrentValues.Add(Valor);
            Param.Add(Campo);

            vProducto.ParameterFieldInfo = Param;

            vProducto.ReportSource = Server.MapPath("rp_ProductosControlados.rpt");
            setDBLOGONforREPORT(myConnectionInfo);
        }

        protected void Regresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reportes.aspx");
        }
    }
}
