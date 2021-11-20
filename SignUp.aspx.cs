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
        public SqlConnection con;
        public SqlCommand com;
        public DataSet dset;
        public SqlDataAdapter adapt;
        public string connstr = "Server=tcp:cmpg323-prod.database.windows.net,1433;Initial Catalog=CMPG323-prod;Persist Security Info=False;User ID=Marnus@product@cmpg323-prod;Password=C0mput3r;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";


        String Name = "";
        String Email = "";
        String Password = "";
        

        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        public void Insert(string Name,string Email, string Password)
        {

            try
            {
                string insert_query = "INSERT INTO User_Details VALUES(@User_Name,@User_Email,@User_Password)";

                con = new SqlConnection(connstr);
                con.Open();

                com = new SqlCommand(insert_query, con);
                com.Parameters.AddWithValue("@User_Name", Name);
                com.Parameters.AddWithValue("@User_Email", Email);
                com.Parameters.AddWithValue("@User_Password", Password);
                com.ExecuteNonQuery();

                con.Close();
            }
            catch
            {
                lblStatus.Visible = true;
                lblStatus.ForeColor = System.Drawing.Color.Red;
                lblStatus.Text = "Sorry, Cannot sign up";
            }


        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            Name = TbxUserName.Text;
            Email = tbxEmail.Text;
            Password = tbxPassword.Text;

            Insert(Name,Email,Password);


            lblStatus.Visible = true;
            lblStatus.Text = "You have successfully Signed Up, you may now Login";
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}