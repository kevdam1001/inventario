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
    public partial class rpReportemensualrcontrolados : System.Web.UI.Page
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
                    //string[] Resultado = new string[6]; Array
                    List<string> Meses = new List<string>();
                    Meses.Add("Septiembre 2021");//Agregar todos los meses posteriores para el reporte
                    Meses.Add("Octubre 2021");
                    Meses.Add("Noviembre 2021");
                    //Meses.Add("Diciembre 2021");
                    Meses.Add("Enero 2022");
                    Meses.Add("Febrero 2022");
                    for (int i = 0; i < Meses.Count;i++ )
                    {
                        Mes.Items.Add(Meses[i].ToString());
                    }
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
            //string decode = System.Text.ASCIIEncoding.ASCII.GetString(Convert.FromBase64String(Request.QueryString["str"]));

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

            Campo.Name = "@MES";
            Valor.Value = Mes.SelectedItem.ToString();
            //Valor.Value = System.Text.ASCIIEncoding.ASCII.GetString(Convert.FromBase64String(Request.QueryString[Mes.SelectedItem.ToString()]));
            Campo.CurrentValues.Add(Valor);
            Param.Add(Campo);

            vProducto.ParameterFieldInfo = Param;

            vProducto.ReportSource = Server.MapPath("rp_MensualReacControlados.rpt");
            setDBLOGONforREPORT(myConnectionInfo);
        }

        protected void Generar_Click(object sender, EventArgs e)
        {
            GenerarReporte();
        }

    }
}