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
using System.Text.RegularExpressions;

public partial class Staff_AddAndUpdateAttendance : System.Web.UI.Page
{
    string IDNo1 = "";
    DataTable objTable = new DataTable();
    string varIP = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            txtdate.Text = DateTime.Now.ToString("MM/dd/yyyy");
            ShowCourse(drpCourse);
        }

    }

    public void ShowCourse(DropDownList ddl)
    {
        varIP = Request.ServerVariables["SERVER_NAME"].ToString();
        SqlConnection Con = default(SqlConnection);
        Class1 varClass1 = new Class1();
        Con = new SqlConnection(varClass1.GetConnectionString(varIP));
        Con.Open();
        SqlDataAdapter da = default(SqlDataAdapter);
        DataSet ds = default(DataSet);
        string sql = null;
        ddl.Items.Clear();
        ddl.Items.Insert(0, "Select");
        // sql = "select Distinct Training from Admissions where Training is not Null"
        sql = "select Distinct Session from mastersession  where FranchiseCode='" + txtfranchiseCode.Text + "' and BrandName='THINKNEXT TRAINING'";
        da = new SqlDataAdapter(sql, Con);
        ds = new DataSet();
        da.Fill(ds, "mastersession");
        int i = 0;
        for (i = 0; i <= ds.Tables["mastersession"].Rows.Count - 1; i++)
        {
            if (ds.Tables["mastersession"].Rows[i]["Session"]!= null)
            {
                ddl.Items.Add(ds.Tables["mastersession"].Rows[i]["Session"].ToString());
            }
        }
        Con.Close();
    }
    public void ShowGroup(string Course, DropDownList ddl)
    {
        string VAL = Session["myck"].ToString();
        varIP = Request.ServerVariables["SERVER_NAME"].ToString();
        SqlConnection Con = default(SqlConnection);
        Class1 varClass1 = new Class1();
        Con = new SqlConnection(varClass1.GetConnectionString(varIP));
        Con.Open();
        SqlDataAdapter da = default(SqlDataAdapter);
        DataSet ds = default(DataSet);
        string sql = null;
        ddl.Items.Clear();
        ddl.Items.Add("Select");
        //sql = "select Distinct BatchGroup from Admissions where Course=@Course AND FranchiseCode=@FranchiseCode and brandname=@brandname"

        sql = "select Distinct BatchName from MasterBatches where StaffIDNo='" + VAL + "' and Session='" + Course + "' And FranchiseCode='" + txtfranchiseCode.Text + "' And brandname='THINKNEXT TRAINING'";

        SqlCommand cmd = new SqlCommand(sql, Con);
        da = new SqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds, "MasterBatches");
        int i = 0;
        for (i = 0; i <= ds.Tables["MasterBatches"].Rows.Count - 1; i++)
        {
            if (ds.Tables["MasterBatches"].Rows[i]["BatchName"] != null)
            {
                ddl.Items.Add(ds.Tables["MasterBatches"].Rows[i]["BatchName"].ToString());
            }
        }

        Con.Close();
    }

    public void ShowStudents(string Training, string Group)
    {
        varIP = Request.ServerVariables["SERVER_NAME"].ToString();
        SqlConnection Con = default(SqlConnection);
        Class1 varClass1 = new Class1();
        Con = new SqlConnection(varClass1.GetConnectionString(varIP));
        Con.Open();
        SqlDataAdapter da = default(SqlDataAdapter);
        DataSet ds = default(DataSet);
        string sql = null;
         bool Result=varClass1.ChekDate(drpCourse.Text,drpgroup.Text,txtdate.Text);
        //= varClass1.ChekDate(drpCourse.Text, drpgroup.Text, txtdate.Text);
        if (Result == true)
        {
            btnUpdate.Visible = true;
            cmdSave.Visible = false;
            GridView1.Visible = true;
            gvAttendance.Visible = false;
            sql = "  SELECT   CONVERT(varchar, AttDate, 106) AS AttDate, IDNo,FatherName, StudentName,Course, Duration, BatchGroup, LectDelievered, LectAttended ";
            sql = sql + " FROM  AttRecord where Session='" + Training + "' and BatchGroup='" + Group + "'  and UserID='" + Session["myck"].ToString() + "' and ATTDate ='" + txtdate.Text + "' order by IDNo ASC ";
            SqlCommand cmd = new SqlCommand(sql, Con);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds, "Admissions");
            if (ds.Tables["Admissions"].Rows.Count > 0)
            {
                GridView1.DataSource = ds.Tables["Admissions"];
                GridView1.DataBind();
            }
            else
            {
                GridView1.DataSource = null;
                GridView1.DataBind();
            }
            lbltotalrecords.Visible = true;
            lbltotalrecords.Text = "Total Records:" + ds.Tables["Admissions"].Rows.Count.ToString() + "";
            Con.Close();
        }
        else 
        {
            btnUpdate.Visible = false;
            cmdSave.Visible = true;
            GridView1.Visible = false;
            gvAttendance.Visible = true;
            sql = "select B.IDNo,A.StudentName,A.FatherName,A.Duration,A.Course,B.BatchName,A.EnquiryNo from Admissions as A inner join BatchMembers as B on A.IDNo=B.IDNo inner join MasterBatches as M on B.BatchName=M.BatchName where B.BatchName='" + Group + "' and M.Session='" + Training + "' and M.BrandName='THINKNEXT TRAINING' and M.Franchisecode='TNK101' order by B.IDNo ASC";
            SqlCommand cmd = new SqlCommand(sql, Con);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds, "Admissions");
            if (ds.Tables["Admissions"].Rows.Count > 0)
            {
                gvAttendance.DataSource = ds.Tables["Admissions"];
                gvAttendance.DataBind();
            }
            else
            {
                gvAttendance.DataSource = null;
                gvAttendance.DataBind();
            }
            lbltotalrecords.Visible = true;
            lbltotalrecords.Text = "Total Records:" + ds.Tables["Admissions"].Rows.Count.ToString() + "";
            Con.Close();
        }

     
    }
    protected void cmdSave_Click(object sender, EventArgs e)
    {

    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {

    }
    protected void btnshow_Click(object sender, EventArgs e)
    {
        //varIP = Request.ServerVariables["SERVER_NAME"].ToString();
        //SqlConnection Con = default(SqlConnection);
        //Class1 varClass1 = new Class1();
        //Con = new SqlConnection(varClass1.GetConnectionString(varIP));
        //Con.Open();
        //SqlDataAdapter da = default(SqlDataAdapter);
        //DataSet ds = new DataSet();
        //string Sql = null;
        //Sql = "select B.IDNo,A.StudentName,A.FatherName,A.Duration,A.Course,M.BatchTimings,B.BatchName,A.EnquiryNo from Admissions as A inner join BatchMembers as B on A.IDNo=B.IDNo inner join MasterBatches as M on B.BatchName=M.BatchName where B.BatchName='" + drpgroup.Text + "' and M.Session='" + drpSession.Text + "' and M.BrandName='THINKNEXT TRAINING' and M.Franchisecode='TNK101' order by B.IDNo ASC";
        //da = new SqlDataAdapter(Sql, Con);
        //da.Fill(ds, "AttRecords1");

        //if (ds.Tables["AttRecords1"].Rows.Count == 0)
        //{
        //    lblMsg.Visible = true;
        //    lblMsg.Text = "No record found";
        //    Con.Close();
        //    return;

        //}
        //ViewState["AttAdedUserID"] = "";
        //objTable = ds.Tables["AttRecords1"];
        //objTable.Columns.Add("LecturesDelivered");
        //objTable.Columns.Add("LecturesAttended");

        //string Sql1 = null;
        //SqlDataAdapter da1 = default(SqlDataAdapter);
        //DataSet ds1 = new DataSet();
        //int RowCtr = 0;
        //SqlCommand cmd = default(SqlCommand);
        //string varsubjectgroup1 = null;
        //TextBox varAttend = default(TextBox);
        //CheckBox varChk = default(CheckBox);
        //while (RowCtr < objTable.Rows.Count)
        //{
        //    if (objTable.Rows[RowCtr]["IDNo"].ToString()!="")
        //    {
        //        IDNo1 = objTable.Rows[RowCtr]["IDNo"].ToString();
        //    }
        //    Sql1 = "Select LectDelievered, LectAttended,UserID from AttRecord ";

        //    Sql1 = Sql1 + " where session='" + drpCourse.Text + "' and batchGroup='" + drpgroup.Text + "' and attdate=@AttDate and FranchiseCode='TNK101' and BrandName='THINKNEXT TRAINING'";
        //    Sql1 = Sql1 + " and IDNo='" + IDNo1 + "' ";

        //    cmd = new SqlCommand(Sql1, Con);
        //    txtDate1 = Convert.ToDateTime(txtdate.Text);
        //    cmd.Parameters.AddWithValue("@AttDate", Strings.Format(txtDate1, "MM/dd/yyyy"));
        //    //End If
        //    da1 = new SqlDataAdapter(cmd);
        //    da1.Fill(ds1, "AttRecords2");
        //    if (ds1.Tables("AttRecords2").Rows.Count > 0)
        //    {
        //        ViewState("AttAdedUserID") = ds1.Tables("AttRecords2").Rows(0).Item("UserID").ToString;
        //        objTable.Rows(RowCtr).Item("LecturesDelivered") = ds1.Tables("AttRecords2").Rows(0).Item("LectDelievered");
        //        objTable.Rows(RowCtr).Item("LecturesAttended") = ds1.Tables("AttRecords2").Rows(0).Item("LectAttended");


        //    }
        //    else
        //    {
        //    }
        //    ds1.Tables("AttRecords2").Rows.Clear();
        //    RowCtr = RowCtr + 1;
        //}
        //gvAttendance.Visible = true;
        //gvAttendance.DataSource = objTable;
        //gvAttendance.DataBind();
        //gvAttendance.Width = 900;
        //RowCtr = 0;
        //while (RowCtr < gvAttendance.Rows.Count)
        //{
        //    varAttend = gvAttendance.Rows(RowCtr).FindControl("txtLectAttended");
        //    varAttend.Text = objTable.Rows(RowCtr).Item("LecturesAttended").ToString();
        //    varChk = gvAttendance.Rows(RowCtr).FindControl("chklecture");
        //    if (!string.IsNullOrEmpty(varAttend.Text))
        //    {
        //        if (varAttend.Text != "0")
        //        {
        //            varChk.Checked = true;
        //        }
        //        else
        //        {
        //            varChk.Checked = false;
        //        }
        //        //End If
        //    }
        //    RowCtr = RowCtr + 1;
        //}
        //if (gvAttendance.Rows.Count == 0)
        //{
        //    lblMsg.Visible = true;
        //    lblMsg.ForeColor = Drawing.Color.Red;
        //    lblMsg.Text = "No Record Found";
        //    gvAttendance.DataSource = null;
        //    gvAttendance.DataBind();
        //    lbltotalrecords.Text = "";
        //    return;
        //}
        //lblMsg.Visible = false;
        //lbltotalrecords.Visible = true;
        //lbltotalrecords.Text = "Total Records : " + gvAttendance.Rows.Count;
        //Con.Close();


        //ShowStudents(drpCourse.Text, drpgroup.Text);
    }
    protected void btnExport_Click(object sender, EventArgs e)
    {

    }
    protected void btnAddLectDelivered_Click(object sender, EventArgs e)
    {

        //bool isEmail = Regex.IsMatch(textBoxLectDelivered.Text.Trim(), @"[0-9]{1}");
       // if (!isEmail)
        //{
            // if (Information.IsNumeric(textBoxLectDelivered.Text) == false)
            // {
            // lblMsg.Text = "Lecture Delivered should be Numeric";
            // return;
            // }
            //int rowctr = 0;
            //while (rowctr < gvAttendance.Rows.Count)
            //{
            //    TextBox varlectAttended = default(TextBox);
            //    varlectAttended = gvAttendance.Rows(rowctr).FindControl("LectDelivered");
            //    varlectAttended.Text = textBoxLectDelivered.Text;
            //    rowctr = rowctr + 1;

            //}
        //}

    }
    protected void btnLecturesAttended_Click(object sender, EventArgs e)
    {

    }
    protected void drpCourse_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (drpCourse.Text != "Select")
        {
           ShowGroup(drpCourse.Text, drpgroup);
        }
      
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
