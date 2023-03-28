using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

public partial class DisplaySchlorship : System.Web.UI.Page
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
        string query = "Select * from MasterSchlorship where StudentMobileNo='" + txtStudentMobileNo.Text + "'";
        SqlDataAdapter adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
            lblmessage.Text = "";
        }
        else
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
            lblmessage.Text = "No Match Found !";
        }
    }

    public void Scholarship()
    {
        SqlConnection con = new SqlConnection();
        Class1 varclass = new Class1();
        con.ConnectionString = varclass.GetConnectionString("");
        
        string query = "Select Scholarship from MasterSchlorship where StudentMobileNo='" + txtStudentMobileNo.Text + "'";
        SqlDataAdapter adp = new SqlDataAdapter(query,con);
        DataSet ds = new DataSet ();
        adp.Fill(ds);
        scholarship = ds.Tables["MasterSchlorship"].Rows[0]["Scholarship"].ToString();
    }

    public void Name()
    {
        SqlConnection con = new SqlConnection();
        Class1 varclass = new Class1();
        con.ConnectionString = varclass.GetConnectionString("");

        string query = "Select Name from MasterSchlorship where StudentMobileNo='" + txtStudentMobileNo.Text + "'";
        SqlDataAdapter adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        StudentName = ds.Tables["MasterSchlorship"].Rows[0]["Name"].ToString();
    }


    

    protected void btnDisplayResult_Click(object sender, EventArgs e)
    {
        if (txtStudentMobileNo.Text == string.Empty)
        {
            lblmessage.Text = "Please Enter Your Mobile No";
            return;
        }
        bool isMobileNo = Regex.IsMatch(txtStudentMobileNo.Text.Trim(), "^((\\-?)|0)?[0-9]{10}$");
        if (!isMobileNo)
        {
            lblmessage.Text = "Enter Valid Mobile No";
            return;
        }
        if (scholarship == "Yes")
        {
            DisplayAllSchlorship();
        }
        else if (scholarship =="No")
        {
            lblmessage.Text = "Dear"+ StudentName+ "\n "+" You Have Not Qualified For Scholarship";
            return;
        }
        
       
        
    }
}