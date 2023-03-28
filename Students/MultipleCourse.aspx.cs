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

public partial class Students_MultipleCourse : System.Web.UI.Page
{
    int i = 0;
    SqlConnection con = new SqlConnection();
    Class1 varclass = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = varclass.GetConnectionString("");
        con.Open();
        if (!IsPostBack)
        {
            bindSession();
        }
    }
    protected void ButtonInsSave_Click(object sender, System.EventArgs e)
    {
        if (ChkliCourse.SelectedIndex >= 0)
        {
            foreach (ListItem item in ChkliCourse.Items)
            {


                if (item.Selected==true)
                {
                    TextBoxInsert.Text =TextBoxInsert.Text+item.Text+",";

                }
               
                //TextBoxInsert.Text.Substring(TextBoxInsert.Text)
            }
            string val = "";
           val= TextBoxInsert.Text.TrimEnd(',');

            
        }
        //www.dotnetfox.com/articles/how-to-bind-data-to-checkboxlist-control-in-Asp-Net-using-C-Sharp-1042.aspx#sthash.k2XOMxP6.dpuf
    }
    public void bindSession()
    {
        string sql = "select Distinct courses from mastercourses order by courses asc";
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "masterCourses");
        if (ds.Tables["masterCourses"].Rows.Count > 0)
        {
            for (int i = 0; i <= ds.Tables["masterCourses"].Rows.Count - 1; i++)
            {
                ChkliCourse.Items.Add(ds.Tables["masterCourses"].Rows[i]["courses"].ToString());

            }

        }
        else
        {

        }
        cmd.Dispose();
        da.Dispose();
        ds.Dispose();

    }
    public void InsetCourse()
    {
        string sql = "Insert into ";
        SqlCommand cmd = new SqlCommand(sql, con);
      
    }


    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}