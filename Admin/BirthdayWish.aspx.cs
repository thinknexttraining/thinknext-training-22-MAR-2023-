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
using System.Net.Mail;
//using System.Net.Mail.Attachment;
using System.Net.Mime;

public partial class Admin_BirthdayWish : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    Class1 varclass = new Class1();
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
        con.ConnectionString = varclass.GetConnectionString("");
        con.Open();
        if (!IsPostBack)
        { getData(); }

    }

    public void getData()
    {
        string SQL = "";
        SQL = "SELECT StudentName,StudentMobileno,EmailID FROM Admissions WHERE DATEPART(DAY, DOB)='" + DateTime.Today.Day + "' AND DATEPART(MONTH, DOB)='" + DateTime.Today.Month + "' and StudentName is not null and StudentMobileno is not null and EmailID is not null";
      
        SqlDataAdapter adp = new SqlDataAdapter(SQL,con);
        DataSet ds = new DataSet();
        adp.Fill(ds,"Birth");
        if (ds.Tables["Birth"].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
            DataTable dt = ds.Tables["Birth"];

            Session["data"] = dt;
        }
        else 
        {
            btnmail.Visible = false;
            btnsndmsg.Visible = false;
            lblWish.Visible = false;
            lblmsg.Visible = true;
            lblmsg.Text = "There is no Birthday today!!";
        }
    }
    protected void btnsndmsg_Click(object sender, EventArgs e)
    {
        if (GridView1.Rows.Count > 0)
        {
            DataTable dt = Session["data"] as DataTable;
            foreach (DataRow row in dt.Rows)
            {
                string mobileno = row["StudentMobileno"].ToString();
                string name = row["StudentName"].ToString();
                string SMS2nd = "";
                SMS2nd = "On your birthday we wish you much pleasure and joy,we hope all of your wishes come true.";
                SMS2nd = SMS2nd + "May each hour and minute be filled with delight,And your birthday be perfect for you! ";
                SMS2nd = SMS2nd + "Happybirthday " + " "  + name;
                SMS2nd = SMS2nd + " " + " " + " " + " " + "  " + " " + " " + " " + " " + " " + " " + " " + " " + "  " + " " + " " + " " + "  Regards: ";
                SMS2nd = SMS2nd + " ThinkNEXT Technologies Pvt. Ltd.";
                varclass.SendSMS(mobileno, SMS2nd, "Route9");
                lblmsg.Visible = true;
                lblmsg.Text = "Message Send Successfully..!!";

            }

        }
        else
        {
            lblmsg.Visible = true;
            lblmsg.Text = "No data to send";
        }
    }


    protected void btnmail_Click(object sender, EventArgs e)
    {
        if (GridView1.Rows.Count > 0)
        {
            DataTable dt = Session["data"] as DataTable;
            foreach (DataRow row in dt.Rows)
            {
                string name = row["StudentName"].ToString();
                string mail= row["EmailID"].ToString();
                  MailMessage msg =new MailMessage();
                msg.From=new MailAddress("support@thinknext.co.in", "ThinkNext Technologies Pvt. Ltd");
                msg.To.Add(new MailAddress(mail));


                 string HTML = null;
        HTML = HTML + "</head>";
        HTML = HTML + "<body style='font-family:Courier New; font-size:18px'>";
        HTML = HTML + "<div id='ert' runat='server'>";
        HTML = HTML + "Dear Student,<br /><br />";
        HTML = HTML + " <div id='swe'>";
        HTML = HTML + "Greetings of the Day ! ! ! ! !<br /><br />";
       
        HTML = HTML + "Happy Birthday " + " "  + name + " " + " wish You a very Happy Birthday <br /><br />";
       
        HTML = HTML + "Regards,<br /><br />";
        //HTML = HTML + "</p>";
        //HTML = HTML + "<p>";
        //HTML = HTML + "<img src=\'cid:imageId\'>";
        //HTML = HTML + "</p>";
        //HTML = HTML + "<p>";
        HTML = HTML + "<font color='red' size='4'>Chanchal Mahajan</font><br />";
        HTML = HTML + "<b>ThinkNEXT Technologies Private Limited <br />";
        HTML = HTML + "HR Manager<br />";
        HTML = HTML + "Email: info@thinknext.co.in<br />";
        HTML = HTML + "Mobile: +91-9041069797, 7837433597, 0172-4656197<br />";
        HTML = HTML + "Website: www.Thinknexttraining.com</b><br />";
      
        HTML = HTML + "<br />";
        HTML = HTML + "<br />";
        HTML = HTML + "</div>";
        HTML = HTML + "</div>";
        HTML = HTML + "</body>";
        HTML = HTML + "</html>";



            msg.Subject = "Wish you a very Happy Birthday!!";
            msg.Body = HTML;
            msg.IsBodyHtml = true;
            SmtpClient obj = new SmtpClient();
            obj.Host = "smtp.gmail.com";
            obj.Port = 587;
            obj.DeliveryMethod = SmtpDeliveryMethod.Network;
            msg.Priority = MailPriority.High;
            obj.UseDefaultCredentials = false;


            obj.Credentials = new System.Net.NetworkCredential("thinknextsmart@gmail.com", "smartthink");
            obj.EnableSsl = true;
            obj.Timeout = 9999999;
            obj.Send(msg);
            //try 
            //    {
                
            //    }
            //catch( Exception ex)
            //{
            //  Response.Write(ex.Message);
            // }
           
      
            
      
            //obj.Credentials = New NetworkCredential("thinknextsmart@gmail.com", "smartthink")
            //Dim fname1 As String = ""
            //Dim fname2 As String = ""
            //fname1 = Server.MapPath("~/Staff/attachmentemail/thinknext brochure.pdf")
            //fname2 = Server.MapPath("~/Staff/attachmentemail/Thinknext pamphlet.pdf")
            //msg.Attachments.Add(New Attachment(fname1))
            //msg.Attachments.Add(New Attachment(fname2))
            //msg.AlternateViews.Add(altView)
            }
        }
    }
}