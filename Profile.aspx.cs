using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SADigital
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void btnMyPhotos_Click(object sender, EventArgs e)
        {
            Response.Redirect("MyPhotos.aspx");
        }

        protected void btnMyPhotos0_Click(object sender, EventArgs e)
        {
            Response.Redirect("MyPhotos.aspx");
        }

        protected void btnSharedPhotos_Click(object sender, EventArgs e)
        {
            Response.Redirect("SharedPhotos.aspx");
        }

        protected void btnSharedPhotos0_Click(object sender, EventArgs e)
        {
            Response.Redirect("SharedPhotos.aspx");
        }

        protected void btnShare_Click(object sender, EventArgs e)
        {
            Response.Redirect("Share.aspx");
        }

        protected void btnShare0_Click(object sender, EventArgs e)
        {
            Response.Redirect("Share.aspx");
        }
    }
}