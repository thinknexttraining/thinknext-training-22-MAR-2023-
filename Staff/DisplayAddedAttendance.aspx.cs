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
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.Data.SqlClient;
using System.IO;
using System.Text;
using System.Net;
using System.Net.Mail;
using System.Globalization;
using System.Text.RegularExpressions;

public partial class Admin_DisplayAddedAttendance : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    Class1 obj = new Class1();

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["myck"] == null)
        {
            Response.Redirect("~/default.aspx");
        }
        if (!IsPostBack)
        {
            GetSession();
        }
        con.ConnectionString = obj.GetConnectionString("constr");
        //if(Page.IsPostBack ==false)
        //{

        //txtdate.Text = DateTime.Now.Date.ToShortDateString();
        //String format = "dd/MM/yyyy";
        //txtdate.Text = DateTime.Now.ToShortDateString();
        //format = Convert.ToDateTime(txtdate.Text).ToString(format);
        //txtdate.Text = format;

        // }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DisplayGD();
    }
    public void DisplayGD()
    {
        //con.Open();
        //string str = "select DISTINCT staff.Name,Att.UserID from staff INNER JOIN AttRecord as Att ON staff.IDNo=Att.UserID where Att.AttDate='" + txtdate.Text + "' and staff.FranchiseCode='" + txtfranchise.Text + "' and staff.BrandName='THINKNEXT TRAINING'";
        //SqlDataAdapter da = new SqlDataAdapter(str,con);
        //DataSet ds = new DataSet();
        //da.Fill(ds);
        //if (ds.Tables[0].Rows.Count > 0)
        //{
        //    gvDisplay.DataSource = ds;
        //    gvDisplay.DataBind();

        //    lblmessage.Text = "";
        //}
        //else
        //{
        //    gvDisplay.DataSource = ds;
        //    gvDisplay.DataBind();

        //    lblmessage.Text = " No One Added Attendance Today";
        //}




    }

    public void GetSession()
    {
        SqlConnection con = new SqlConnection();
        Class1 obj = new Class1();
        con.ConnectionString = obj.GetConnectionString("constr");
        con.Open();
        string str = "select Distinct Session from mastersession where BrandName='THINKNEXT TRAINING' and FranchiseCode='TNK101'";

        SqlDataAdapter da = new SqlDataAdapter(str, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        //ddlsession.Items.Insert(0, "Select Session");
        if (ds.Tables[0].Rows.Count > 0)
        {
            ddlsession.DataSource = ds;
            ddlsession.DataTextField = "Session";
            ddlsession.DataValueField = "Session";
            ddlsession.DataBind();
            ddlsession.Items.Insert(0, "Select Session");
        }
        else
        {
            lblmessage.Visible = true;
            lblmessage.Text = "No Record Found..!!";
        }


    }
    protected void ddlsession_SelectedIndexChanged(object sender, EventArgs e)
    {
        ShowGroup(ddlsession.Text);

    }

    public void ShowGroup(string Session1)
    {
        string VAL = Session["myck"].ToString();
        SqlConnection con = new SqlConnection();
        Class1 obj = new Class1();
        con.ConnectionString = obj.GetConnectionString("constr");
        con.Open();
        SqlDataAdapter da = default(SqlDataAdapter);
        DataSet ds = default(DataSet);
        string sql = null;
        ddlbatch.Items.Clear();
        ddlbatch.Items.Add("Select");
        sql = "select Distinct BatchName from MasterBatches where StaffIDNo='" + VAL + "' and Session='" + Session1 + "' And FranchiseCode='TNK101' And brandname='THINKNEXT TRAINING'";
        SqlCommand cmd = new SqlCommand(sql, con);
        //cmd.Parameters.AddWithValue("@Course", Course)
        da = new SqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds, "MasterBatches");
        int i = 0;
        for (i = 0; i <= ds.Tables["MasterBatches"].Rows.Count - 1; i++)
        {
            if (ds.Tables["MasterBatches"].Rows[i]["BatchName"].ToString() != null)
            {
                ddlbatch.Items.Add(ds.Tables["MasterBatches"].Rows[i]["BatchName"].ToString());
            }
        }
        con.Close();
    }

    protected void btnshow_Click(object sender, EventArgs e)
    {

        ShowDetail(ddlsession.Text, ddlbatch.Text);


    }

    private void ShowDetail(string Session,string Batch)
    {
        SqlConnection con = new SqlConnection();
        Class1 obj = new Class1();
        con.ConnectionString = obj.GetConnectionString("constr");
        con.Open();
        string str = "select distinct IDNo,Studentname,fathername,(select SUM(CAST(lectDelievered as int)) from AttRecord as attre where attre.IDNo=ad.IDNo )as Totaldeliverlecture,";
        str = str + "(select sum(cast(LectAttended as int)) from AttRecord as attlect where attlect.IDNo=ad.IDNo )as totalattendlecture, ";
        str = str + "cast(((select sum(cast(LectAttended as int))from AttRecord as attlect where attlect.IDNo=ad.IDNo )*100/(select SUM(CAST(lectDelievered as int))from AttRecord as attre where attre.IDNo=ad.IDNo )) as varchar)+'%' as precentage ";
        str = str + "from admissions ad where  idno in ( select Idno from batchmembers where batchname='" + Batch + "' and  Session='" + Session + "')";

        SqlDataAdapter da = new SqlDataAdapter(str, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            pnlgrid.Visible = true;
            gvDisplay.DataSource = ds.Tables[0];
            gvDisplay.DataBind();
            lblmessage.Visible = true;
            lblmessage.Text = "Total Records : " + ds.Tables[0].Rows.Count.ToString();
            btnExport.Visible = true;
        }
        else
        {
            lblmessage.Visible = true;
            lblmessage.Text = "No record Found";
        }

    }

    protected void gvDisplay_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Detail")
        {
            Control ctrl = e.CommandSource as Control;
            if (ctrl != null)
            {
                GridViewRow row = ctrl.Parent.NamingContainer as GridViewRow;

                Label lblIDNO = (Label)row.FindControl("lblIDNo");
                Label name = (Label)row.FindControl("lblStudentname");

                SqlConnection con = new SqlConnection();
                Class1 obj = new Class1();
                con.ConnectionString = obj.GetConnectionString("constr");
                con.Open();

                string str = "select convert(varchar(10),AttDate,101) as AttDate,LectDelievered,lectAttended from attrecord where idno='" + lblIDNO.Text + "'";

                SqlDataAdapter da = new SqlDataAdapter(str, con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "togglSession", "togglSession();", true);
                    //pnlgrid.Visible = false;
                    //pnldetails.Visible = true;
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                    lblMsg.Visible = true;
                    lblMsg.Text = "Total Records : " + ds.Tables[0].Rows.Count.ToString();
                    //lbsingledetail.Visible = true;
                    lblname.Visible = true;
                    lblid.Text = lblIDNO.Text;
                    lblname.Text = name.Text;
                    lblBatch.Visible = true;
                    lblBatch.Text = ddlbatch.Text;
                   
                }
                else
                {
                    lblmessage.Visible = true;
                    lblmessage.Text = "No Record Found";
                }
            }
        }
    }
    //protected void lbsingledetail_Click(object sender, EventArgs e)
    //{
    //    ShowDetail(ddlsession.Text, ddlbatch.Text);
    //    lbsingledetail.Visible = false ;
    //    pnlgrid.Visible = true;
    //    pnldetails.Visible = false;
    //    lblname.Visible = false;
    //    lblBatch.Visible = false;
    //}
    protected void btnExport_Click(object sender, EventArgs e)
    {

        //Response.Clear();
        //Response.AddHeader("content-disposition", "attachment;filename=ExportData1.xls");
        //Response.Charset = "";
        //Response.ContentType = "application/vnd.xls";
        //StringWriter StringWriter = new System.IO.StringWriter();
        //HtmlTextWriter HtmlTextWriter = new HtmlTextWriter(StringWriter);
        
        //gvDisplay.RenderControl(HtmlTextWriter);
        //Response.Write(StringWriter.ToString());
        //Response.End();




        Response.Clear();
        Response.Buffer = true;
        Response.AddHeader("content-disposition", "attachment;filename=StudentAttendance.xls");
        Response.Charset = "";
        Response.ContentType = "application/vnd.ms-excel";
        StringWriter sWriter = new StringWriter();
        HtmlTextWriter hWriter = new HtmlTextWriter(sWriter);
        gvDisplay.Style.Add("text-transform", "Capitalize");
        gvDisplay.RenderControl(hWriter);
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
            

 