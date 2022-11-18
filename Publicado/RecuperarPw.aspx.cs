using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
//using System.Security.Cryptography;
using System.Data;
using Logica;

namespace Inventario
{
    public partial class RecuperarPw : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtUsuario.Focus();
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            //LLamar Clase:
            SmtpCorreo encontrado = null;
            String Asunto = "TEC LANDIVAR - Restablecer Contraseña";
            String Mensaje = "Prueba 8.0- Envio Mensaje";
            //Buscar Usuario
            String usuario = txtUsuario.Text;
             MantUsuario busquedaU = new MantUsuario();
             List<string> Datos = new List<string>();
             DataTable Resultado = new DataTable();
             Datos.Add(usuario);
            
             Resultado = busquedaU.BuscarUnicoUsuario(Datos);
             if (Resultado.Rows.Count==1)
             {
                 String destinatario = Resultado.Rows[0].ItemArray[1].ToString();
                 encontrado = new SmtpCorreo(destinatario, Asunto, Mensaje);
                 Response.Write("<script language=javascript>alert('Operación realizada exitosamente.'); window.location = 'Login.aspx';</script>");   
                 //Response.Write("El usuario ha sido encontrado: " +destinatario);

             }
             else
             {
                 //Response.Write("Usuario no encontrado");
                 Response.Write("<script language=javascript>alert('Usuario no encontrado.'); window.location = 'Login.aspx';</script>");   
             }
           

           
          
        }

        
    }

     
}