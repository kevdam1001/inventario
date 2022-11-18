﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;

namespace Inventario
{
    public class SmtpCorreo
    {
        Boolean estado = true;
        String merror = "";



        public Boolean Estado
        {
            get { return estado; }

        }

        public String mensajeError
        {
            get { return merror; }

        }


        public SmtpCorreo(String destinatario, String asunto, String mensaje) {
            MailMessage correo = new MailMessage();
            SmtpClient protocolo = new SmtpClient();

            correo.To.Add(destinatario);
            correo.From = new MailAddress("djwvinci@gmail.com", "Walter Rodriguez", System.Text.Encoding.UTF8);
            correo.Subject = asunto;
            correo.SubjectEncoding = System.Text.Encoding.UTF8;
            correo.Body = mensaje;
            correo.BodyEncoding = System.Text.Encoding.UTF8;
            correo.IsBodyHtml = false;

            protocolo.Credentials = new System.Net.NetworkCredential("djwvinci@gmail.com", "200924505");
            protocolo.Port = 587;
            protocolo.Host = "smtp.gmail.com";
            protocolo.EnableSsl = true;
        }

    }
}