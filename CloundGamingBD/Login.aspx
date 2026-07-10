<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CloundGamingBD.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Cloud Gaming - Login</title>
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
    <link rel="stylesheet" href="Content/Site.css" />
    <style type="text/css">
        body {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .login-container {
            background: white;
            border-radius: 10px;
            box-shadow: 0 10px 40px rgba(0, 0, 0, 0.3);
            padding: 40px;
            width: 100%;
            max-width: 400px;
        }

        .login-header {
            text-align: center;
            margin-bottom: 30px;
        }

        .login-header h1 {
            color: #333;
            font-size: 28px;
            margin-bottom: 10px;
        }

        .login-header p {
            color: #999;
            font-size: 14px;
            margin: 0;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            color: #333;
            font-weight: 500;
        }

        .form-group input {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
            transition: border-color 0.3s;
        }

        .form-group input:focus {
            outline: none;
            border-color: #667eea;
            box-shadow: 0 0 5px rgba(102, 126, 234, 0.1);
        }

        .btn-login {
            width: 100%;
            padding: 12px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: transform 0.2s;
        }

        .btn-login:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 20px rgba(102, 126, 234, 0.3);
        }

        .error-message {
            background-color: #f8d7da;
            color: #721c24;
            padding: 12px;
            border-radius: 5px;
            margin-bottom: 20px;
            border: 1px solid #f5c6cb;
            display: none;
        }

        .error-message.show {
            display: block;
        }

        .demo-credentials {
            background-color: #e7f3ff;
            border-left: 4px solid #667eea;
            padding: 12px;
            margin-top: 20px;
            border-radius: 4px;
            font-size: 13px;
            color: #333;
        }

        .demo-credentials p {
            margin: 5px 0;
        }
    </style>
</head>
<body>
    <form id="frmLogin" runat="server">
        <div class="login-container">
            <div class="login-header">
                <h1>☁️ Cloud Gaming</h1>
                <p>Inicia sesión para continuar</p>
            </div>

            <asp:Panel ID="pnlError" CssClass="error-message" runat="server">
                <asp:Label ID="lblError" runat="server"></asp:Label>
            </asp:Panel>

            <div class="form-group">
                <label for="txtUsuario">Usuario</label>
                <asp:TextBox ID="txtUsuario" runat="server" placeholder="Ingrese su usuario" autocomplete="off"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txtPassword">Contraseña</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Ingrese su contraseña" autocomplete="off"></asp:TextBox>
            </div>

            <asp:Button ID="btnLogin" runat="server" Text="Iniciar Sesión" CssClass="btn-login" OnClick="btnLogin_Click" />

            <div class="demo-credentials">
                <p><strong>🔐 Credenciales de Demostración:</strong></p>
                <p>Usuario: <strong>admin</strong></p>
                <p>Contraseña: <strong>admin123</strong></p>
                <p style="margin-top: 8px; border-top: 1px solid #bbb; padding-top: 8px;">O</p>
                <p>Usuario: <strong>usuario</strong></p>
                <p>Contraseña: <strong>usuario123</strong></p>
            </div>
        </div>
    </form>
</body>
</html>
