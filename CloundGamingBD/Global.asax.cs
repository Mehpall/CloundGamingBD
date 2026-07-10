using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace CloundGamingBD
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Código que se ejecuta al iniciar la aplicación
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }

        /// <summary>
        /// Se ejecuta cuando un usuario no autenticado intenta acceder a un recurso protegido
        /// </summary>
        protected void Application_PostAuthenticateRequest(object sender, EventArgs e)
        {
            // Verificar si la solicitud requiere autenticación
            var app = (HttpApplication)sender;
            string path = app.Request.Path.ToLower();

            // Páginas que no requieren autenticación
            if (path.Contains("login.aspx") || path.Contains("content/") || path.Contains("scripts/"))
            {
                return;
            }

            // Si el usuario no está autenticado y trata de acceder a un recurso protegido
            if (!app.User.Identity.IsAuthenticated && !path.EndsWith(".css") && !path.EndsWith(".js"))
            {
                // Redirigir a login (opcional, ya que Web.config maneja esto)
                // app.Response.Redirect("~/Login.aspx", true);
            }
        }

        /// <summary>
        /// Maneja errores de la aplicación
        /// </summary>
        protected void Application_Error(object sender, EventArgs e)
        {
            Exception ex = Server.GetLastError();
            if (ex != null)
            {
                // Log del error (puede implementarse con log4net, NLog, etc.)
                System.Diagnostics.Debug.WriteLine("Error en la aplicación: " + ex.Message);
            }
        }

        /// <summary>
        /// Se ejecuta cuando la sesión termina
        /// </summary>
        protected void Session_End(object sender, EventArgs e)
        {
            // Limpiar datos de sesión si es necesario
        }

        /// <summary>
        /// Configura la duración de la sesión
        /// </summary>
        protected void Session_Start(object sender, EventArgs e)
        {
            // Configuración de sesión inicial
            Session.Timeout = 20; // 20 minutos
        }
    }
}