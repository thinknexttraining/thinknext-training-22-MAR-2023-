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

public partial class ParttimeFulltime : System.Web.UI.Page
{
    //Class1 varclass = new Class1();
    SqlConnection con = new SqlConnection();
    Class1 varclass = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = varclass.GetConnectionString("");
        con.Open();
        if (!IsPostBack)
        {
            GetRecords();
        }
     
    }

    public void GetRecords()
    {
        string sql = null;
        DataSet ds = default(DataSet);
        SqlDataAdapter da = default(SqlDataAdapter);
        sql = "select Candidatename,convert(varchar(10),AddDate,103) as AddDate,CollegeName,Companyname,JobType,Result  from addplace where jobtype='Part Time' or jobtype='Full Time' and result='Hired' and value=1 order by convert(datetime,AddDate,101) desc";
        SqlCommand cmd = default(SqlCommand);
        cmd = new SqlCommand(sql, con);
        //  cmd.Parameters.AddWithValue("@ComplainerIDNo", txtIDNo.Text);

        ds = new DataSet();
        da = new SqlDataAdapter(cmd);
        // ds = new DataSet();
        da.Fill(ds, "AddPlace");
        if (ds.Tables["AddPlace"].Rows.Count == 0)
        {
            lblMsg.Visible = true;
            lblMsg.Text = ("No records found");
            gdShow.Visible = false;
            lblTotal.Text = "";
            return;
        }
        lblMsg.Visible = false;
        gdShow.Visible = true;
        gdShow.DataSource = ds.Tables["AddPlace"];
        gdShow.DataBind();
        lblTotal.Text = "Total Records : " + ds.Tables["AddPlace"].Rows.Count;

        con.Close();

 
    }
}
