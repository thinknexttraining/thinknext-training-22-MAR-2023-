using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;

public partial class Admin_ImportExcelData : System.Web.UI.Page
{
    string  varIP ;
    DataTable dt = new DataTable();
    DataTable CSVTable = new DataTable();
    SqlConnection con = new SqlConnection(); //"Data Source=.; Initial Catalog=mvcTestDB; Integrated Security=True;");
    Class1 varClass1 = new Class1();
    Class1 obj = new Class1();
    String sess;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_import_Click(object sender, EventArgs e)
    {
        try
        {
            if (FileUpload1.HasFile)
            {
                int flag = 0;
                string FileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
                string RandomName = DateTime.Now.ToFileTime().ToString();
                string RandomFileName = RandomName + FileName;
                string Extension = Path.GetExtension(FileUpload1.PostedFile.FileName);
                string FolderPath = "~/Admin/upload/";
                string FilePath = Server.MapPath(FolderPath + RandomFileName);
                string folderserverpath = Server.MapPath(FolderPath);
                string PTPpath = "ftp://202.143.99.95/httpdocs/Admin/upload/";
                varClass1.UploadImageFTP(PTPpath+ RandomFileName , FileUpload1);
                //  string[] filenames = Directory.GetFiles(Server.MapPath("~/Admin/upload/"));
               FtpWebRequest clsRequest = (FtpWebRequest)WebRequest.Create(PTPpath);
                clsRequest.Method = WebRequestMethods.Ftp.ListDirectory;
               clsRequest.Credentials = new System.Net.NetworkCredential("thinknex", "d6u3Yi#5");
                clsRequest.UsePassive = true;
                clsRequest.UseBinary = true;
                clsRequest.EnableSsl = false;
                FtpWebResponse clsresponse = (FtpWebResponse)clsRequest.GetResponse();
                List<string> enteries = new List<string>();
                using (StreamReader reader = new StreamReader(clsresponse.GetResponseStream()))
                {
                    enteries = reader.ReadToEnd().Split(new string[] { Environment.NewLine }, StringSplitOptions.RemoveEmptyEntries).ToList();

                }
                clsresponse.Close();
                    try
                    {
                    //string[] filenames = Directory.GetFiles(folderserverpath);
                    int ii = Convert.ToInt32(enteries.Count.ToString());
                    string[] filenames = new string[ii];
                    filenames = enteries.ToArray();
                        if (filenames.Length > 0)
                        {
                            foreach (string filename1 in filenames)
                            {
                                if (RandomFileName == filename1)
                                {
                                    flag = 1;
                                    break;
                                }
                            }

                            if (flag == 0)
                            {
                                FileUpload1.SaveAs(FilePath);
                                ReadCSVFile(FilePath);
                            }
                        }
                        else
                        {
                            FileUpload1.SaveAs(FilePath);
                            ReadCSVFile(FilePath);
                        }
                        ReadCSVFile(FilePath);
                        btninsert.Enabled = true;
                    }
                    catch (Exception ex)
                    {
                        lblmsg.Text = ex.Message;
                        return;

                    }
            }
            else
            {
                String msg = "Select a file then try to import";
                lblmsg.Text = msg;
                return;
            }
        }

        catch (Exception ex)
        {
            throw ex;
        }
    }

