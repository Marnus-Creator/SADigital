using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web;
using System.Web.UI.WebControls;


namespace SADigital
{
    public partial class Upload : System.Web.UI.Page
    {
        public SqlConnection con;
        public SqlCommand com;
        public DataSet dset;
        public SqlDataAdapter adapt;
        public string connstr = @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename =|DataDirectory|\SADdb.mdf; Integrated Security = True";


        protected void Page_Load(object sender, EventArgs e)
        {
            

            /*lblErrorMsg.Text = theCookie["UserID"].ToString();*/
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {

        }

       
        protected void btnUpload2_Click(object sender, EventArgs e)
        {
            HttpCookie theCookie = Request.Cookies["LoginCookie"];
            HttpPostedFile postedFile = FileUpload1.PostedFile;
            string filename = Path.GetFileName(postedFile.FileName);
            string fileExtension = Path.GetExtension(filename);
            int PhotoIsMine = 1;
            int PhotoIsShared = 0;
            
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
                    lblError2.Text = "Metadata Inserted";

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

                    int UserID = Convert.ToInt32( theCookie["UserID"]);

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
                catch(SqlException err)
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

        protected void btnChooseFile_Click(object sender, EventArgs e)
        {
            
           /*HttpPostedFile postedFile = FileUpload1.PostedFile;
            string filename = Path.GetFileName(postedFile.FileName);
            string fileExtension = Path.GetExtension(filename);
            int fileSize = postedFile.ContentLength;*/
        }
    }
}