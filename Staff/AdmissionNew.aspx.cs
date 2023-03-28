using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Collections.Generic;


public partial class Admin_AdmissionNew : System.Web.UI.Page
{
    string varIP = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillcourses(drpappliedfor);
        }

    }

    public void Session12()
    {
        SqlConnection con = default(SqlConnection);
        string sql = null;
        Class1 varClass1 = new Class1();
        con = new SqlConnection(varClass1.GetConnectionString(varIP));
        con.Open();
        SqlCommand cmd = new SqlCommand(sql, con);
        sql = "sp_GetMasterSession";
        cmd.CommandType = CommandType.StoredProcedure;

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "MasterSession");
        drpsession.DataSource = ds;
        drpsession.DataTextField = "Session";
        drpsession.DataValueField = "Session";
        drpsession.DataBind();
        drpsession.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    public void fillcourses(DropDownList ddl)
    {
        SqlConnection con = new SqlConnection();
        string sql = null;
        SqlDataAdapter da = default(SqlDataAdapter);
        DataSet ds = new DataSet();
        int rowctr = 0;
        Class1 varClass1 = new Class1();
        con = new SqlConnection(varClass1.GetConnectionString(varIP));
        con.Open();
        SqlCommand cmd = new SqlCommand(sql, con);
        sql = "sp_getCourses";
        cmd.CommandType = CommandType.StoredProcedure;
        //sql = "select Distinct Courses from MasterCourses where FranchiseCode='TNK101' order by Courses ";
        da = new SqlDataAdapter(sql, con);
        da.Fill(ds, "Course1");
        ddl.Items.Clear();
        ddl.Items.Add("Select");
        if (ds.Tables["Course1"].Rows.Count > 0)
        {
            while (rowctr < ds.Tables["Course1"].Rows.Count)
            {
                if (ds.Tables["Course1"].Rows[rowctr]["Courses"].ToString() == "")
                {
                    ddl.Items.Add(ds.Tables["Course1"].Rows[rowctr]["Courses"].ToString());
                }
                rowctr = rowctr + 1;
            }
            ddl.DataSource = ds;
            ddl.DataTextField = "Courses";
            ddl.DataBind();
        }
        con.Close();
    }




    public void Upavedata(string EnquiryNo)
    {
        SqlConnection con = default(SqlConnection);
        string sql = null;
        Class1 varClass1 = new Class1();
        con = new SqlConnection(varClass1.GetConnectionString(varIP));
        con.Open();
        SqlCommand cmd = new SqlCommand(sql, con);
        sql = " Update Admissions Set  CollegeName=@CollegeName, Qualification=@Qualification,";
        sql = sql + "  Batch=@Batch, IDNo=@IDNo, UniRollNo=@UniRollNo, AdmissionDate=@AdmissionDate,";
        sql = sql + "  Course=@Course, TrainingBatch=@TrainingBatch, BatchTiming=@BatchTiming,StudentName=@StudentName, ";
        sql = sql + "  FatherName=@FatherName, MotherName=@MotherName, ContactNo=@ContactNo, StudentMobileNo=@StudentMobileNo ,";
        sql = sql + "  FatherMobileNo=@FatherMobileNo, Sex=@Sex, DOB=@DOB, EmailID=@EmailID, CorrespondanceAddress=@CorrespondanceAddress,";
        sql = sql + "   Active=@Active, StatusCode=@StatusCode,";
        sql = sql + "  City=@City,AdmissionsStatus=@AdmissionsStatus ,";
        sql = sql + "  SessionMonth=@SessionMonth,SessionYear=@SessionYear,";
        sql = sql + "  StudentSnap=@Snap,FranchiseCode=@FranchiseCode,BrandName=@BrandName,ModeOfEnquiry=@ModeOfEnquiry";

        if (RdbEnquiryNo.Checked == true)
        {
            sql = sql + "   where EnquiryNo=isnull(@EnquiryNo,EnquiryNo) ";
        }
        else
        {
            sql = sql + "   where IDNo=@IdNo";
        }


        cmd.Parameters.AddWithValue("@FranchiseCode", txtFranchisecode.Text);
        cmd.Parameters.AddWithValue("@BrandName", txtbrandname.Text);
        cmd.Parameters.AddWithValue("@EnquiryNo", EnquiryNo);
        cmd.Parameters.AddWithValue("@DOB", txtDOB.Text);
        cmd.Parameters.AddWithValue("@AdmissionDate", txtjoiningdate.Text);
        if (!string.IsNullOrEmpty(txtcollegename.Text))
        {
            cmd.Parameters.AddWithValue("@CollegeName", txtcollegename.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@CollegeName", DBNull.Value);
        }

        if (!string.IsNullOrEmpty(txtcourse.Text))
        {
            cmd.Parameters.AddWithValue("@Qualification", txtcourse.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@Qualification", DBNull.Value);
        }

        if (!string.IsNullOrEmpty(txtbatch.Text))
        {
            cmd.Parameters.AddWithValue("@Batch", txtbatch.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@Batch", DBNull.Value);
        }

        if (!string.IsNullOrEmpty(txtIDNo.Text))
        {
            cmd.Parameters.AddWithValue("@IDNo", txtIDNo.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@IDNo", DBNull.Value);
        }

        if (!string.IsNullOrEmpty(txtIUniRollNo.Text))
        {
            cmd.Parameters.AddWithValue("@UniRollNo", txtIUniRollNo.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@UniRollNo", DBNull.Value);
        }

        if (drpappliedfor.Text != "Select")
        {
            cmd.Parameters.AddWithValue("@Course", drpappliedfor.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@Course", DBNull.Value);
        }

        if (drptrainingtype.Text != "Select")
        {
            cmd.Parameters.AddWithValue("@TrainingBatch", drptrainingtype.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@TrainingBatch", DBNull.Value);
        }

        if (!string.IsNullOrEmpty(txtbatchtimings.Text))
        {
            cmd.Parameters.AddWithValue("@BatchTiming", txtbatchtimings.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@BatchTiming", DBNull.Value);
        }

        if (!string.IsNullOrEmpty(txtStudentName.Text))
        {
            cmd.Parameters.AddWithValue("@StudentName", txtStudentName.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@StudentName", DBNull.Value);
        }

        if (!string.IsNullOrEmpty(txtFatherName.Text))
        {
            cmd.Parameters.AddWithValue("@FatherName", txtFatherName.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@FatherName", DBNull.Value);
        }

        if (!string.IsNullOrEmpty(txtMotherName.Text))
        {
            cmd.Parameters.AddWithValue("@MotherName", txtMotherName.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@MotherName", DBNull.Value);
        }

        if (!string.IsNullOrEmpty(txtContactNumber.Text))
        {
            cmd.Parameters.AddWithValue("@ContactNo", txtContactNumber.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@ContactNo", DBNull.Value);
        }

        if (!string.IsNullOrEmpty(txtstudentmobNo.Text))
        {
            cmd.Parameters.AddWithValue("@StudentMobileNo", txtstudentmobNo.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@StudentMobileNo", DBNull.Value);
        }

        if (!string.IsNullOrEmpty(txtFathermobNo0.Text))
        {
            cmd.Parameters.AddWithValue("@FatherMobileNo", txtFathermobNo0.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@FatherMobileNo", DBNull.Value);
        }

        if (ddlSex.Text != "Select")
        {
            cmd.Parameters.AddWithValue("@Sex", ddlSex.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@Sex", DBNull.Value);
        }

        if (!string.IsNullOrEmpty(txtEmailID.Text))
        {
            cmd.Parameters.AddWithValue("@EmailID", txtEmailID.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@EmailID", DBNull.Value);
        }

        if (!string.IsNullOrEmpty(txtcorrespondence.Text))
        {
            cmd.Parameters.AddWithValue("@CorrespondanceAddress", txtcorrespondence.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@CorrespondanceAddress", DBNull.Value);
        }
        //if (!string.IsNullOrEmpty(txtpermanentaddress.Text))
        //{
        //    cmd.Parameters.AddWithValue("@PermanentAddress", txtpermanentaddress.Text);
        //}
        //else
        //{
        //    cmd.Parameters.AddWithValue("@PermanentAddress", DBNull.Value);
        //}

        if (!string.IsNullOrEmpty(txttowncity.Text))
        {
            cmd.Parameters.AddWithValue("@City", txttowncity.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@City", DBNull.Value);
        }

        if (!string.IsNullOrEmpty(txtAdmissionsStatus.Text))
        {
            cmd.Parameters.AddWithValue("@AdmissionsStatus", "Admitted");
        }
        else
        {
            cmd.Parameters.AddWithValue("@AdmissionsStatus", DBNull.Value);
        }
        cmd.Parameters.AddWithValue("@SessionMonth", drpsessionmonth.Text);
        cmd.Parameters.AddWithValue("@SessionYear", drpsessionyear.Text);
        cmd.Parameters.AddWithValue("@StatusCode", "Admission");
        cmd.Parameters.AddWithValue("@StudentSnap", FileUpload1.FileName);
        cmd.Parameters.AddWithValue("@ModeOfEnquiry", "Admission");
        if (FileUpload1.HasFile)
        {
            string FolderPath = null;
            FolderPath = Server.MapPath("images/" + FileUpload1.FileName);
            FileUpload1.SaveAs(FolderPath);

        }
        cmd.Parameters.AddWithValue("@Active", 1);
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
    }



    public void Clearrec()
    {
        txtEnquiryNo.Text = "";
        txtsearchenq.Text = "";
        txtsearchenq.Focus();
        txtbatchtimings.Text = "";
        drpappliedfor.SelectedIndex = -1;
        drptrainingtype.SelectedIndex = -1;
        ddlSex.SelectedIndex = -1;
        txtcollegename.Text = "";
        txtcourse.Text = "";
        txtbatch.Text = "";
        txtIDNo.Text = "";
        txtIUniRollNo.Text = "";
        txtDOB.Text = String.Format("MM/dd/yyyy", System.DateTime.Now.Date);
        txtjoiningdate.Text = String.Format("MM/dd/yyyy", System.DateTime.Now.Date);
        txtStudentName.Text = "";
        txtFatherName.Text = "";
        txtMotherName.Text = "";
        txtContactNumber.Text = "";
        txtstudentmobNo.Text = "";
        txtFathermobNo0.Text = "";
        txtEmailID.Text = "";
        txtcorrespondence.Text = "";
        //txtpermanentaddress.Text = "";
        //txtreferenceby.Text = "";
        //txtrefdescription.Text = "";
        //txtbatchtimings.Text = "";
        //txtFollowupRemarks.Text = "";
        txtAdmissionsStatus.Text = "";
        FileUpload1.ID = "";
    }




    public string GenEnquirytNo()
    {
        SqlConnection con = default(SqlConnection);
        string sql = null;
        int EnquiryNo = 0;
        Class1 varClass1 = new Class1();
        con = new SqlConnection(varClass1.GetConnectionString(varIP));
        con.Open();
        sql = "SELECT MAX(IDNo) AS IDNo FROM  Admissions ";
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds, "Admissions");
        if (ds.Tables["Admissions"].Rows.Count > 0)
        {
            if (ds.Tables["Admissions"].Rows[0]["IDNo"].ToString() == "")
            {
                EnquiryNo = Convert.ToInt32(ds.Tables["Admissions"].Rows[0]["IDNo"]);
                EnquiryNo = EnquiryNo + 1;
            }
            else
            {
                EnquiryNo = 100001;
            }
        }
        return EnquiryNo.ToString();
    }





    public void Displaydata(string EnquiryNo)
    {
        SqlConnection con = default(SqlConnection);
        string sql = null;
        Class1 varClass1 = new Class1();
        con = new SqlConnection(varClass1.GetConnectionString(varIP));
        con.Open();
        SqlCommand cmd = new SqlCommand(sql, con);
        if (RdbEnquiryNo.Checked == true)
        {

            sql = " Select FranchiseCode,BrandName,EnquiryNo, ModeOfEnquiry, CollegeName, Qualification, Batch, IDNo, UniRollNo, convert(varchar, AdmissionDate, 101) As AdmissionDate, Course, TrainingBatch, BatchTiming, ";
            sql = sql + "  StudentName, FatherName, MotherName, ContactNo, StudentMobileNo, FatherMobileNo, Sex, convert(varchar, DOB, 101) As DOB , EmailID, CorrespondanceAddress,  ";
            sql = sql + "    Active, StatusCode,AdmissionsStatus,SessionMonth,SessionYear,StudentSnap from Admissions where EnquiryNo ='" + EnquiryNo + "' and FranchiseCode='TNK101' and BrandName='THINKNEXT TRAINING' ";

            //cmd.CommandText = "sp_GetByEnquiryNos";
            //sql = "sp_GetByEnquiryNos";
            //cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@FranchiseCode", "TNK101");
            //cmd.Parameters.AddWithValue("@BrandName", "THINKNEXT TRAINING");
            //cmd.Parameters.AddWithValue("@EnquiryNo", EnquiryNo);

        }
        else
        {
            sql = " Select FranchiseCode,BrandName,EnquiryNo, ModeOfEnquiry, CollegeName, Qualification, Batch, IDNo, UniRollNo, convert(varchar, AdmissionDate, 101) As AdmissionDate, Course, TrainingBatch, BatchTiming, ";
            sql = sql + "  StudentName, FatherName, MotherName, ContactNo, StudentMobileNo, FatherMobileNo, Sex, convert(varchar, DOB, 101) As DOB , EmailID, CorrespondanceAddress, ";
            sql = sql + "   Active, StatusCode,AdmissionsStatus,SessionMonth,SessionYear,StudentSnap from Admissions where IDNo ='" + EnquiryNo + "' and FranchiseCode='TNK101' and BrandName='THINKNEXT TRAINING' ";

            //cmd.CommandText = "sp_GetByIdNos";
            //sql = "sp_GetByIdNos";
            //cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@IDNo",EnquiryNo );
            //cmd.Parameters.AddWithValue("@FranchiseCode","TNK101");
            //cmd.Parameters.AddWithValue("@BrandName","THINKNEXT TRAINING");
        }

        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        DataSet ds = new DataSet();
        da.Fill(ds, "Admissions");
        if (ds.Tables["Admissions"].Rows.Count > 0)
        {
            lblmessage.Text = "";


            drpsessionmonth.SelectedIndex = drpsessionmonth.Items.IndexOf(drpsessionmonth.Items.FindByText(ds.Tables["Admissions"].Rows[0]["SessionMonth"].ToString()));
            drpsessionyear.SelectedIndex = drpsessionyear.Items.IndexOf(drpsessionyear.Items.FindByText(ds.Tables["Admissions"].Rows[0]["SessionYear"].ToString()));


            txtFranchisecode.Text = ds.Tables["Admissions"].Rows[0]["FranchiseCode"].ToString();
            txtbrandname.Text = ds.Tables["Admissions"].Rows[0]["BrandName"].ToString();
            txtEnquiryNo.Text = ds.Tables["Admissions"].Rows[0]["EnquiryNo"].ToString();

            if (string.IsNullOrEmpty(ds.Tables["Admissions"].Rows[0]["Course"].ToString()))
            {
                drpappliedfor.Text = "Select";
            }
            else
            {
                drpappliedfor.Text = ds.Tables["Admissions"].Rows[0]["Course"].ToString();

            }
            if (string.IsNullOrEmpty(ds.Tables["Admissions"].Rows[0]["TrainingBatch"].ToString()))
            {
                drptrainingtype.Text = "Select";
            }
            else
            {
                drptrainingtype.Text = ds.Tables["Admissions"].Rows[0]["TrainingBatch"].ToString();

            }
            txtbatchtimings.Text = ds.Tables["Admissions"].Rows[0]["BatchTiming"].ToString();
            if (string.IsNullOrEmpty(ds.Tables["Admissions"].Rows[0]["Sex"].ToString()))
            {
                drptrainingtype.Text = "Select";
            }
            else
            {
                ddlSex.Text = ds.Tables["Admissions"].Rows[0]["Sex"].ToString();
            }
            //ddlSex.Text = ds.Tables("Admissions").Rows(0).Item("Sex").ToString
            txtcollegename.Text = ds.Tables["Admissions"].Rows[0]["CollegeName"].ToString();
            txtcourse.Text = ds.Tables["Admissions"].Rows[0]["Qualification"].ToString();
            txtbatch.Text = ds.Tables["Admissions"].Rows[0]["Batch"].ToString();
            txtIDNo.Text = ds.Tables["Admissions"].Rows[0]["IDNo"].ToString();
            if (string.IsNullOrEmpty(txtIDNo.Text))
            {
                txtIDNo.Style.Add("Background-color", "SkyBlue");
                txtIDNo.Text = GenEnquirytNo();
            }
            else
            {
                txtIDNo.Style.Add("Background-color", "White");
            }
            txtIUniRollNo.Text = ds.Tables["Admissions"].Rows[0]["UniRollNo"].ToString();
            txtDOB.Text = ds.Tables["Admissions"].Rows[0]["DOB"].ToString();
            txtjoiningdate.Text = ds.Tables["Admissions"].Rows[0]["AdmissionDate"].ToString();
            txtStudentName.Text = ds.Tables["Admissions"].Rows[0]["StudentName"].ToString();
            txtFatherName.Text = ds.Tables["Admissions"].Rows[0]["FatherName"].ToString();
            txtMotherName.Text = ds.Tables["Admissions"].Rows[0]["MotherName"].ToString();
            txtContactNumber.Text = ds.Tables["Admissions"].Rows[0]["ContactNo"].ToString();
            txtstudentmobNo.Text = ds.Tables["Admissions"].Rows[0]["StudentMobileNo"].ToString();
            txtFathermobNo0.Text = ds.Tables["Admissions"].Rows[0]["FatherMobileNo"].ToString();
            txtEmailID.Text = ds.Tables["Admissions"].Rows[0]["EmailID"].ToString();
            txtcorrespondence.Text = ds.Tables["Admissions"].Rows[0]["CorrespondanceAddress"].ToString();
            //txtpermanentaddress.Text = ds.Tables["Admissions"].Rows[0]["PermanentAddress"].ToString();
            //txtreferenceby.Text = ds.Tables["Admissions"].Rows[0]["ReferenceBy"].ToString();
            //txtrefdescription.Text = ds.Tables["Admissions"].Rows[0]["ReferenceDescription"].ToString();
            txtAdmissionsStatus.Text = ds.Tables["Admissions"].Rows[0]["AdmissionsStatus"].ToString();
            //Image1.ImageUrl = "ftp://202.143.99.95/httpdocs/Admin/Images/" + ds.Tables("Admissions").Rows(0).Item("StudentSnap").ToString
            Image1.ImageUrl = "Images/" + ds.Tables["Admissions"].Rows[0]["StudentSnap"].ToString();
            //If ds.Tables("Admissions").Rows(0).Item("SessionMonth").ToString = "" Then
            //    DropDownList1.Text = "Select"
            //Else
            //    DropDownList1.Text = ds.Tables("Admissions").Rows(0).Item("SessionMonth").ToString

            //End If
            //DropDownList1.Items.Add(ds.Tables("Admissions").Rows(0).Item("SessionMonth").ToString)
            if (string.IsNullOrEmpty(ds.Tables["Admissions"].Rows[0]["SessionYear"].ToString()))
            {
                drpsession.Items[0].Text = "Select";
            }
            else
            {
                drpsession.Items[0].Text = ds.Tables["Admissions"].Rows[0]["SessionYear"].ToString();

            }
            //drpsession.Items.Add(ds.Tables("Admissions").Rows(0).Item("SessionYear").ToString)
            btnConfirmation.Visible = false;
        }
        else
        {
            Clearrec();
            lblmessage.Text = "Sorry ! no record found";
            txtsearchenq.Focus();
            btnConfirmation.Visible = false;
        }
        con.Close();
    }



    //    string s = ...
    //int result;
    //if (int.TryParse(s, out result))
    //{
    //     The string was a valid integer => use result here
    //}
    //else
    //{
    //     invalid integer
    //}



    protected void Button1_Click(object sender, EventArgs e)
    {
        int result;
        if (!string.IsNullOrEmpty(txtsearchenq.Text))
        {


            if (int.TryParse(txtsearchenq.Text, out result) == true)
            {
                Displaydata(txtsearchenq.Text);

            }
            else
            {
                lblmessage.Text = "enquiry no. must be numeric";
            }
        }
        else
        {
            lblmessage.Text = "Please enter enquiry No";
        }
    }
    protected void RdbUserId_CheckedChanged(object sender, EventArgs e)
    {
        lbltext.Text = "User Id";
        txtsearchenq.Text = String.Empty;
        lbltext.Visible = true;
        txtsearchenq.Visible = true;
        btnsearch.Visible = true;

    }
    protected void RdbEnquiryNo_CheckedChanged(object sender, EventArgs e)
    {
        lbltext.Text = "Enquiry No";
        txtsearchenq.Text = String.Empty;
        lbltext.Visible = true;
        txtsearchenq.Visible = true;
        btnsearch.Visible = true;
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        int result;
        if (!string.IsNullOrEmpty(txtsearchenq.Text))
        {


            if (int.TryParse(txtsearchenq.Text, out result) == true)
            {
                Displaydata(txtsearchenq.Text);

            }
            else
            {
                lblmessage.Text = "enquiry no. must be numeric";
            }
        }
        else
        {
            lblmessage.Text = "Please enter enquiry No";
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(txtsearchenq.Text))
        {
            if (drpsessionmonth.SelectedIndex == 0)
            {
                lblmessage.Text = "Please Select the Session Month";
                return;
            }
            if (drpsessionyear.SelectedIndex == 0)
            {
                lblmessage.Text = "Please Select the Session Year";
                return;

            }
            int result;
            if (int.TryParse(txtsearchenq.Text, out result) == true)
            {
                Upavedata(txtsearchenq.Text);

                Clearrec();
                lblmessage.Text = " Student Admitted Successfully ";
            }
            else
            {
                lblmessage.Text = "enquiry no. must be numeric";
            }
        }
        else
        {
            lblmessage.Text = "Please enter enquiry No";
        }

    }
}


    //[System.Web.Script.Services.ScriptMethod()]
    //[System.Web.Services.WebMethod]
    //public static List<string> SearchCustomers(string prefixText, int count)
    //{
    //    string varIP = "";
    //    using (SqlConnection conn = new SqlConnection())
    //    {
    //        SqlConnection con = default(SqlConnection);
    //        string sql = null;
    //        Class1 varClass1 = new Class1();
    //        con = new SqlConnection(varClass1.GetConnectionString(varIP));
    //        con.Open();
    //        SqlCommand cmd = new SqlCommand(sql, con);
    //        cmd.CommandText = "select Courses from mastercourses where Courses like @SearchText + '%'";
    //        cmd.Parameters.AddWithValue("@SearchText", prefixText);
    //        SqlDataAdapter da = new SqlDataAdapter(cmd);
    //        DataTable dt = new DataTable();
    //        da.Fill(dt);
    //        List<string> CountryNames = new List<string>();
    //        for (int i = 0; i < dt.Rows.Count; i++)
    //        {
    //            CountryNames.Add(dt.Rows[i][1].ToString());
    //        }
    //        return CountryNames;

            //cmd.Connection = conn;
            //conn.Open();
            //List<string> customers = new List<string>();
            //using (SqlDataReader sdr = cmd.ExecuteReader())
            //{
            //    while (sdr.Read())
            //    {
            //        customers.Add(sdr["Course"].ToString());
            //    }
            //}
            //conn.Close();
            //return customers;
       // }
   // }


  
        
        


