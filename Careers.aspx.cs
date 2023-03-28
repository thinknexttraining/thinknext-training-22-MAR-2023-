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

public partial class Careers : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    Class1 varClass1 = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(varClass1.GetConnectionString(""));
        con.Open();
        if (!IsPostBack)
        {
            createAccordianUsingRepeater();
        }
    }
    //protected void Commanevent(object sender, EventArgs e)
    //{
    //    Button button = sender as Button;
    //    if (button.CommandName == "A")
    //    {
    //        lblDesignation.Text = "Web Designer";
    //        Session["s"] = "Web Designer";
    //        lblstatus.Text = "Apply for Web Designer";
    //        ScriptManager.RegisterStartupScript(this, this.GetType(), "Anyname", "toggles();", true);
           
    //    }
    //    if (button.CommandName == "B")
    //    {
    //        lblDesignation.Text = "Counselor";
    //        Session["s"] = "Counselor";
    //        lblstatus.Text = "Apply for Counselor";
    //        ScriptManager.RegisterStartupScript(this, this.GetType(), "Anyname", "toggles();", true);
           
    //    }
    //    if (button.CommandName == "C")
    //    {
    //        lblDesignation.Text = "ONLINE BIDDER";
    //        Session["s"] = "ONLINE BIDDER";
    //        lblstatus.Text = "Apply for ONLINE BIDDER";
    //        ScriptManager.RegisterStartupScript(this, this.GetType(), "Anyname", "toggles();", true);
           
    //    }
    //    if (button.CommandName == "D")
    //    {
    //        lblDesignation.Text = "Android Developer";
    //        Session["s"] = "Android Developer";
    //        lblstatus.Text = "Android Developer";
    //        ScriptManager.RegisterStartupScript(this, this.GetType(), "Anyname", "toggles();", true);
          
    //    }

    //    if (button.CommandName == "E")
    //    {
    //        lblDesignation.Text = "PHP Developer";
    //        Session["s"] = "PHP Developer";
    //        lblstatus.Text = "PHP Developer";
    //        ScriptManager.RegisterStartupScript(this, this.GetType(), "Anyname", "toggles();", true);

    //    }

    //    if (button.CommandName == "F")
    //    {
    //        lblDesignation.Text = "IELTS ";
    //        Session["s"] = "IELTS";
    //        lblstatus.Text = "IELTS ";
    //        ScriptManager.RegisterStartupScript(this, this.GetType(), "Anyname", "toggles();", true);

    //    }
    //}
    public void createAccordianUsingRepeater()
    {

        string sql = "Select JobId,Jobtitle,jobCategory,Experience,Location,JobSummary,Qualification,Salary,Skill from jobpost";
        SqlDataAdapter adp = new SqlDataAdapter(sql, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            repAccordian.DataSource = ds;
            repAccordian.DataBind();
        }


    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        bool isEmail = Regex.IsMatch(txtEmailID.Text.Trim(), @"\A(?:[A-Za-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[A-Za-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?\.)+[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?)\Z");
        if (!isEmail)
        {
            lblerror.Visible = true;
            lblerror.Text = "Enter Valid EMailID";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Anyname", "toggles();", true);
            return;
        }
        if (txtContact.Text == "")
        {
            lblerror.Visible = true;
            lblerror.Text = "please Enter Valid MobileNo";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Anyname", "toggles();", true);
            return;

        }
        if (txtname.Text == "")
        {
            lblerror.Visible = true;
            lblerror.Text = "please Enter Your Name";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Anyname", "toggles();", true);
            return;
        }

        if (txtWork.Text == "")
        {
            lblerror.Visible = true;
            lblerror.Text = "please fill your Experience";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Anyname", "toggles();", true);
            return;
        }
        if (txtzip.Text == "")
        {
            lblerror.Visible = true;
            lblerror.Text = "please enter Zip code";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Anyname", "toggles();", true);
            return;
        }
        if (txtadd.Text == "")
        {
            lblerror.Visible = true;
            lblerror.Text = "please enter Adress";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Anyname", "toggles();", true);
            return;
        }
        if (ddlEducation.Text == "Select")
        {
            lblerror.Visible = true;
            lblerror.Text = "please select qualification";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Anyname", "toggles();", true);
            return;
        }
        if (txtcity.Text == "")
        {
            lblerror.Visible = true;
            lblerror.Text = "please fill City";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Anyname", "toggles();", true);
            return;
        }
        if (FileUpload1.HasFile)
        {
            string filename = FileUpload1.PostedFile.FileName;
            string PTPpath = "ftp://202.143.99.95/httpdocs/Resume/";
            string path1 = null;

            varClass1.UploadImageFTP(PTPpath + filename, FileUpload1);
            path1 = FileUpload1.FileName;
            //path = Server.MapPath("~/Resume");
            //FileUpload1.SaveAs(path + FileUpload1.FileName);
            //path1 = "~/Resume/" + FileUpload1.FileName;
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alertmessage", "javascript:alert('Your file uploaded succesfully.')", true);
            string sql = "";
            sql = "insert into tbemployment (Name,ApplyedFor,Address,City,Zip,MobileNo,EmailID,Experience,Resume,Date)values('" + txtname.Text + "','" + lblDesignation.Text + "','" + txtadd.Text + "','" + txtcity.Text + "','" + txtzip.Text + "','" + txtContact.Text + "','" + txtEmailID.Text + "','" + txtWork.Text + "','" + FileUpload1.PostedFile.FileName + "','" + DateTime.Today.ToString("MM/dd/yyyy") + "')";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
            clear();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alertmessage", "javascript:alert('Your Resume uploaded succesfully.')", true);
        }
        else
        {
            lblerror.Visible = true;
            lblerror.Text = "please Upoad Resume";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Anyname", "toggles();", true);
            return;
        }
       
    }
    public void clear()
    {
        txtname.Text = "";
        txtzip.Text = "";
        txtWork.SelectedIndex = -1;
        ddlEducation.SelectedIndex = 1;
        txtadd.Text = "";
        txtcity.Text = "";
        txtEmailID.Text = "";
        txtzip.Text = "";
        lblDesignation.Text = "None";

    }
    protected void repAccordian_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "E")
        {
            string id = e.CommandArgument.ToString();
            string sql = "select Jobtitle,jobCategory from jobpost where jobID='" + id + "'";
            SqlDataAdapter adp = new SqlDataAdapter(sql, con);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                string text = ds.Tables[0].Rows[0]["Jobtitle"].ToString();
                Session["job"]=ds.Tables[0].Rows[0]["Jobtitle"].ToString();
                
                lblDesignation.Text= ds.Tables[0].Rows[0]["jobCategory"].ToString();
                lblstatus.Text = "Apply For " + text;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Anyname", "toggles();", true);
            }
        }
    }
}