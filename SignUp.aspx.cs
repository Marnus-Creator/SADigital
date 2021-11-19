using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace SADigital
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {

            lblStatus.Visible = true;
            lblStatus.Text = "You have successfully Signed Up, you may now Login";
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}