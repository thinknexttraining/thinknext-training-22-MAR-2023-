using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;


public partial class Admin_ManagementStudentDetail : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    Class1 varclass = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["myck"] == null)
        //{
        //    Response.Redirect("~/default.aspx");
        //}
        Session.Timeout = 300;
        if ((Session["myck"] == "") || (Session["myck"] == null))
        {
            Response.Redirect("~/default.aspx");
        }
        con.ConnectionString = varclass.GetConnectionString("");
        con.Open();
        if (!IsPostBack)
        {
            session();
            getmodeofenquiry();
        }
    }
    public void session()
    {
        string sql = "select distinct Session from MasterSession";
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        
        DataSet ds = new DataSet();
        da.Fill(ds, "MasterSession");
        ddlSession.DataSource = ds;
        ddlSession.DataTextField = "Session";
        ddlSession.DataValueField = "Session";
        ddlSession.DataBind();
        ddlSession.Items.Insert(0, new ListItem("Select", "0"));
    }

    public void getmodeofenquiry()
    {
        string sql = null;

        sql = "select Distinct Statuscode from admissions";
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "masterSession ");
        ddlstatus.Items.Insert(0, "Select");
        if (ds.Tables["masterSession "].Rows.Count > 0)
        {
            for (int i = 0; i <= ds.Tables["masterSession "].Rows.Count - 1; i++)
            {
                ddlstatus.Items.Add(ds.Tables["masterSession "].Rows[i]["Statuscode"].ToString());

            }

        }
        else
        {
        }
        cmd.Dispose();
        da.Dispose();
        ds.Dispose();
    }
    protected void chkbetweendate_CheckedChanged(object sender, EventArgs e)
    {
        if (chkbetweendate.Checked == true)
        {
            lblFrom.Visible = true;
            txtFrom.Visible = true;
            lblTo.Visible = true;
            txtto.Visible = true;
        }
        else
        {
            lblFrom.Visible = false;
            txtFrom.Visible = false;
            lblTo.Visible = false;
            txtto.Visible = false;
        }
    }
    protected void btndpl_Click(object sender, EventArgs e)
    {
        if (chkbetweendate.Checked == true)
        {
            Datebetween();
        }
        else
        {
            DisplayAllEnquiryAndAdmission();
        }
    }
    public  void DisplayAllEnquiryAndAdmission()
    {
        string query = "";
        if (ddlstatus.Text!= "Select" && ddlSession.Text!="Select" && ddlTraining.Text!="Select")
        {
            if (ddlstatus.Text != "Enquiry")
            {
                query = "select Session,EnquiryNo,CollegeName,Course,Duration,StudentName,StudentMobileNo,";
                query = query + "EmailID,City,ReferenceBy,RefContactNo,refEmailID,RefDesignation from Admissions where Comment='Management Intership' and FranchiseCode='TNK101'";
                query = query + "and BrandName='THINKNEXT TRAINING' and StatusCode='" + ddlstatus.Text + "' and Duration='" + ddlTraining.Text + "' and Session='"+ddlSession.Text+"'";
            }
            else
            {
                query = "select Session,EnquiryNo,CollegeName,Course,Duration,StudentName,StudentMobileNo,";
                query = query + "EmailID,City,ReferenceBy,RefContactNo,refEmailID,RefDesignation from Admissions where Comment='Management Intership' and FranchiseCode='TNK101'";
                query = query + "and BrandName='THINKNEXT TRAINING' and StatusCode='" + ddlstatus.Text + "' and Duration='" + ddlTraining.Text + "'";
            }
            
        }
        else if(ddlstatus.Text!="Select" && ddlSession.Text!="Select")
        {
            if (ddlstatus.Text != "Enquiry")
            {
                query = "select Session,EnquiryNo,CollegeName,Course,Duration,StudentName,StudentMobileNo,";
                query = query + "EmailID,City,ReferenceBy,RefContactNo,refEmailID,RefDesignation from Admissions where Comment='Management Intership' and FranchiseCode='TNK101'";
                query = query + "and BrandName='THINKNEXT TRAINING' and StatusCode='" + ddlstatus.Text + "' and Session='"+ddlSession.Text +"'";
            }
            else
            {
                query = "select Session,EnquiryNo,CollegeName,Course,Duration,StudentName,StudentMobileNo,";
                query = query + "EmailID,City,ReferenceBy,RefContactNo,refEmailID,RefDesignation from Admissions where Comment='Management Intership' and FranchiseCode='TNK101'";
                query = query + "and BrandName='THINKNEXT TRAINING' and StatusCode='" + ddlstatus.Text + "'";
            }
        }
        else if(ddlTraining.Text!="Select" && ddlSession.Text!="Select" )

        {
           
             query = "select Session,EnquiryNo,CollegeName,Course,Duration,StudentName,StudentMobileNo,";
             query = query + "EmailID,City,ReferenceBy,RefContactNo,refEmailID,RefDesignation from Admissions where Comment='Management Intership' and FranchiseCode='TNK101'";
             query = query + "and BrandName='THINKNEXT TRAINING' and  Duration='" + ddlTraining.Text + "' and Session='" + ddlSession.Text + "'";
        }
        else if(ddlTraining.Text!="Select" && ddlstatus.Text!= "Select" )
        {

        query = "select Session,EnquiryNo,CollegeName,Course,Duration,StudentName,StudentMobileNo,";
        query = query + "EmailID,City,ReferenceBy,RefContactNo,refEmailID,RefDesignation from Admissions where Comment='Management Intership' and FranchiseCode='TNK101'";
        query = query + "and BrandName='THINKNEXT TRAINING' and StatusCode='" + ddlstatus.Text + "' and Duration='" + ddlTraining.Text + "'";
        }
         else if(ddlTraining.Text!="Select")
        {
             query = "select Session,EnquiryNo,CollegeName,Course,Duration,StudentName,StudentMobileNo,";
             query = query + "EmailID,City,ReferenceBy,RefContactNo,refEmailID,RefDesignation from Admissions where Comment='Management Intership' and FranchiseCode='TNK101'";
             query = query + "and BrandName='THINKNEXT TRAINING' and Duration='" + ddlTraining.Text + "'";
         }

        else if(ddlSession.Text!="Select")
        {
            if (ddlstatus.Text != "Enquiry")
            {
                query = "select Session,EnquiryNo,CollegeName,Course,Duration,StudentName,StudentMobileNo,";
                query = query + "EmailID,City,ReferenceBy,RefContactNo,refEmailID,RefDesignation from Admissions where Comment='Management Intership' and FranchiseCode='TNK101'";
                query = query + "and BrandName='THINKNEXT TRAINING' and session='"+ddlSession.Text+"'";
            }
            else
            {
                query = "select Session,EnquiryNo,CollegeName,Course,Duration,StudentName,StudentMobileNo,";
                query = query + "EmailID,City,ReferenceBy,RefContactNo,refEmailID,RefDesignation from Admissions where Comment='Management Intership' and FranchiseCode='TNK101'";
                query = query + "and BrandName='THINKNEXT TRAINING'";
            }
        }
        else if (ddlstatus.Text!= "Select")
        {
            query = "select Session,EnquiryNo,CollegeName,Course,Duration,StudentName,StudentMobileNo,";
            query = query + "EmailID,City,ReferenceBy,RefContactNo,refEmailID,RefDesignation from Admissions where Comment='Management Intership' and FranchiseCode='TNK101'";
            query = query + "and BrandName='THINKNEXT TRAINING' and StatusCode='" + ddlstatus.Text + "'";
        }
        else
        {
            query = "select Session,EnquiryNo,CollegeName,Course,Duration,StudentName,StudentMobileNo,";
            query = query + "EmailID,City,ReferenceBy,RefContactNo,refEmailID,RefDesignation from Admissions where Comment='Management Intership' and FranchiseCode='TNK101'";
            query = query + "and BrandName='THINKNEXT TRAINING'";
        }
       

        SqlDataAdapter da = new SqlDataAdapter(query,con);
        DataSet ds = new DataSet();
        da.Fill(ds, "Admissions");
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
            lblmsg.Visible = true;
            lblmsg.Text = "Total Records : " + ds.Tables[0].Rows.Count;

        }
        else
        {
            lblmsg.Visible = true;
            lblmsg.Text = "No Admissions Found";
        }
    }

    public void Datebetween()
    {
        string sDateTime = "";
        string[] sDate = txtFrom.Text.Split('/');
        sDateTime = sDate[2] + '/' + sDate[1] + '/' + sDate[0];
        DateTime dtFinaldate = Convert.ToDateTime(sDateTime);

        string sDateTime1 = "";
        string[] sDate1 = txtto.Text.Split('/');
        sDateTime1 = sDate1[2] + '/' + sDate1[1] + '/' + sDate1[0];
        DateTime dtFinaldate1 = Convert.ToDateTime(sDateTime1);
        string query = "";
        if (ddlstatus.Text != "Select" && ddlSession.Text != "Select" && ddlTraining.Text != "Select")
        {
            if (ddlstatus.Text != "Enquiry")
            {
                query = "select Session,EnquiryNo,CollegeName,Course,Duration,StudentName,StudentMobileNo,";
                query = query + "EmailID,City,ReferenceBy,RefContactNo,refEmailID,RefDesignation from Admissions where Comment='Management Intership' and FranchiseCode='TNK101'";
                query = query + "and BrandName='THINKNEXT TRAINING' and StatusCode='" + ddlstatus.Text + "' and Duration='" + ddlTraining.Text + "' and session='"+ddlSession.Text+"' and Admissiondate between '" + dtFinaldate + "' and '" + dtFinaldate1 + "'";
            }
            else
            {
                query = "select Session,EnquiryNo,CollegeName,Course,Duration,StudentName,StudentMobileNo,";
                query = query + "EmailID,City,ReferenceBy,RefContactNo,refEmailID,RefDesignation from Admissions where Comment='Management Intership' and FranchiseCode='TNK101'";
                query = query + "and BrandName='THINKNEXT TRAINING' and StatusCode='" + ddlstatus.Text + "' and Duration='" + ddlTraining.Text + "' and Admissiondate between '" + dtFinaldate + "' and '" + dtFinaldate1 + "'";
            }

           
        }
        else
        {

            query = "select Session,EnquiryNo,CollegeName,Course,Duration,StudentName,StudentMobileNo,";
            query = query + "EmailID,City,ReferenceBy,RefContactNo,refEmailID,RefDesignation from Admissions where Comment='Management Intership' and FranchiseCode='TNK101'";
            query = query + "and BrandName='THINKNEXT TRAINING' and Admissiondate between '" + dtFinaldate + "' and '" + dtFinaldate1 + "'";
        }
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        da.Fill(ds, "Admissions");
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
            lblmsg.Visible = true;
            lblmsg.Text = "Total Records : " + ds.Tables[0].Rows.Count;

        }
        else
        {
            lblmsg.Visible = true;
            lblmsg.Text = "No Admissions Found";
        }
    }
    protected void btnEXL_Click(object sender, EventArgs e)
    {
         Response.Clear();
        Response.Buffer = true;
        Response.AddHeader("content-disposition", "attachment;filename=StudentDetails.xls");
        Response.Charset = "";
        Response.ContentType = "application/vnd.ms-excel";
        StringWriter sWriter = new StringWriter();
        HtmlTextWriter hWriter = new HtmlTextWriter(sWriter);
        GridView1.Style.Add("text-transform", "Capitalize");
        GridView1.RenderControl(hWriter);
        Response.Output.Write(sWriter.ToString());
        Response.Flush();
        Response.End();
    }
     public override void VerifyRenderingInServerForm(Control control)
    {
        /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
           server control at run time. */
    }
}
 
