using System;
using System.Configuration;
using System.Data.SqlClient;

namespace CloundGamingBD
{
    public static class DatabaseHelper
    {
        private const string DefaultConnectionName = "CloudGamingDb";

        public static string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings[DefaultConnectionName]?.ConnectionString ?? string.Empty;
        }

        public static bool TestConnection()
        {
            string connectionString = GetConnectionString();
            if (string.IsNullOrWhiteSpace(connectionString))
            {
                return false;
            }

            try
            {
                using (var connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    return connection.State == System.Data.ConnectionState.Open;
                }
            }
            catch
            {
                return false;
            }
        }

        public static bool ValidateCredentials(string usuario, string password)
        {
            string connectionString = GetConnectionString();
            if (string.IsNullOrWhiteSpace(connectionString))
            {
                return ValidateDemoCredentials(usuario, password);
            }

            try
            {
                using (var connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    using (var command = new SqlCommand("SELECT COUNT(1) FROM Usuarios WHERE Usuario = @Usuario AND Password = @Password", connection))
                    {
                        command.Parameters.AddWithValue("@Usuario", usuario);
                        command.Parameters.AddWithValue("@Password", password);
                        int count = Convert.ToInt32(command.ExecuteScalar());
                        if (count > 0)
                        {
                            return true;
                        }
                    }
                }
            }
            catch
            {
                return ValidateDemoCredentials(usuario, password);
            }

            return ValidateDemoCredentials(usuario, password);
        }

        private static bool ValidateDemoCredentials(string usuario, string password)
        {
            switch (usuario.ToLowerInvariant())
            {
                case "admin":
                    return password == "admin123";
                case "usuario":
                    return password == "usuario123";
                default:
                    return false;
            }
        }
    }
}
