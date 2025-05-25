using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web1.ventanas
{
    using System;
    using System.Configuration;
    using System.Data.SqlClient;
    

    public partial class usuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RedirectToFacebook(object sender, EventArgs e)
        {
            Response.Redirect("https://www.facebook.com/your-facebook-page-url");
        }

        protected void RedirectToInstagram(object sender, EventArgs e)
        {
            Response.Redirect("https://www.instagram.com/creacionescesitar/?hl=es");
        }

        protected void accion_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["cone"].ConnectionString;

            using (SqlConnection conexion = new SqlConnection(connectionString))
            {
                try
                {
                    
                    conexion.Open();

                    string consulta = "SELECT * FROM Usuarios WHERE Nombre = @Usuario AND Contraseña = @Contraseña";
                    using (SqlCommand comando = new SqlCommand(consulta, conexion))
                    {
                        comando.Parameters.AddWithValue("@Usuario", usuario1.Text);
                        comando.Parameters.AddWithValue("@Contraseña", pass.Text);

                        using (SqlDataReader reader = comando.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                Response.Redirect("informacion.aspx");
                            }
                            else
                            {
                                lblMensajeError.Text = "Usuario o contraseña incorrectos";
                            }
                        }
                    }
                }
                catch (SqlException ex)
                {
                   
                    lblMensajeError.Text = $"Error al abrir la conexión: {ex.Message}";
                }
            }
        }

    }
}