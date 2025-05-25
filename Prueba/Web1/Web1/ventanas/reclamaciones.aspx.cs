using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Net;

namespace Web1.ventanas
{
    public partial class reclamaciones : Page
    {
        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            
            string nombreValue = nombre.Text;
            string dniValue = dni.Text;
            string direccionValue = direccion.Text;
            string correoValue = correo.Text;
            string productoValue = producto.SelectedValue;

            
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["cone"].ConnectionString;

            
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                
                string query = "INSERT INTO Reclamaciones (Nombre, DNI, Direccion, CorreoElectronico, Producto) VALUES (@Nombre, @DNI, @Direccion, @Correo, @Producto)";

                
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Nombre", nombreValue);
                    command.Parameters.AddWithValue("@DNI", dniValue);
                    command.Parameters.AddWithValue("@Direccion", direccionValue);
                    command.Parameters.AddWithValue("@Correo", correoValue);
                    command.Parameters.AddWithValue("@Producto", productoValue);

                    
                    connection.Open();

                    
                    command.ExecuteNonQuery();
                }
            }
        }

        protected void RedirectToFacebook(object sender, EventArgs e)
        {
            Response.Redirect("https://www.facebook.com/your-facebook-page-url");
        }

        protected void RedirectToInstagram(object sender, EventArgs e)
        {
            Response.Redirect("https://www.instagram.com/creacionescesitar/?hl=es");
        }
    }
}