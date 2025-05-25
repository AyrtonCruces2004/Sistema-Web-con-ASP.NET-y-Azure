using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web1
{
    public partial class catalogo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            string productoNombre = string.Empty;
            decimal productoPrecio = 0;

            lblMensaje.Text = string.Empty;
            lblMensaje1.Text = string.Empty;
            lblMensaje2.Text = string.Empty;
            lblMensaje3.Text = string.Empty;
            lblMensaje4.Text = string.Empty;
            lblMensaje5.Text = string.Empty;
            lblMensaje6.Text = string.Empty;
            lblMensaje7.Text = string.Empty;
            lblMensaje8.Text = string.Empty;
            lblMensaje9.Text = string.Empty;

            if (button.ID == "Button1")
            {
                productoNombre = "Vestido / Gorrita / Zapatos";
                productoPrecio = 199.00m;
                lblMensaje.Text = "Producto añadido al carrito";
            }
            else if (button.ID == "Button2")
            {
                productoNombre = "Vestido blanco con manguitas";
                productoPrecio = 149.00m;
                lblMensaje1.Text = "Producto añadido al carrito";
            }
            else if (button.ID == "Button3")
            {
                productoNombre = "Terno blanco (Incluye chaleco)";
                productoPrecio = 199.00m;
                lblMensaje2.Text = "Producto añadido al carrito";
            }
            else if (button.ID == "Button4")
            {
                productoNombre = "Pantalon / Camisa / Chaleco";
                productoPrecio = 169.00m;
                lblMensaje3.Text = "Producto añadido al carrito";
            }
            else if (button.ID == "Button5")
            {
                productoNombre = "Vestido blanco / Zapatos blancos";
                productoPrecio = 189.00m;
                lblMensaje4.Text = "Producto añadido al carrito";
            }
            else if (button.ID == "Button6")
            {
                productoNombre = "Bata Anet Blanco Tres Piezas";
                productoPrecio = 149.00m;
                lblMensaje5.Text = "Producto añadido al carrito";
            }
            else if (button.ID == "Button7")
            {
                productoNombre = "Vestido Blanco / Zapatos blancos";
                productoPrecio = 189.00m;
                lblMensaje6.Text = "Producto añadido al carrito";
            }
            else if (button.ID == "Button8")
            {
                productoNombre = "Conjuntos Bebe Blanco (Incluye gorrita)";
                productoPrecio = 159.00m;
                lblMensaje7.Text = "Producto añadido al carrito";
            }
            else if (button.ID == "Button9")
            {
                productoNombre = "Vestido Blanco con Lazo Rosado";
                productoPrecio = 199.00m;
                lblMensaje8.Text = "Producto añadido al carrito";
            }
            else if (button.ID == "Button10")
            {
                productoNombre = "Terno Blanco / Chaleco Blanco";
                productoPrecio = 209.00m;
                lblMensaje9.Text = "Producto añadido al carrito";
            }

            lblMensaje.Visible = true;
            lblMensaje1.Visible = true;
            lblMensaje2.Visible = true;
            lblMensaje3.Visible = true;
            lblMensaje4.Visible = true;
            lblMensaje5.Visible = true;
            lblMensaje6.Visible = true;
            lblMensaje7.Visible = true;
            lblMensaje8.Visible = true;
            lblMensaje9.Visible = true;

            
            if (!string.IsNullOrEmpty(productoNombre))
            {
                GuardarProductoEnBaseDeDatos(productoNombre, productoPrecio);
            }
        }

        private void GuardarProductoEnBaseDeDatos(string nombre, decimal precio)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["cone"].ConnectionString;

            using (SqlConnection conexion = new SqlConnection(connectionString))
            {
                conexion.Open();

                string consulta = "INSERT INTO Productos (Nombre, Precio) VALUES (@Nombre, @Precio)";

                using (SqlCommand comando = new SqlCommand(consulta, conexion))
                {
                    comando.Parameters.AddWithValue("@Nombre", nombre);
                    comando.Parameters.AddWithValue("@Precio", precio);

                    comando.ExecuteNonQuery();
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