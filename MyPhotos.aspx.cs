using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SADigital
{
    public partial class MyPhotos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSharedPhotos1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SharedPhotos.aspx");
        }

        protected void btnShare1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Share.aspx");
        }

        protected void btnSharedPhotos2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SharedPhotos.aspx");
        }

        protected void btnShare2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Share.aspx");
        }
    }
}