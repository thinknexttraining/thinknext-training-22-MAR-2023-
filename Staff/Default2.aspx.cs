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

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Display();
    }

    public void Display()
    {
        SqlConnection con = new SqlConnection();
        Class1 varclass = new Class1();
        con.ConnectionString = varclass.GetConnectionString("");
        string query;
        query = "select * from MasterSchlorship order by TestDate desc";
        SqlDataAdapter adp = new SqlDataAdapter(query,con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}
