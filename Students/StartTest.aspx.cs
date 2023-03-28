using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Text;
using System.Collections;
using System.Configuration;
public partial class StartTest : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    Class1 varclass = new Class1();
    string VarIP = "";
   
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = varclass.GetConnectionString(VarIP);
       
            if (Session["myck"] != null)
            {
                lblid.Text = Session["myck"].ToString();
            }
            else
            {
                Response.Redirect("~/Default.aspx");
            }
            if (Page.IsPostBack == false)
            {
                GetCourse();
                GetTestType();
                batchgroup();
               
            }
            getQuestions();
    }
    private void GetTestType()
    {
        string query = "Select Distinct TestType from AssignTest where IdNo='" + Session["myck"].ToString() + "' and Course='" + dllcourse.Text + "' and Status='Yes' and FranchiseCode='" + txtfranchiseCode.Text + "'";
        SqlDataAdapter adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds, "AssignTest");
        if (ds.Tables[0].Rows.Count > 0)
        {
            lblerrormsg.Text = "";
            Panel3.Visible = true;
            dlltesttype.DataTextField = "TestType";
            dlltesttype.DataValueField = "TestType";
            dlltesttype.DataSource = ds;
            dlltesttype.DataBind();
        }
        else
        {
            Panel3.Visible = false;
            lblerrormsg.Text = "You have no test assign please contact your teacher";
        }
    }
    private void GetCourse()
    {
        string query = "Select Course from Admissions where IdNo='" + Session["myck"].ToString() + "'";
        SqlDataAdapter adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds,"Admissions");
        if (ds.Tables[0].Rows.Count > 0)
        {
            dllcourse.Text = ds.Tables["Admissions"].Rows[0]["Course"].ToString();
        }
    }
   
    protected void btnstarttest_Click1(object sender, EventArgs e)
    {
        if (dlltesttype .Text == "Select")
        {
            lblerrormsg.Text = "Please Select The Test Type ";
            return;
        }
        if(ddlBatchname.Text=="Select")
        {
            lblerrormsg.Text = "Please Select The Batch... ";
            return;
        }
        Panel3.Visible = false;
       
        Panel4.Visible = true;
        
    }
    protected void btnstart_Click(object sender, EventArgs e)
    {
        Session["id"] = lblid.Text;
        Session["course"] = dllcourse.Text;
        Session["testtype"] = dlltesttype.Text;
        Session["batchName"] = ddlBatchname.Text;
        Response.Redirect("StartExam.aspx");
        
    }
    public void batchgroup()
    {
        string query = "Select distinct Batchname from Batchmembers where IdNo='" + Session["myck"].ToString() + "'";
        SqlDataAdapter adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds,"Batchmembers");
        ddlBatchname.Items.Insert(0,"Select Batch");
        if (ds.Tables["Batchmembers"].Rows.Count > 0)
        {
            ddlBatchname.DataSource = ds;
            ddlBatchname.DataTextField = "Batchname";
            ddlBatchname.DataValueField = "Batchname";
            ddlBatchname.DataBind();
            
        }
        else 
        {
            lblerrormsg.Text = "You have No batch! please Contact Your teacher... ";
            return;
        }
       
    }
    public void getQuestions()
    {
        string query = "select question from onlineexam where course='"+ddlBatchname.Text+"' and testtype='"+dlltesttype.Text+"'";
        SqlDataAdapter adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds, "onlineexam");
        DropDownList dp = new DropDownList();
        if (ds.Tables[0].Rows.Count > 0)
        {
            int Q = 0;

            Q = ds.Tables[0].Rows.Count;
            Session["Question"] = Q;
        }
 
    }
}