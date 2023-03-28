using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class OnlineCertification : System.Web.UI.Page
{
    Class1 varclass = new Class1();
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = varclass.GetConnectionString("");
        con.Open();
        //lblmsg.Visible = false;
    }
    protected void btnfind_Click(object sender, EventArgs e)
    {
        
        if (txtrefid.Text == "")
        {
            lblmsg.Visible = true;
            lblmsg.Text = ("Please Enter Certification No.");
            return;
        }
        string sql = null;
        SqlDataAdapter da = default(SqlDataAdapter);
        DataSet ds = default(DataSet);
        string varFileName = null;
        

        sql = "Select FileName from Certification where CertificateNo= '" + txtrefid.Text + "' and FranchiseCode='TNK101' and BrandName='THINKNEXT TRAINING' ";
        da = new SqlDataAdapter(sql, con);
        ds = new DataSet();
        da.Fill(ds, "Certification");
        if (ds.Tables["Certification"].Rows.Count > 0)
        {
            varFileName = ds.Tables["Certification"].Rows[0]["FileName"].ToString();
            string Path = null;
            Path = Server.MapPath("~/Certificates/");
            string varFullPath = null;
            varFullPath = Path + varFileName;
            System.IO.FileInfo file = default(System.IO.FileInfo);
            file = new System.IO.FileInfo(varFullPath);
            //-- if the file exists on the server 

            if (file.Exists)
            {
                Response.Clear();
                Response.ContentType = "application/octet-stream";
                Response.AddHeader("Content-Disposition", "attachment; filename=" + HttpUtility.UrlEncode(file.Name));
                Response.WriteFile(varFullPath);
                
                Response.End();

                lblmsg.Visible = true;
                lblmsg.Text = "You are Registered in Technologies Private Limited";
            }
            else
            {
                lblmsg.Visible = true;
                lblmsg.Text = ("File does not exist.");
                return;
            }
        }
        else
        {
            lblmsg.Visible = true;
            lblmsg.Text = ("File does not exist.");
            return;
        }
   
        con.Close();
        //lblmsg.Visible = false;




    }
  
  
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Download")
        {
            LinkButton download = (LinkButton)GridView1.Rows[0].FindControl("lbDownload");
            Label SrNo = (Label)GridView1.Rows[0].FindControl("lblSR");
            Label RefPreNo = (Label)GridView1.Rows[0].FindControl("lblRefpreno");
            Label RefNo = (Label)GridView1.Rows[0].FindControl("lblRefno");
            Label StudentName = (Label)GridView1.Rows[0].FindControl("lblStudentname");
            Label FatherName = (Label)GridView1.Rows[0].FindControl("lblfathername");
            Label TFrom = (Label)GridView1.Rows[0].FindControl("lblTF");
            Label TTo = (Label)GridView1.Rows[0].FindControl("lblTTO");
            Label ProjectName = (Label)GridView1.Rows[0].FindControl("lblPName");
            Label Course = (Label)GridView1.Rows[0].FindControl("lblcourse");
            Label Grade = (Label)GridView1.Rows[0].FindControl("lblGrade");

            Response.Redirect("PrintCertificate.aspx?RefPreNo=" + RefPreNo.Text + "&RefNo=" + RefNo.Text + "&StudentName=" + StudentName.Text + "&FatherName=" + FatherName.Text + "&TFrom=" + TFrom.Text + "&TTo=" + TTo.Text + "&ProjectName=" + ProjectName.Text + "&Course=" + Course.Text + "&Grade=" + Grade.Text + "");
        }
    }
}

