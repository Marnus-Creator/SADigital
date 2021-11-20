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
    public partial class Home : System.Web.UI.Page
    {
        public SqlConnection conn;
        public DataSet ds;
        public SqlDataAdapter adapt;
        public string connstr = @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename =|DataDirectory|\SADdb.mdf; Integrated Security = True";


        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

            Session["UserName"] = null;
            Session["Email"] = null;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profile.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Session["UserName"] = TbxUserName.Text;
            Session["Email"] = tbxEmail.Text;

            string username = TbxUserName.Text;
            string email = tbxEmail.Text;
            string password = tbxPassword.Text;

            try
            {

                SqlCommand myCommand = default(SqlCommand);
                conn = new SqlConnection(connstr);
                myCommand = new SqlCommand("SELECT User_Name,User_Email,User_Password FROM User_Details WHERE User_Name = @User_Name AND User_Email = @User_Email AND User_Password = @User_Password", conn);

                SqlParameter userName = new SqlParameter("@User_Name", SqlDbType.VarChar);
                SqlParameter userEmail = new SqlParameter("@User_Email", SqlDbType.VarChar);
                SqlParameter userPassword = new SqlParameter("@User_Password", SqlDbType.VarChar);

                userName.Value = TbxUserName.Text;
                userEmail.Value = tbxEmail.Text;
                userPassword.Value = tbxPassword.Text;

                myCommand.Parameters.Add(userName);
                myCommand.Parameters.Add(userEmail);
                myCommand.Parameters.Add(userPassword);

                myCommand.Connection.Open();

                SqlDataReader myReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection);

                if (myReader.Read() == true)
                {
                    HttpCookie theCookie = new HttpCookie("LoginCookie");
                    theCookie["UserName"] = myReader.GetString(0);

                    if (cbxRemberMe.Checked)
                    {
                        theCookie.Expires = DateTime.Now.AddMonths(6);
                    }
                    Response.Cookies.Add(theCookie);
                    Response.Redirect("Profile.aspx");
                }
                else
                {
                    lblError.Visible = true;
                    lblError.ForeColor = System.Drawing.Color.Red;
                    lblError.Text = "Cannot sign in";

                }
                if (conn.State == ConnectionState.Open)
                {
                    conn.Dispose();
                }
            }
            catch (SqlException error)
            {
                lblError.Text = error.Message;
            }


            //Response.Redirect("Profile.aspx");
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
             Response.Redirect("SignUp.aspx");
        }
    }
}