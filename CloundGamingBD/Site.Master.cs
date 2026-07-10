using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CloundGamingBD
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            if (!Page.User.Identity.IsAuthenticated && !EsPaginaLogin())
            {
                Response.Redirect("~/Login.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bool bdDisponible = DatabaseHelper.TestConnection();
                string estadoBd = bdDisponible ? "BD SQL: OK" : "BD SQL: modo demo";

                if (Page.User.Identity.IsAuthenticated)
                {
                    lblUsuario.Text = string.Format("{0} | {1}", Page.User.Identity.Name, estadoBd);
                }
                else
                {
                    lblUsuario.Text = estadoBd;
                }
            }
        }

        private bool EsPaginaLogin()
        {
            return Page.Request.Path.EndsWith("Login.aspx", StringComparison.OrdinalIgnoreCase);
        }

        /// <summary>
        /// Maneja el evento de cierre de sesión
        /// </summary>
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Session.Clear();
            Session.Abandon();

            Response.Redirect("~/Login.aspx", false);
            Context.ApplicationInstance.CompleteRequest();
        }
    }
}