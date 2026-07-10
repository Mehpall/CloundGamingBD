using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CloundGamingBD
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (!User.Identity.IsAuthenticated)
                {
                    Response.Redirect("~/Login.aspx", false);
                    Context.ApplicationInstance.CompleteRequest();
                }
                else
                {
                    lblNombreUsuario.Text = User.Identity.Name;
                }
            }
        }

        /// <summary>
        /// Maneja el clic en el botón de estadísticas
        /// </summary>
        protected void btnEstadisticas_Click(object sender, EventArgs e)
        {
            // Mostrar un mensaje de demostración
            ClientScript.RegisterStartupScript(this.GetType(), "alert", 
                "alert('Módulo de estadísticas en desarrollo. ¡Pronto disponible!');", true);
        }
    }
}