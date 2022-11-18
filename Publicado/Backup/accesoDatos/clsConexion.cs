using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace accesoDatos
{
    public class clsConexion
    {
        private SqlConnection cnn;
        private SqlConnectionStringBuilder csb;
        private SqlCommand commandInfo;
        private SqlDataAdapter da;
        private DataTable resultado;

        private string sServer,sBase, sUsuario, sContraseña;

        

        public clsConexion()
        {
            sServer = "TEC";
            //sServer = "TECLABSOFT2";
            sBase = "Inventario";
            sUsuario = "Inventario";
            sContraseña = "Inv3nt4r!0";
            
        }

        public string GetServer()
        {
            return sServer;
        }

        public string GetBase()
        {
            return sBase;
        }

        public string GetUsuario()
        {
            return sUsuario;
        }

        public string GetContraseña()
        {
            return sContraseña;
        }

        public void conectarSQL()
        {
            try
            {
                //variable que guarda el string que configura la conexion con la bd mandando a llamar el metodo cadenaConexion()
                cnn = new SqlConnection(cadenaConexion());
                cnn.Open();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private string cadenaConexion()
        {
            csb = new SqlConnectionStringBuilder();
            csb.DataSource = sServer;
            csb.InitialCatalog = sBase;
            csb.UserID = sUsuario;
            csb.Password = sContraseña;
            csb.ConnectTimeout = 20;
            //csb.IntegratedSecurity = true;
            return csb.ConnectionString;

            
        }

        public void desconectarSQL()
        {
            try
            {
                cnn.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void ejecutarSP(SqlCommand parametros, string nombreProcedimiento)
        {
            try
            {
                parametros.Connection = cnn;
                parametros.CommandType = CommandType.StoredProcedure;
                parametros.CommandText = nombreProcedimiento;
                parametros.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable ejecutarBusqueda(SqlCommand parametros, string nombreProcedimiento)
        {
            try
            {
                DataTable Tabla = new DataTable();
                parametros.Connection = cnn;
                parametros.CommandType = CommandType.StoredProcedure;
                parametros.CommandText = nombreProcedimiento;
                parametros.ExecuteNonQuery();
                da = new SqlDataAdapter(parametros);
                da.Fill(Tabla);
                return Tabla;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable ejecutarQuery(string query)
        {
            try
            {
                commandInfo = new SqlCommand();
                commandInfo.Connection = cnn;
                commandInfo.CommandType = CommandType.Text;
                commandInfo.CommandText = query;
                da = new SqlDataAdapter(commandInfo);
                resultado = new DataTable();
                da.Fill(resultado);
                return resultado;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}