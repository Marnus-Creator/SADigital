using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web;
using System.Web.UI.WebControls;

namespace SADigital
{
    public partial class Share : System.Web.UI.Page
    {
        public SqlConnection con;
        public SqlCommand com;
        public DataSet dset;
        public SqlDataAdapter adapt;
        public string connstr = "Server=tcp:cmpg323-prod.database.windows.net,1433;Initial Catalog=CMPG323-prod;Persist Security Info=False;User ID=Marnus@product@cmpg323-prod;Password=C0mput3r;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";

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

        protected void btnShare_Click(object sender, EventArgs e)
        {
            HttpCookie theCookie = Request.Cookies["LoginCookie"];
            HttpPostedFile postedFile = FileUpload1.PostedFile;
            string filename = Path.GetFileName(postedFile.FileName);
            string fileExtension = Path.GetExtension(filename);
            int PhotoIsMine = 0;
            int PhotoIsShared = 1;

            if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".gif" || fileExtension.ToLower() == ".png"
                || fileExtension.ToLower() == ".bmp" || fileExtension.ToLower() == ".ico" || fileExtension.ToLower() == ".jpeg" || fileExtension.ToLower() == ".tiff")
            {
                Stream stream = postedFile.InputStream;
                BinaryReader binaryReader = new BinaryReader(stream);
                Byte[] bytes = binaryReader.ReadBytes((int)stream.Length);

                String GeoLocation = tbxLocation.Text;
                String Tags = tbxTags.Text;
                String CapturedBy = tbxCapturedBy.Text;
                DateTime CapturedDate = DateTime.Now;
                int metadataID = 0;
                try
                {
                    string insert_query = "INSERT INTO Photo_MetaData VALUES(@GeoLocation,@Tags,@CapturedBy,@CapturedDate); SELECT SCOPE_IDENTITY()";

                    con = new SqlConnection(connstr);
                    con.Open();

                    com = new SqlCommand(insert_query, con);
                    com.Parameters.AddWithValue("@GeoLocation", GeoLocation);
                    com.Parameters.AddWithValue("@Tags", Tags);
                    com.Parameters.AddWithValue("@CapturedBy", CapturedBy);
                    com.Parameters.AddWithValue("@CapturedDate", CapturedDate);
                    metadataID = Convert.ToInt32(com.ExecuteScalar());
                    con.Close();

                    lblError2.Visible = true;
                    lblError2.ForeColor = System.Drawing.Color.Green;
                    lblError2.Text = "Photo Uploaded successfully";

                }
                catch
                {
                    lblErrorMsg.Visible = true;
                    lblErrorMsg.ForeColor = System.Drawing.Color.Red;
                    lblErrorMsg.Text = "Sorry, Cannot read photo MetaData into database";
                }


                try
                {
                    string insert_query = "INSERT INTO Photo_Details VALUES(@User_ID,@MetaData_ID,@Photo_IsMine,@Photo_IsShared,@FileName,@PhotoData)";

                    con = new SqlConnection(connstr);
                    con.Open();

                    int UserID = Convert.ToInt32(tbxShareWithID.Text);

                    com = new SqlCommand(insert_query, con);
                    com.Parameters.AddWithValue("@User_ID", UserID);
                    com.Parameters.AddWithValue("@MetaData_ID", metadataID);
                    com.Parameters.AddWithValue("@Photo_IsMine", PhotoIsMine);
                    com.Parameters.AddWithValue("@Photo_IsShared", PhotoIsShared);
                    com.Parameters.AddWithValue("@FileName", filename);
                    com.Parameters.AddWithValue("@PhotoData", bytes);
                    com.ExecuteNonQuery();

                    con.Close();
                }
                catch (SqlException err)
                {
                    lblErrorMsg.Visible = true;
                    lblErrorMsg.ForeColor = System.Drawing.Color.Red;
                    lblErrorMsg.Text = "Sorry, Cannot read photo details into database ";
                }
            }
            else
            {
                lblErrorMsg.Visible = true;
                lblErrorMsg.ForeColor = System.Drawing.Color.Red;
                lblErrorMsg.Text = "Sorry, only images: (.bmp, .ico, .jpeg, .jpg, .gif, .tiff, .png) can be uploaded";
            }
        }
    }
}