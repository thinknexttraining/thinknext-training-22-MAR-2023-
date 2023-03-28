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
using System.IO;
public partial class Admin_FollowupDetails : System.Web.UI.Page
{
     
    SqlConnection con = new SqlConnection(); //("Data Source=103.21.58.193;Initial Catalog=dbthinknex;Persist Security Info=True;User ID=thinknex;Password=techsmart?");
    Class1 varClass1 = new Class1();
    Class1 obj = new Class1();
    String sess;
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Timeout = 300;
        if ((Session["myck"] == "") || (Session["myck"] == null))
        {
            Response.Redirect("~/default.aspx");
        }
        con.ConnectionString = obj.GetConnectionString("constr");
        if (!IsPostBack)
        {
           
            con.Open();
            string enquiry = Request.QueryString["enquiry"].ToString();
            SqlCommand cmd = new SqlCommand();
            //SqlConnection con1 = new SqlConnection();
            SqlDataAdapter adp1 = new SqlDataAdapter("select *  from Admissions where EnquiryNo='" + enquiry + "'", con);
            DataSet ds1 = new DataSet();
            adp1.Fill(ds1);
            txtEnquiryno.Text = ds1.Tables[0].Rows[0][1].ToString();
            txtnamename.Text = ds1.Tables[0].Rows[0][12].ToString();
            if (ds1.Tables[0].Rows[0][15].ToString() == "")
            {
                if (ds1.Tables[0].Rows[0][16].ToString() == "")
                {
                    if (ds1.Tables[0].Rows[0][42].ToString() == "")
                    {
                       // txtmobilenono.Text = ds1.Tables[0].Rows[0][42].ToString();
                    }
                    else
                    {
                        txtmobilenono.Text = ds1.Tables[0].Rows[0][42].ToString();

                    }
                   // txtmobilenono.Text = ds1.Tables[0].Rows[0][16].ToString();
                }
                else
                {
                    txtmobilenono.Text = ds1.Tables[0].Rows[0][16].ToString();
                }

               // txtmobilenono.Text = ds1.Tables[0].Rows[0][15].ToString();
            }
            else
            {
                txtmobilenono.Text = ds1.Tables[0].Rows[0][15].ToString();
               
            }
           
            

            txtemailidid.Text = ds1.Tables[0].Rows[0][21].ToString();
            txtcollegenamename.Text = ds1.Tables[0].Rows[0][3].ToString();
            txtCourse.Text = ds1.Tables[0].Rows[0][9].ToString();
            txtVisited.Text = ds1.Tables[0].Rows[0][68].ToString();
            con.Close();
        }
        DateTime dt = System.DateTime.Now;
        string date = dt.ToString("MM/dd/yyyy").Replace('-', '/');
        txtfollowupdate.Text = date;
      txtnewfollowupdate.Text = date;
        //cal.StartDate = DateTime.Today;
         CalendarExtender1.StartDate = DateTime.Now.Date;

    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();

       SqlCommand cmd1 = new SqlCommand();
        //SqlConnection con1 = new SqlConnection();
       SqlDataAdapter adp1 = new SqlDataAdapter("select *  from FollowupRemarks where EnquiryNo='" + txtEnquiryno.Text + "'", con);
        DataSet ds1 = new DataSet();
        adp1.Fill(ds1);
        if (ds1.Tables[0].Rows.Count > 0)
        {
            Label2.ForeColor = System.Drawing.Color.Red;
            Label2.Text = "Followup Enquiry Already Exists.";
            return;
        }
        else
        {
            string sql = "";
            sql = "insert into FollowupRemarks (EnquiryNo,DateEntry,FollowupRemarks,NextDateEntry,Name,MobileNo,EmailID,CollegeName,Course,Session,Date,Visited)values(@EnquiryNo,@DateEntry,@FollowupRemarks,@NextDateEntry,@Name,@MobileNo,@EmailID,@CollegeName,@Course,@Session,GetDate(),@Visited)";
            SqlCommand cmd = new SqlCommand(sql, con);
            string ses;
            ses = varClass1.Session12(sess);
            cmd.Connection = con;
            try
            {
                cmd.Parameters.AddWithValue("@EnquiryNo", txtEnquiryno.Text);
                cmd.Parameters.AddWithValue("@DateEntry", txtfollowupdate.Text);
                cmd.Parameters.AddWithValue("@FollowupRemarks", txtComments.Text);
                cmd.Parameters.AddWithValue("@NextDateEntry", txtnewfollowupdate.Text);
                cmd.Parameters.AddWithValue("@Name", txtnamename.Text);
                cmd.Parameters.AddWithValue("@MobileNo", txtmobilenono.Text);
                cmd.Parameters.AddWithValue("@EmailID", txtemailidid.Text);
                cmd.Parameters.AddWithValue("@CollegeName", txtcollegenamename.Text);
                cmd.Parameters.AddWithValue("@Course", txtCourse.Text);
                cmd.Parameters.AddWithValue("@Session", ses);
                cmd.Parameters.AddWithValue("@Visited", txtVisited.Text);
                Label2.ForeColor = System.Drawing.Color.Green;
                Label2.Text = "Followup Enquiry Save successfully.";
                txtfollowupdate.Text = "";
                txtComments.Text="";
                txtnewfollowupdate.Text = "";
                //ScriptManager.RegisterStartupScript(this, this.GetType(), "alertmessage", "javascript:alert('You are Successfully Registerd')", true);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Label2.ForeColor = System.Drawing.Color.Red;
                Label2.Text = ex.Message;
            }
          
        }
        con.Close();

       
        
       
    }
}