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
    public partial class rpIngresoProducto : System.Web.UI.Page
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
                    string Dia = DateTime.DaysInMonth(DateTime.Today.Year, DateTime.Today.Month).ToString();
                    string Mes = "";

                    if (int.Parse(Dia) < 10)
                        Dia = "0" + Dia; 
                    

                    if (DateTime.Today.Month < 10)
                        Mes = "0" + DateTime.Today.Month.ToString();
                    else
                        Mes = DateTime.Today.Month.ToString();

                    FechaInicial.Text = "01/" + Mes + "/" + DateTime.Today.Year.ToString();
                    FechaFinal.Text =  Dia + "/" + Mes + "/" + DateTime.Today.Year.ToString();
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

            Campo.Name = "@Id_Ubicacion";
            Valor.Value = decode;
            Campo.CurrentValues.Add(Valor);
            Param.Add(Campo);

            Campo = new ParameterField();
            Valor = new ParameterDiscreteValue();

            Campo.Name = "@Fecha_Inicial";
            Valor.Value = FechaInicial.Text.Split('/')[1]+ "/"+ FechaInicial.Text.Split('/')[0]+"/" + FechaInicial.Text.Split('/')[2];
            Campo.CurrentValues.Add(Valor);
            Param.Add(Campo);

            Campo = new ParameterField();
            Valor = new ParameterDiscreteValue();

            Campo.Name = "@Fecha_Final";
            Valor.Value = FechaFinal.Text.Split('/')[1] + "/" + FechaFinal.Text.Split('/')[0] + "/" + FechaFinal.Text.Split('/')[2]; ;
            Campo.CurrentValues.Add(Valor);
            Param.Add(Campo);

            vProducto.ParameterFieldInfo = Param;

            vProducto.ReportSource = Server.MapPath("rp_IngresoProducto.rpt");
            setDBLOGONforREPORT(myConnectionInfo);
        }

        protected void Generar_Click(object sender, EventArgs e)
        {
            GenerarReporte();
        }
    }
}
