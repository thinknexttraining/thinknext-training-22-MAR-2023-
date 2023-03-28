using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AddTest : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection();
    Class1 varclass = new Class1();
    string VarIP = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["myck"] == null)
        {
            Response.Redirect("~/default.aspx");
        }

        con.ConnectionString = varclass.GetConnectionString(VarIP);

        if (Page.IsPostBack == false)
        {
            //GetCourse();
            GetSession();
        }
    }
    private void GetCourse()
    {
        string query = "select Distinct Courses from MasterCourses  where FranchiseCode='" + txtfranchise.Text + "' order by Courses";
        SqlDataAdapter adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            dllcourse.DataTextField = "Courses";
            dllcourse.DataValueField = "Courses";
            dllcourse.DataSource = ds;
            dllcourse.DataBind();
        }
    }
    protected void btnaddtest_Click(object sender, EventArgs e)
    {
        if (dllcourse.Text == "Select")
        {
            lblerrormsg.Text = "Please Select The Course";
            return;
        }
        if (dllanswer.Text == "Select")
        {
            lblerrormsg.Text = "Please Select The Answer";
            return;
        }
        if (dlltesttype .Text == "Select")
        {
            lblerrormsg.Text = "Please Select The Test Type";
            return;
        }

        string query = "Insert into OnlineExam(Course,Question,Option1,Option2,Option3,Option4,Answer,TestType,UserId,BrandName,FranchiseCode)values(@Course,@Question,@Option1,@Option2,@Option3,@Option4,@Answer,@TestType,@UserId,@BrandName,@FranchiseCode)";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        con.Open();
        cmd.Parameters.AddWithValue("@Course", dllcourse.Text);
        cmd.Parameters.AddWithValue("@Question", txtquestion.Text);
        cmd.Parameters.AddWithValue("@Option1", txtfirstoption.Text);
        cmd.Parameters.AddWithValue("@Option2", txtsecondoption.Text);
        cmd.Parameters.AddWithValue("@Option3", txtthirdoption.Text);
        cmd.Parameters.AddWithValue("@Option4", txtfourthoption.Text);
        cmd.Parameters.AddWithValue("@Answer", dllanswer.Text);
        cmd.Parameters.AddWithValue("@TestType", dlltesttype.Text);
        cmd.Parameters.AddWithValue("@UserId", Session["myck"].ToString());
        cmd.Parameters.AddWithValue("@BrandName","THINKNEXT TRAINING");
        cmd.Parameters.AddWithValue("@FranchiseCode", "TNK101");
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
        lblmsg.Text = "Question Successfully Added ";
    }
    protected void dllcourse_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    public void GetSession()
    {
        string query = "select Distinct session from mastersession  where FranchiseCode='" + txtfranchise.Text + "' order by session";
        SqlDataAdapter adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        ddlsession.Items.Insert(0, "--Select Session--");
        if (ds.Tables[0].Rows.Count > 0)
        {
            ddlsession.DataTextField = "session";
            ddlsession.DataValueField = "session";
            ddlsession.DataSource = ds;
            ddlsession.DataBind();
        }
    }
    public void GetBatchname()
    {
        string IDNO = Session["myck"].ToString();
        string query = "select Distinct Batchname from masterbatches  where Staffidno='" + IDNO + "' and Session='" + ddlsession.Text + "' and  FranchiseCode='" + txtfranchise.Text + "' order by batchname";
        SqlDataAdapter adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        ddlsession.Items.Insert(0, "--Select Session--");
        if (ds.Tables[0].Rows.Count > 0)
        {
            dllcourse.DataTextField = "Batchname";
            dllcourse.DataValueField = "batchname";
            dllcourse.DataSource = ds;
            dllcourse.DataBind();
        }

    }

    protected void ddlsession_SelectedIndexChanged(object sender, EventArgs e)
    {
        GetBatchname();
    }
}