    protected void btninsert_Click(object sender, EventArgs e)
    {
        con = new  SqlConnection(varClass1.GetConnectionString(varIP));
        con.Open();
        SqlCommand com;
        string sql = "Insert into Admissions(EnquiryNo, ModeOfEnquiry, CollegeName, Qualification, AdmissionDate, StudentName, FatherName, MotherName, ContactNo, StudentMobileNo, FatherMobileNo, Sex, EmailID, StatusCode, Session ,FranchiseCode, BrandName,	WhatsAppNo,	EnquiryStatus) values(@EnquiryNo,@ModeOfEnquiry, @CollegeName, @Qualification, @AdmissionDate, @StudentName, @FatherName,@MotherName, @ContactNo, @StudentMobileNo, @FatherMobileNo, @Sex, @EmailID, @StatusCode, @Session, @FranchiseCode,	@BrandName,	@WhatsAppNo, @EnquiryStatus)";
        string ses;
        ses = varClass1.Session12(sess);
        string[] array1 = new string[wdgList.Rows.Count];
        try
        {
            for (int i = 0; i < wdgList.Rows.Count; i++)
            {
                string id = maxSr();
                com = new SqlCommand(sql, con);


                //  Label lblEnqryNO = (Label)wdgList.Rows[i].FindControl("lblEnquiryNo");
                Label lblModeOfEnquiry = (Label)wdgList.Rows[i].FindControl("lblModEnq");
                Label lblCollegeName = (Label)wdgList.Rows[i].FindControl("lblClgName");
                Label lblQualification = (Label)wdgList.Rows[i].FindControl("lblQualification");
                Label lblStudentName = (Label)wdgList.Rows[i].FindControl("lblStudentName");
                Label lblFatherName = (Label)wdgList.Rows[i].FindControl("lblFatherName");
                Label lblMotherName = (Label)wdgList.Rows[i].FindControl("lblMotherName");
                Label lblContactNo = (Label)wdgList.Rows[i].FindControl("lblContactNo");
                Label lblStudentMobileNo = (Label)wdgList.Rows[i].FindControl("lblStudentMobileNo");
                Label lblFatherMobileNo = (Label)wdgList.Rows[i].FindControl("lblFatherMobileNo");
                Label lblSex = (Label)wdgList.Rows[i].FindControl("lblGender");
                Label lblEmailID = (Label)wdgList.Rows[i].FindControl("lblEmailID");
                Label lblStatusCode = (Label)wdgList.Rows[i].FindControl("lblStatusCode");
                // Label lblSession = (Label)wdgList.Rows[i].FindControl("lblSession");
                Label lblFranchiseCode = (Label)wdgList.Rows[i].FindControl("lblFranchiseCode");
                Label lblBrandName = (Label)wdgList.Rows[i].FindControl("lblBrandName");
                Label lblWhatsAppNo = (Label)wdgList.Rows[i].FindControl("lblWhatsApp");
                Label lblEnquiryStatus = (Label)wdgList.Rows[i].FindControl("lblEnquiryStatus");

                com.Parameters.AddWithValue("@EnquiryNo", id.ToString());
                com.Parameters.AddWithValue("@ModeOfEnquiry", lblModeOfEnquiry.Text );
                com.Parameters.AddWithValue("@CollegeName", lblCollegeName.Text );
                com.Parameters.AddWithValue("@Qualification", lblQualification.Text );
                com.Parameters.AddWithValue("@Admissiondate", System.DateTime.Now.ToString("MM/dd/yyyy"));
                com.Parameters.AddWithValue("@StudentName", lblStudentName.Text );
                com.Parameters.AddWithValue("@FatherName", lblFatherName.Text);
                com.Parameters.AddWithValue("@MotherName", lblMotherName.Text);
                com.Parameters.AddWithValue("@ContactNo", lblContactNo.Text);
                com.Parameters.AddWithValue("@StudentMobileNo", lblStudentMobileNo.Text);
                com.Parameters.AddWithValue("@FatherMobileNo", lblFatherMobileNo.Text);
                com.Parameters.AddWithValue("@Sex", lblSex.Text);
                com.Parameters.AddWithValue("@EmailID", lblEmailID.Text);
                com.Parameters.AddWithValue("@StatusCode", lblStatusCode.Text);
                com.Parameters.AddWithValue("@Session", ses);
                com.Parameters.AddWithValue("@FranchiseCode", lblFranchiseCode.Text);
                com.Parameters.AddWithValue("@BrandName", lblBrandName.Text);
                com.Parameters.AddWithValue("@WhatsAppNo", lblWhatsAppNo.Text);
                com.Parameters.AddWithValue("@EnquiryStatus",lblEnquiryStatus.Text);

                /*   com.Parameters.AddWithValue("@EnquiryNo", id.ToString());
                   com.Parameters.AddWithValue("@ModeOfEnquiry", wdgList.Rows[i].Cells[1].Text);
                   com.Parameters.AddWithValue("@CollegeName", wdgList.Rows[i].Cells[2].Text);
                   com.Parameters.AddWithValue("@Qualification", wdgList.Rows[i].Cells[3].Text);
                  // com.Parameters.AddWithValue("@AdmissionDate", wdgList.Rows[i].Cells[2].Text);
                   com.Parameters.AddWithValue("@StudentName", wdgList.Rows[i].Cells[5].Text);
                   com.Parameters.AddWithValue("@FatherName", wdgList.Rows[i].Cells[6].Text);
                   com.Parameters.AddWithValue("@MotherName", wdgList.Rows[i].Cells[7].Text);
                   com.Parameters.AddWithValue("@ContactNo", wdgList.Rows[i].Cells[8].Text);
                   com.Parameters.AddWithValue("@StudentMobileNo", wdgList.Rows[i].Cells[9].Text);
                   com.Parameters.AddWithValue("@FatherMobileNo", wdgList.Rows[i].Cells[10].Text);
                   com.Parameters.AddWithValue("@Sex", wdgList.Rows[i].Cells[11].Text);
                   com.Parameters.AddWithValue("@EmailID", wdgList.Rows[i].Cells[12].Text);
                   com.Parameters.AddWithValue("@StatusCode", wdgList.Rows[i].Cells[13].Text);
                   com.Parameters.AddWithValue("@Session", ses );
                   com.Parameters.AddWithValue("@FranchiseCode", wdgList.Rows[i].Cells[15].Text);
                   com.Parameters.AddWithValue("@BrandName", wdgList.Rows[i].Cells[16].Text);
                   com.Parameters.AddWithValue("@WhatsAppNo", wdgList.Rows[i].Cells[17].Text);
                   com.Parameters.AddWithValue("@EnquiryStatus", wdgList.Rows[i].Cells[18].Text);
                   */
                com.ExecuteNonQuery();
                //  array1[i] = wdgList.Rows[i].Cells[0].Text + " : " + wdgList.Rows[i].Cells[1].Text;
            }
            con.Close();
            bindGrid();
            lblmsg.Text = "Data Imported Successfully from Excel file";
        }
        catch (Exception ex)
        {
           lblmsg.Text=ex.Message;
        }
    }

