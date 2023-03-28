using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class hot_jobs : System.Web.UI.Page
{
    string varIP;
    protected void Page_Load(object sender, EventArgs e)
    {
        Class1 varClass1 = new Class1();
        SqlConnection con = new SqlConnection(varClass1.GetConnectionString(varIP));
        SqlCommand cmd = new SqlCommand("Select Job_Title, Company_Name, Job_Description, Job_Type, Date_posted from tbl_hotJobs order by date_posted", con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        grd_hotJobs.DataSource = dr;
        grd_hotJobs.DataBind();
    }
}