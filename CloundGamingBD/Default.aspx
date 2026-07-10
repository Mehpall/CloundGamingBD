<%@ Page Title="Inicio - Cloud Gaming" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CloundGamingBD._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .dashboard-header {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 30px;
            border-radius: 10px;
            margin-bottom: 30px;
            text-align: center;
        }

        .dashboard-header h1 {
            font-size: 2.5rem;
            margin-bottom: 10px;
        }

        .dashboard-header p {
            font-size: 1.1rem;
            opacity: 0.9;
        }

        .feature-card {
            background: white;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            padding: 25px;
            margin-bottom: 20px;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .feature-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.15);
        }

        .feature-icon {
            font-size: 2.5rem;
            margin-bottom: 15px;
        }

        .feature-card h3 {
            color: #333;
            margin-bottom: 10px;
        }

        .feature-card p {
            color: #666;
            line-height: 1.6;
        }

        .btn-feature {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            border: none;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 15px;
            transition: transform 0.2s;
        }

        .btn-feature:hover {
            transform: scale(1.05);
            color: white;
            text-decoration: none;
        }

        .welcome-message {
            background-color: #e7f3ff;
            border-left: 5px solid #667eea;
            padding: 20px;
            border-radius: 5px;
            margin-bottom: 30px;
        }

        .welcome-message h2 {
            color: #333;
            margin-top: 0;
        }

        .welcome-message p {
            color: #666;
            margin: 10px 0;
        }
    </style>

    <div class="dashboard-header">
        <h1>🎮 Bienvenido a Cloud Gaming</h1>
        <p>Tu plataforma de juegos en la nube</p>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="welcome-message">
                <h2>👋 ¡Hola, <asp:Label ID="lblNombreUsuario" runat="server" Text="Usuario"></asp:Label>!</h2>
                <p>Estamos encantados de tenerte en Cloud Gaming. Desde aquí puedes acceder a todos nuestros servicios y funcionalidades.</p>
                <p>Explora las opciones del menú de navegación superior para comenzar.</p>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4">
            <div class="feature-card">
                <div class="feature-icon">🎯</div>
                <h3>Mis Juegos</h3>
                <p>Accede a tu biblioteca de juegos y comienza a jugar inmediatamente. Todos tus favoritos en un solo lugar.</p>
                <asp:HyperLink ID="hlkMisJuegos" runat="server" CssClass="btn-feature" NavigateUrl="~/About">
                    Ver Juegos →
                </asp:HyperLink>
            </div>
        </div>

        <div class="col-md-4">
            <div class="feature-card">
                <div class="feature-icon">⚙️</div>
                <h3>Configuración</h3>
                <p>Personaliza tu experiencia. Ajusta gráficos, controles y preferencias de acuerdo a tus necesidades.</p>
                <asp:HyperLink ID="hlkConfiguracion" runat="server" CssClass="btn-feature" NavigateUrl="~/Contact">
                    Configurar →
                </asp:HyperLink>
            </div>
        </div>

        <div class="col-md-4">
            <div class="feature-card">
                <div class="feature-icon">📊</div>
                <h3>Estadísticas</h3>
                <p>Monitorea tu progreso y estadísticas de juego. Compara con otros jugadores y mejora tu rendimiento.</p>
                <asp:Button ID="btnEstadisticas" runat="server" CssClass="btn-feature" Text="Ver Estadísticas →" OnClick="btnEstadisticas_Click" />
            </div>
        </div>
    </div>

    <div class="row" style="margin-top: 30px;">
        <div class="col-md-12">
            <div class="feature-card">
                <h3>📰 Noticias Recientes</h3>
                <p><strong>Nuevo juego disponible:</strong> Hemos agregado los últimos títulos a nuestra biblioteca. ¡No te los pierdas!</p>
                <p><strong>Mejoras de rendimiento:</strong> Optimizamos nuestros servidores para una experiencia más fluida.</p>
                <p><strong>Eventos especiales:</strong> Participa en torneos exclusivos y gana premios increíbles.</p>
            </div>
        </div>
    </div>

</asp:Content>
