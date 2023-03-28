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
using System.Text;
using System.Net;
using System.Net.Mail;
using System.Globalization;
using System.Text.RegularExpressions;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;


public partial class Admin_StudentAttendance : System.Web.UI.Page
{
    DropDownList drp = new DropDownList();
    DropDownList drop = new DropDownList();
    DropDownList dp = new DropDownList();
    SqlConnection con = new SqlConnection();
    Class1 varclass = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = varclass.GetConnectionString("constr");
        if (Page.IsPostBack == false)
        {
            btnExcel.Visible = false;
            btnword.Visible = false;

        }
    }
    protected void btnshow_Click(object sender, EventArgs e)
    {

        if (txtIDNo.Text == "")
        {
            lblmsg.Text = "Please Enter Student IDNo";
            return;
        }
        if (txtdateFrom.Text == "")
        {
            lblmsg.Text = "Please enter date from";
            return;
        }
        if (txtDateTo.Text == "")
        {
            lblmsg.Text = "Please enter date To";
            return;
        }
        ShowStudents();
    }

    public void ShowStudents()
    {
        string sql = "";

        con.Open();

        sql = "select convert(varchar(10),AttDate,101) as AttDate,LectDelievered,lectAttended,StudentName,FatherName,Batchgroup from attrecord where idno='" + txtIDNo.Text + "'";
        sql = sql + " and ATTDate between '" + txtdateFrom.Text + "' and '" + txtDateTo.Text + "' ";


        //sql = "  SELECT   CONVERT(varchar, AttDate, 106) AS AttDate, IDNo, StudentName, Course, Duration, BatchGroup, LectDelievered, LectAttended ";
        //sql = sql + " FROM AttRecord where IDNo='"+txtIDNo.Text+"' AND FranchiseCode='"+txtfranchise.Text+"' ";

        //    sql = sql + " and ATTDate between '"+txtdateFrom.Text+"' and '"+txtDateTo.Text+"' ";

        SqlDataAdapter adp = new SqlDataAdapter(sql, con);
        DataSet ds = new DataSet();
        adp.Fill(ds, "AttRecord");
        if (ds.Tables["AttRecord"].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
            lblmsg.Text = "Total Record :" + ds.Tables["AttRecord"].Rows.Count;
            btnExcel.Visible = true;
            btnword.Visible = true;
            pnld.Visible = true;
            GetSName();
            GetBname();
            GetFName();
        }
        else
        {
            lblmsg.Visible = true;
            lblmsg.Text = "Sorry ! No Record Found.";
            GridView1.DataSource = null;
            GridView1.DataBind();
        }
        con.Close();
    }



    protected void btnExcel_Click(object sender, EventArgs e)
    {
        Response.Clear();
        Response.Buffer = true;
        Response.AddHeader("content-disposition", "attachment;filename=StudentAttendance.xls");
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
    protected void btnpdf_Click(object sender, EventArgs e)
    {

        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment;filename=StudentAttendance.pdf");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        StringWriter sw = new StringWriter();
        HtmlTextWriter hw = new HtmlTextWriter(sw);
        GridView1.RenderControl(hw);
        GridView1.HeaderRow.Style.Add("width", "800px");
        GridView1.HeaderRow.Style.Add("font-size", "3px");
        GridView1.Style.Add("text-transform", "Capitalize");
        GridView1.Style.Add("text-decoration", "none");
        GridView1.Style.Add("font-family", "Times New Romen");

        // GridAbstract.Style.Add("font-family", "Arial, Helvetica, sans-serif;");
        GridView1.Style.Add("font-size", "8px");
        StringReader sr = new StringReader(sw.ToString());
        Document pdfDoc = new Document(PageSize.A4, 7f, 7f, 7f, 0f);
        HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
        PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
        pdfDoc.Open();
        htmlparser.Parse(sr);
        pdfDoc.Close();
        Response.Write(pdfDoc);
        Response.End();
    }
    protected void btnword_Click(object sender, EventArgs e)
    {
        Response.Clear();
        Response.Buffer = true;
        Response.AddHeader("content-disposition", "attachment;filename=StudentAttendance.doc");
        Response.Charset = "";
        Response.ContentType = "application/vnd.ms-word";
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
        // MyBase.VerifyRenderingInServerForm(control);
    }
    public void GetSName()
    {
        string sql = "";
        
        
        sql = "select Studentname from attrecord where idno='" + txtIDNo.Text +"'";
        SqlDataAdapter adp = new SqlDataAdapter(sql, con);
        DataSet ds = new DataSet();
        adp.Fill(ds, "AttRecord");
        if (ds.Tables["AttRecord"].Rows.Count > 0)
        {
            dp.DataSource = ds;
            dp.DataTextField = "Studentname";
            dp.DataValueField = "Studentname";
            dp.DataBind();
            lblSname.Text = dp.Text;
            lblID.Text = txtIDNo.Text;

        }
        con.Close();
    }
    public void GetFName()
    
    {

        string sql = "";


        sql = "select distinct FatherName from attrecord where idno='" + txtIDNo.Text + "'";
        SqlDataAdapter adp = new SqlDataAdapter(sql, con);
        DataSet ds = new DataSet();
        adp.Fill(ds, "AttRecord");
        if (ds.Tables["AttRecord"].Rows.Count > 0)
        {
            drop.DataSource = ds;
            drop.DataTextField = "FatherName";
            drop.DataValueField = "FatherName";
            drop.DataBind();
            lblFname.Text = drop.Text;

        }
        con.Close();
    }
    public void GetBname()
    {

        string sql = "";


        sql = "select distinct Batchgroup from attrecord where idno='" + txtIDNo.Text + "'";
        SqlDataAdapter adp = new SqlDataAdapter(sql, con);
        DataSet ds = new DataSet();
        adp.Fill(ds, "AttRecord");
        if (ds.Tables["AttRecord"].Rows.Count > 0)
        {
            drp.DataSource = ds;
            drp.DataTextField = "Batchgroup";
            drp.DataValueField = "Batchgroup";
            drp.DataBind();
            lblBName.Text = drp.Text;

        }
        con.Close();
    }
   
}
            
    

