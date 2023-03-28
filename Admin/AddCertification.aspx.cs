using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_AddCertification : System.Web.UI.Page
{

    Class1 varclass = new Class1();
    SqlConnection con = new SqlConnection();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Timeout = 300;
        if (Session["myck"] == "")
        {
            Response.Redirect("~/default.aspx");
        }
        con.ConnectionString = varclass.GetConnectionString("");
        con.Open();
        if (!IsPostBack)
        {
            GetAllData();
        }

    }
    protected void btnupload_Click(object sender, EventArgs e)
    {
        if (fupcertificates.HasFile)
        {
            string[] validFileTypes = { "pdf" };

            string ext = System.IO.Path.GetExtension(fupcertificates.PostedFile.FileName);

            bool isValidFile = false;

            for (int i = 0; i < validFileTypes.Length; i++)
            {

                if (ext == "." + validFileTypes[i])
                {

                    isValidFile = true;

                    break;

                }

            }

            if (!isValidFile)
            {

                lblmsg.ForeColor = System.Drawing.Color.Red;

                lblmsg.Text = "Invalid File. Please upload a File with extension " +

                               string.Join(",", validFileTypes);

            }

            else
            {
                Boolean result;
                result=CHKData(txtno.Text, fupcertificates.PostedFile.FileName);

                if (result == true)
                {
                    lblmsg.Visible = true;
                    lblmsg.Text = "File Already Exist";
                    return;
                }
               
                string filename = fupcertificates.PostedFile.FileName;
                // UploadFile.PostedFile.Conten()
                string PTPpath = "ftp://202.143.99.95/httpdocs/Certificates/";
                varclass.UploadImageFTP(PTPpath + filename, fupcertificates);
                lblmsg.Text = fupcertificates.FileName;

                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertmessage", "javascript:alert('Your file uploaded succesfully.')", true);
                //lblmsg.ForeColor = System.Drawing.Color.Green;

                //lblmsg.Text = "File uploaded successfully.";

                string query = "Insert into Certification values('" + txtno.Text + "','" + fupcertificates.PostedFile.FileName + "','TNK101','THINKNEXT TRAINING')";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                lblmsg.Text = "File Upload successfully..";


            }

        }
    }
    public void GetAllData()
    {
       
        string Query = "select * from Certification where FranchiseCode='TNK101' and BrandName='THINKNEXT TRAINING' order by certificateno desc ";
        SqlCommand cmd = new SqlCommand(Query, con);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds, "Certification");
        if (ds.Tables["Certification"].Rows.Count > 0)
        {
            GDVdetails.DataSource = ds;
            GDVdetails.DataBind();
            pnldetail.Visible = true;
            lblmessage.Visible = true;
            lblmessage.Text = "Total Record:" + ds.Tables["Certification"].Rows.Count + "";
        }
        else
        {
            lblmessage.Visible = true;
            lblmessage.Text = "No Record Found";
        }
    }

    public bool CHKData(string No, string Name)
    {
        Class1 varclass = new Class1();
        SqlConnection con = default(SqlConnection);
        con = new SqlConnection(varclass.GetConnectionString(""));
        con.Open();
        string sql = null;
        sql = "select distinct FileName from Certification where CertificateNo='"+No+"' and Filename='"+Name+"' and FranchiseCode='TNK101' and BrandName='THINKNEXT TRAINING'";
        //sql = sql & " values (@UserName, @Password, @LoginType ) "
        SqlCommand cmd1 = new SqlCommand(sql, con);
        //cmd1.Parameters.AddWithValue("@Courses ", Course)
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        da.Fill(ds, "Certification");
        if (ds.Tables["Certification"].Rows.Count > 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    
}