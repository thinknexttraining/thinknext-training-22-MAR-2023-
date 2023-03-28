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
using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

public partial class DisplayScholarship : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    Class1 varclass = new Class1();
    string scholarship;
    string StudentName;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = varclass.GetConnectionString("");
    }

    private void DisplayAllSchlorship()
    {
        string query = "Select StudentName,Percantageoff,TestDate from MasterSchlorship where StudentMobileNo='" + txtStudentMobileNo.Text + "'";
        SqlDataAdapter adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            lblMessage.Visible = true;
            lblMessage.Text = "No Match Found !";
            GridView1.Visible = false;
        }
    }

    public void Scholarship()
    {
        SqlConnection con = new SqlConnection();
        Class1 varclass = new Class1();
        con.ConnectionString = varclass.GetConnectionString("");

        string query = "Select Scholarship from MasterSchlorship where StudentMobileNo='" + txtStudentMobileNo.Text + "'";
        SqlDataAdapter adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        scholarship = ds.Tables[0].Rows[0]["Scholarship"].ToString();
    }

    public void Name()
    {
        SqlConnection con = new SqlConnection();
        Class1 varclass = new Class1();
        con.ConnectionString = varclass.GetConnectionString("");

        string query = "Select StudentName from MasterSchlorship where StudentMobileNo='" + txtStudentMobileNo.Text + "'";
        SqlDataAdapter adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        StudentName = ds.Tables[0].Rows[0]["StudentName"].ToString();
    }
    protected void btnShowResult_Click(object sender, EventArgs e)
    {
        if (txtStudentMobileNo.Text == string.Empty)
        {
            lblMessage.Text = "Please Enter Your Mobile No";
            return;
        }
        bool isMobileNo = Regex.IsMatch(txtStudentMobileNo.Text.Trim(), "^((\\-?)|0)?[0-9]{10}$");
        if (!isMobileNo)
        {
            lblMessage.Text = "Enter Valid Mobile No";
            return;
        }
        Scholarship();

        if (scholarship == "Yes")
        {
            lblMessage.Visible = false;
            DisplayAllSchlorship();
        }
             
        else if (scholarship == "No")
        {
            Name();
            lblMessage.Text = "Dear " + StudentName + "\n " + " You Have Not Qualified For Scholarship";
            GridView1.Visible = false;
            return;
        }
        else
        {
            lblMessage.Visible = true;
            lblMessage.Text = "No Record Found";
        }
    }
}
