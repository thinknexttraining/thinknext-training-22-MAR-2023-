using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;




public partial class Admin_CreateGroups : System.Web.UI.Page
{
    public Class1 varclass = new Class1();
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

        if (Page.IsPostBack == false)
        {
            displaytraining(DropDownList1);
        }

    }
    public void displaytraining(DropDownList ddl)
    {

        SqlConnection con = new SqlConnection();
        con.ConnectionString = varclass.GetConnectionString("");
        con.Open();
        int rowctr = 0;
        string sql = " select Distinct Course from Admissions  where FranchiseCode='" + txtfranchise.Text + "' order by Course ";
        SqlCommand cmd = new SqlCommand(sql, con);
        DataSet ds = new DataSet();
        ddl.Items.Clear();
        ddl.Items.Add("Select");
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        adp.Fill(ds, "Admissions");
        if (ds.Tables["Admissions"].Rows.Count > 0)
        {
            while (rowctr < ds.Tables["Admissions"].Rows.Count)
            {
                ddl.Items.Add(ds.Tables["Admissions"].Rows[rowctr]["Course"].ToString());
                rowctr = rowctr + 1;
            }
        }
    }   
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.Text != "Select")
        {
            displaydata(DropDownList1.Text,ddlsessionmonth.Text);
        }
        else
        {
            lblmessage.Text = "Please select a group ";

        }




    }
    public void displaydata(string training,string year)
    {

        SqlConnection con = new SqlConnection();
        con.ConnectionString = varclass.GetConnectionString("");
        con.Open();
        string sql = "";
        //sql = " SELECT SrNo, IDNo, Training, TrainingBatch, BatchTiming, StudentName, FatherName, StudentMobileNo, EmailID, CorrespondanceAddress, BatchGroup  FROM  Admissions WHERE   Active = 'True' AND  StatusCode = 'Admission' and Training=@Training AND FranchiseCode='" + txtfranchise.Text + "' ";
        //sql = " SELECT SrNo, IDNo, Course, TrainingBatch, BatchTiming, StudentName, FatherName, StudentMobileNo, EmailID, CorrespondanceAddress, BatchGroup  FROM  Admissions WHERE IDNo is Not Null and Course=@Course And SessionMonth=@SessionMonth And SessionYear=@SessionYear  And FranchiseCode='" + txtfranchise.Text + "' ";
        sql = " SELECT SrNo, IDNo, Course, TrainingBatch, BatchTiming, StudentName, FatherName, StudentMobileNo, EmailID, CorrespondanceAddress, BatchGroup  FROM  Admissions WHERE IDNo is Not Null and Course like '%" + training + "%' And SessionMonth=@SessionMonth And SessionYear=@SessionYear And BrandName='THINKNEXT TRAINING'  And FranchiseCode='" + txtfranchise.Text + "' ";

        SqlCommand cmd = new SqlCommand(sql, con);
        //cmd.Parameters.AddWithValue("@Course", training);
        //cmd.Parameters.AddWithValue("@SessionMonth",Month);
        cmd.Parameters.AddWithValue("@SessionYear", year);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds, "Admissions");
        if (ds.Tables["Admissions"].Rows.Count > 0)
        {
            GridView1.DataSource = ds.Tables["Admissions"];
            GridView1.DataBind();
            lblmessage.Text = " Total  " + ds.Tables["Admissions"].Rows.Count + "  Records found";
            divupdategroup.Style.Add("display", "block");

        }
        else {
            lblmessage.Text = "Sorry ! No Record Found";
            divupdategroup.Style.Add("display", "none");
            GridView1.DataSource = ds;
            GridView1.DataBind();
           // divupdategroup.Visible = true;
        }

    }
   
    protected void btnupdate_Click(object sender, EventArgs e)
    {

        //if (ddlsessionmonth.Text == "Select" || ddlsessionyear.Text == "Select")
        //{
        //    lblmessage.Text = "Please Select Session Year and Month...";
        //    return;
        //}
       
        if (txtgroupname.Text == "")
        {
            lblmessage.Text = "Please enter group name";
            return;
        }
        else
        {

            foreach (GridViewRow row in GridView1.Rows)
            {
                CheckBox chkBox = (CheckBox)row.FindControl("chk");
                Label lblsrno = (Label)row.FindControl("lblserialno");

                if (chkBox.Checked == true)
                {
                    updategroup(txtgroupname.Text, Convert.ToInt32(lblsrno.Text));

                }
            }

        }
        lblmessage.Text = "Group Updated Successfully";
        //displaydata(DropDownList1.Text,ddlsessionmonth.Text,ddlsessionyear.Text);

    }
    
    public void updategroup(string BatchGroup, Int32 srno)
    {

        SqlConnection con = new SqlConnection();
        con.ConnectionString = varclass.GetConnectionString("");
        con.Open();
        string batch="";

        string sql1 = "";
        sql1 = "select BatchGroup from admissions where srno="+srno;
        SqlDataAdapter adp = new SqlDataAdapter(sql1,con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            if (ds.Tables[0].Rows[0][0].ToString() == "")
            {
                batch = BatchGroup;
            }
            else 
            {
                batch = ds.Tables[0].Rows[0][0].ToString() + "," + BatchGroup;
            }
        }
       
       

        
        string sql = "";
        sql = " Update  Admissions set BatchGroup = @BatchGroup   WHERE SrNo=@SrNo  ";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@BatchGroup", batch);
        cmd.Parameters.AddWithValue("@SrNo", srno);
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
 
      
    
    
    }
    
    protected void Chkall_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox chkall = (CheckBox)GridView1.HeaderRow.FindControl("Chkall");
        if (chkall.Checked == true)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                CheckBox chkBox = (CheckBox)row.FindControl("chk");
                chkBox.Checked = true;
            }

        }
        else {
            foreach (GridViewRow row in GridView1.Rows)
            {
                CheckBox chkBox = (CheckBox)row.FindControl("chk");
                chkBox.Checked = false;
            }
        
        }

    }

    protected void txtfranchise_TextChanged(object sender, EventArgs e)
    {

    }
   
}
