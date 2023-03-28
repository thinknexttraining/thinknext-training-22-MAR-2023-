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
public partial class Staff_AddedAttendance : System.Web.UI.Page
{
    string a = "";
    SqlConnection con = new SqlConnection();
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = obj.GetConnectionString("constr");
        if (Page.IsPostBack == false)
        {

            //txtdate.Text = DateTime.Now.Date.ToShortDateString();
            String format = "dd/MM/yyyy";
            txtdate.Text = DateTime.Now.ToShortDateString();
            format = Convert.ToDateTime(txtdate.Text).ToString(format);
            txtdate.Text = format;

        }

    }

    public void DisplayGD()
    {

        string[] b = txtdate.Text.Split('/');
        txtdate.Text = b[1] + "/" + b[0] + "/" + b[2];
 
        con.Open();
        string str = "select DISTINCT staff.Name,Att.UserID,Att.Batchgroup from staff INNER JOIN AttRecord as Att ON staff.IDNo=Att.UserID where Att.AttDate='" + txtdate.Text + "' and staff.FranchiseCode='" + txtfranchise.Text + "'";
        SqlDataAdapter da = new SqlDataAdapter(str, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            gvDisplay.DataSource = ds;
            gvDisplay.DataBind();

            lblmessage.Text = "";
        }
        else
        {
            gvDisplay.DataSource = ds;
            gvDisplay.DataBind();

            lblmessage.Text = " No One Added Attendance Today";
        }




    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DisplayGD();

    }
}
