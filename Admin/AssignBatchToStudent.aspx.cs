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

public partial class Admin_AssignBatchToStudent : System.Web.UI.Page
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
        lblError.Visible = false;
        if (!IsPostBack)
        {
            btnAddin.Visible = false;
            ddlBatchesassign.Visible = false;
            Panel2.Visible = false;

            Panel4.Visible = false;
            ddlBatchset.Visible = false;
            btnUpdateBatch.Visible = false;
            btnDeleteFBatch.Visible = false;

            GetallSession();
            GetAllCourse();
            GetSessionBatchmembers();
            GettAllBatches();
        }

    }


    public void GetallSession()
    {


        string query = "select Distinct Session from masterSession where BrandName='THINKNEXT TRAINING' and FranchiseCode='TNK101'";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "masterSession ");
        ddlSelectSession.Items.Insert(0, "Select");
        if (ds.Tables["masterSession "].Rows.Count > 0)
        {
            for (int i = 0; i <= ds.Tables["masterSession "].Rows.Count - 1; i++)
            {
                ddlSelectSession.Items.Add(ds.Tables["masterSession "].Rows[i]["Session"].ToString());

            }

        }
        else
        {
        }
        cmd.Dispose();
        da.Dispose();
        ds.Dispose();
    }



    public void GettAllBatches()
    {
        string query = "select Distinct Batchname from masterbatches where BrandName='THINKNEXT TRAINING' and FranchiseCode='TNK101'";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "masterbatches ");
        ddlassbatch.Items.Clear();
        ddlassbatch.Items.Insert(0, "Select");
        if (ds.Tables["masterbatches "].Rows.Count > 0)
        {
            for (int i = 0; i <= ds.Tables["masterbatches "].Rows.Count - 1; i++)
            {
                ddlassbatch.Items.Add(ds.Tables["masterbatches "].Rows[i]["Batchname"].ToString());

            }

        }
        else
        {
        }
        cmd.Dispose();
        da.Dispose();
        ds.Dispose();

    }

    public void GetBatch()
    {
        string query = "select Distinct Batchname from masterbatches where BrandName='THINKNEXT TRAINING' and FranchiseCode='TNK101'";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "masterbatches ");
        ddlBatchesassign.Items.Clear();
        ddlBatchesassign.Items.Insert(0, "Select Batch");
        if (ds.Tables["masterbatches "].Rows.Count > 0)
        {
            for (int i = 0; i <= ds.Tables["masterbatches "].Rows.Count - 1; i++)
            {
                ddlBatchesassign.Items.Add(ds.Tables["masterbatches "].Rows[i]["Batchname"].ToString());

            }

        }
        else
        {
        }
        cmd.Dispose();
        da.Dispose();
        ds.Dispose();


    }



    protected void btnShowStudent_Click(object sender, EventArgs e)
    {
        ShowStudent();

    }

    private void ShowStudent()
    {
        string query = "select idno,studentname,course,BatchGroup from admissions where session='" + ddlSelectSession.Text + "' and Course='" + ddlCourses.Text + "' and idno is not null and Brandname='THINKNEXT TRAINING' and franchisecode='TNK101'";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "admissions ");
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        lblmsg.Text = "Total Records : " + GridView1.Rows.Count;
        cmd.Dispose();
        da.Dispose();
        ds.Dispose();
        GetBatch();
        btnAddin.Visible = true;
        ddlBatchesassign.Visible = true;
        Panel2.Visible = true;
    }

    protected void ButtonInsSave_Click(object sender, EventArgs e)
    {
        
        System.Text.RegularExpressions.Regex reg = new System.Text.RegularExpressions.Regex("[A-Za-z]{3}-[A-Za-z]{3}-[0-9]{4}");


        bool matchResult = reg.IsMatch(TextBoxInsert.Text);
        
        if (matchResult == false)
        {
            lblError.Visible = true;
            lblError.Text = "Please enter correct format...";
            ScriptManager.RegisterStartupScript(this, GetType(), "togglSession", "togglSession();", true);
            return;
        }
        else
        { 
        //BrandName, FranchiseCode, Session
        string query = "insert into mastersession(BrandName, FranchiseCode, Session)values(@BrandName,@FranchiseCode,@Session)";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@BrandName", txtBrandName.Text);
        cmd.Parameters.AddWithValue("@FranchiseCode", txtfranchiseCode.Text);//TextBoxInsert
        cmd.Parameters.AddWithValue("@Session", TextBoxInsert.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        lblError.Visible = true;
        lblError.Text = "session create successfully..";
        }
    }





    protected void chkall_CheckedChanged(object sender, EventArgs e)
    {
        string query = "select idno,studentname,course,BatchGroup from admissions where session='" + ddlSelectSession.Text + "' and idno is not null and Brandname='THINKNEXT TRAINING' and franchisecode='TNK101'";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "admissions ");
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        lblmsg.Visible = true;
        lblmsg.Text = "Total Records : " + GridView1.Rows.Count;
        cmd.Dispose();
        da.Dispose();
        ds.Dispose();


    }

    public void GetAllCourse()
    {
        string Sessions = ddlSelectSession.Text;
        string query = "select Distinct Course from Admissions where BrandName='THINKNEXT TRAINING' and FranchiseCode='TNK101' order by Course ASC";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "Admissions ");
        ddlCourses.Items.Clear();
        ddlCourses.Items.Insert(0, "Select");
        if (ds.Tables["Admissions "].Rows.Count > 0)
        {
            for (int i = 0; i <= ds.Tables["Admissions "].Rows.Count - 1; i++)
            {
                ddlCourses.Items.Add(ds.Tables["Admissions "].Rows[i]["course"].ToString());

            }

        }
        else
        {
        }
        cmd.Dispose();
        da.Dispose();
        ds.Dispose();
    }
    protected void btnAddin_Click(object sender, EventArgs e)
    {
        if (ddlBatchesassign.Text == "Select")
        {
            lblmsg.Text = "Please enter group name";
            return;
        }
        else
        {

            foreach (GridViewRow row in GridView1.Rows)
            {
                CheckBox chkBox = (CheckBox)row.FindControl("chk");
                Label lblsrno = (Label)row.FindControl("lblIdNo");

                if (chkBox.Checked == true)
                {
                    InsertBatches(ddlBatchesassign.Text, Convert.ToInt32(lblsrno.Text));

                }
            }

        }
        lblmsg.Visible = true;
        lblmsg.Text = "Group Updated Successfully";
        ShowStudent();
    }


    public void InsertBatches(string Batch, Int32 srno)
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        con.ConnectionString = varclass.GetConnectionString("");
        con.Open();

        string query = "insert into BatchMembers values('THINKNEXT TRAINING','TNK101','" + ddlSelectSession.Text + "','" + Batch + "','" + srno + "')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();

        updatebatchinadmissions(Batch, srno);

    }
    public void updatebatchinadmissions(string srnBatches, Int32 idno)
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        con.ConnectionString = varclass.GetConnectionString("");
        con.Open();
        string batch = "";
        string sql1 = "";
        sql1 = "select BatchGroup from admissions where srno=" + idno;
        SqlDataAdapter adp = new SqlDataAdapter(sql1, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            if (ds.Tables[0].Rows[0][0].ToString() == "")
            {
                batch = srnBatches;
            }
            else
            {
                batch = ds.Tables[0].Rows[0][0].ToString() + "," + srnBatches;
            }
        }




        string sql = "";
        sql = " Update  Admissions set BatchGroup = @BatchGroup   WHERE SrNo=@SrNo  ";
        cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@BatchGroup", srnBatches);
        cmd.Parameters.AddWithValue("@SrNo", idno);
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();



    }


    public void GetSessionBatchmembers()//ddlsessionbatch
    {

        string query = "select Distinct Session from masterSession where BrandName='THINKNEXT TRAINING' and FranchiseCode='TNK101'";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "masterSession ");
        ddlsessionbatch.Items.Insert(0, "Select");
        if (ds.Tables["masterSession "].Rows.Count > 0)
        {
            for (int i = 0; i <= ds.Tables["masterSession "].Rows.Count - 1; i++)
            {
                ddlsessionbatch.Items.Add(ds.Tables["masterSession "].Rows[i]["Session"].ToString());

            }

        }
        else
        {
        }
        cmd.Dispose();
        da.Dispose();
        ds.Dispose();

    }




    protected void btnShowbatchstu_Click(object sender, EventArgs e)
    {
        AsiingnBatchShow();
    }

    private void AsiingnBatchShow()
    {
        string query = "select B.IDNO,B.BatchName,A.Course,A.studentname from Admissions as A inner join BatchMembers as B on B.IDNo=A.IDNo where B.Session='" + ddlsessionbatch.Text + "' and B.BatchName='" + ddlassbatch.Text + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView2.DataSource = ds;
            GridView2.DataBind();
        }
        lblmessages.Visible = true;
        lblmessages.Text = "Total Records : " + GridView2.Rows.Count;
        cmd.Dispose();
        da.Dispose();
        ds.Dispose();
        Batchset();
        Panel4.Visible = true;
        ddlBatchset.Visible = true;
        btnUpdateBatch.Visible = true;
        btnDeleteFBatch.Visible = true;
    }

    public void Batchset()//ddlBatchset
    {
        string query = "select Distinct Batchname from masterbatches where BrandName='THINKNEXT TRAINING' and FranchiseCode='TNK101'";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "masterbatches ");
        ddlBatchset.Items.Clear();
        ddlBatchset.Items.Insert(0, "Select Batch");
        if (ds.Tables["masterbatches "].Rows.Count > 0)
        {
            for (int i = 0; i <= ds.Tables["masterbatches "].Rows.Count - 1; i++)
            {
                ddlBatchset.Items.Add(ds.Tables["masterbatches "].Rows[i]["Batchname"].ToString());

            }

        }
        else
        {
        }
        cmd.Dispose();
        da.Dispose();
        ds.Dispose();
    }
    protected void btnUpdateBatch_Click(object sender, EventArgs e)
    {

        if (ddlBatchset.Text == "Select")
        {
            lblmsg.Text = "Please enter group name";
            return;
        }
        else
        {

            foreach (GridViewRow row in GridView2.Rows)
            {
                CheckBox chkBox = (CheckBox)row.FindControl("CHK");
                Label lblsrno = (Label)row.FindControl("lblIdNo");

                if (chkBox.Checked == true)
                {
                    updateGroups(ddlassbatch.Text, Convert.ToInt32(lblsrno.Text));

                }
            }

        }
        lblmsg.Text = "Group Updated Successfully";
        AsiingnBatchShow();
    }

    public void updateGroups(string Batch, Int32 srno)
    {

        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        con.ConnectionString = varclass.GetConnectionString("");
        con.Open();

        //string query = "insert into BatchMembers values('THINKNEXT TRAINING','TNK101','" + ddlSelectSession.Text + "','" + Batch + "','" + srno + "')";
        string sql = "update BatchMembers set Batchname='" + ddlBatchset.Text + "' where IDNO='" + srno + "' and Batchname='" + Batch + "' and brandname='THINKNEXT TRAINING' and Franchisecode='TNK101' ";
        cmd = new SqlCommand(sql, con);
        cmd.ExecuteNonQuery();
        con.Close();

        updatebatchinadmissions(ddlBatchset.Text, srno);

    }
    protected void btnDeleteFBatch_Click(object sender, EventArgs e)
    {
       
            foreach (GridViewRow row in GridView2.Rows)
            {
                CheckBox chkBox = (CheckBox)row.FindControl("CHK");
                Label lblsrno = (Label)row.FindControl("lblIdNo");

                if (chkBox.Checked == true)
                {

                    DeletefromBatch(Convert.ToInt32(lblsrno.Text));
                }
            }

       
        lblmsg.Text = "Group Updated Successfully";
        AsiingnBatchShow();
    }

    public void DeletefromBatch(Int32 IDNO)
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        con.ConnectionString = varclass.GetConnectionString("");
        con.Open();
        string query = "delete from batchmembers where IDNO='"+IDNO+"' and BrandName='THINKNEXT TRAINING' and FranchiseCode='TNK101'";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
}

