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
    public partial class ReporteEquipo : System.Web.UI.Page
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
                    conexion.Query = "SELECT Ubicacion.Nombre FROM UsuarioUbicacion INNER JOIN Ubicacion ON UsuarioUbicacion.Id_Ubicacion = Ubicacion.Id_Ubicacion where Id_Usuario = '" + Session["Usuario"] + "'";
                    Resultado = conexion.Buscar();

                    foreach (DataRow r in Resultado.Rows)
                    {
                        Ubicación.Items.Add(r[0].ToString());
                    }
                }
            }
        }

        private void setDBLOGONforREPORT(ConnectionInfo myconnectioninfo)
        {
            TableLogOnInfos mytableloginfos = new TableLogOnInfos();
            mytableloginfos = vEquipo.LogOnInfo;
            foreach (TableLogOnInfo myTableLogOnInfo in mytableloginfos)
            {
                myTableLogOnInfo.ConnectionInfo = myconnectioninfo;
            }
        }

        protected void ButtonGenerar_Click(object sender, EventArgs e)
        {
            vEquipo.ReportSource = null;
            ConnectionInfo myConnectionInfo = new ConnectionInfo();
            ReportDocument rp = new rEquipo();
            ParameterFields Param = vEquipo.ParameterFieldInfo;
            ParameterField Campo = new ParameterField();
            ParameterDiscreteValue Valor = new ParameterDiscreteValue();

            myConnectionInfo.ServerName = "TECLABSOFT2";
            myConnectionInfo.DatabaseName = "Inventario";
            myConnectionInfo.UserID = "Inventario";
            myConnectionInfo.Password = "Inv3nt4r!0";

            vEquipo.ReportSource = Server.MapPath("rEquipo.rpt");
            setDBLOGONforREPORT(myConnectionInfo);
            Campo.Name = "Ubicación";
            Valor.Value = Ubicación.SelectedValue;
            Campo.CurrentValues.Add(Valor);
            Param.Add(Campo); 
        }
    }
}
