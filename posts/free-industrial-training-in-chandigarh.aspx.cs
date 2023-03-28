using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.Data.Common;
using System.Net.NetworkInformation;
using System.IO;
using System.Text.RegularExpressions;
using System.Net.Mail;
public partial class posts_free_industrial_training_in_chandigarh : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    Class1 varClass1 = new Class1();
    string sess = "";
         protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(varClass1.GetConnectionString(""));
        con.Open();
    }
    protected void btnSave_click(object sender, EventArgs e)
    {
        bool isEmail = Regex.IsMatch(txtEmailR.Text.Trim(), @"\A(?:[A-Za-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[A-Za-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?\.)+[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?)\Z");
        if (!isEmail)
        {
            lblerror.Visible = true;
            lblerror.Text = "Enter Valid EMailID";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Anyname", "toggles();", true);
            return;
        }
        if (txtContectR.Text == "")
        {
            lblerror.Visible = true;
            lblerror.Text = "please Enter Valid MobileNo";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Anyname", "toggles();", true);
            return;

        }
        if (txtNameR.Text == "")
        {
            lblerror.Visible = true;
            lblerror.Text = "please Enter Your Name";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Anyname", "toggles();", true);
            return;
        }
        string sql = "";
        sql = "insert into Admissions (EnquiryNo,Session,Admissiondate,StudentName,StudentMobileNo,EmailID,Course,Comment,ModeOfEnquiry,StatusCode,brandname,FranchiseCode)values(@EnquiryNo,@Session,@Admissiondate,@StudentName,@StudentMobileNo,@EmailID,@Course,@Comment,@ModeOfEnquiry,@StatusCode,@brandname,@FranchiseCode)";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Connection = con;
        int enquiryno = 0;
        string ses ;
        ses = varClass1.Session12(sess);
        enquiryno = GenEnquirytNo();
        cmd.Parameters.AddWithValue("@EnquiryNo", enquiryno.ToString());
        cmd.Parameters.AddWithValue("@Admissiondate", DateTime.Today.ToString("MM/dd/yyyy"));
        cmd.Parameters.AddWithValue("@StudentName", txtNameR.Text);
        cmd.Parameters.AddWithValue("@StudentMobileNo", txtContectR.Text);
        cmd.Parameters.AddWithValue("@EmailID", txtEmailR.Text);
        cmd.Parameters.AddWithValue("@Course", "Assembly And Maintenance of PCs");
        cmd.Parameters.AddWithValue("@Comment", "Free Training");
        cmd.Parameters.AddWithValue("@ModeOfEnquiry", "Online");
        cmd.Parameters.AddWithValue("@StatusCode", "Enquiry");
        cmd.Parameters.AddWithValue("@brandname", "THINKNEXT TRAINING");
        cmd.Parameters.AddWithValue("@FranchiseCode", "TNK101");
        cmd.Parameters.AddWithValue("@Session", ses);
        cmd.ExecuteNonQuery();
        con.Close();

        string SMS2nd = "";
        SMS2nd = "Dear " + txtNameR.Text + ", Thanks for your Registration for Industrial Training in 'Assembly And Maintenance of PCs', ";
        SMS2nd = SMS2nd + "Under Skill development in ESDM @ThinkNEXT Technologies Pvt. Ltd. SCF 113, Sector-65, Mohali (Chandigarh). Call: 9041069797, 9815994197";


        varClass1.SendSMS(txtContectR.Text, SMS2nd, "Route9");
        //varClass1.SendSMS(txtContectR.Text, SMS2nd, "Route11");
        SendEmailAgain(txtEmailR.Text, txtNameR.Text, "Assembly And Maintenance of PCs");
        clear();
        
        ScriptManager.RegisterStartupScript(this, this.GetType(), "alertmessage", "javascript:alert('You are Successfully Registerd')", true);
        //ScriptManager.RegisterStartupScript(this, this.GetType(), "Anyname", "toggles();", true);

    }
    public int GenEnquirytNo()
    {

        string sql = null;
        int EnquiryNo = 0;


        sql = "SELECT MAX(EnquiryNo) AS EnquiryNo FROM  Admissions where brandname='THINKNEXT TRAINING' and FranchiseCode='TNK101'";
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds, "Admissions");
        if (ds.Tables["Admissions"].Rows.Count > 0)
        {
            if (ds.Tables["Admissions"].Rows[0]["EnquiryNo"].ToString() != "")
            {
                EnquiryNo = Convert.ToInt32(ds.Tables["Admissions"].Rows[0]["EnquiryNo"]);
                EnquiryNo = EnquiryNo + 1;
            }
            else
            {
                EnquiryNo = 1;
            }
        }

        return EnquiryNo;
    }

    protected void btnSave1_click(object sender, EventArgs e)
    {
        bool isEmail = Regex.IsMatch(txtEmail.Text.Trim(), @"\A(?:[A-Za-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[A-Za-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?\.)+[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?)\Z");
        if (!isEmail)
        {
            lblerror1.Visible = true;
            lblerror1.Text = "Enter Valid EMailID";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Anyname", "toggleses();", true);
            return;
        }
        if (txtContect.Text == "")
        {
            lblerror1.Visible = true;
            lblerror1.Text = "please Enter Valid MobileNo";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Anyname", "toggleses();", true);
            return;

        }
        if (txtName.Text == "")
        {
            lblerror1.Visible = true;
            lblerror1.Text = "please Enter Your Name";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Anyname", "toggleses();", true);
            return;
        }
        string sql = "";
        sql = "insert into Admissions (EnquiryNo,Session,Admissiondate,StudentName,StudentMobileNo,EmailID,Course,Comment,ModeOfEnquiry,StatusCode,brandname,FranchiseCode)values(@EnquiryNo,@Session,@Admissiondate,@StudentName,@StudentMobileNo,@EmailID,@Course,@Comment,@ModeOfEnquiry,@StatusCode,@brandname,@FranchiseCode)";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Connection = con;
        int enquiryno = 0;
        enquiryno = GenEnquirytNo();
        string ses;
        ses = varClass1.Session12(sess);
        cmd.Parameters.AddWithValue("@EnquiryNo", enquiryno.ToString());
        cmd.Parameters.AddWithValue("@Admissiondate", DateTime.Today.ToString("MM/dd/yyyy"));
        cmd.Parameters.AddWithValue("@StudentName", txtName.Text);
        cmd.Parameters.AddWithValue("@StudentMobileNo", txtContect.Text);
        cmd.Parameters.AddWithValue("@EmailID", txtEmail.Text);
        cmd.Parameters.AddWithValue("@Course", b.Text);
        cmd.Parameters.AddWithValue("@Comment", "Free Training");
        cmd.Parameters.AddWithValue("@ModeOfEnquiry", "Online");
        cmd.Parameters.AddWithValue("@StatusCode", "Enquiry");
        cmd.Parameters.AddWithValue("@brandname", "THINKNEXT TRAINING");
        cmd.Parameters.AddWithValue("@FranchiseCode", "TNK101");
        cmd.Parameters.AddWithValue("@Session", ses);
        cmd.ExecuteNonQuery();
        con.Close();

        string SMS2nd = "";
        SMS2nd = "Dear " + txtName.Text + ", Thanks for your Registration  Industrial Training in 'BSNL Certified Telecom Technician-PC Hardware and Networking', ";
        SMS2nd = SMS2nd + "Under Skill development in ESDM @ThinkNEXT Technologies Pvt. Ltd. SCF 113, Sector-65, Mohali (Chandigarh). Call: 9041069797, 9815994197";


        varClass1.SendSMS(txtContect.Text, SMS2nd, "Route9");
        //varClass1.SendSMS(txtContect.Text, SMS2nd, "Route11");
        SendEmailAgain(txtEmail.Text, txtName.Text, "BSNL Certified Telecom Technician-PC Hardware and Networking");
        clear();
       
        ScriptManager.RegisterStartupScript(this, this.GetType(), "alertmessage", "javascript:alert('You are Successfully Registerd')", true);

        //ScriptManager.RegisterStartupScript(this, this.GetType(), "Anyname", "toggleses();", true);

    }

    protected void btnSave2_click(object sender, EventArgs e)
    {
        bool isEmail = Regex.IsMatch(txtEmail2.Text.Trim(), @"\A(?:[A-Za-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[A-Za-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?\.)+[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?)\Z");
        if (!isEmail)
        {
            lblerror2.Visible = true;
            lblerror2.Text = "Enter Valid EMailID";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Anyname", "togglesing();", true);
            return;
        }
        if (txtContect2.Text == "")
        {
            lblerror2.Visible = true;
            lblerror2.Text = "please Enter Valid MobileNo";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Anyname", "togglesing();", true);
            return;

        }
        if (txtName2.Text == "")
        {
            lblerror2.Visible = true;
            lblerror2.Text = "please Enter Your Name";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Anyname", "togglesing();", true);
            return;
        }
        string sql = "";
        sql = "insert into Admissions (EnquiryNo,Session,Admissiondate,StudentName,StudentMobileNo,EmailID,Course,Comment,ModeOfEnquiry,StatusCode,brandname,FranchiseCode)values(@EnquiryNo,@Session,@Admissiondate,@StudentName,@StudentMobileNo,@EmailID,@Course,@Comment,@ModeOfEnquiry,@StatusCode,@brandname,@FranchiseCode)";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Connection = con;
        int enquiryno = 0;
        enquiryno = GenEnquirytNo();
        string ses;
        ses = varClass1.Session12(sess);
        cmd.Parameters.AddWithValue("@EnquiryNo", enquiryno.ToString());
        cmd.Parameters.AddWithValue("@Admissiondate", DateTime.Today.ToString("MM/dd/yyyy"));
        cmd.Parameters.AddWithValue("@StudentName", txtName2.Text);
        cmd.Parameters.AddWithValue("@StudentMobileNo", txtContect2.Text);
        cmd.Parameters.AddWithValue("@EmailID", txtEmail2.Text);
        cmd.Parameters.AddWithValue("@Course", C.Text);
        cmd.Parameters.AddWithValue("@Comment", "Free Training");
        cmd.Parameters.AddWithValue("@ModeOfEnquiry", "Online");
        cmd.Parameters.AddWithValue("@StatusCode", "Enquiry");
        cmd.Parameters.AddWithValue("@brandname", "THINKNEXT TRAINING");
        cmd.Parameters.AddWithValue("@FranchiseCode", "TNK101");
        cmd.Parameters.AddWithValue("@Session", ses );
        cmd.ExecuteNonQuery();
        con.Close();

        string SMS2nd = "";
        SMS2nd = "Dear " + txtName2.Text + ", Thanks for your Registration  Industrial Training in 'Embedded System Design using 8-bit Microcontroller', ";
        SMS2nd = SMS2nd + "Under Skill development in ESDM @ThinkNEXT Technologies Pvt. Ltd. SCF 113, Sector-65, Mohali (Chandigarh). Call: 9041069797, 9815994197";


        varClass1.SendSMS(txtContect2.Text, SMS2nd, "Route9");
        //varClass1.SendSMS(txtContect2.Text, SMS2nd, "Route11");
        SendEmailAgain(txtEmail2.Text, txtName2.Text, "Embedded System Design using 8-bit Microcontroller");
        clear();
       
        ScriptManager.RegisterStartupScript(this, this.GetType(), "alertmessage", "javascript:alert('You are Successfully Registerd')", true);
        //ScriptManager.RegisterStartupScript(this, this.GetType(), "Anyname", "togglesing();", true);

    }

    protected void btnSave3_click(object sender, EventArgs e)
    {
        bool isEmail = Regex.IsMatch(txtEmail3.Text.Trim(), @"\A(?:[A-Za-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[A-Za-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?\.)+[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?)\Z");
        if (!isEmail)
        {
            lblerror3.Visible = true;
            lblerror3.Text = "Enter Valid EMailID";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Anyname", "google();", true);
            return;
        }
        if (txtContect3.Text == "")
        {
            lblerror3.Visible = true;
            lblerror3.Text = "please Enter Valid MobileNo";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Anyname", "google();", true);
            return;

        }
        if (txtName3.Text == "")
        {
            lblerror3.Visible = true;
            lblerror3.Text = "please Enter Your Name";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Anyname", "google();", true);
            return;
        }
        string sql = "";
        sql = "insert into Admissions (EnquiryNo,Session,Admissiondate,StudentName,StudentMobileNo,EmailID,Course,Comment,ModeOfEnquiry,StatusCode,brandname,FranchiseCode)values(@EnquiryNo,@Session,@Admissiondate,@StudentName,@StudentMobileNo,@EmailID,@Course,@Comment,@ModeOfEnquiry,@StatusCode,@brandname,@FranchiseCode)";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Connection = con;
        int enquiryno = 0;
        enquiryno = GenEnquirytNo();
        string ses;
        ses = varClass1.Session12(sess);
        cmd.Parameters.AddWithValue("@EnquiryNo", enquiryno.ToString());
        cmd.Parameters.AddWithValue("@Admissiondate", DateTime.Today.ToString("MM/dd/yyyy"));
        cmd.Parameters.AddWithValue("@StudentName", txtName3.Text);
        cmd.Parameters.AddWithValue("@StudentMobileNo", txtContect3.Text);
        cmd.Parameters.AddWithValue("@EmailID", txtEmail3.Text);
        cmd.Parameters.AddWithValue("@Course", D.Text);
        cmd.Parameters.AddWithValue("@Comment", "Free Training");
        cmd.Parameters.AddWithValue("@ModeOfEnquiry", "Online");
        cmd.Parameters.AddWithValue("@StatusCode", "Enquiry");
        cmd.Parameters.AddWithValue("@brandname", "THINKNEXT TRAINING");
        cmd.Parameters.AddWithValue("@FranchiseCode", "TNK101");
        cmd.Parameters.AddWithValue("@Session", ses);
        cmd.ExecuteNonQuery();
        con.Close();

        string SMS2nd = "";
        SMS2nd = "Dear " + txtName3.Text + ", Thanks for your Registration  Industrial Training in 'Automation Technology – Basic Level', ";
        SMS2nd = SMS2nd + "Under Skill development in ESDM @ThinkNEXT Technologies Pvt. Ltd. SCF 113, Sector-65, Mohali (Chandigarh). Call: 9041069797, 9815994197";


        varClass1.SendSMS(txtContect3.Text, SMS2nd, "Route9");
        //varClass1.SendSMS(txtContect3.Text, SMS2nd, "Route11");
        SendEmailAgain(txtEmail3.Text, txtName3.Text, "Automation Technology – Basic Level");
        clear();
        
        ScriptManager.RegisterStartupScript(this, this.GetType(), "alertmessage", "javascript:alert('You are Successfully Registerd')", true);
        //ScriptManager.RegisterStartupScript(this, this.GetType(), "Anyname", "google();", true);

    }

    protected void btnSave4_click(object sender, EventArgs e)
    {
        bool isEmail = Regex.IsMatch(txtEmail4.Text.Trim(), @"\A(?:[A-Za-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[A-Za-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?\.)+[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?)\Z");
        if (!isEmail)
        {
            lblerror4.Visible = true;
            lblerror4.Text = "Enter Valid EMailID";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Anyname", "google();", true);
            return;
        }
        if (txtContect4.Text == "")
        {
            lblerror4.Visible = true;
            lblerror4.Text = "please Enter Valid MobileNo";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Anyname", "google();", true);
            return;

        }
        if (txtName4.Text == "")
        {
            lblerror4.Visible = true;
            lblerror4.Text = "please Enter Your Name";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Anyname", "google();", true);
            return;
        }
        string sql = "";
        sql = "insert into Admissions (EnquiryNo,Session,Admissiondate,StudentName,StudentMobileNo,EmailID,Course,Comment,ModeOfEnquiry,StatusCode,brandname,FranchiseCode)values(@EnquiryNo,@Session,@Admissiondate,@StudentName,@StudentMobileNo,@EmailID,@Course,@Comment,@ModeOfEnquiry,@StatusCode,@brandname,@FranchiseCode)";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Connection = con;
        int enquiryno = 0;
        enquiryno = GenEnquirytNo();
        string ses;
        ses = varClass1.Session12(sess);
        cmd.Parameters.AddWithValue("@EnquiryNo", enquiryno.ToString());
        cmd.Parameters.AddWithValue("@Admissiondate", DateTime.Today.ToString("MM/dd/yyyy"));
        cmd.Parameters.AddWithValue("@StudentName", txtName4.Text);
        cmd.Parameters.AddWithValue("@StudentMobileNo", txtContect4.Text);
        cmd.Parameters.AddWithValue("@EmailID", txtEmail4.Text);
        cmd.Parameters.AddWithValue("@Course", E.Text);
        cmd.Parameters.AddWithValue("@Comment", "Free Training");
        cmd.Parameters.AddWithValue("@ModeOfEnquiry", "Online");
        cmd.Parameters.AddWithValue("@StatusCode", "Enquiry");
        cmd.Parameters.AddWithValue("@brandname", "THINKNEXT TRAINING");
        cmd.Parameters.AddWithValue("@FranchiseCode", "TNK101");
        cmd.Parameters.AddWithValue("@Session", ses );
        cmd.ExecuteNonQuery();
        con.Close();

        string SMS2nd = "";
        SMS2nd = "Dear " + txtName4.Text + ", Thanks for your Registration  Industrial Training in 'Automation Technology – Advance Level', ";
        SMS2nd = SMS2nd + "Under Skill development in ESDM @ThinkNEXT Technologies Pvt. Ltd. SCF 113, Sector-65, Mohali (Chandigarh). Call: 9041069797, 9815994197";


        varClass1.SendSMS(txtContect4.Text, SMS2nd, "Route9");
        //varClass1.SendSMS(txtContect4.Text, SMS2nd, "Route11");
        SendEmailAgain(txtEmail4.Text, txtName4.Text, "Automation Technology – Advance Level");
        clear();
        
        ScriptManager.RegisterStartupScript(this, this.GetType(), "alertmessage", "javascript:alert('You are Successfully Registerd')", true);
        //ScriptManager.RegisterStartupScript(this, this.GetType(), "Anyname", "google();", true);

    }

    public void clear()
    {
        txtContect.Text = "";
        txtContect2.Text = "";
        txtContect3.Text = "";
        txtContect4.Text = "";
        txtContectR.Text = "";
        txtEmail.Text = "";
        txtEmail2.Text = "";
        txtEmail3.Text = "";
        txtEmail4.Text = "";
        txtEmailR.Text = "";
        txtName.Text = "";
        txtName2.Text = "";
        txtName3.Text = "";
        txtName4.Text = "";
        txtNameR.Text = "";

    }

    public void SendEmailAgain(string mailID, string name, string course)
    {
        MailMessage Msg = new MailMessage();
        Msg.From = new MailAddress("support@thinknext.co.in", "ThinkNext Technologies Pvt. Ltd");
        Msg.To.Add(mailID);
        Msg.Subject = "Apply Under Skill development in ESDM  is Successfully";
        string HTML = "<head>";
        HTML = HTML + "</head>";
        HTML = HTML + "<body>";
        HTML = HTML + "<div id='ert' runat='server'>";
        HTML = HTML + "<p>Dear " + name + "</p>";
        HTML = HTML + "<p>Thanking you applying for <b>" + course + "</b> Under Skill development in ESDM</p>";
        HTML = HTML + "<p>ThinkNEXT Technologies Pvt. Ltd.</p>";
        HTML = HTML + "<p>SCF 113, Sector-65, Mohali (Chandigarh).</p>";
        HTML = HTML + "<p>Call: 9041069797, 9815994197</p>";
        HTML = HTML + "Regards : Rupinder Kaur";
        HTML = HTML + "</div>";
        HTML = HTML + "</body>";
        HTML = HTML + "</html>";
        Msg.Body = HTML;
        Msg.IsBodyHtml = true;
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.DeliveryMethod = SmtpDeliveryMethod.Network;

        smtp.UseDefaultCredentials = false;
        smtp.Credentials = new System.Net.NetworkCredential("thinknextsmart@gmail.com", "smartthink");
        smtp.EnableSsl = true;
        smtp.Timeout = 9999999;
        smtp.Send(Msg);






    }
}