﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ConsoleApplication1
{
    class Mensajes
    {
        private string smtpServer, correoApp, claveCorreoApp;
        private System.Net.Mail.SmtpClient smtpMail;
        public Mensajes()
        {
            smtpServer = System.Configuration.ConfigurationManager.AppSettings["smtpServer"];
            correoApp = System.Configuration.ConfigurationManager.AppSettings["CorreoApp"];
            claveCorreoApp = System.Configuration.ConfigurationManager.AppSettings["ClaveCorreoApp"];
            smtpMail = new System.Net.Mail.SmtpClient(smtpServer);
            smtpMail.Port = 25;
            smtpMail.Credentials = new System.Net.NetworkCredential(correoApp, claveCorreoApp);
        }
        public bool EnviarMensaje(string destinatario, string asunto, string mensaje)
        {
            try
            {
                System.Net.Mail.MailMessage m = new System.Net.Mail.MailMessage(correoApp, destinatario, asunto, mensaje);
                m.IsBodyHtml = true;
                smtpMail.Send(m);
                smtpMail.Dispose();

            }
            catch (Exception e)
            {
                Console.Write(e.StackTrace);
            }
            return true;
        }
    }
}
