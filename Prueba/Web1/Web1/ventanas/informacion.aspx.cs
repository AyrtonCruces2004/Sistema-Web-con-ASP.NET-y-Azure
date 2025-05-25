using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web1.ventanas
{
    public partial class informacion : System.Web.UI.Page
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
        



    }
}