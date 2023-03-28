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
       
        if (txtidno.Text == "")
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
      
       
        sql = "  SELECT   CONVERT(varchar, AttDate, 106) AS AttDate, IDNo, StudentName, Course, Duration, BatchGroup, LectDelievered, LectAttended ";
        sql = sql + " FROM AttRecord where IDNo='"+txtidno.Text+"' AND FranchiseCode='"+txtfranchise.Text+"' ";
       
            sql = sql + " and ATTDate between '"+txtdateFrom.Text+"' and '"+txtDateTo.Text+"' ";

            SqlDataAdapter adp = new SqlDataAdapter(sql, con);
            DataSet ds = new DataSet();
            adp.Fill(ds, "AttRecord");
            if (ds.Tables["AttRecord"].Rows.Count > 0)
        {
            gvAttendance.DataSource = ds;
            gvAttendance.DataBind();
            lblmsg.Text = "Total Record :" + ds.Tables["AttRecord"].Rows.Count;
            btnExcel.Visible = true;
            btnword.Visible = true;
        }
        else
        {
            lblmsg.Visible = true;
           lblmsg.Text = "Sorry ! No Record Found.";
            gvAttendance.DataSource = null;
            gvAttendance.DataBind();
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
        gvAttendance.Style.Add("text-transform", "Capitalize");
        gvAttendance.RenderControl(hWriter);
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
        gvAttendance.RenderControl(hw);
        gvAttendance.HeaderRow.Style.Add("width", "800px");
        gvAttendance.HeaderRow.Style.Add("font-size", "3px");
        gvAttendance.Style.Add("text-transform", "Capitalize");
        gvAttendance.Style.Add("text-decoration", "none");
        gvAttendance.Style.Add("font-family", "Times New Romen");

        // GridAbstract.Style.Add("font-family", "Arial, Helvetica, sans-serif;");
        gvAttendance.Style.Add("font-size", "8px");
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
        gvAttendance.Style.Add("text-transform", "Capitalize");
        gvAttendance.RenderControl(hWriter);
        Response.Output.Write(sWriter.ToString());
        Response.Flush();
        Response.End();
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        // MyBase.VerifyRenderingInServerForm(control);
    }
}
