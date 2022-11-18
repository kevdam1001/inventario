using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using accesoDatos;

namespace Logica
{
    public class MantenimientoGeneral
    {
        public string SPInsertar, SPActualizar, SPEliminar, SPBuscar, Query,SPObtener, SPBuscarEP,SPBuscarSalidaP;
        public DataTable Resultados;
        public SqlCommand Comando;
        public List<string> DatosInsertar;
        public List<string> DatosBusqueda;
        //Nuevo Variable para paginas de actualizacion
        public List<string> DatosBusquedaEIP;
        public List<string> DatosBusquedaESP;
        public List<string> DatosActualizar;
        public List<string> DatosObtener;
        clsConexion Conexion;


        public string GetServer()
        {
            Conexion = new clsConexion();
            return Conexion.GetServer();
        }

        public string GetBase()
        {
            Conexion = new clsConexion();
            return Conexion.GetBase();
        }

        public string GetUsuario()
        {
            Conexion = new clsConexion();
            return Conexion.GetUsuario();
        }

        public string GetContraseña()
        {
            Conexion = new clsConexion();
            return Conexion.GetContraseña();
        }

        public DataTable Buscar() //ejecuta la busqueda cargada en la variable Query
        {
            try
            {
                Conexion = new clsConexion();
                Conexion.conectarSQL();
                Resultados = Conexion.ejecutarQuery(Query);
                Conexion.desconectarSQL();
                return Resultados;
            }
            catch (Exception ex)
            {
                Conexion.desconectarSQL();
                throw ex;
            }
        }

        public DataTable Buscar(List<string> valores)
        {
            try
            {
                LlenarParametros(DatosBusqueda,valores);
                Conexion = new clsConexion();
                Conexion.conectarSQL();
                Resultados = Conexion.ejecutarBusqueda(Comando, SPBuscar);
                Conexion.desconectarSQL();
                return Resultados;
            }
            catch (Exception ex)
            {
                Conexion.desconectarSQL();
                throw ex;
            }
        }
        //Consulta Ingreso Producto
        public DataTable BuscarEIP(List<string> valores)
        {
            try
            {
                LlenarParametros(DatosBusquedaEIP, valores);
                Conexion = new clsConexion();
                Conexion.conectarSQL();
                Resultados = Conexion.ejecutarBusqueda(Comando, SPBuscarEP);
                Conexion.desconectarSQL();
                return Resultados;
            }
            catch (Exception ex)
            {
                Conexion.desconectarSQL();
                throw ex;
            }
        }
        //Consulta Salida Producto
        public DataTable BuscarESP(List<string> valores)
        {
            try
            {
                LlenarParametros(DatosBusquedaESP, valores);
                Conexion = new clsConexion();
                Conexion.conectarSQL();
                Resultados = Conexion.ejecutarBusqueda(Comando, SPBuscarSalidaP);
                Conexion.desconectarSQL();
                return Resultados;
            }
            catch (Exception ex)
            {
                Conexion.desconectarSQL();
                throw ex;
            }
        }

        public void Insertar(List<string> valores)
        {
            try
            {               
                LlenarParametros(DatosInsertar,valores);
                Conexion = new clsConexion();
                Conexion.conectarSQL();
                Conexion.ejecutarSP(Comando, SPInsertar);
                Conexion.desconectarSQL();
            }
            catch (Exception ex)
            {
                Conexion.desconectarSQL();
                throw ex;
            }
        }

        public DataTable Obtener(List<string> valores)
        {
            try
            {
                LlenarParametros(DatosObtener, valores);
                Conexion = new clsConexion();
                Conexion.conectarSQL();
                Resultados = Conexion.ejecutarBusqueda(Comando, SPObtener);
                Conexion.desconectarSQL();
                return Resultados;

            }
            catch (Exception ex)
            {
                Conexion.desconectarSQL();
                throw ex;
            }
        }

        public void Actualizar(List<string> valores)
        {
            try
            {
                LlenarParametros(DatosActualizar,valores);
                Conexion = new clsConexion();
                Conexion.conectarSQL();
                Conexion.ejecutarSP(Comando, SPActualizar);
                Conexion.desconectarSQL();
            }
            catch (Exception ex)
            {
                Conexion.desconectarSQL();
                throw ex;
            }
        }

