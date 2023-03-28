using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_ManageCareers : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    Class1 varClass1 = new Class1();

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(varClass1.GetConnectionString(""));
        con.Open();
        if (!IsPostBack)
        {
            binddata();
        }

    }

    public void binddata()
    {
        string sql = "select JobID,JobTitle,JobCategory,Experience,Location,JobSummary,Qualification,convert(varchar,PostDate,103) as PostDate,Salary from jobpost";
        SqlDataAdapter adp = new SqlDataAdapter(sql, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            DataTable dt = new DataTable();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        string sDateTime = "";
        string[] sDate = txtfrom.Text.Split('/');
        sDateTime = sDate[1] + '/' + sDate[0] + '/' + sDate[2];
        DateTime dtfrom = Convert.ToDateTime(sDateTime);

        string sDateTime1 = "";
        string[] sDate1 = txtto.Text.Split('/');
        sDateTime1 = sDate1[1] + '/' + sDate1[0] + '/' + sDate1[2];
        DateTime dtTo = Convert.ToDateTime(sDateTime1);

        if (txtfrom.Text == "" && txtto.Text == "")
        {
            lblmsg.Visible = true;
            lblmsg.Text = "Please Fill Date";
            return;
        }
        string sql = "select JobID,JobTitle,JobCategory,Experience,Location,JobSummary,Qualification,convert(varchar,PostDate,103) as PostDate,Salary from jobpost where PostDate between '" + dtfrom + "' and '" + dtTo + "'";
        SqlDataAdapter adp = new SqlDataAdapter(sql, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
           
            DataTable dt = new DataTable();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
    protected void btdate_CheckedChanged(object sender, EventArgs e)
    {
        if (btdate.Checked == true)
        {
            lblfrom.Visible = true;
            txtfrom.Visible = true;
            lblto.Visible = true;
            txtto.Visible = true;
            btnsearch.Visible = true;

        }
        else
        {
            lblfrom.Visible = false;
            txtfrom.Visible = false;
            lblto.Visible = false;
            txtto.Visible = false;
            btnsearch.Visible = false;
        }

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
               
        binddata();
                
            

        
        
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        binddata();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label lblid = (Label)GridView1.Rows[e.RowIndex].FindControl("lblJobID");

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "delete from jobpost where JobID='"+lblid.Text+"'";
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        con.Close();
        binddata();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Label lblID = (Label)GridView1.Rows[e.RowIndex].FindControl("lblJobIDs");
        TextBox txtTitle = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtJobTitle");
        TextBox txtJobCategory = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtJobCategory");
        TextBox txtExperience = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtExperience");
        TextBox txtLocation = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtLocation");
        TextBox txtJobSummary = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtJobSummary");
        TextBox txtQualification = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtQualification");
        //TextBox txtPostDate = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtPostDate");
        TextBox txtSalary = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtSalary");
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "update jobpost set JobTitle='"+txtTitle.Text+"',JobCategory='"+txtJobCategory.Text+"',Experience='"+txtExperience.Text+"',Location='"+txtLocation.Text+"',JobSummary='"+txtJobSummary.Text+"',Qualification='"+txtQualification.Text+"',PostDate='"+DateTime.Today+"',Salary='"+txtSalary.Text+"' where JobID='"+lblID.Text+"'";
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        con.Close();
        binddata();
    }

}