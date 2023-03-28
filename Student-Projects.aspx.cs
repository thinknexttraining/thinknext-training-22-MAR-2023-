using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Student_Projects : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    Class1 varclass = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = varclass.GetConnectionString("");
        if (Page.IsPostBack == false)
        {
            DisplayStudentWork();
        }
    }
    private void DisplayStudentWork()
    {
        string query = "Select * from MasterStudentWork order by DateEntry Desc";
        SqlDataAdapter adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            gvdisplay.DataSource = ds;
            gvdisplay.DataBind();
            lblmessage.Text = "";
        }
        else
        {
            gvdisplay.DataSource = ds;
            gvdisplay.DataBind();
            lblmessage.Text = "No Match Found !";
        }
    }
}
