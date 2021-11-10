using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SADigital
{
    public partial class Share : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnMyPhotos3_Click(object sender, EventArgs e)
        {
            Response.Redirect("MyPhotos.aspx");
        }

        protected void btnMyPhotos4_Click(object sender, EventArgs e)
        {
            Response.Redirect("MyPhotos.aspx");
        }

        protected void btnSharedPhotos3_Click(object sender, EventArgs e)
        {
            Response.Redirect("SharedPhotos.aspx");
        }

        protected void btnSharedPhotos4_Click(object sender, EventArgs e)
        {
            Response.Redirect("SharedPhotos.aspx");
        }

        protected void btnUpload1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Upload.aspx");
        }

        protected void btnUpload2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Upload.aspx");
        }
    }
}