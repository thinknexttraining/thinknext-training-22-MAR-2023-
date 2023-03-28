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

public partial class Admin_DisplayAddedAttendance : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    Class1 obj = new Class1();

    protected void Page_Load(object sender, EventArgs e)
    {

        //if (Session["myck"] == null)
        //{
        //    Response.Redirect("~/default.aspx");
        //}
        Session.Timeout = 300;
        if ((Session["myck"] == "") || (Session["myck"] == null))
        {
            Response.Redirect("~/default.aspx");
        }
        con.ConnectionString = obj.GetConnectionString("constr");
        if(Page.IsPostBack ==false)
        {
       
        //txtdate.Text = DateTime.Now.Date.ToShortDateString();
            String format = "dd/MM/yyyy";
            txtdate.Text = DateTime.Now.ToShortDateString();
            format = Convert.ToDateTime(txtdate.Text).ToString(format);
            txtdate.Text = format;
        
        }}
    protected void Button1_Click(object sender, EventArgs e)
    {
        DisplayGD();
    }
    public void DisplayGD()
    {
        con.Open();
        string str = "select DISTINCT staff.Name,Att.UserID from staff INNER JOIN AttRecord as Att ON staff.IDNo=Att.UserID where Att.AttDate='" + txtdate.Text + "' and staff.FranchiseCode='" + txtfranchise.Text + "' and staff.BrandName='THINKNEXT TRAINING'";
        SqlDataAdapter da = new SqlDataAdapter(str,con);
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
}
