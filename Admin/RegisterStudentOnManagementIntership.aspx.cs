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
public partial class Admin_RegisterStudentOnManagementIntership : System.Web.UI.Page
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
    }
    protected void txtDateFrom_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnshow_Click(object sender, EventArgs e)
    {
        string query = "Select SrNo,EnquiryNo,ModeOfEnquiry,convert(varchar(10), AdmissionDate,101)as AdmissionDate,Course,Duration,StudentName,StudentMobileNo,EmailId,StatusCode,Comment,FranchiseCode from admissions where AdmissionDate Between '" + txtDateFrom.Text + "' and '" + txtDateTo.Text + "' and FranchiseCode='" + txtfranchise.Text + "' ";
        SqlDataAdapter adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            gvdisplay.DataSource = ds;
            gvdisplay.DataBind();
            lblRec.Text = "Total Records : " + ds.Tables[0].Rows.Count;
        }
        else
        {
            gvdisplay.DataSource = ds;
            gvdisplay.DataBind();
            lblRec.Text = "No Record Found !";
        }
    }
    protected void btnExcel_Click(object sender, EventArgs e)
    {
        Response.ClearContent();
        Response.Buffer = true;
        Response.AddHeader("content-disposition", string.Format("attachment; filename={0}", "ManagementIntership.xls"));
        Response.ContentType = "application/ms-excel";
        StringWriter sw = new StringWriter();
        HtmlTextWriter htw = new HtmlTextWriter(sw);
        gvdisplay.AllowPaging = false;
        //Change the Header Row back to white color
        gvdisplay.HeaderRow.Style.Add("background-color", "Red");
        //Applying stlye to gridview header cells
        for (int i = 0; i < gvdisplay.HeaderRow.Cells.Count; i++)
        {
            gvdisplay.HeaderRow.Cells[i].Style.Add("background-color", "#507CD1");
        }
        int j = 1;
        //Set alternate row color
        foreach (GridViewRow gvrow in gvdisplay.Rows)
        {
            gvrow.BackColor = System.Drawing.Color.White;
            if (j <= gvdisplay.Rows.Count)
            {
                if (j % 2 != 0)
                {
                    for (int k = 0; k < gvrow.Cells.Count; k++)
                    {
                        gvrow.Cells[k].Style.Add("background-color", "#EFF3FB");
                    }
                }
            }
            j++;
        }
        gvdisplay.RenderControl(htw);
        Response.Write(sw.ToString());
        Response.End();
    } 
    
    public override void VerifyRenderingInServerForm(Control control)
    {
        //base.VerifyRenderingInServerForm(control);
    }
    protected void txtfranchise_TextChanged(object sender, EventArgs e)
    {

    }
}
