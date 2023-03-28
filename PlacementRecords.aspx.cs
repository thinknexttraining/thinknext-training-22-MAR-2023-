using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.Data.Common;
using System.Net.NetworkInformation;

public partial class PlacementRecords : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    Class1 varclass = new Class1();

    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = varclass.GetConnectionString("");
        con.Open();
       // gdbind();
        if (!IsPostBack)
        {
            interviewdata();
        FullTime();
        }
    }

    public void gdbind()
    {

        string sql = null;
        DataSet ds = default(DataSet);
        SqlDataAdapter da = default(SqlDataAdapter);
        sql = "select CandidateName,CompanyName,CollegeName,JobType,Result,convert(varchar,AddDate,103) as AddDate from AddPlace order by convert(datetime,AddDate,103) desc ";
        SqlCommand cmd = default(SqlCommand);
        cmd = new SqlCommand(sql, con);
        //  cmd.Parameters.AddWithValue("@ComplainerIDNo", txtIDNo.Text);

        ds = new DataSet();
        da = new SqlDataAdapter(cmd);
        // ds = new DataSet();
        da.Fill(ds, "AddPlace");
        if (ds.Tables["AddPlace"].Rows.Count == 0)
        {
            lblMsg.Visible = true;
            lblMsg.Text = ("No records found");
            gdShow.Visible = false;
            lblTotal.Text = "";
            return;
        }
        lblMsg.Visible = false;
        gdShow.Visible = true;
        gdShow.DataSource = ds.Tables["AddPlace"];
        gdShow.DataBind();
        lblTotal.Text = "Total Records : " + ds.Tables["AddPlace"].Rows.Count;

        con.Close();

    }



    protected void rdbpt_CheckedChanged(object sender, EventArgs e)
    {
        string sql = null;
        DataSet ds = default(DataSet);
        SqlDataAdapter da = default(SqlDataAdapter);
        sql = "select CandidateName,CompanyName,CollegeName,JobType,Result,convert(varchar,AddDate,101) as AddDate from AddPlace where JobType='Part Time' ";
        SqlCommand cmd = default(SqlCommand);
        cmd = new SqlCommand(sql, con);
        //  cmd.Parameters.AddWithValue("@ComplainerIDNo", txtIDNo.Text);

        ds = new DataSet();
        da = new SqlDataAdapter(cmd);
        // ds = new DataSet();
        da.Fill(ds, "AddPlace");
        if (ds.Tables["AddPlace"].Rows.Count == 0)
        {
            lblMsg.Visible = true;
            lblMsg.Text = ("No records found");
            gdShow.Visible = false;
            lblTotal.Text = "";
            return;
        }
        lblMsg.Visible = false;
        gdShow.Visible = true;
        gdShow.DataSource = ds.Tables["AddPlace"];
        gdShow.DataBind();
        lblTotal.Text = "Total Records : " + ds.Tables["AddPlace"].Rows.Count;

        con.Close();


    }
    protected void rdbft_CheckedChanged(object sender, EventArgs e)
    {
        FullTime();
    }

    private void FullTime()
    {
        string sql = null;
        DataSet ds = default(DataSet);
        SqlDataAdapter da = default(SqlDataAdapter);
        sql = "select CandidateName,CompanyName,CollegeName,JobType,Result,convert(varchar,AddDate,101) as AddDate from AddPlace where JobType='Full Time' and Value=2 and result='Hired' order by convert(datetime,AddDate,101) desc ";
        SqlCommand cmd = default(SqlCommand);
        cmd = new SqlCommand(sql, con);
        //  cmd.Parameters.AddWithValue("@ComplainerIDNo", txtIDNo.Text);

        ds = new DataSet();
        da = new SqlDataAdapter(cmd);
        // ds = new DataSet();
        da.Fill(ds, "AddPlace");
        if (ds.Tables["AddPlace"].Rows.Count == 0)
        {
            lblMsg.Visible = true;
            lblMsg.Text = ("No records found");
            gdShow.Visible = false;
            lblTotal.Text = "";
            return;
        }
        lblMsg.Visible = false;
        gdShow.Visible = true;
        gdShow.DataSource = ds.Tables["AddPlace"];
        gdShow.DataBind();
        lblTotal.Text = "Total Records : " + ds.Tables["AddPlace"].Rows.Count;

        con.Close();
    }
    public void interviewdata()
    {
        string sql = null;
        DataSet ds = new DataSet();
        
        sql = "select CandidateName,CompanyName,CollegeName,JobType,convert(varchar,AddDate,101) as AddDate from AddPlace where Value=3 and JobType='InterView' order by convert(datetime,AddDate,101) desc ";
        SqlDataAdapter adp = new SqlDataAdapter(sql, con);
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
            lblmessage.Visible = true;
            lblmessage.Text = "Total Record Founded :" + ds.Tables[0].Rows.Count;
        }
        else
        {
             lblmessage.Visible = true;
             lblmessage.Text = "No Record Found";
        }
        
    }

    protected void gdShow_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
