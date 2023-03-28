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

public partial class Admin_JobPost : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    Class1 varClass1 = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(varClass1.GetConnectionString(""));
        con.Open();
        if (!IsPostBack)
        {
            bindcourses();
        }
    }
    public void bindcourses()
    {
        string sql = "select Distinct Courses from mastercourses";
        SqlDataAdapter cmd = new SqlDataAdapter(sql, con);
        DataSet ds = new DataSet();
        cmd.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            ddlcate.DataSource = ds;
            ddlcate.DataTextField = "Courses";
            ddlcate.DataValueField = "Courses";
            ddlcate.DataBind();
            ddlcate.Items.Insert(0, "Select");
        }
        else
        {
            lblerrors.Visible = true;
            lblerrors.Text = "There is no jab category";
        }
    }
    protected void BtnPost_Click(object sender, EventArgs e)
    {
        if (txttitle.Text == "")
        {
            lblerrors.Visible = true;
            lblerrors.Text = "Please Enter Job Title";
            return;
        }
        if (txtLoc.Text == "")
        {
            lblerrors.Visible = true;
            lblerrors.Text = "Please Enter location";
            return;
        }
        if (txtQualific.Text == "")
        {
            lblerrors.Visible = true;
            lblerrors.Text = "Please Enter Qualification";
            return;
        }
        if (txtsum.Text == "")
        {
            lblerrors.Visible = true;
            lblerrors.Text = "Please Enter job Summary";
            return;
        }
        if (Editor1.Content == "")
        {
            lblerrors.Visible = true;
            lblerrors.Text = "Please mentioned Required Skill";
            return;
        }
        if (ddlcate.Text == "Select")
        {
            lblerrors.Visible = true;
            lblerrors.Text = "Please  Select Job Category";
            return;
        }
        if (ddlxp.Text == "Select")
        {
            lblerrors.Visible = true;
            lblerrors.Text = "Please Select Experience";
            return;
        }
        if (txtsal.Text == "")
        {
            lblerrors.Visible = true;
            lblerrors.Text = "please Enter salary";
            return;
        }
        //DateTime date = Convert.ToDateTime(DateTime.Today.ToString("MM/dd/yyyy"));
        //string str = Editor1.Text;
        //string str1 = Server.HtmlEncode(str);
        //string str2 = Server.HtmlDecode(str);
        //lblText.Text = str2
        string sql = "Insert into jobpost(JobTitle,JobCategory,Experience,Location,JobSummary,Qualification,Skill,PostDate,Salary)values(@JobTitle,@JobCategory,@Experience,@Location,@JobSummary,@Qualification,@Skill,@PostDate,@Salary)";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("JobTitle", txttitle.Text);
        cmd.Parameters.AddWithValue("JobCategory", ddlcate.Text);
        cmd.Parameters.AddWithValue("Experience", ddlxp.Text);
        cmd.Parameters.AddWithValue("Location", txtLoc.Text);
        cmd.Parameters.AddWithValue("JobSummary", txtsum.Text);
        cmd.Parameters.AddWithValue("Qualification", txtQualific.Text);
        cmd.Parameters.AddWithValue("Skill", Editor1.Content);
        cmd.Parameters.AddWithValue("PostDate", DateTime.Today.ToString("MM/dd/yyyy"));
        cmd.Parameters.AddWithValue("@Salary", txtsal.Text);
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
        lblerrors.Visible = true;
        lblerrors.Text = "Job post Successfully";
        txttitle.Text = "";
        ddlcate.SelectedIndex = -1;
        ddlxp.SelectedIndex = -1;
        txtLoc.Text = "";
        txtsum.Text = "";
        txtQualific.Text = "";
        Editor1.Content = "";
        txtsal.Text = "";
    }
}