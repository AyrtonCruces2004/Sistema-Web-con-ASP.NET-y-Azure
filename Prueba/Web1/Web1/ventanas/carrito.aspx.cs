using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web1.ventanas
{
    public partial class carrito : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
        }

        private void BindGridView()
        {
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["cone"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT Id, Nombre, Precio FROM Productos", con))
                {
                    con.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    con.Close();

                    if (dt.Rows.Count > 0)
                    {
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
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