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

public partial class Students_TEST : System.Web.UI.Page
{
    Class1 varclass = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        bindSession();
    }
    protected void Button2_Click(object sender, System.EventArgs e)
    {
        //If ChkliCourse.SelectedIndex >= 0 Then
        txtCourses.Text = "";

        foreach (ListItem item in ChkliCourse.Items)
        {


            if (item.Selected == true)
            {
                txtCourses.Text = txtCourses.Text + item.Text + ",";

                //TextBoxInsert.Text.Substring(TextBoxInsert.Text)
            }
        }
        string val = "";


        val = txtCourses.Text.TrimEnd(',');
        txtCourses.Text = val;
        //End If
    }

    public void bindSession()
    {
        SqlConnection con = default(SqlConnection);


        Class1 varclass1 = new Class1();
        con = new SqlConnection(varclass1.GetConnectionString(""));
        string sql = "select Distinct courses from mastercourses order by courses asc";
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "masterCourses");
        ChkliCourse.DataTextField = "courses";
        ChkliCourse.DataSource = ds.Tables[0];
        ChkliCourse.DataBind();
        //If ds.Tables("masterCourses").Rows.Count > 0 Then
        //    For i As Integer = 0 To ds.Tables("masterCourses").Rows.Count - 1

        //        ChkliCourse.Items.Add(ds.Tables("masterCourses").Rows(i)("courses").ToString())

        //    Next

        //Else
        //End If
        cmd.Dispose();
        da.Dispose();
        ds.Dispose();

    }

}
