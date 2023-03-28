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
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.Text;
using System.IO;
using System.Reflection;
using System.Threading;

public partial class Admin_DailyAttendanceDetail : System.Web.UI.Page
{
    //Page.EnableEventValidation="false";
    //string a="";
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


        if (!IsPostBack)
        {
            btnexporttoexl.Visible = false;
            Panel4.Visible = false;
           
        }

    }

    public void DisplayRecord()
    {

        //string dates=DateTime.Now.Date.ToString();

        //System.Globalization.CultureInfo provider1 = System.Globalization.CultureInfo.InvariantCulture;

        //DateTime ds1 = DateTime.ParseExact(txtdate.Text, "MM/dd/yyyy", provider1);
        //string date = (ds1.ToShortDateString());
        ////string date = ds1.ToString();
        ////cmd.Parameters.AddWithValue("@DOB", ds1);
        //string[] b = date.Split('/');
        //date = b[1] + "/" + b[0] + "/" + b[2];


        //for (int i = 0; i <= date.Length; i++)
        //{
        //    a = a + date[i];
        //    if (i == 10)
        //    {
        //        break;
        //    }
        //}
        //string[] d = a.Split(' ');
       
        // date = d[0];

         con.ConnectionString = varclass.GetConnectionString("");

         con.Open();
         string query = "select convert(varchar(10),AttDate,101) as AttDate,IDNo,StudentName,FatherName,Course,Duration,BatchGroup,LectDelievered,LectAttended,UserID from attrecord where convert(varchar ,AttDate, 101)=" + "'" + txtdate.Text + "'";
         SqlCommand cmd = new SqlCommand(query, con);
         SqlDataAdapter da = new SqlDataAdapter(cmd);
         DataSet ds = new DataSet();
         da.Fill(ds, "attrecord");
         if (ds.Tables["attrecord"].Rows.Count > 0)
         {
             lbltotalrecord.Visible = true;
             lbltotalrecord.Text = "Total Records : " + ds.Tables["attrecord"].Rows.Count;
             GridView1.DataSource = ds;
             GridView1.DataBind();
             btnexporttoexl.Visible = true;
         }
         else 
         {
             Panel4.Visible = false;
             lbltotalrecord.Visible = true;
             lbltotalrecord.Text = "No Record Found....!!";
             //txtdate.Text = date;
         }
        


 
    }
   // AttDate,IDNo,StudentName,FatherName,Course,TrainingBatch,BatchTiming,BatchGroup,LectDelievered,LectAttended,UserID,FranchiseCode,BrandName

    protected void btnexporttoexl_Click(object sender, EventArgs e)
    {
        if ((GridView1.Rows.Count > 0))
        {

            Response.Clear();
            Response.AddHeader("content-disposition", "attachment;filename=FileName.xls");
            Response.Charset = "";
            Response.ContentType = "application/vnd.xls";
            System.IO.StringWriter stringWrite = default(System.IO.StringWriter);
            stringWrite = new System.IO.StringWriter();

            System.Web.UI.HtmlTextWriter htmlWrite = default(System.Web.UI.HtmlTextWriter);
            htmlWrite = new System.Web.UI.HtmlTextWriter(stringWrite);


            GridView1.RenderControl(htmlWrite);

            Response.Write(stringWrite.ToString());

            Response.End();


            //Response.ContentType = "application/pdf";
            //Response.AddHeader("content-disposition", "attachment;filename=ClientList.pdf");
            //Response.Cache.SetCacheability(HttpCacheability.NoCache);
            //StringWriter sw = new StringWriter();
            //HtmlTextWriter hw = new HtmlTextWriter(sw);
            //HtmlForm hf = new HtmlForm();
            //GridView1.Parent.Controls.Add(hf);
            //hf.Attributes["runat"] = "server";
            //hf.Controls.Add(GridView1);
            //hf.RenderControl(hw);
            //StringReader sr = new StringReader(sw.ToString());
            //Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
            //HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            //PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            //pdfDoc.Open();
            //htmlparser.Parse(sr);

            //pdfDoc.Close();
            //Response.Write(pdfDoc);
            //Response.End();
        }
        else
        {
            //lblMsg.Text = "No Record found to print.";
        }
    }
    public override void VerifyRenderingInServerForm(Control control)
{
    /* Verifies that the control is rendered */
}
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
        DisplayRecord();
    }
}




 