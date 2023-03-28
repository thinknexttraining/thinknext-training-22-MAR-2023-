using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Admin_AdminMaster : System.Web.UI.MasterPage
{


    
    //Dim varip As Integer
    //Dim varname As String
    //Dim varclass As New Class1

    Int32 varip = 0;
    string varname = "";
    Class1 varclass = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

        //if (Session["myck"] == null)
        //{
        //    Response.Redirect("~/default.aspx");

        //}
        //Session.Timeout = 1440;
        Session.Timeout = 300;
if ((Session["myck"] == "") || (Session["myck"] == null))
        {
            Response.Redirect("~/default.aspx");
        }
        PersonalDetail();

    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
         //Session.Remove["myck"];
        Session.Abandon();
       
        Response.Redirect("~/default.aspx");
    }

    public void PersonalDetail()
    {
        string sql = null;
        SqlDataAdapter da = default(SqlDataAdapter);
        DataSet ds = default(DataSet);
        SqlConnection Con = default(SqlConnection);
        Class1 varClass1 = new Class1();
        Con = new SqlConnection(varClass1.GetConnectionString(""));
        Con.Open();

       // if (Session ["myck"].ToString ()!= "")
        if (Session["myck"]!="")
        {
            // End If

            //If Request.Cookies("Myck").Value.ToString() <> "" Then
            //sql = " select *  from Staff where IDNo=" & Request.Cookies("Myck").Value.ToString()
            sql = " select *  from Staff where IDNo=" + Session["myck"].ToString();

            ds = new DataSet();
            SqlCommand cmd = new SqlCommand(sql, Con);
            cmd.CommandTimeout = 0;
            da = new SqlDataAdapter(cmd);

            da.Fill(ds, "Staff");
            if (ds.Tables["Staff"].Rows.Count == 0)
            {
                lblmsg.Visible = true;
                lblmsg.Text = "No records found";
                return;
            }
            lblmsg.Visible = true;
            lblmsg.Text = "Welcome : " + ds.Tables["Staff"].Rows[0]["Name"] + " " + Session["myck"].ToString() + " ";
        }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Admin/AdminPersonalProfile.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Admin/CreateProfile.aspx");
    }

    public string Backgroundimage(string Usename)
    {
        SqlConnection con = default(SqlConnection);
        //Dim varclass As New Class1
        string imagepath = null;
        con = new SqlConnection(varclass.GetConnectionString(""));
        //Dim qry As String = "Select mb.imagepath,mub.Username from Masterbackgrounds mb INNER JOIN  masteruserbackground mub ON Masterbackgrounds.imageid=masteruserbackground.imageid where Usename=" & Usename & " "
        string qry = null;
        qry = "SELECT        MasterBackgrounds.ImagePath ";
        qry = qry + "  FROM  MasterBackgrounds INNER JOIN";
        qry = qry + "  MasterUserBackground ON MasterBackgrounds.ImageId = MasterUserBackground.ImageId";
        qry = qry + "  WHERE(MasterUserBackground.UserName = " + Usename + ")";
        SqlDataAdapter adp = new SqlDataAdapter(qry, con);
        DataSet ds = new DataSet();
        adp.Fill(ds, "tbimage");
        if (ds.Tables["tbimage"].Rows.Count > 0)
        {
            imagepath = ds.Tables["tbimage"].Rows[0]["imagepath"].ToString();
        }
        else
        {
            imagepath = "";
        }

        return imagepath;

    }

}
