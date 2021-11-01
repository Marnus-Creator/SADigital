using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SADigital
{
    public partial class SharedPhotos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnMyPhotos1_Click(object sender, EventArgs e)
        {
            Response.Redirect("MyPhotos.aspx");
        }

        protected void btnShare4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Share.aspx");
        }

        protected void btnMyPhotos2_Click(object sender, EventArgs e)
        {
            Response.Redirect("MyPhotos.aspx");
        }

        protected void btnShare3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Share.aspx");
        }
    }
}