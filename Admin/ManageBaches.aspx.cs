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

public partial class Admin_ManageBaches : System.Web.UI.Page
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
            GetSession();
           
        }

    }

    public void GetSession()
    {
        string query = "select Distinct Session from masterSession where BrandName='THINKNEXT TRAINING' and FranchiseCode='TNK101'";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "masterSession ");
        ddlSession.Items.Clear();
        ddlSession.Items.Insert(0,"Select");
        if (ds.Tables["masterSession "].Rows.Count > 0)
        {
            for (int i = 0; i <= ds.Tables["masterSession "].Rows.Count - 1; i++)
            {
                ddlSession.Items.Add(ds.Tables["masterSession "].Rows[i]["Session"].ToString());

            }

        }
        else
        {
        }
        cmd.Dispose();
        da.Dispose();
        ds.Dispose();
    
    }
    public void GetBatches()
    {
        string query = "select Distinct Batchname from masterbatches where Session='" + ddlSession.Text+ "' and BrandName='THINKNEXT TRAINING' and FranchiseCode='TNK101'";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "masterbatches ");
        

        if (ds.Tables["masterbatches "].Rows.Count > 0)
        {
            for (int i = 0; i <= ds.Tables["masterbatches "].Rows.Count - 1; i++)
            {
                ddlBatches.Items.Add(ds.Tables["masterbatches "].Rows[i]["Batchname"].ToString());

            }

        }
        else
        {
            ddlBatches.Items.Insert(0, "Select");
            lblmessages.Visible = true;
            lblmessages.Text = "There is No batches acording selected session...!!";
        }
        cmd.Dispose();
        da.Dispose();
        ds.Dispose();
 
    }
    protected void ddlSession_SelectedIndexChanged(object sender, EventArgs e)
    {
        GetBatches();
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {

        bindgridview();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        bindgridview();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        bindgridview();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label lblid = (Label)GridView1.Rows[e.RowIndex].FindControl("lblBatchId");

        string query = "Delete from masterbatches where BatchID='"+lblid.Text+"' and BrandName='THINKNEXT TRAINING' and FranchiseCode='TNK101'";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        bindgridview();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Label lblSess = (Label)GridView1.Rows[e.RowIndex].FindControl("lblSess");
        TextBox txtsession = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtSession");
        TextBox txtBatchname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtBatchname");
        TextBox txtBatchtiming = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtBatchtiming");
        TextBox txtStaffid = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtStaffid");
        DropDownList txtIsActive = (DropDownList)GridView1.Rows[e.RowIndex].FindControl("ddlIsActive");

        //BrandName, FranchiseCode, Session, BatchID, BatchName, BatchTimings, StaffIDNo, Active
        string query = "Update masterbatches set BrandName='THINKNEXT TRAINING', FranchiseCode='TNK101', Session='" + ddlSession.Text + "',BatchName='" + txtBatchname.Text + "', BatchTimings='" + txtBatchtiming.Text + "', StaffIDNo='" + txtStaffid.Text + "', Active='" + txtIsActive.Text + "' where BatchID='" + lblSess.Text + "' and BrandName='THINKNEXT TRAINING' and FranchiseCode='TNK101'";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        bindgridview();
        GridView1.EditIndex = -1;
        bindgridview();
        lblmessages.Text = "Update Batches Successfully....";
        
    }

    public void bindgridview()
    {
        string query = "select BatchID,Session,Batchname,batchTimings,StaffIDNo,Active,Batchname from masterbatches where BatchName='" + ddlBatches.Text + "' and Session='" + ddlSession.Text + "' and BrandName='THINKNEXT TRAINING' and FranchiseCode='TNK101'";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "masterbatches ");
        if (ds.Tables["masterbatches "].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            lblmessages.Text = "No Record Found.....!!";
        }
       
    }
}