        protected void LlenarParametros(List<string> Datos,List<string> listaValores)
        {
            Comando = new SqlCommand();
            for (int i = 0; i < Datos.Count; i++)
            {
                Comando.Parameters.AddWithValue(Datos[i], listaValores[i]);
            }
        }

    }

    public class MantUsuario : MantenimientoGeneral
    {
        public MantUsuario()
        {
            SPBuscar = "BuscarUsuarios";
            SPInsertar = "InsertarUsuario";
            SPActualizar = "ModificarUsuario";
            DatosInsertar = new List<string>() { "@Usuario", "@Nombre", "@Apellido", "@Correo", "@Contraseña","@Estado", "@Rol" };
            DatosBusqueda = new List<string>() {"@Usuario"};
            DatosActualizar = new List<string>() { "@Usuario", "@Nombre", "@Apellido", "@Correo", "@Rol", "@Estado" };
        }
    }

    public class MantContraseña : MantenimientoGeneral
    {
        public MantContraseña()
        {
            SPActualizar = "ModificarContraseña";
            SPObtener = "BuscarContraseña";
            DatosActualizar = new List<string>() { "@Usuario","@Contraseña"};
            DatosObtener = new List<string>() {"@Usuario" };
        }
    }


    public class MantRoles : MantenimientoGeneral
    {
        public MantRoles()
        {
            SPInsertar = "InsertarRol";
            DatosInsertar = new List<string>() {"@Descripcion" };
        }
    }

    public class MantPermisos : MantenimientoGeneral
    {
        public MantPermisos()
        {
            SPInsertar = "InsertarPermisos";
            SPBuscar = "BuscarPermisos";
            SPActualizar = "ModificarPermisos";
            DatosInsertar = new List<string>() {"@Rol","@Pagina"};
            DatosActualizar = new List<string>() { "@Rol", "@Pagina" };
            DatosBusqueda = new List<string>() { "@Rol" };
        }
    }

    public class MantUbicacion : MantenimientoGeneral
    {
        public MantUbicacion()
        {
            SPInsertar = "InsertarUbicacion";
            DatosInsertar = new List<string>() {"@id", "@descripcion"};
        }
    }

    public class MantEquipo : MantenimientoGeneral
    {
        public MantEquipo()
        {
            SPInsertar = "InsertarEquipo";
            SPBuscar = "BuscarEquipo";
            SPActualizar = "ModificarEquipo";
            DatosInsertar = new List<string>() { "@codigo", "@serie","@marca", "@id_Ubicacion", "@tipo", "@descripcion","@Activo" , "@Prestado"};
            DatosBusqueda = new List<string>() { "@codigo", "@serie" };
            DatosActualizar = new List<string>() {"@codigo", "@serie", "@marca", "@id_Ubicacion", "@tipo", "@descripcion", "@Activo" };
        }
    }

    public class MantHerramienta : MantenimientoGeneral
    {
        public MantHerramienta()
        {
            SPInsertar = "InsertarHerramienta";
            SPBuscar = "BuscarHerramienta";
            SPActualizar = "ModificarHerramienta";
            DatosInsertar = new List<string>() { "@descripcion", "@id_Ubicacion", "@Cantidad", "@Marca" };
            DatosBusqueda = new List<string>() { "@descripcion"};
            DatosActualizar = new List<string>() { "@id", "@descripcion", "@id_Ubicacion", "@Cantidad", "@Marca" };
        }
    }

    public class MantProducto : MantenimientoGeneral
    {
        public MantProducto()
        {
            SPInsertar = "InsertarProducto";
            SPBuscar = "BuscarProducto";
            SPActualizar = "ModificarProducto";
            DatosInsertar = new List<string>() { "@Codigo", "@Nombre","@IdFamilia", "@Clasificacion", "@Corrosivo", "@Explosivo", "@Comburente", "@Inflamable", "@Irritante", "@Nocivo", "@Toxicidad","@Controlado","@Peligroso","@CAS" };
            DatosBusqueda = new List<string>() {"@codigo" };
            DatosActualizar = new List<string>() { "@codigoProducto", "@nombre", "@id_familia", "@clasificacion", "@corrosivo", "@explosivo", "@comburente", "@inflamable", "@irritante", "@nocivo", "@toxicidad", "@controlado", "@peligrosoparaAmbiente", "@cas" };
        }
    }

