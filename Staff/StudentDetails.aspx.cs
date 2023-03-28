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
public partial class Admin_StudentDetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["myck"] == null)
        {
            Response.Redirect("~/default.aspx");
        }

        con.ConnectionString = obj.GetConnectionString("constr");
        if (Page.IsPostBack == false)
        {
            ShowCourses();
            Session12();
            GetModeofenquiry();
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
        }
        else
        {
            gvdetails.DataSource = ds;
            gvdetails.DataBind();
            lblmsg.Text = "No Enquiries Found";
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
        }
        else
        {
            gvdetails.DataSource = ds;
            gvdetails.DataBind();
            lblmsg.Text = "No Admissions Found";
        }
    }
    public void ShowSession()
    {
        string str = "select * from Admissions where Session='"+ddlsession.Text+"'";
        SqlDataAdapter da = new SqlDataAdapter(str, con);
        DataSet ds = new DataSet();
        da.Fill(ds, "Admissions");
        if (ds.Tables[0].Rows.Count > 0)
        {
            gvdetails.DataSource = ds;
            gvdetails.DataBind();
        }
        else
        {

            gvdetails.DataSource = ds;
            gvdetails.DataBind();
            lblmsg.Text = "No Admissions Found";
        }

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
        if (ddladmissiontrype.SelectedIndex == 0)
        {
            lblmsg.Text = "Please Select the Admission Type";
            return;
        }
        if (chkbetweendate.Checked == true)
        {
            query = "select Session,EnquiryNo,CollegeName,Course,Duration,StudentName,";
            query = query + "StudentMobileNo,EmailID,City from Admissions where ";
            query = query + "StatusCode='" + ddladmissiontrype.Text + "'";
            query = query + " AND BrandName='THINKNEXT TRAINING' and ";
            query = query + " FranchiseCode='" + TxtFranchiseCode.Text + "'";
            query = query + "And  AdmissionDate Between convert(varchar (50),'" + txtdatefrom.Text + "',120) and convert(varchar (50),'" + txtdateto.Text + "',120)";
        }
        else
        {

            query = "select Session,EnquiryNo,CollegeName,Course,Duration,StudentName,StudentMobileNo,";
            query = query + "EmailID,City from Admissions where StatusCode='" + ddladmissiontrype.Text + "' and Session='" + ddlsession.Text + "' and course='" + ddlcourse.Text+ "' and FranchiseCode='TNK101'";
            query = query + "and BrandName='THINKNEXT TRAINING'";
        }
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        da.Fill(ds, "Admissions");
        if (ds.Tables[0].Rows.Count > 0)
        {
            gvdetails.DataSource = ds;
            gvdetails.DataBind();
            lblmsg.Text = "Total Records : " + ds.Tables[0].Rows.Count;

        }
        else
        {
            gvdetails.DataSource = ds;
            gvdetails.DataBind();
            lblmsg.Text = "No Admissions Found";
        }
    }
    public void ShowDetailOFCourse()
    {
        con.Open();
        string str = "select * from Admissions Where Course='"+ddlcourse.SelectedItem.Text +"'";
        SqlCommand cmd = new SqlCommand(str ,con);
        //cmd.Parameters.AddWithValue("@Training", ddlcourse.Text);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds,"Admissions");
        if (ds.Tables["Admissions"].Rows.Count > 0)
        {
            gvdetails.DataSource = ds;
            gvdetails.DataBind();
        }
        else
        {

            gvdetails.DataSource = ds;
            gvdetails.DataBind();
            lblmsg.Text = "No Admissions Found In Current Session";
        
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
        }
        else
        {

            gvdetails.DataSource = ds;
            gvdetails.DataBind();
            lblmsg.Text = "No Admissions Found In Current Session";

        }
        con.Dispose();
        con.Close();
    }
    public void ShowDataBYDate()
    {
        if (ddladmissiontrype.Text == "Select")
        {
            lblmsg.Text = "Please Select the admission type ";
            return;
        }
        if (ddltraining.Text == "Select")
        {
            lblmsg.Text = "Please Select The Training";
            return;
        }
        if (ddlsession .Text == "Select" || ddlsession.Text=="0")
        {
            lblmsg.Text = "Please Select The Session";
            return;
        }

        string query = "";
        if (ddlcourse.Text == "Select")
        {
            query = "select Session,EnquiryNo,CollegeName,Course,Duration,StudentName,";
            query = query + "StudentMobileNo,EmailID,City from Admissions where";
            query = query + " StatusCode= '" + ddladmissiontrype.Text + "' AND Duration='" + ddltraining.Text + "'";
            query = query + "AND Session= '" + ddlsession.Text + "' AND ";
            query = query + "FranchiseCode='" + TxtFranchiseCode.Text + "' ";
        }
        else
        {
            query = "select Session,EnquiryNo,CollegeName,Course,Duration,StudentName,";
            query = query + "StudentMobileNo,EmailID,City from Admissions where";
            query = query + " StatusCode= '" + ddladmissiontrype.Text + "' AND Duration='" + ddltraining.Text + "'";
            query = query + "AND Session= '" + ddlsession.Text + "' AND ";
            query = query + "FranchiseCode='" + TxtFranchiseCode.Text + "' and Course='" + ddlcourse.Text + "' ";
        }
        if (chkbetweendate.Checked == true)
        {
            query = "select Session,EnquiryNo,CollegeName,Course,Duration,StudentName,";
            query = query + "StudentMobileNo,EmailID,City from Admissions where ";
            query = query + "StatusCode='" + ddladmissiontrype.Text + "' AND Duration='" + ddltraining.Text + "'";
            query = query + " AND Session='" + ddlsession.Text + "' AND Course='" + ddlcourse.Text + "' AND";
            query = query + " FranchiseCode='" + TxtFranchiseCode.Text + "'";
            query = query + "And  AdmissionDate Between convert(varchar (50),'" + txtdatefrom.Text + "',120) and convert(varchar (50),'" + txtdateto.Text + "',120)";
        }

        SqlDataAdapter adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            lblmsg.Text = "Total Record : " + ds.Tables[0].Rows.Count;
            gvdetails.DataSource = ds;
            gvdetails.DataBind();
            btnexcel.Visible = true;
        }
        else
        {
            gvdetails.DataSource = ds;
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
        if (chkdisplayallenquiryadmission.Checked == true)
        {
            DisplayAllEnquiryAndAdmission();
        }
        else
        {
            ShowDataBYDate();
        }
    }
    public void Session12()
    {
        string sql = null;
        con.Open();
        sql = "select Session from MasterSession";
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "MasterSession");
        ddlsession.DataSource = ds;
        ddlsession.DataTextField = "Session";
        ddlsession.DataValueField = "Session";
        ddlsession.DataBind();
        ddlsession.Items.Insert(0, new ListItem("Select", "0"));
    }
    protected void ddlsession_SelectedIndexChanged(object sender, EventArgs e)
    {
    }
    protected void btnexcel_Click(object sender, EventArgs e)
    {
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
            txtdatefrom.Enabled = false ;
            txtdateto.Enabled = false ;
        }
    }
    protected void ddladmissiontrype_SelectedIndexChanged(object sender, EventArgs e)
    {
        //ddladmissiontrype
    }
    public void GetModeofenquiry()
    {
        string sql = null;
       
        sql = "select Distinct modeofenquiry from admissions";
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "masterSession ");
        ddladmissiontrype.Items.Insert(0, "Select");
        if (ds.Tables["masterSession "].Rows.Count > 0)
        {
            for (int i = 0; i <= ds.Tables["masterSession "].Rows.Count - 1; i++)
            {
                ddladmissiontrype.Items.Add(ds.Tables["masterSession "].Rows[i]["modeofenquiry"].ToString());

            }

        }
        else
        {
        }
        cmd.Dispose();
        da.Dispose();
        ds.Dispose();
    }



}


//AdmissionDate Between '" + txtdatefrom.Text + "' AND'" + txtdateto.Text + "'AND