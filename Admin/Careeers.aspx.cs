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
using System.IO;
using System.Text.RegularExpressions;


public partial class Admin_Careeers : System.Web.UI.Page
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
        string sql = "select CandidateIDNO,Name,ApplyedFor,Address,City,Zip,MobileNo,EmailID,Experience,Resume,convert(varchar,Date,103) as Date from tbemployment";
        SqlDataAdapter adp = new SqlDataAdapter(sql, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
            lblmsg.Visible = true;
            lblmsg.Text = "Total Record Found :" + ds.Tables[0].Rows.Count;
        }
        else 
        {
            lblmsg.Visible = true;
            lblmsg.Text = "No Record Found";
        }

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Download")
        {

            string id = e.CommandArgument.ToString();
            int IDNO = Convert.ToInt32(id);
            string sql = "select Resume from tbemployment where CandidateIDNO='" + id + "'";
            SqlDataAdapter adp = new SqlDataAdapter(sql, con);

            DataSet ds = new DataSet();
            adp.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                string Value = ds.Tables[0].Rows[0]["Resume"].ToString();
                
                string Path = Server.MapPath("~/Resume/");
                string Fullpath = Path + Value;
                System.IO.FileInfo file = new System.IO.FileInfo(Fullpath);
                if (System.IO.File.Exists(Fullpath))
                {
                    Response.ContentType = "application/octet-stream";
                    Response.AppendHeader("Content-Disposition", "attachment;filename=" + Value);
                    Response.WriteFile(file.ToString());
                    Response.End();
                }
                else
                {
                    lblmsg.Visible = true;
                    lblmsg.Text = "File Not Found";
                }
            }
        }
          
    }
    protected void btdate_CheckedChanged(object sender, EventArgs e)
    {
        if (btdate.Checked == true)
        {
            lblfrom.Visible = true;
            lblto.Visible = true;
            txtto.Visible = true;
            txtfrom.Visible = true;
            btnsearch.Visible = true;


        }
        else
        {
            lblfrom.Visible = false;
            lblto.Visible = false;
            txtto.Visible = false;
            txtfrom.Visible = false;
            btnsearch.Visible = false;
        }
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {

        string sDateTime = "";
        string[] sDate = txtfrom.Text.Split('/');
        sDateTime = sDate[1] + '/' + sDate[0] + '/' + sDate[2];
        DateTime dtFinaldate = Convert.ToDateTime(sDateTime);

        string sDateTime1 = "";
        string[] sDate1 = txtto.Text.Split('/');
        sDateTime1 = sDate1[1] + '/' + sDate1[0] + '/' + sDate1[2];
        DateTime dtFinaldate1 = Convert.ToDateTime(sDateTime1);



        string sql = "select CandidateIDNO,Name,ApplyedFor,Address,City,Zip,MobileNo,EmailID,Experience,Resume,convert(varchar,Date,103) as Date from tbemployment where date between '" + dtFinaldate + "' and '" + dtFinaldate1 + "'";
        SqlDataAdapter adp = new SqlDataAdapter(sql, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
            lblmsg.Visible = true;
            GridView1.Visible = true;
            lblmsg.Text = "Total Record Found :" + ds.Tables[0].Rows.Count;
        }
        else
        {
            lblmsg.Visible = true;
            lblmsg.Text = "No Record Found";
            GridView1.Visible = false;
        }
    }
}//CandidateIDNO,Name,ApplyedFor,City,Zip,MobileNo,EmailID,Experience,Resume,Date