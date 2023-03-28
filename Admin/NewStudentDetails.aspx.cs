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
using System.IO;
public partial class Admin_NewStudentDetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(); //("Data Source=103.21.58.193;Initial Catalog=dbthinknex;Persist Security Info=True;User ID=thinknex;Password=techsmart?");
    Class1 obj = new Class1();
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Timeout = 300;
        //if (Session["myck"] == null)
        //{
        //    Response.Redirect("~/default.aspx");
        //}
        if ((Session["myck"] == "" ) || (Session["myck"]==null))
        {
            Response.Redirect("~/default.aspx");
        }
        con.ConnectionString = obj.GetConnectionString("constr");
        if (!IsPostBack)
        {
            DateTime dt = System.DateTime.Now;
            string date = dt.ToString("MM/dd/yyyy").Replace('-', '/');
            txtdatefrom.Text = date;
            txtdateto.Text = date;
            // cal.StartDate = DateTime.Today;
            //   CalendarExtender1.StartDate = DateTime.Now.Date;
            con.Open();
            ShowDuration();
            ShowCourses();
            Session12();
            GetModeofenquiry();
            //bind_for_gridview1();

        }
    }
    protected void toggle10(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con1 = new SqlConnection();
        SqlDataAdapter adp1 = new SqlDataAdapter("select * from Admissions where EnquiryNo='" + Request.QueryString["EnquiryNo"].ToString() + "'", con1);
        DataSet ds1 = new DataSet();
        adp1.Fill(ds1);
        //mail = ds1.Tables[0].Rows[0][5].ToString();
        //pass1 = ds1.Tables[0].Rows[0][6].ToString();
        //collegename = ds1.Tables[0].Rows[0][3].ToString();
        //name = ds1.Tables[0].Rows[0][1].ToString();
        //course = ds1.Tables[0].Rows[0][7].ToString();
        con1.Close();
    }
    private void Display()
    {

        //this query using with triggers link psth is =D:\vikas\Backup\Backup ThinkNEXT Website\trigger for followup date page.txt
        SqlDataAdapter adp = new SqlDataAdapter("select Session,EnquiryNo,Name,CollegeName,Course,MobileNo,EmailID,CONVERT(VARCHAR(10),DateEntry,103) as DateEntry,FollowupRemarks,convert(Varchar(10),NextDateEntry,103) as NextDateEntry,convert(Varchar(10),Date,103) as Date ,Status from FollowupRemarks order by SerialNo desc", con);
        DataSet ds = new DataSet();

        adp.Fill(ds);


        if (ds.Tables[0].Rows.Count > 0)
        {
            btnexcel.Visible = true;
            GridView1.DataSource = ds.Tables[0];
            lblmsg.Text = "Total Records : " + ds.Tables[0].Rows.Count;
            // lblmsg.Text = "Total Records: " + ds.Tables[1].Rows[0].ToString();
            GridView1.DataBind();
        }
        else
        {
            lblmsg.Visible = true;
            lblmsg.Text = "No Record";
        }


    }
    public void ShowEnquiry()
    {
        string str = "select * from Admissions where StatusCode='Enquiry'";
        SqlDataAdapter da = new SqlDataAdapter(str, con);
        DataSet ds = new DataSet();
        da.Fill(ds, "Admissions");
        if (ds.Tables[0].Rows.Count > 0)
        {
            gvdetails.DataSource = ds;
            gvdetails.DataBind();
            btnexcel.Visible = true;
        }
        else
        {
            gvdetails.DataSource = ds;
            gvdetails.DataBind();
            lblmsg.Text = "No Enquiries Found";
            btnexcel.Visible = false;
        }
    }
    public void ShowAdmissions()
    {
        string str = "select * from Admissions where StatusCode='Admission'";
        SqlDataAdapter da = new SqlDataAdapter(str, con);
        DataSet ds = new DataSet();
        da.Fill(ds, "Admissions");
        if (ds.Tables[0].Rows.Count > 0)
        {
            gvdetails.DataSource = ds;
            gvdetails.DataBind();
            btnexcel.Visible = true;
        }
        else
        {
            gvdetails.DataSource = ds;
            gvdetails.DataBind();
            lblmsg.Text = "No Admissions Found";
            btnexcel.Visible = false;
        }
    }
    public void ShowSession()
    {
        string str = "select * from Admissions where Session='" + ddlsession.Text + "'";
        SqlDataAdapter da = new SqlDataAdapter(str, con);
        DataSet ds = new DataSet();
        da.Fill(ds, "Admissions");
        if (ds.Tables[0].Rows.Count > 0)
        {
            gvdetails.DataSource = ds;
            gvdetails.DataBind();
            btnexcel.Visible = true;
        }
        else
        {

            gvdetails.DataSource = ds;
            gvdetails.DataBind();
            lblmsg.Text = "No Admissions Found";
            btnexcel.Visible = false;
        }

    }
    public void ShowDuration()
    {

        string str = " select Distinct ModeofEnquiry from Admissions where FranchiseCode='TNK101'";
        SqlDataAdapter da = new SqlDataAdapter(str, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        ddltraining.DataSource = ds;
        ddltraining.DataTextField = "ModeofEnquiry";
        ddltraining.DataValueField = "ModeofEnquiry";
        ddltraining.DataBind();
        ddltraining.Items.Insert(0, new ListItem("Select"));

    }
    public void ShowCourses()
    {
        string str = " select Distinct Courses from MasterCourses where FranchiseCode='TNK101'";
        SqlDataAdapter da = new SqlDataAdapter(str, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        ddlcourse.DataSource = ds;
        ddlcourse.DataTextField = "Courses";
        ddlcourse.DataValueField = "Courses";
        ddlcourse.DataBind();
        ddlcourse.Items.Insert(0, new ListItem("Select"));

    }
    private void DisplayAllEnquiryAndAdmission()
    {
        string query = "";
        //if (ddladmissiontrype.SelectedIndex == 0)
        //{
        //    lblmsg.Text = "Please Select the Status Type";
        //    return;
        //}

        if (chkbetweendate.Checked == true)
        {
            if (ddladmissiontrype.Text != "Select")
            {
                query = "select Session,CONVERT(VARCHAR(10),AdmissionDate,103) as AdmissionDate,EnquiryNo,ModeOfEnquiry,CollegeName,Course,Duration,StudentName,ContactNo,";
                query = query + "StudentMobileNo,EmailID,City,WhatsAppNo,ReferenceBy,RefContactNo,refEmailID,RefDesignation,RepresentativeName,SeminarPerson from Admissions where ";
                query = query + "StatusCode in ('Admission','Enquiry')";
                query = query + " AND BrandName='THINKNEXT TRAINING' and ";
                query = query + " FranchiseCode='" + TxtFranchiseCode.Text + "'";
                query = query + "And  AdmissionDate Between convert(varchar (50),'" + txtdatefrom.Text + "',120) and convert(varchar (50),'" + txtdateto.Text + "',120) order by EnquiryNo desc";
            }
        }
        else
        {
            query = "select Session,CONVERT(VARCHAR(10),AdmissionDate,103) as AdmissionDate,EnquiryNo,ModeOfEnquiry,CollegeName,Course,Duration,StudentName,ContactNo,";
            query = query + "StudentMobileNo,EmailID,City,WhatsAppNo,ReferenceBy,RefContactNo,refEmailID,RefDesignation,RepresentativeName,SeminarPerson from Admissions where ";
            query = query + "StatusCode in ('Admission','Enquiry')";
            query = query + " AND BrandName='THINKNEXT TRAINING' and ";
            query = query + " FranchiseCode='" + TxtFranchiseCode.Text + "' order by EnquiryNo desc";
            //  query = query + "And  AdmissionDate Between convert(varchar (50),'" + txtdatefrom.Text + "',120) and convert(varchar (50),'" + txtdateto.Text + "',120)";

            //query = "select Session,EnquiryNo,CollegeName,Course,Duration,StudentName,StudentMobileNo,ContactNo,";
            //query = query + "EmailID,WhatsAppNo,City,ReferenceBy,RefContactNo,refEmailID,RefDesignation from Admissions where StatusCode='" + ddladmissiontrype.Text + "' and FranchiseCode='" + TxtFranchiseCode.Text + "' ";
            //query = query + "and BrandName='THINKNEXT TRAINING'";

        }
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        da.Fill(ds, "Admissions");
        if (ds.Tables[0].Rows.Count > 0)
        {
            gvdetails.DataSource = ds;
            gvdetails.DataBind();
            lblmsg.Text = "Total Records : " + ds.Tables[0].Rows.Count;
            btnexcel.Visible = true;
        }
        else
        {
            gvdetails.DataSource = ds;
            gvdetails.DataBind();
            lblmsg.Text = "No Admissions Found";
            btnexcel.Visible = false;
        }
    }
    public void ShowDetailOFCourse()
    {
        con.Open();
        string str = "select * from Admissions Where Course='" + ddlcourse.SelectedItem.Text + "'";
        SqlCommand cmd = new SqlCommand(str, con);
        //cmd.Parameters.AddWithValue("@Training", ddlcourse.Text);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "Admissions");
        if (ds.Tables["Admissions"].Rows.Count > 0)
        {
            gvdetails.DataSource = ds;
            gvdetails.DataBind();
            btnexcel.Visible = true;
        }
        else
        {

            gvdetails.DataSource = ds;
            gvdetails.DataBind();
            lblmsg.Text = "No Admissions Found In Current Session";
            btnexcel.Visible = false;
        }
        con.Dispose();
        con.Close();
    }
    public void ShowDetailOFSessionWiseCourse()
    {
        con.Open();
        string str = "select * from Admissions Where SessionYear='" + ddlsession.SelectedItem.Text + "'";
        SqlCommand cmd = new SqlCommand(str, con);
        //cmd.Parameters.AddWithValue("@Training", ddlcourse.Text);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "Admissions");
        if (ds.Tables["Admissions"].Rows.Count > 0)
        {
            gvdetails.DataSource = ds;
            gvdetails.DataBind();
            btnexcel.Visible = true;
        }
        else
        {

            gvdetails.DataSource = ds;
            gvdetails.DataBind();
            lblmsg.Text = "No Admissions Found In Current Session";
            btnexcel.Visible = false;
        }
        con.Dispose();
        con.Close();
    }
    public void ShowDataBYDate()
    {
        Gridexport.Visible = false;
        //if (ddladmissiontrype.Text == "Select")
        //{
        //    lblmsg.Text = "Please Select the admission type ";
        //    return;
        //}
        //if (ddltraining.Text == "Select")
        //{
        //    lblmsg.Text = "Please Select The Training";
        //    return;
        //}
        //if (ddlsession .Text == "Select" || ddlsession.Text=="0")
        //{
        //    lblmsg.Text = "Please Select The Session";
        //    return;
        //}


        //if (ddlcourse.Text == "Select")
        ////{
        ////    query = "select Session,EnquiryNo,CollegeName,Course,Duration,StudentName,";
        ////    query = query + "StudentMobileNo,EmailID,City from Admissions where";
        ////    query = query + " StatusCode= '" + ddladmissiontrype.Text + "' AND Duration='" + ddltraining.Text + "'";
        ////    query = query + "AND Session= '" + ddlsession.Text + "' AND ";
        ////    query = query + "FranchiseCode='" + TxtFranchiseCode.Text + "' ";
        ////}
        ////else
        //{
        //    query = "select Session,CONVERT(VARCHAR(10),AdmissionDate,103) as AdmissionDate,EnquiryNo,ModeOfEnquiry,CollegeName,Course,Duration,StudentName,ContactNo,";
        //    query = query + "StudentMobileNo,EmailID,WhatsAppNo,City,ReferenceBy,RefContactNo,refEmailID,RefDesignation,RepresentativeName,SeminarPerson from Admissions where";
        //    if (ddladmissiontrype.Text != "Select")
        //    {
        //        query = query + " StatusCode= '" + ddladmissiontrype.Text + "'";
        //    }
        //    if (ddltraining.Text != "Select")
        //    {
        //        query = query + " AND Duration='" + ddltraining.Text + "'";

        //    }

        //    //query = query + " StatusCode= '" + ddladmissiontrype.Text + "' AND Duration='" + ddltraining.Text + "'";

        //    if (ddlsession.Text != "Select")
        //    {
        //        query = query + "AND Session= '" + ddlsession.Text + "'";
        //    }

        //    query = query + " And FranchiseCode='" + TxtFranchiseCode.Text + "' order by admissiondate, ModeOfEnquiry asc";
        //}
        //if (chkbetweendate.Checked == true)
        //{

        //if (CheckBox1.Checked == true)
        //{
        //    try
        //    {
        //        gvdetails.Visible = false;
        //        GridView1.Visible = true;
        //        //   Display();
        //        //if (chkbetweendate.Checked == true)
        //        //{
        //        SqlDataAdapter adp = new SqlDataAdapter("select Session,EnquiryNo,Name,CollegeName,Course,MobileNo,EmailID,CONVERT(VARCHAR(10),DateEntry,103) as DateEntry,FollowupRemarks,convert(Varchar(10),NextDateEntry,103) as NextDateEntry,convert(Varchar(10),Date,103) as Date,Status,Visited   from Followupremarks where NextDateEntry Between convert(varchar (10),'" + txtdatefrom.Text + "',103) and convert(varchar (10),'" + txtdateto.Text + "',103) order by SerialNo desc", con);
        //        DataSet ds = new DataSet();

        //        adp.Fill(ds);


        //        if (ds.Tables[0].Rows.Count > 0)
        //        {
        //            btnexcel.Visible = true;
        //            GridView1.DataSource = ds.Tables[0];
        //            lblmsg.Text = "Total Records : " + ds.Tables[0].Rows.Count;
        //            // lblmsg.Text = "Total Records: " + ds.Tables[1].Rows[0].ToString();
        //            GridView1.DataBind();
        //        }
        //        else
        //        {
        //            lblmsg.Visible = true;
        //            lblmsg.Text = "No Record";
        //        }

        //        //}
        //        return;

        //    }
        //    catch (Exception ex)
        //    {
        //        lblmsg.Text = ex.Message;
        //        return;
        //    }

        //    try
        //    {
        //        if (TextBox1.Text != "")
        //        {

        //            SqlDataAdapter adp = new SqlDataAdapter("select  *  from FollowupRemarks where EnquiryNo='" + TextBox1.Text + "' or Name='" + TextBox1.Text + "' or MobileNo='" + TextBox1.Text + "' or EmailID='" + TextBox1.Text + "' or CollegeName='" + TextBox1.Text + "' or Course='" + TextBox1.Text + "' or Session='" + TextBox1.Text + "' order by SerialNo desc", con);
        //            DataSet ds = new DataSet();

        //            adp.Fill(ds);

        //            Session["sorttable"] = ds.Tables[0];
        //            if (ds.Tables[0].Rows.Count > 0)
        //            {
        //                GridView1.Visible = true;
        //                lblmsg.Visible = true;
        //                GridView1.DataSource = ds.Tables[0];
        //                lblmsg.Text = "Total Records : " + ds.Tables[0].Rows.Count;
        //                GridView1.DataBind();

        //            }
        //            else
        //            {
        //                lblmsg.Visible = true;
        //                lblmsg.Text = "No Record";
        //            }

        //        }
        //        return;
        //    }
        //    catch (Exception ex)
        //    {
        //        lblmsg.Text = ex.Message;
        //        return;
        //    }

        //}
        //else
        //{
        //    gvdetails.Visible = true;
        //    GridView1.Visible = false;
        //}
        string query = "";


        if (CheckBox1.Checked == true)
        {
            gvdetails.Visible = true;
            query = "select Session, CONVERT(VARCHAR(10),AdmissionDate,103) as AdmissionDate,EnquiryNo,ModeOfEnquiry,CollegeName,Course,Duration,StudentName,ContactNo,";
            query = query + "StudentMobileNo,EmailID,WhatsAppNo,City,ReferenceBy,RefContactNo,refEmailID,RefDesignation,RepresentativeName,SeminarPerson,Visited,CONVERT(VARCHAR(11),FollowupDate,101) as FollowupDate,CONVERT(VARCHAR(11),NextFollowupDate,101) as NextFollowupDate,EnquiryStatus from Admissions";
            //if (ddladmissiontrype.Text != "Select")
            //{
            //    query = query + " and StatusCode= '" + ddladmissiontrype.Text + "'";
            //}
            if (ddltraining.Text != "Select")
            {
                query = query + " Where ModeOfEnquiry='" + ddltraining.Text + "'"; //convert(varchar(10), AdmissionDate, 10) = convert(varchar(10), getdate(), 10)
                query = query + " and  AdmissionDate Between convert(varchar (50),'" + txtdatefrom.Text + "',120) and convert(varchar (50),'" + txtdateto.Text + "',120) order by EnquiryNo desc";



            }
            else
            { 
                query = query + " where NextFollowupDate  Between convert(varchar (50),'" + txtdatefrom.Text + "',120) and convert(varchar (50),'" + txtdateto.Text + "',120) and EnquiryStatus='Open' order by EnquiryNo desc";

            }




            SqlDataAdapter adp2 = new SqlDataAdapter(query, con);
            DataSet ds2 = new DataSet();
            adp2.Fill(ds2);
            if (ds2.Tables[0].Rows.Count > 0)
            {
                lblmsg.Text = "Total Record : " + ds2.Tables[0].Rows.Count;
                gvdetails.DataSource = ds2;
                gvdetails.DataBind();
                btnexcel.Visible = true;
            }
            else
            {
                gvdetails.DataSource = ds2;
                gvdetails.DataBind();
                lblmsg.Text = "No Record Found !";
                btnexcel.Visible = false;

            }
            return;
        }
        gvdetails.Visible = true;
        query = "select Session, CONVERT(VARCHAR(10),AdmissionDate,103) as AdmissionDate,EnquiryNo,ModeOfEnquiry,CollegeName,Course,Duration,StudentName,ContactNo,";
        query = query + "StudentMobileNo,EmailID,WhatsAppNo,City,ReferenceBy,RefContactNo,refEmailID,RefDesignation,RepresentativeName,SeminarPerson,Visited,CONVERT(VARCHAR(11),FollowupDate,101) as FollowupDate,CONVERT(VARCHAR(11),NextFollowupDate,101) as NextFollowupDate,EnquiryStatus from Admissions";
        //if (ddladmissiontrype.Text != "Select")
        //{
        //    query = query + " and StatusCode= '" + ddladmissiontrype.Text + "'";
        //}
        if (ddltraining.Text != "Select")
        {
            query = query + " Where ModeOfEnquiry='" + ddltraining.Text + "'";
            query = query + " and AdmissionDate Between convert(varchar (50),'" + txtdatefrom.Text + "',120) and convert(varchar (50),'" + txtdateto.Text + "',120) order by EnquiryNo desc";



        }
        else
        {
            //string dtfrom = Convert.ToDateTime(select Session, CONVERT(VARCHAR(11),AdmissionDate,101) as AdmissionDate,EnquiryNo,ModeOfEnquiry,CollegeName,Course,Duration,StudentName,ContactNo,StudentMobileNo,EmailID,WhatsAppNo,City,ReferenceBy,RefContactNo,refEmailID,RefDesignation,RepresentativeName,SeminarPerson,Visited,CONVERT(VARCHAR(11),FollowupDate,101) as FollowupDate,CONVERT(VARCHAR(11),NextFollowupDate,101) as NextFollowupDate,EnquiryStatus from Admissions where  CONVERT(VARCHAR(10), AdmissionDate,101) Between convert(varchar (10),'4/7/2017 12:00:00 AM',101) and convert(varchar (10),'4/7/2017 12:00:00 AM',101) and EnquiryStatus='Open' order by EnquiryNo desc.Text).ToString();
            //string dtTo = Convert.ToDateTime(txtdateto.Text).ToString();
            query = query + " where  AdmissionDate Between convert(varchar(50),'" + txtdatefrom.Text + "',120) and convert(varchar (50),'" + txtdateto.Text + "',120) and EnquiryStatus='Open' order by EnquiryNo desc";

        }



        //if (ddlsession.Text != "Select")
        //{
        //    query = query + "AND Session= '" + ddlsession.Text + "'";
        //}
        //query = query + "StatusCode='" + ddladmissiontrype.Text + "' AND Duration='" + ddltraining.Text + "'";
        //query = query + " AND Session='" + ddlsession.Text + "' AND";
        // query = query + "And  FranchiseCode='" + TxtFranchiseCode.Text + "'";
        //if (chkbetweendate.Checked == true)
        //{



        SqlDataAdapter adp1 = new SqlDataAdapter(query, con);
        DataSet ds1 = new DataSet();
        adp1.Fill(ds1);
        if (ds1.Tables[0].Rows.Count > 0)
        {
            lblmsg.Text = "Total Record : " + ds1.Tables[0].Rows.Count;
            gvdetails.DataSource = ds1;
            gvdetails.DataBind();
            btnexcel.Visible = true;
        }
        else
        {
            gvdetails.DataSource = ds1;
            gvdetails.DataBind();
            lblmsg.Text = "No Record Found !";
            btnexcel.Visible = false;

        }
    }
    protected void rdenquiry_CheckedChanged(object sender, EventArgs e)
    {
    }
    protected void rdadmission_CheckedChanged(object sender, EventArgs e)
    {
        ShowAdmissions();
    }
    protected void ddlcourse_SelectedIndexChanged(object sender, EventArgs e)
    {
    }
    protected void rdsession_CheckedChanged(object sender, EventArgs e)
    {
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {

        ShowDataBYDate();

        //if (chkbetweendate.Checked == true)
        //{
        //    ShowDataBYDate();
        //    return;

        //}
        //else
        //{
        //    lblmsg.Text = "Select Date Between.";
        //}

        //if (ddladmissiontrype.Text != "" || ddladmissiontrype.Text == "Select" || ddltraining.Text != "" || ddltraining.Text == "Select" || ddlsession.Text != "" || ddltraining.Text == "Select")
        //{
        //    if (chkStatus.Checked == true || chkmodeofenquiry.Checked == true || chkSession.Checked == true)
        //    {
        //        if (ddladmissiontrype.Text != "")
        //        {
        //            if (chkbetweendate.Checked == true)
        //            {
        //                ShowDataBYDate();
        //                return;

        //            }
        //            string sql;
        //            sql = "select Session,CONVERT(VARCHAR(10),AdmissionDate,103) as AdmissionDate,EnquiryNo,ModeOfEnquiry,CollegeName,Course,Duration,StudentName,ContactNo,StudentMobileNo,EmailID,City,WhatsAppNo,ReferenceBy,RefContactNo,refEmailID,RefDesignation,RepresentativeName,SeminarPerson,Visited from Admissions ";
        //            //if (ddladmissiontrype.Text != "Select")
        //            //{
        //            //    sql = sql + " where StatusCode='" + ddladmissiontrype.Text + "'";
        //            //}
        //            if (ddltraining.Text != "Select")
        //            {
        //                sql = sql + " Where ModeOfEnquiry='" + ddltraining.Text + "'";
        //            }
        //            //if (ddlsession.Text  != "Select")
        //            //{
        //            //    sql = sql + " and Session='" + ddlsession.Text + "'";
        //            //}
        //            sql = sql + " order by EnquiryNo desc";

        //            SqlDataAdapter adp1 = new SqlDataAdapter(sql, con);

        //            DataSet ds1 = new DataSet();

        //            adp1.Fill(ds1);


        //            if (ds1.Tables[0].Rows.Count > 0)
        //            {
        //                btnexcel.Visible = true;
        //                gvdetails.DataSource = ds1.Tables[0];
        //                lblmsg.Text = "Total Records : " + ds1.Tables[0].Rows.Count;
        //                // lblmsg.Text = "Total Records: " + ds.Tables[1].Rows[0].ToString();
        //                gvdetails.DataBind();
        //            }
        //            else
        //            {
        //                lblmsg.Visible = true;
        //                lblmsg.Text = "No Record";
        //            }
        //        }
        //        return;
        //    }
        //    if (chkStatus.Checked == true)
        //    {

        //        if (ddladmissiontrype.Text == "Select")
        //        {
        //            if (chkbetweendate.Checked == true)
        //            {
        //                ShowDataBYDate();
        //                return;

        //            }
        //            SqlDataAdapter adp = new SqlDataAdapter("select Session,CONVERT(VARCHAR(10),AdmissionDate,103) as AdmissionDate,EnquiryNo,ModeOfEnquiry,CollegeName,Course,Duration,StudentName,ContactNo,StudentMobileNo,EmailID,City,WhatsAppNo,ReferenceBy,RefContactNo,refEmailID,RefDesignation,RepresentativeName,SeminarPerson,Visited from Admissions order by EnquiryNo desc ", con);
        //            DataSet ds = new DataSet();

        //            adp.Fill(ds);


        //            if (ds.Tables[0].Rows.Count > 0)
        //            {
        //                btnexcel.Visible = true;
        //                gvdetails.DataSource = ds.Tables[0];
        //                lblmsg.Text = "Total Records : " + ds.Tables[0].Rows.Count;
        //                // lblmsg.Text = "Total Records: " + ds.Tables[1].Rows[0].ToString();
        //                gvdetails.DataBind();
        //            }
        //            else
        //            {
        //                lblmsg.Visible = true;
        //                lblmsg.Text = "No Record";
        //            }
        //            return;

        //        }


        //        if (ddladmissiontrype.Text != "")
        //        {
        //            if (chkbetweendate.Checked == true)
        //            {
        //                ShowDataBYDate();
        //                return;

        //            }
        //            SqlDataAdapter adp1 = new SqlDataAdapter("select Session,CONVERT(VARCHAR(10),AdmissionDate,103) as AdmissionDate,EnquiryNo,ModeOfEnquiry,CollegeName,Course,Duration,StudentName,ContactNo,StudentMobileNo,EmailID,City,WhatsAppNo,ReferenceBy,RefContactNo,refEmailID,RefDesignation,RepresentativeName,SeminarPerson,Visited from Admissions where StatusCode='" + ddladmissiontrype.Text + "' order by EnquiryNo desc ", con);
        //            DataSet ds1 = new DataSet();

        //            adp1.Fill(ds1);


        //            if (ds1.Tables[0].Rows.Count > 0)
        //            {
        //                btnexcel.Visible = true;
        //                gvdetails.DataSource = ds1.Tables[0];
        //                lblmsg.Text = "Total Records : " + ds1.Tables[0].Rows.Count;
        //                // lblmsg.Text = "Total Records: " + ds.Tables[1].Rows[0].ToString();
        //                gvdetails.DataBind();
        //            }
        //            else
        //            {
        //                lblmsg.Visible = true;
        //                lblmsg.Text = "No Record";
        //            }
        //            return;
        //        }
        //    }
        //    if (chkmodeofenquiry.Checked == true)
        //    {

        //        if (ddltraining.Text == "Select")
        //        {
        //            if (chkbetweendate.Checked == true)
        //            {
        //                ShowDataBYDate();
        //                return;

        //            }
        //            SqlDataAdapter adp = new SqlDataAdapter("select Session,CONVERT(VARCHAR(10),AdmissionDate,103) as AdmissionDate,EnquiryNo,ModeOfEnquiry,CollegeName,Course,Duration,StudentName,ContactNo,StudentMobileNo,EmailID,City,WhatsAppNo,ReferenceBy,RefContactNo,refEmailID,RefDesignation,RepresentativeName,SeminarPerson,Visited from Admissions order by EnquiryNo desc ", con);
        //            DataSet ds = new DataSet();

        //            adp.Fill(ds);


        //            if (ds.Tables[0].Rows.Count > 0)
        //            {
        //                btnexcel.Visible = true;
        //                gvdetails.DataSource = ds.Tables[0];
        //                lblmsg.Text = "Total Records : " + ds.Tables[0].Rows.Count;
        //                // lblmsg.Text = "Total Records: " + ds.Tables[1].Rows[0].ToString();
        //                gvdetails.DataBind();
        //            }
        //            else
        //            {
        //                lblmsg.Visible = true;
        //                lblmsg.Text = "No Record";
        //            }
        //            return;

        //        }

        //        if (ddltraining.Text != "")
        //        {
        //            if (chkbetweendate.Checked == true)
        //            {
        //                ShowDataBYDate();
        //                return;

        //            }
        //            SqlDataAdapter adp1 = new SqlDataAdapter("select Session,CONVERT(VARCHAR(10),AdmissionDate,103) as AdmissionDate,EnquiryNo,ModeOfEnquiry,CollegeName,Course,Duration,StudentName,ContactNo,StudentMobileNo,EmailID,City,WhatsAppNo,ReferenceBy,RefContactNo,refEmailID,RefDesignation,RepresentativeName,SeminarPerson,Visited from Admissions where ModeOfEnquiry='" + ddltraining.Text + "' order by EnquiryNo desc ", con);
        //            DataSet ds1 = new DataSet();

        //            adp1.Fill(ds1);


        //            if (ds1.Tables[0].Rows.Count > 0)
        //            {
        //                btnexcel.Visible = true;
        //                gvdetails.DataSource = ds1.Tables[0];
        //                lblmsg.Text = "Total Records : " + ds1.Tables[0].Rows.Count;
        //                // lblmsg.Text = "Total Records: " + ds.Tables[1].Rows[0].ToString();
        //                gvdetails.DataBind();
        //            }
        //            else
        //            {
        //                lblmsg.Visible = true;
        //                lblmsg.Text = "No Record";
        //            }
        //        }
        //        return;
        //    }
        //    if (chkSession.Checked == true)
        //    {
        //        if (ddlsession.Text == "Select")
        //        {
        //            if (chkbetweendate.Checked == true)
        //            {
        //                ShowDataBYDate();
        //                return;

        //            }
        //            SqlDataAdapter adp = new SqlDataAdapter("select Session,CONVERT(VARCHAR(10),AdmissionDate,103) as AdmissionDate,EnquiryNo,ModeOfEnquiry,CollegeName,Course,Duration,StudentName,ContactNo,StudentMobileNo,EmailID,City,WhatsAppNo,ReferenceBy,RefContactNo,refEmailID,RefDesignation,RepresentativeName,SeminarPerson,Visited from Admissions order by EnquiryNo desc ", con);
        //            DataSet ds = new DataSet();

        //            adp.Fill(ds);


        //            if (ds.Tables[0].Rows.Count > 0)
        //            {
        //                btnexcel.Visible = true;
        //                gvdetails.DataSource = ds.Tables[0];
        //                lblmsg.Text = "Total Records : " + ds.Tables[0].Rows.Count;
        //                // lblmsg.Text = "Total Records: " + ds.Tables[1].Rows[0].ToString();
        //                gvdetails.DataBind();
        //            }
        //            else
        //            {
        //                lblmsg.Visible = true;
        //                lblmsg.Text = "No Record";
        //            }
        //            return;

        //        }

        //        if (ddlsession.Text != "")
        //        {
        //            if (chkbetweendate.Checked == true)
        //            {
        //                ShowDataBYDate();
        //                return;

        //            }
        //            SqlDataAdapter adp1 = new SqlDataAdapter("select Session,CONVERT(VARCHAR(10),AdmissionDate,103) as AdmissionDate,EnquiryNo,ModeOfEnquiry,CollegeName,Course,Duration,StudentName,ContactNo,StudentMobileNo,EmailID,City,WhatsAppNo,ReferenceBy,RefContactNo,refEmailID,RefDesignation,RepresentativeName,SeminarPerson,Visited from Admissions where Session='" + ddlsession.Text + "' order by EnquiryNo desc ", con);
        //            DataSet ds1 = new DataSet();

        //            adp1.Fill(ds1);


        //            if (ds1.Tables[0].Rows.Count > 0)
        //            {
        //                btnexcel.Visible = true;
        //                gvdetails.DataSource = ds1.Tables[0];
        //                lblmsg.Text = "Total Records : " + ds1.Tables[0].Rows.Count;
        //                // lblmsg.Text = "Total Records: " + ds.Tables[1].Rows[0].ToString();
        //                gvdetails.DataBind();
        //            }
        //            else
        //            {
        //                lblmsg.Visible = true;
        //                lblmsg.Text = "No Record";
        //            }
        //        }
        //        return;

        //    }

        //}



        //if (ddltraining.Text == "Select")
        //{

        //    if (chkbetweendate.Checked == true)
        //    {
        //        ShowDataBYDate();
        //        return;

        //    }
        //    SqlDataAdapter adp = new SqlDataAdapter("select Session,CONVERT(VARCHAR(10),AdmissionDate,103) as AdmissionDate,EnquiryNo,ModeOfEnquiry,CollegeName,Course,Duration,StudentName,ContactNo,StudentMobileNo,EmailID,City,WhatsAppNo,ReferenceBy,RefContactNo,refEmailID,RefDesignation,RepresentativeName,SeminarPerson from Admissions order by EnquiryNo desc ", con);
        //    DataSet ds = new DataSet();

        //    adp.Fill(ds);


        //    if (ds.Tables[0].Rows.Count > 0)
        //    {
        //        btnexcel.Visible = true;
        //        gvdetails.DataSource = ds.Tables[0];
        //        lblmsg.Text = "Total Records : " + ds.Tables[0].Rows.Count;
        //        // lblmsg.Text = "Total Records: " + ds.Tables[1].Rows[0].ToString();
        //        gvdetails.DataBind();
        //    }
        //    else
        //    {
        //        lblmsg.Visible = true;
        //        lblmsg.Text = "No Record";
        //    }
        //}

        //if (ddladmissiontrype.Text == "Select")
        //{
        //    if (chkbetweendate.Checked == true)
        //    {
        //        ShowDataBYDate();
        //        return;

        //    }
        //    SqlDataAdapter adp = new SqlDataAdapter("select Session,CONVERT(VARCHAR(10),AdmissionDate,103) as AdmissionDate,EnquiryNo,ModeOfEnquiry,CollegeName,Course,Duration,StudentName,ContactNo,StudentMobileNo,EmailID,City,WhatsAppNo,ReferenceBy,RefContactNo,refEmailID,RefDesignation,RepresentativeName,SeminarPerson from Admissions order by EnquiryNo desc ", con);
        //    DataSet ds = new DataSet();

        //    adp.Fill(ds);


        //    if (ds.Tables[0].Rows.Count > 0)
        //    {
        //        btnexcel.Visible = true;
        //        gvdetails.DataSource = ds.Tables[0];
        //        lblmsg.Text = "Total Records : " + ds.Tables[0].Rows.Count;
        //        // lblmsg.Text = "Total Records: " + ds.Tables[1].Rows[0].ToString();
        //        gvdetails.DataBind();
        //    }
        //    else
        //    {
        //        lblmsg.Visible = true;
        //        lblmsg.Text = "No Record";
        //    }
        //}



        //if (ddladmissiontrype.Text != "" && ddladmissiontrype.Text != "Select")
        //{

        //    if (chkbetweendate.Checked == true)
        //    {
        //        ShowDataBYDate();
        //        return;

        //    }

        //    string query = "";
        //    query = "select Session,CONVERT(VARCHAR(10),AdmissionDate,103) as AdmissionDate,EnquiryNo,ModeOfEnquiry,CollegeName,Course,Duration,StudentName,ContactNo,";
        //    query = query + "StudentMobileNo,EmailID,City,WhatsAppNo,ReferenceBy,RefContactNo,refEmailID,RefDesignation,RepresentativeName,SeminarPerson from Admissions where ";
        //    query = query + "StatusCode='" + ddladmissiontrype.Text + "'";
        //    if (ddltraining.Text != "Select")
        //    {
        //        query = query + "and Duration='" + ddltraining.Text + "'";
        //    }
        //    if (ddlsession.Text != "Select")
        //    {
        //        query = query + "and Session='" + ddlsession.Text + "'";
        //    }
        //    query = query + " AND BrandName='THINKNEXT TRAINING' and ";
        //    query = query + " FranchiseCode='" + TxtFranchiseCode.Text + "' order by AdmissionDate , ModeOfEnquiry asc";


        //    SqlDataAdapter da1 = new SqlDataAdapter(query, con);
        //    DataSet ds1 = new DataSet();
        //    da1.Fill(ds1, "Admissions");
        //    if (ds1.Tables[0].Rows.Count > 0)
        //    {

        //        // DataView dv = new DataView(ds1.Tables[0], "type='EnquiryNo'", "type DESC", DataViewRowState.CurrentRows);
        //        gvdetails.DataSource = ds1;
        //        gvdetails.DataBind();


        //        lblmsg.Text = "Total Records : " + ds1.Tables[0].Rows.Count;
        //        btnexcel.Visible = true;
        //        return;
        //    }
        //    else
        //    {
        //        gvdetails.DataSource = ds1;
        //        gvdetails.DataBind();
        //        lblmsg.Text = "No Record Found";
        //        btnexcel.Visible = false;
        //        return;
        //    }

        //}

        //if (CheckBox1.Checked == true)
        //{
        //    try
        //    {
        //        gvdetails.Visible = false;
        //        GridView1.Visible = true;
        //        //   Display();
        //        if (chkbetweendate.Checked == true)
        //        {
        //            SqlDataAdapter adp = new SqlDataAdapter("select Session,EnquiryNo,Name,CollegeName,Course,MobileNo,EmailID,CONVERT(VARCHAR(10),DateEntry,103) as DateEntry,FollowupRemarks,convert(Varchar(10),NextDateEntry,103) as NextDateEntry,convert(Varchar(10),Date,103) as Date,Status,Visited   from FollowupRemarks where NextDateEntry Between convert(varchar (10),'" + txtdatefrom.Text + "',103) and convert(varchar (10),'" + txtdateto.Text + "',103) order by SerialNo desc", con);
        //            DataSet ds = new DataSet();

        //            adp.Fill(ds);


        //            if (ds.Tables[0].Rows.Count > 0)
        //            {
        //                btnexcel.Visible = true;
        //                GridView1.DataSource = ds.Tables[0];
        //                lblmsg.Text = "Total Records : " + ds.Tables[0].Rows.Count;
        //                // lblmsg.Text = "Total Records: " + ds.Tables[1].Rows[0].ToString();
        //                GridView1.DataBind();
        //            }
        //            else
        //            {
        //                lblmsg.Visible = true;
        //                lblmsg.Text = "No Record";
        //            }
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        lblmsg.Text = ex.Message;
        //        return;
        //    }

        //    try
        //    {
        //        if (TextBox1.Text != "")
        //        {

        //            SqlDataAdapter adp = new SqlDataAdapter("select  *  from FollowupRemarks where EnquiryNo='" + TextBox1.Text + "' or Name='" + TextBox1.Text + "' or MobileNo='" + TextBox1.Text + "' or EmailID='" + TextBox1.Text + "' or CollegeName='" + TextBox1.Text + "' or Course='" + TextBox1.Text + "' or Session='" + TextBox1.Text + "' order by SerialNo desc", con);
        //            DataSet ds = new DataSet();

        //            adp.Fill(ds);

        //            Session["sorttable"] = ds.Tables[0];
        //            if (ds.Tables[0].Rows.Count > 0)
        //            {
        //                GridView1.Visible = true;
        //                lblmsg.Visible = true;
        //                GridView1.DataSource = ds.Tables[0];
        //                lblmsg.Text = "Total Records : " + ds.Tables[0].Rows.Count;
        //                GridView1.DataBind();

        //            }
        //            else
        //            {
        //                lblmsg.Visible = true;
        //                lblmsg.Text = "No Record";
        //            }

        //        }
        //        return;
        //    }
        //    catch (Exception ex)
        //    {
        //        lblmsg.Text = ex.Message;
        //        return;
        //    }

      //  }


    }
    public void Session12()
    {
        string sql = null;
        //con.Open();
        sql = "select * from MasterSession order by sessionid desc";
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "MasterSession");
        ddlsession.DataSource = ds;
        ddlsession.DataTextField = "Session";
        ddlsession.DataValueField = "Session";
        ddlsession.DataBind();
        ddlsession.Items.Insert(0, new ListItem("Select"));
    }
    protected void ddlsession_SelectedIndexChanged(object sender, EventArgs e)
    {
    }
    protected void btnexcel_Click(object sender, EventArgs e)
    {
        if (Gridexport.Visible == true)
        {

            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=Placement Drive.xls");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-excel";
            StringWriter sWriter2 = new StringWriter();
            HtmlTextWriter hWriter2 = new HtmlTextWriter(sWriter2);
            Gridexport.Style.Add("text-transform", "Capitalize");
            Gridexport.RenderControl(hWriter2);
            Response.Output.Write(sWriter2.ToString());
            Response.Flush();
            Response.End();
            return; 
        }
        if (CheckBox1.Checked == true)
        {
            gvdetails.Visible = false;
            GridView1.Visible = true;

            if (TextBox1.Text != "")
            {
                Response.Clear();
                Response.Buffer = true;
                Response.AddHeader("content-disposition", "attachment;filename=Placement Drive.xls");
                Response.Charset = "";
                Response.ContentType = "application/vnd.ms-excel";
                StringWriter sWriter2 = new StringWriter();
                HtmlTextWriter hWriter2 = new HtmlTextWriter(sWriter2);
                GridView1.Style.Add("text-transform", "Capitalize");
                GridView1.RenderControl(hWriter2);
                Response.Output.Write(sWriter2.ToString());
                Response.Flush();
                Response.End();
                return;
            }
            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=Placement Drive.xls");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-excel";
            StringWriter sWriter1 = new StringWriter();
            HtmlTextWriter hWriter1 = new HtmlTextWriter(sWriter1);
            GridView1.Style.Add("text-transform", "Capitalize");
            GridView1.RenderControl(hWriter1);
            Response.Output.Write(sWriter1.ToString());
            Response.Flush();
            Response.End();
            return;
        }

        Response.Clear();
        Response.Buffer = true;
        Response.AddHeader("content-disposition", "attachment;filename=StudentDetails.xls");
        Response.Charset = "";
        Response.ContentType = "application/vnd.ms-excel";
        StringWriter sWriter = new StringWriter();
        HtmlTextWriter hWriter = new HtmlTextWriter(sWriter);
        gvdetails.Style.Add("text-transform", "Capitalize");
        gvdetails.RenderControl(hWriter);
        Response.Output.Write(sWriter.ToString());
        Response.Flush();
        Response.End();
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
           server control at run time. */
    }
    protected void txtdateto_TextChanged(object sender, EventArgs e)
    {

    }
    protected void chkbetweendate_CheckedChanged(object sender, EventArgs e)
    {
        if (chkbetweendate.Checked == true)
        {
            txtdatefrom.Enabled = true;
            txtdateto.Enabled = true;
        }
        else
        {
            txtdatefrom.Enabled = false;
            txtdateto.Enabled = false;
        }
    }
    protected void ddladmissiontrype_SelectedIndexChanged(object sender, EventArgs e)
    {
        //ddladmissiontrype
    }
    public void GetModeofenquiry()
    {
        string sql = null;

        sql = "select Distinct Statuscode from admissions";
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "masterSession ");
        ddladmissiontrype.Items.Insert(0, "Select");
        if (ds.Tables["masterSession "].Rows.Count > 0)
        {
            for (int i = 0; i <= ds.Tables["masterSession "].Rows.Count - 1; i++)
            {
                ddladmissiontrype.Items.Add(ds.Tables["masterSession "].Rows[i]["Statuscode"].ToString());

            }

        }
        else
        {
        }
        cmd.Dispose();
        da.Dispose();
        ds.Dispose();
    }




    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    public void EnquiryPOPdata()
    {
        string a = Request.QueryString["EnquiryNo"].ToString();

        string sql1 = null;
        sql1 = "select * from Admissions where EnquiryNo= " + a;
        SqlCommand com = new SqlCommand(sql1, con);
        SqlDataAdapter sda = new SqlDataAdapter(com);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        sda.Dispose();
        if (ds.Tables[0].Rows.Count > 0)
        {
            txtnamename.Text = ds.Tables[0].Rows[0]["StudentName"].ToString();
            txtmobilenono.Text = ds.Tables[0].Rows[0]["StudentMobileNo"].ToString();
            txtemailidid.Text = ds.Tables[0].Rows[0]["EmailID"].ToString();
            txtcollegenamename.Text = ds.Tables[0].Rows[0]["CollegeName"].ToString();
            txtbatchch.Text = ds.Tables[0].Rows[0]["Batch"].ToString();
            txtqualificationn.Text = ds.Tables[0].Rows[0]["Course"].ToString();

        }
        else
        {
            return;
        }
        com.ExecuteNonQuery();
        com.Dispose();
        con.Close();


    }


    //protected void gvdetails_Sorting(object sender, GridViewSortEventArgs e)
    //{
    //    DataTable dt = Session["sorttable"] as DataTable;

    //    if (dt != null)
    //    {

    //        //Sort the data.
    //        dt.DefaultView.Sort = e.SortExpression + " " + GetSortDirection(e.SortExpression);
    //        gvdetails.DataSource = Session["sorttable"];
    //        gvdetails.DataBind();
    //    }
    //}
    //private string GetSortDirection(string column)
    //{

    //    // By default, set the sort direction to ascending.
    //    string sortDirection = "ASC";

    //    // Retrieve the last column that was sorted.
    //    string sortExpression = ViewState["SortExpression"] as string;

    //    if (sortExpression != null)
    //    {
    //        // Check if the same column is being sorted.
    //        // Otherwise, the default value can be returned.
    //        if (sortExpression == column)
    //        {
    //            string lastDirection = ViewState["SortDirection"] as string;
    //            if ((lastDirection != null) && (lastDirection == "ASC"))
    //            {
    //                sortDirection = "DESC";
    //            }
    //        }
    //    }

    //    // Save new values in ViewState.
    //    ViewState["SortDirection"] = sortDirection;
    //    ViewState["SortExpression"] = column;

    //    return sortDirection;
    //}
    protected void gvdetails_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gvdetails.EditIndex = -1;
        ShowDataBYDate();

    }
    protected void gvdetails_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Label en = gvdetails.Rows[e.RowIndex].FindControl("lblen") as Label;
        TextBox ss = gvdetails.Rows[e.RowIndex].FindControl("ss") as TextBox;
        TextBox co = gvdetails.Rows[e.RowIndex].FindControl("Txtcourse") as TextBox;

        TextBox wn = gvdetails.Rows[e.RowIndex].FindControl("txtwn") as TextBox;
        TextBox cn = gvdetails.Rows[e.RowIndex].FindControl("txtcontactno") as TextBox;
        TextBox emi = gvdetails.Rows[e.RowIndex].FindControl("txtemi") as TextBox;
        TextBox city = gvdetails.Rows[e.RowIndex].FindControl("txtcity") as TextBox;
        TextBox rb = gvdetails.Rows[e.RowIndex].FindControl("txtrb") as TextBox;
        TextBox rcn = gvdetails.Rows[e.RowIndex].FindControl("txtrcn") as TextBox;
        TextBox remi = gvdetails.Rows[e.RowIndex].FindControl("txtremi") as TextBox;
        TextBox rd = gvdetails.Rows[e.RowIndex].FindControl("txtrd") as TextBox;
        TextBox sp = gvdetails.Rows[e.RowIndex].FindControl("txtsp") as TextBox;
        TextBox clgno = gvdetails.Rows[e.RowIndex].FindControl("txtcn") as TextBox;
        TextBox smn = gvdetails.Rows[e.RowIndex].FindControl("txtsmn") as TextBox;
        TextBox rn = gvdetails.Rows[e.RowIndex].FindControl("txtrn") as TextBox;
        DropDownList ddles = gvdetails.Rows[e.RowIndex].FindControl("ddlEnquiryStatus") as DropDownList;

        con.Open();
        if (ss.Text == "")
        {
            Response.Write("<script language='javascript' > window.alert('Student Name field cannot be blank') </script>");
            return;
        }
        if (co.Text == "")
        {
            Response.Write("<script language='javascript' > window.alert('Course field cannot be blank') </script>");
            return;
        }
        cmd = new SqlCommand("update Admissions set StudentName=@sn, Course=@co, WhatsAppNo=@wn,ContactNo=@cn ,EmailID=@emi,City=@city ,ReferenceBy=@rb ,refContactNo=@rcn ,RefEmailID= @remi ,RefDesignation=@rd,SeminarPerson=@sp ,CollegeName=@clgno,StudentMobileNo=@smn, RepresentativeName=@rn, EnquiryStatus=@EnquiryStatus  where 	EnquiryNo=@en", con);
        if (ss.Text != "")
        {
            cmd.Parameters.AddWithValue("@sn", ss.Text);
            //cmd.Parameters.AddWithValue("@sr", sr.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@sn", DBNull.Value);
        }
        if (co.Text != "")
        {
            cmd.Parameters.AddWithValue("@co", co.Text);
            //cmd.Parameters.AddWithValue("@sr", sr.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@sn", DBNull.Value);
        }
        if (en.Text != "")
        {
            cmd.Parameters.AddWithValue("@en", en.Text);
            //cmd.Parameters.AddWithValue("@sr", sr.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@en", DBNull.Value);
        }
        if (wn.Text != "")
        {
            cmd.Parameters.AddWithValue("@wn", wn.Text);
            //cmd.Parameters.AddWithValue("@sr", sr.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@wn", DBNull.Value);
        }

        if (cn.Text != "")
        {
            cmd.Parameters.AddWithValue("@cn", cn.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@cn", DBNull.Value);
        }
        if (emi.Text != "")
        {
            cmd.Parameters.AddWithValue("@emi", emi.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@emi", DBNull.Value);
        }
        if (city.Text != "")
        {
            cmd.Parameters.AddWithValue("@city", city.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@city", DBNull.Value);
        }
        if (rb.Text != "")
        {
            cmd.Parameters.AddWithValue("@rb", rb.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@rb", DBNull.Value);
        }
        if (rcn.Text != "")
        {
            cmd.Parameters.AddWithValue("@rcn", rcn.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@rcn", DBNull.Value);
        }
        if (remi.Text != "")
        {
            cmd.Parameters.AddWithValue("@remi", remi.Text);
        }
        else
        { cmd.Parameters.AddWithValue("@remi", DBNull.Value); }
        if (rd.Text != "")
        {
            cmd.Parameters.AddWithValue("@rd", rd.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@rd", DBNull.Value);
        }
        if (sp.Text != "")
        {
            cmd.Parameters.AddWithValue("@sp", sp.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@sp", DBNull.Value);
        }
        if (clgno.Text != "")
        {
            cmd.Parameters.AddWithValue("@clgno", clgno.Text);
        }
        else
        { cmd.Parameters.AddWithValue("@clgno", DBNull.Value); }
        if (smn.Text != "")
        {
            cmd.Parameters.AddWithValue("@smn", smn.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@smn", DBNull.Value);
        }
        if (rn.Text != "")
        {
            cmd.Parameters.AddWithValue("@rn", rn.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@rn", DBNull.Value);
        }
        if (ddles.SelectedItem.Text != "")
        {
            cmd.Parameters.AddWithValue("@EnquiryStatus", ddles.SelectedItem.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@EnquiryStatus", DBNull.Value);
        }

        cmd.ExecuteNonQuery();
        cmd = new SqlCommand("select Session,CONVERT(VARCHAR(10),AdmissionDate,103) as AdmissionDate,EnquiryNo,ModeOfEnquiry,CollegeName,Course,Duration,StudentName,ContactNo,StudentMobileNo,EmailID,City,WhatsAppNo,ReferenceBy,RefContactNo,refEmailID,RefDesignation,RepresentativeName,SeminarPerson,Visited,FollowupDate,NextFollowupDate,EnquiryStatus from Admissions where EnquiryNo ='" + en.Text + "'", con);
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        gvdetails.DataSource = dr;
        gvdetails.DataBind();
        lblmsg.Text = "Successfully Update";
       
        // Response.AppendHeader("refresh", "1");


        con.Close();
        gvdetails.EditIndex = -1;
        ShowDataBYDate();

    }
    protected void gvdetails_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gvdetails.EditIndex = e.NewEditIndex;
        ShowDataBYDate();

    }


    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        //        if (e.CommandName == "add")
        //        {
        //            con.Open();
        //            //SqlCommand cmd2 = new SqlCommand("select * from followupremarks where EnquiryNo='"+TextBox1.Text+"'", con);
        //            //SqlDataAdapter da = new SqlDataAdapter(cmd2);
        //            //DataSet ds=new DataSet();
        //            //da.Fill(ds);
        //            //string session = ds.Tables[0].Rows[0][10].ToString(); 

        //            //Label Session = GridView1.FooterRow.FindControl("lblSession") as Label;
        //            //Label EnquiryNo = GridView1.FooterRow.FindControl("lblEnquiryNo") as Label;
        //            //Label Name = GridView1.FooterRow.FindControl("lblName") as Label;
        //            //Label CollegeName = GridView1.FooterRow.FindControl("lblCollegeName") as Label;
        //            //Label Course = GridView1.FooterRow.FindControl("lblCourse") as Label;
        //            //Label MobileNo = GridView1.FooterRow.FindControl("lblMobileNo") as Label;
        //            //Label EmailID = GridView1.FooterRow.FindControl("lblEmailID") as Label;
        //            //Label DateEntry = GridView1.FooterRow.FindControl("lblDateEntry") as Label;
        //            TextBox followupremarks = GridView1.FooterRow.FindControl("txtfollowupremarks") as TextBox;
        //            TextBox nextfollowupdate = GridView1.FooterRow.FindControl("txtnextfollowupdate") as TextBox;
        //            Label date = GridView1.FooterRow.FindControl("lblDate") as Label;
        //            cmd = new SqlCommand("insert into followupremarks(Session,EnquiryNo,Name,CollegeName, Course, MobileNo,EmailID,DateEntry,FollowupRemarks,NextDateEntry,Date) values(@Session,@EnquiryNo,@Name,@CollegeName, @Course, @MobileNo,@EmailID,@DateEntry,@FollowupRemarks,@NextDateEntry,@GETDATE()) ", con);
        //            //cmd.Parameters.AddWithValue("@Session", Session.Text); 
        //            //cmd.Parameters.AddWithValue("@EnquiryNo", EnquiryNo.Text);
        //            //cmd.Parameters.AddWithValue("@Name",Name.Text);
        //            //cmd.Parameters.AddWithValue("@CollegeName", CollegeName.Text);
        //            //cmd.Parameters.AddWithValue("@Course",Course.Text);
        //            //cmd.Parameters.AddWithValue("@MobileNo",MobileNo.Text);
        //            //cmd.Parameters.AddWithValue("@EmailID",EmailID.Text);
        //            //cmd.Parameters.AddWithValue("@DateEntry",DateEntry.Text);
        //            cmd.Parameters.AddWithValue("@FollowupRemarks", followupremarks.Text);
        //            cmd.Parameters.AddWithValue("@NextDateEntry", nextfollowupdate.Text);


        //            cmd.ExecuteNonQuery();
        //           SqlCommand cmd1 = new SqlCommand("select EnquiryNo,DateEntry,FollowupRemarks,NextDateEntry,Name,MobileNo,EmailID,CollegeName,Course,Session,Date from followupremarks",con);
        //            SqlDataReader dr;
        //            dr = cmd1.ExecuteReader();
        //            GridView1.DataSource = dr;
        //            GridView1.DataBind();
        //            lblmsg.Text = "Entry Successfully Added";
        //            Response.AppendHeader("refresh", "1");
        //            con.Close();
        //        }
        //        else
        //        {
        //            lblmsg.Text = "Add After Some Time";
        //            con.Close();
        //        }
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        con.Open();
        Label Session = GridView1.Rows[e.RowIndex].FindControl("lblSession") as Label;
        Label EnquiryNo = GridView1.Rows[e.RowIndex].FindControl("lblEnquiryNo") as Label;
        TextBox Name = GridView1.Rows[e.RowIndex].FindControl("lblName1") as TextBox;
        Label CollegeName = GridView1.Rows[e.RowIndex].FindControl("lblCollegeName") as Label;
        Label Course = GridView1.Rows[e.RowIndex].FindControl("lblCourse") as Label;
        Label MobileNo = GridView1.Rows[e.RowIndex].FindControl("lblMobileNo") as Label;
        Label EmailID = GridView1.Rows[e.RowIndex].FindControl("lblEmailID") as Label;
        Label DateEntry = GridView1.Rows[e.RowIndex].FindControl("lblDateEntry") as Label;
        TextBox followupremarks = GridView1.Rows[e.RowIndex].FindControl("txtfollowupremarks") as TextBox;
        TextBox nextfollowupdate = GridView1.Rows[e.RowIndex].FindControl("txtnextfollowupdate") as TextBox;
        Label date = GridView1.Rows[e.RowIndex].FindControl("lblDate") as Label;
        Label Status = GridView1.Rows[e.RowIndex].FindControl("lblStatus") as Label;
        DropDownList ddl = GridView1.Rows[e.RowIndex].FindControl("ddlist") as DropDownList;
        //Label ddl=GridView1.Rows[e.RowIndex].FindControl("ddlist") as Label;

        if (Name.Text == "")
        {
            Response.Write("<script language='javascript' > window.alert('Name field cannot be blank') </script>");
            return;
        }
        if (followupremarks.Text == "")
        {
            Response.Write("<script language='javascript' > window.alert('Followup Remarks field cannot be blank') </script>");
            return;
        }
        if (nextfollowupdate.Text == "")
        {
            Response.Write("<script language='javascript' > window.alert('Followup Date field cannot be blank') </script>");
            return;
        }
        if (ddl.SelectedItem.Text == "Select")
        {
            Response.Write("<script language='javascript' > window.alert('Enter Valid Status Type') </script>");
            return;
        }
        cmd = new SqlCommand("update followupremarks set Session=@Session,Name=@Name,CollegeName=@CollegeName, Course=@Course, MobileNo=@MobileNo,EmailID=@EmailID,DateEntry=@DateEntry,FollowupRemarks=@FollowupRemarks,NextDateEntry=@NextDateEntry,Status='" + ddl.SelectedItem.Text + "' where EnquiryNo=@EnquiryNo ", con);
        if (Session.Text != "")
        {
            cmd.Parameters.AddWithValue("@Session", Session.Text);
            //cmd.Parameters.AddWithValue("@sr", sr.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@Session", DBNull.Value);
        }
        if (EnquiryNo.Text != "")
        {
            cmd.Parameters.AddWithValue("@EnquiryNo", EnquiryNo.Text);
        }
        else
        { return; }
        if (Name.Text != "")
        {
            cmd.Parameters.AddWithValue("@Name", Name.Text);
            //cmd.Parameters.AddWithValue("@sr", sr.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@Name", DBNull.Value);
        }

        if (CollegeName.Text != "")
        {
            cmd.Parameters.AddWithValue("@CollegeName", CollegeName.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@CollegeName", DBNull.Value);
        }
        if (Course.Text != "")
        {
            cmd.Parameters.AddWithValue("@Course", Course.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@Course", DBNull.Value);
        }
        if (MobileNo.Text != "")
        {
            cmd.Parameters.AddWithValue("@MobileNo", MobileNo.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@MobileNo", DBNull.Value);
        }
        if (EmailID.Text != "")
        {
            cmd.Parameters.AddWithValue("@EmailID", EmailID.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@EmailID", DBNull.Value);
        }
        if (DateEntry.Text != "")
        {
            cmd.Parameters.AddWithValue("@DateEntry", DateEntry.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@DateEntry", DBNull.Value);
        }
        if (followupremarks.Text != "")
        {
            cmd.Parameters.AddWithValue("@FollowupRemarks", followupremarks.Text);
        }
        else
        { cmd.Parameters.AddWithValue("@FollowupRemarks", DBNull.Value); }
        if (nextfollowupdate.Text != "")
        {
            cmd.Parameters.AddWithValue("@NextDateEntry", nextfollowupdate.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@NextDateEntry", DBNull.Value);
        }

        cmd.ExecuteNonQuery();

        lblmsg.Text = "Update Successfully ";
        //Response.AppendHeader("refresh", "1");
        con.Close();
        GridView1.EditIndex = -1;
        bind_for_gridview1();

    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        bind_for_gridview1();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        bind_for_gridview1();
    }
    protected void bind_for_gridview1()
    {
        con.Open();
        //con.Open(); 

        SqlCommand cmd1 = new SqlCommand("select Session,EnquiryNo,Name,CollegeName,Course,MobileNo,EmailID,CONVERT(VARCHAR(10),DateEntry,103) as DateEntry,FollowupRemarks,convert(Varchar(10),NextDateEntry,103) as NextDateEntry,convert(Varchar(10),Date,103) as Date,Status,Visited   from FollowupRemarks where NextDateEntry Between convert(varchar (10),'" + txtdatefrom.Text + "',103) and convert(varchar (10),'" + txtdateto.Text + "',103) order by SerialNo desc", con);
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        GridView1.DataSource = dr;
        GridView1.DataBind();
        con.Close();
    }

    protected void ddlist_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ddlEnquiryStatus_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void chkStatus_CheckedChanged(object sender, EventArgs e)
    {
        if (chkStatus.Checked == true)
        {
            ddladmissiontrype.Enabled = true;
        }
        else
        {
            ddladmissiontrype.Enabled = false;
        }
    }
    protected void chkmodeofenquiry_CheckedChanged(object sender, EventArgs e)
    {
        if (chkmodeofenquiry.Checked == true)
        {
            ddltraining.Enabled = true;
        }
        else
        {
            ddltraining.Enabled = false;
        }
    }
    protected void chkSession_CheckedChanged(object sender, EventArgs e)
    {
        if (chkSession.Checked == true)
        {
            ddlsession.Enabled = true;
        }
        else
        {
            ddlsession.Enabled = false;
        }
    }
    //protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    //{
    //    DropDownList list = GridView1.Rows
    //    Label Status = GridView1.Rows[e.RowIndex].FindControl("lblStatus") as Label;
    //    if()
    //    {
    //    }
    //}



    protected void gvdetails_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        //if (e.CommandName == "Delete")
        //{
        //    //Find the DropDownList in the Row

        //    DropDownList ddles = gvdetails.Rows.FindControl("ddlEnquiryStatus") as DropDownList;
        //    Label en = (e.Row.FindControl("lblen") as Label);
        //    if (en.Text.Length == 0 && ddles.Text.Length == 0)
        //    {
        //        return;
        //    }
        //    string str = " SELECT  EnquiryStatus FROM Admissions where Enquiryno='" + en.Text + "'";
        //    SqlDataAdapter da = new SqlDataAdapter(str, con);
        //    DataSet ds = new DataSet();
        //    da.Fill(ds);
        //    if (ds.Tables[0].Rows.Count > 0)
        //    {
        //        ddles.DataSource = ds;
        //        ddles.DataTextField = "EnquiryStatus";
        //        ddles.DataValueField = "EnquiryStatus";
        //        ddles.DataBind();


        //        //Add Default Item in the DropDownList
        //        ddles.Items.Insert(0, new ListItem("Select"));

        //        //Select the Country of Customer in DropDownList
        //        string country = (e.Row.FindControl("ddlEnquiryStatus") as Label).Text;
        //        ddles.Items.FindByValue(country).Selected = true;
        //    }
        //}
    }

    protected void Btnexpdisp_Click(object sender, EventArgs e)
    {
        gvdetails.Visible = false;
        Gridexport.Visible = true;
        con.Open();
        //con.Open(); 

        SqlCommand cmd1 = new SqlCommand("select  CONVERT(VARCHAR(10),AdmissionDate,103) as AdmissionDate,session,CollegeName,StudentName,ContactNo,StudentMobileNo,Course,Duration,EmailID,ModeOfEnquiry from Admissions where  AdmissionDate Between convert(varchar(50),'" + txtdatefrom.Text + "',120) and convert(varchar (50),'" + txtdateto.Text + "',120) and EnquiryStatus='Open' order by EnquiryNo desc", con);
        SqlDataAdapter adpexp = new SqlDataAdapter(cmd1);
        DataSet dsexp = new DataSet();
        adpexp.Fill(dsexp);
        if(dsexp.Tables[0].Rows.Count>0)
        { 
        Gridexport.DataSource = dsexp;
        Gridexport.DataBind();
        con.Close();
        btnexcel.Visible = true;
        }
        else
        {
            lblmsg.Text = "No record found";
            Gridexport.Visible = false;
        }
    }
}