    public string maxSr()
    {
        int maxid = 0;
        SqlCommand com1;
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        string sql1 = "SELECT MAX(EnquiryNo) AS MaxID FROM  Admissions where SrNo in (SELECT max(SrNo) from admissions)";
        com1 = new SqlCommand(sql1, con);
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        sda.SelectCommand = com1;
        sda.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            string aa = ds.Tables[0].Rows[0]["MaxID"].ToString();
            if (aa != "")
            {
                string id = ds.Tables[0].Rows[0]["MaxID"].ToString();
                maxid = Convert.ToInt32(id);
                maxid = maxid + 1;
            }
            else
            {
                maxid = 1001;
                //   maxid = maxid + 1;
            }
        }
        else
        {
            maxid = 1000;
        }
        sda.Dispose();
        ds.Dispose();
        return maxid.ToString();
    }

    public void bindGrid()
    {
        SqlCommand com2;
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        string sql2 = "Select EnquiryNo, ModeOfEnquiry, CollegeName, Qualification, AdmissionDate, StudentName, FatherName, MotherName, ContactNo, StudentMobileNo, FatherMobileNo, Sex, EmailID, StatusCode, Session ,FranchiseCode, BrandName,	WhatsAppNo,	EnquiryStatus from Admissions where convert(varchar(10), AdmissionDate,10)=convert(varchar(10),getdate(),10) Order by SrNo desc";
        com2 = new SqlCommand(sql2, con);
        SqlDataAdapter sda2 = new SqlDataAdapter();
        DataSet ds2 = new DataSet();
        sda2.SelectCommand = com2;
        sda2.Fill(ds2);
        if (ds2.Tables[0].Rows.Count > 0)
        {
            wdgList.DataSource = ds2;
            wdgList.DataBind();
        }
        sda2.Dispose();
        ds2.Dispose();
    }

    protected void btnExport_OnClick(object sender, EventArgs e)
    {
        Response.Redirect("ImportExcelData.aspx");
        //try
        //{
        //    Response.Clear();
        //    Response.ClearContent();
        //    StringBuilder sb = new StringBuilder();
        //    sb.AppendLine("ID,Name");
        //    Response.ContentType = "application/x-msexcel";

        //    Response.AddHeader("content-disposition", "attachment; filename=ManageList.csv");
        //    Response.Write(sb.ToString());
        //    if (ViewState["CSVTable"].ToString() != "")
        //    {
        //        dt = ViewState["CSVTable"] as DataTable;
        //        if ((dt != null) && (dt.Rows.Count > 0))
        //        {
        //            foreach (DataRow row in dt.Rows)
        //            {
        //                sb = new StringBuilder((string)row[0]);
        //                for (int i = 1; i < dt.Columns.Count; i++)
        //                {
        //                    if (row[i] is DBNull)
        //                        sb.Append(",NULL");
        //                    else if (i == 2)
        //                        sb.Append("," + new DateTime((long)row[i]).ToString("G"));
        //                    else
        //                        sb.Append("," + row[i].ToString());

        //                }
        //                sb.AppendLine();
        //                Response.Write(sb.ToString());
        //            }
        //        }
        //    }
        //    Response.Flush();
        //    Response.Close();
        //    Response.End();
        //}
        //catch (Exception ex) { }
    }

    public void ReadCSVFile(string fileName)
    {
        try
        {
            string connection = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source={0}\\;Extended Properties='Text;HDR=Yes;FMT=CSVDelimited'";

            connection = String.Format(connection, Path.GetDirectoryName(fileName));


            OleDbDataAdapter csvAdapter;
            csvAdapter = new OleDbDataAdapter("SELECT * FROM [" + Path.GetFileName(fileName) + "]", connection);

            if (File.Exists(fileName) && new FileInfo(fileName).Length > 0)
            {
                try
                {
                    csvAdapter.Fill(CSVTable);
                    if ((CSVTable != null) && (CSVTable.Rows.Count > 0))
                    {
                        ViewState["CSVTable"] = CSVTable;
                        wdgList.DataSource = CSVTable;
                        wdgList.DataBind();
                    }
                    else
                    {
                        String msg = "No records found";
                        lblmsg.Text = msg;
                    }
                }
                catch (Exception ex)
                {
                    throw new Exception(String.Format("Error reading Table {0}.\n{1}", Path.GetFileName(fileName), ex.Message));
                }
            }
        }
        catch (Exception ex) { }
    }

}