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
    public partial class MyPhotos : System.Web.UI.Page
    {
        public SqlConnection conn;
        public SqlCommand comm;
        public DataSet ds;
        public SqlDataAdapter adapt;
        public string connstr = "Server=tcp:cmpg323-prod.database.windows.net,1433;Initial Catalog=CMPG323-prod;Persist Security Info=False;User ID=Marnus@product@cmpg323-prod;Password=C0mput3r;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";



        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie theCookie = Request.Cookies["LoginCookie"];
            conn = new SqlConnection(connstr);
            conn.Open();

            int UserID = Convert.ToInt32(theCookie["UserID"]);

            string sql_Photos = "SELECT FileName,PhotoData FROM Photo_Details WHERE User_ID LIKE '%" + UserID + "%'";

            ds = new DataSet();
            adapt = new SqlDataAdapter();
            comm = new SqlCommand(sql_Photos, conn);
            adapt.SelectCommand = comm;
            adapt.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();

            conn.Close();

           
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

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            Response.Redirect("Upload.aspx");
        }

        protected void btnUpload2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Upload.aspx");
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            HttpCookie theCookie = Request.Cookies["LoginCookie"];
            conn = new SqlConnection(connstr);
            conn.Open();

            int UserID = Convert.ToInt32(theCookie["UserID"]);

            //string sql_Photos = "SELECT FileName FROM Photo_Details WHERE User_ID LIKE '%" + UserID + "%' AND FileName LIKE '%" + tbxSearch.Text + "%'";
            string sql_Photos = "SELECT FileName,PhotoData FROM Photo_Details " +
                                "WHERE User_ID LIKE '%" + UserID + "%' AND FileName LIKE '%" + tbxSearch.Text + "%'";

            ds = new DataSet();
            adapt = new SqlDataAdapter();
            comm = new SqlCommand(sql_Photos, conn);
            adapt.SelectCommand = comm;
            adapt.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();

            conn.Close();
        }

        protected void btnSearch2_Click(object sender, EventArgs e)
        {
            HttpCookie theCookie = Request.Cookies["LoginCookie"];
            conn = new SqlConnection(connstr);
            conn.Open();

            int UserID = Convert.ToInt32(theCookie["UserID"]);

            //string sql_Photos = "SELECT FileName FROM Photo_Details WHERE User_ID LIKE '%" + UserID + "%' AND FileName LIKE '%" + tbxSearch.Text + "%'";
            string sql_Photos = "SELECT * FROM Photo_MetaData WHERE MetaData_GeoLocation LIKE '%" + tbxSearch2.Text + "%'";

            ds = new DataSet();
            adapt = new SqlDataAdapter();
            comm = new SqlCommand(sql_Photos, conn);
            adapt.SelectCommand = comm;
            adapt.Fill(ds);

            GridView2.DataSource = ds;
            GridView2.DataBind();

            conn.Close();
        }
    }
}