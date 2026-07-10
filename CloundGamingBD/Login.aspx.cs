using System;
using System.Web.Security;

namespace CloundGamingBD
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                Response.Redirect("~/Default.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string usuario = txtUsuario.Text.Trim();
            string password = txtPassword.Text.Trim();

            // Validar que los campos no estén vacíos
            if (string.IsNullOrEmpty(usuario) || string.IsNullOrEmpty(password))
            {
                MostrarError("Por favor, ingrese usuario y contraseña.");
                return;
            }

            if (ValidarCredenciales(usuario, password))
            {
                FormsAuthentication.SetAuthCookie(usuario, false);

                string returnUrl = Request.QueryString["ReturnUrl"];
                if (!string.IsNullOrEmpty(returnUrl))
                {
                    Response.Redirect(returnUrl, false);
                    Context.ApplicationInstance.CompleteRequest();
                }
                else
                {
                    Response.Redirect("~/Default.aspx", false);
                    Context.ApplicationInstance.CompleteRequest();
                }
            }
            else
            {
                MostrarError("Usuario o contraseña incorrectos.");
                txtPassword.Text = string.Empty; // Limpiar contraseña
            }
        }

        /// <summary>
        /// Valida las credenciales del usuario.
        /// Actualmente usa credenciales en memoria. Puede reemplazarse por lógica de BD.
        /// </summary>
        private bool ValidarCredenciales(string usuario, string password)
        {
            return DatabaseHelper.ValidateCredentials(usuario, password);
        }

        /// <summary>
        /// Muestra un mensaje de error en la interfaz
        /// </summary>
        private void MostrarError(string mensaje)
        {
            lblError.Text = mensaje;
            pnlError.Visible = true;
            // Agregar clase para mostrar el error
            pnlError.Attributes["class"] = "error-message show";
        }
    }
}