    public class EntradaProducto : MantenimientoGeneral
    {
        public EntradaProducto()
        {
            SPInsertar = "InsertarEntradaProducto";
            //Ingresar nueva SPBuscarEP
            SPBuscarEP = "BuscarEntradaMod";
            SPBuscar = "BuscarEntradaProducto";
            SPObtener = "Vencimiento";
            SPActualizar = "ModificarIngresoProducto";
            DatosInsertar = new List<string>() { "@IdProducto", "@IdUbicacion", "@NoOrden", "@NoFactura", "@Presentacion", "@Cantidad", "@Vencimiento", "@PrecioUnitario", "@IdUsuario", "@FechaCompra", "@Marca", "@Observaciones", "@IdProveedor" };
            DatosBusquedaEIP = new List<string>() { "@codigo", "@IdUbicacion" };
            DatosBusqueda = new List<string>() { "@Codigo", "@IdUbicacion" };
            DatosObtener = new List<string>() { "@Usuario" };
            DatosActualizar = new List<string>() { "@idEntrada","@codProducto", "@idUbicacion", "@oCompra", "@factura", "@codPresentacion", "@cantidad", "@fVencimiento", "@precioU", "@fCompra", "@marca", "@observacion", "@proveedor" };
        }
    }

    public class SalidaProducto : MantenimientoGeneral
    {
        public SalidaProducto()
        {
            SPInsertar = "InsertarSalidaProducto";
            SPBuscar = "BuscarSalidaProducto";
            SPBuscarSalidaP = "ConsultaSalidaProducto";
            SPActualizar = "ModificarSalidaProducto";
            DatosInsertar = new List<string>() { "@Sede", "@Facultad", "@Curso","@Carrera", "@Practica", "@Alumnos", "@IdProducto","@Cantidad", "@CodCatedratico", "@Ciclo","@IdUsuario", "@Fecha" , "@IdEntrada" ,"@Observaciones","@Tipo" };
            DatosBusqueda = new List<string>() {"@codigo" };
            DatosBusquedaESP = new List<string>() { "@codigo" };
            DatosActualizar = new List<string>() { "@codigo", "@idSalida", "@sede", "@facultad", "@curso", "@carrera", "@practica", "@nAlumnos", "@cantidad", "@codigoCat", "@ciclo", "@idUsuario", "@fechaEgreso", "@observaciones","@Tipo" };
        }
    }

    public class MantProveedor : MantenimientoGeneral
    {
        public MantProveedor()
        {
            SPInsertar = "InsertarProveedor";
            DatosInsertar = new List<string>() {"@Nit","@Nombre","@Direccion","@Telefono1","@Regimen","@Contacto","@Correo","@Telefono2"};
        }
    }

    public class MantFamilia : MantenimientoGeneral
    {
        public MantFamilia()
        {
            SPInsertar = "InsertarFamilia";
            DatosInsertar = new List<string>() { "@Nombre"};
        }
    }

    public class MantPresentacion : MantenimientoGeneral
    {
        public MantPresentacion()
        {
            SPInsertar = "InsertarPresentacion";
            DatosInsertar = new List<string>() { "@Unidad","@Cantidad" };
        }
    }

    public class AjusteProducto : MantenimientoGeneral
    {
        public AjusteProducto()
        {
            SPInsertar = "AjustesProducto";
            DatosInsertar = new List<string>() { "@IdProducto", "IdReferencia", "IdUsuario", "@Cantidad", "@Opcion", "@Tipo", "@Desc"};
        }
    }

    public class MantPrestamoEquipo : MantenimientoGeneral
    {
        public MantPrestamoEquipo()
        {
            SPInsertar = "PrestamosEquipo";
            SPBuscar = "BuscarEquipoDisponible";
            SPObtener = "EquipoPrestado";
            DatosBusqueda = new List<string>() {"@Codigo","@Tipo" , "@IdUbicacion" };
            DatosInsertar = new List<string>() {"@Operador","@Solicitante","@CodSolicitante","@Observaciones","@CodEquipo","@NoSerie"};
            DatosObtener = new List<string>() {"@Usuario" };
        }
    }

    public class MantDevolucionEquipo : MantenimientoGeneral
    {
        public MantDevolucionEquipo()
        {
            SPBuscar = "BuscarEquipoPrestado";
            SPInsertar = "DevolucionEquipo";
            DatosBusqueda = new List<string>() { "@Usuario", "@Carnet"};
            DatosInsertar = new List<string>() {"@Codigo","@Usuario" };
        }
    }
}
