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

public partial class TESTaspx : System.Web.UI.Page
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
  
   
    public void createAccordianUsingRepeater()
    {

        string sql = "Select JobId,Jobtitle,jobCategory,Experience,Location,JobSummary,Qualification,Salary,Skill from jobpost";
        SqlDataAdapter adp = new SqlDataAdapter(sql, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
            if(ds.Tables[0].Rows.Count>0)
            {
                repAccordian.DataSource = ds;
                repAccordian.DataBind();
            }
    
        
    }
}