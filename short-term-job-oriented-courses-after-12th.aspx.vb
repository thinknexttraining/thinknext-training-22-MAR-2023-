Imports System.Linq
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.HtmlControls
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Xml.Linq
Imports System.Data.SqlClient
Imports System.Net.Mail
Imports System.IO
Imports System.Net.Mime
Imports System.Net
Imports System.Data
Imports System.Threading
Imports System.Net.Mail.Attachment
Imports System.Globalization
Partial Class short_term_job_oriented_courses_after_12
    Inherits System.Web.UI.Page
    Dim varIP As String
    Dim sess As String
    Protected Sub btnsubmit_Click(sender As Object, e As EventArgs) Handles btnsubmit.Click
        System.Threading.Thread.Sleep(0)
        insert()
        Response.Redirect("thanks.html")
    End Sub
    Public Sub insert1()
        lblmsg.Visible = True
        lblmsg.ForeColor = Drawing.Color.Red
        lblmsg.Text = "Thanks for your Enquiry at ThinkNEXT Technologies Pvt. Ltd."
    End Sub
    Public Sub insert()

        Dim varclass As New Class1()
        Dim con As New SqlConnection()

        con.ConnectionString = varclass.GetConnectionString("constr")
        Dim ses As String
        Dim sql As String
        ses = varclass.Session12(sess)
        Dim enquiryno As String
        enquiryno = GenEnquirytNo()
        If con.State = ConnectionState.Closed Then
            con.Open()
        End If
        If txtName.Text <> "" Then
            If txtEmailId.Text <> "" Then
                If txtMobile.Text <> "" Then
                    sql = ("insert into Admissions (EnquiryNo,StudentName,EmailID,StudentMobileNo,Course,ModeOfEnquiry,StatusCode,Session,FranchiseCode,BrandName,Admissiondate) values('" + enquiryno + "','" + txtName.Text + "','" + txtEmailId.Text + "','" + txtMobile.Text + "','" + "Job Oriented Courses after 12th Science" + "','" + "Arrange a Call Back" + "','" + "Enquiry" + "','" + ses + "','" + "TNK101" + "','" + "THINKNEXT TRAINING" + "',@Admissiondate)")
                    Dim cmd As New SqlCommand(sql, con)
                    cmd.Parameters.AddWithValue("@Admissiondate", Format(Now, "MM/dd/yyyy"))
                    cmd.ExecuteNonQuery()
                    cmd.Dispose()
                    con.Close()

                    ' SendEmailbroucher(enquiryno)
                    'Dim SMS2nd As String
                    ' SMS2nd = "Dear " & txtName.Text & ", Thanks for your enquiry for Java at ThinkNEXT Technologies Pvt. Ltd., SCF 113, Sector-65, Phase-XI, Mohali (Chandigarh) Call: 7837401000, 7837402000, 7837403000, 7837404000, 0172-4656197 Toll Free : 1800-102-4102 or visit us at www.thinknexttraining.com, One of our representative will get in touch with you soon. To know more about ThinkNEXT and get regular updates on your facebook account regarding placements and other activities, please like us at www.facebook.com/thinknexttechnologies"
                    ' varclass.SendSMS(txtMobile.Text, SMS2nd, "Route9")
                    '  varclass.SendSMSBytePaper(txtMobile.Text, txtName.Text, txtEmailId.Text, "Java Enquiry")

                    varclass.SendLeads(txtMobile.Text, txtName.Text, txtEmailId.Text, "Short Term Job Oriented Courses after 12th", "Arrange a Call Back", "https://www.thinknexttraining.com/short-term-job-oriented-courses-after-12.aspx")
                    lblmsg.Visible = True
                    lblmsg.ForeColor = Drawing.Color.Red
                    lblmsg.Text = "Thanks for your Enquiry at ThinkNEXT Technologies Pvt. Ltd."
                    txtName.Text = ""
                    txtEmailId.Text = ""
                    txtMobile.Text = ""
                    Response.Redirect("thanks.html")


                    'ScriptManager.RegisterStartupScript(Me, Me.[GetType](), "alertmessage", "javascript:alert('Submit Successfully')", True)

                End If
            End If
        End If
    End Sub
    Public Function GenEnquirytNo() As String
        Dim con As SqlConnection = Nothing
        Dim sql As String = Nothing
        Dim EnquiryNo As Integer = 0
        Dim varClass1 As New Class1()
        con = New SqlConnection(varClass1.GetConnectionString(varIP))
        con.Open()
        sql = "SELECT MAX(EnquiryNo) AS EnquiryNo FROM  Admissions where FranchiseCode='TNK101' AND BrandName='THINKNEXT TRAINING' "
        Dim cmd As New SqlCommand(sql, con)
        Dim adp As New SqlDataAdapter(cmd)
        Dim ds As New DataSet()
        adp.Fill(ds, "Admissions")
        If ds.Tables("Admissions").Rows.Count > 0 Then
            If ds.Tables("Admissions").Rows(0)("EnquiryNo").ToString() <> "" Then
                EnquiryNo = Convert.ToInt32(ds.Tables("Admissions").Rows(0)("EnquiryNo"))
                EnquiryNo = EnquiryNo + 1
            Else
                EnquiryNo = 1
            End If
        End If
        Return EnquiryNo.ToString()

    End Function
    Public Sub SendEmailbroucher(ByVal enquiryno As String)
        ' Dim con As SqlConnection
        Dim var As New Class1()
        Dim reader As New StreamReader(Server.MapPath("~/Email6.htm"))
        Dim readFile As String = reader.ReadToEnd()
        Dim StrContent As String = ""
        StrContent = readFile
        StrContent = StrContent.Replace("[MyName]", txtName.Text)
        StrContent = StrContent.Replace("[Course]", "Short Term Job Oriented Courses after 12th")
        StrContent = StrContent.Replace("[ENO]", enquiryno)
        Dim altView As AlternateView = AlternateView.CreateAlternateViewFromString(StrContent, Nothing, MediaTypeNames.Text.Html)

        Try

            Dim mail As New _
                MailMessage("ThinkNEXT Technologies <training@thinknext.co.in>",
                            txtEmailId.Text,
                            Trim("Java"),
                            Trim(StrContent.ToString()))
            mail.IsBodyHtml = True
            mail.Priority = MailPriority.High
            ' DEFINE HOTMAIL SMTP MAIL SERVER ALONG WITH A PORT (587 IN THIS CASE)
            ' USING SmtpClient() CLASS.
            Dim client As New SmtpClient("smtp.live.com", 587)
            client.UseDefaultCredentials = True

            ' NETWORK CREADENTIALS. 
            ' YOUR HOTMAIL ID ALONG WITH THE PASSWORD. 
            ' NOTE: CHANGE THE STRING "your_hotmail_password" 
            ' WITH A VALID HOTMAIL PASSWORD.
            Dim credentials As _
                New NetworkCredential("training@thinknext.co.in", "SmartIndia345#$%")
            client.Credentials = credentials
            client.EnableSsl = True
            client.DeliveryMethod = SmtpDeliveryMethod.Network

            client.Send(mail)
            Return
        Catch ex As Exception
            Response.Write(ex.Message)
        End Try

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        lblmsg.Visible = False
        If Not IsPostBack = True Then
            Dim script As String = "$(document).ready(function () { $('[id*=btnSubmit]').click(); });"
            ClientScript.RegisterStartupScript(Me.GetType, "load", script, True)
        End If

    End Sub
    Protected Sub Btndemo_Click(sender As Object, e As EventArgs) Handles Btndemo.Click
        System.Threading.Thread.Sleep(0)
        Dim con As SqlConnection
        Dim varclass As New Class1
        con = New SqlConnection(varclass.GetConnectionString(varIP))
        con.Open()

        Dim email As String = ""


        If txtdemoEmail.Text <> email Then
            AddStudentScholarshipDetail()

            SendEmailReg()
            'Dim con As SqlConnection
            con = New SqlConnection(varclass.GetConnectionString(varIP))
            con.Open()
            Dim sql As String
            Dim cmd As New SqlCommand



            sql = "select distinct FileName from TNTAdminUpload t1 where Srno=(select max(Srno) from TNTAdminUpload) and  Category='NewsEvents' and FranchiseCode='TNK101' and BrandName='THINKNEXT TRAINING'"
            Dim daa As SqlDataAdapter = New SqlDataAdapter(sql, con)
            Dim dss As DataSet = New DataSet()
            daa.Fill(dss, "cs")
            If dss.Tables("cs").Rows.Count > 0 Then
                'lnknewsandevents.DataSource = ds
                'lnknewsandevents.DataBind()
                '  lblnewssss.Text = dss.Tables(0).Rows(0)("FileName").ToString()
            End If

            ' Dim SMS2nd As String
            'SMS2nd = "Dear " & txtdemoName.Text & ", Thanks for your registration for free demo class. Venue: ThinkNEXT Technologies Pvt. Ltd., SCF 113, Sector-65, Phase-XI, Mohali (Chandigarh) Call: 7837401000, 7837402000, 7837403000, 7837404000, 0172-4656197 Toll Free : 1800-102-4102 or visit us at www.thinknexttraining.com, One of our representative will get in touch with you soon."
            'SMS2nd = "Dear " & txtNameR.Text & ", Thanks for registration for Online Industrial Training Test for Industrial Training. Exam Date: " & lblnewssss.Text & " Timings: 11:00 AM to 4:00 PM Duration: 30 Minutes Venue: ThinkNEXT Technologies Pvt. Ltd., SCF 113, Sector-65, Phase-XI, Mohali (Chandigarh) Call 0172-4656197, 7837401000, 7837402000."
            'SMS2nd = SMS2nd & " Venue : ThinkNEXT Technologies Pvt. Ltd., SCF 113, Sector-65, Phase-XI, Mohali (Chandigarh) Call: 0172-4656197, 7837401000, 7837402000. "

            ' varclass.SendSMS(txtContectR.Text, Message, "Route11")

            'varclass.SendSMS(txtdemoMblno.Text, SMS2nd, "Route9")
            'varclass.SendSMSBytePaper(txtdemoMblno.Text, txtdemoName.Text, txtdemoEmail.Text, "Java Demo Class")
            varclass.SendLeads(txtdemoMblno.Text, txtdemoName.Text, txtdemoEmail.Text, "Short Term Job Oriented Courses after 12th", "Demo Class", "https://www.thinknexttraining.com/short-term-job-oriented-courses-after-12.aspx")
            txtdemoName.Text = ""
            txtdemoMblno.Text = ""
            txtdemoEmail.Text = ""
            txtdemoMsg.Text = ""

            Response.Redirect("thanks.html")
        End If
    End Sub
    Sub AddStudentScholarshipDetail()
        Dim varclass As New Class1
        Dim con As SqlConnection
        con = New SqlConnection(varclass.GetConnectionString(varIP))
        con.Open()
        Dim sql As String
        Dim cultureInfo As CultureInfo = Thread.CurrentThread.CurrentCulture
        Dim objTextInfo As TextInfo = cultureInfo.TextInfo
        txtdemoName.Text = objTextInfo.ToTitleCase(txtdemoName.Text)
        txtdemoMsg.Text = objTextInfo.ToTitleCase(txtdemoMsg.Text)
        Dim ses As String
        ses = varclass.Session12(sess)
        'ses = Session12()
        sql = "insert into Admissions( Session, EnquiryNo, Admissiondate, StudentName, StudentMobileNo, EmailID, Duration, Course, Comment, ModeOfEnquiry, StatusCode, FranchiseCode, BrandName)values(@Session,@EnquiryNo,@Admissiondate,@StudentName,@StudentMobileNo,@EmailID,@Duration,@Course,@Comment,@ModeOfEnquiry,@StatusCode,@FranchiseCode,@BrandName)"
        Dim cmd As New SqlCommand(sql, con)
        Dim enquiryno As String
        enquiryno = GenEnquirytNo()
        Session("admin") = enquiryno
        cmd.Parameters.AddWithValue("@EnquiryNo", enquiryno)
        cmd.Parameters.AddWithValue("@Admissiondate", Format(Now, "MM/dd/yyyy"))
        cmd.Parameters.AddWithValue("@StudentName", txtdemoName.Text)
        cmd.Parameters.AddWithValue("@StudentMobileNo", txtdemoMblno.Text)
        cmd.Parameters.AddWithValue("@ModeOfEnquiry", "Demo Class")
        cmd.Parameters.AddWithValue("@EmailID", txtdemoEmail.Text)
        cmd.Parameters.AddWithValue("@Duration", "Short Term Job Oriented Courses after 12th")
        cmd.Parameters.AddWithValue("@Course", txtdemoMsg.Text)
        'cmd.Parameters.AddWithValue("@CollegeName", )
        cmd.Parameters.AddWithValue("@Comment", "Short Term Job Oriented Courses after 12th")
        cmd.Parameters.AddWithValue("@StatusCode", "Enquiry")
        cmd.Parameters.AddWithValue("@FranchiseCode", "TNK101")
        cmd.Parameters.AddWithValue("@BrandName", "THINKNEXT TRAINING")
        cmd.Parameters.AddWithValue("@Session", ses)
        cmd.ExecuteNonQuery()
        cmd.Dispose()
        con.Close()
        Label1.Visible = True
        'lblmsg.Text = "Dear " + txtNameR.Text + " you have been registered successfully." + " Your Enquiry No Is " & enquiryno
        Label1.Text = "Dear " + txtdemoName.Text + " you have been registered successfully."



        'ClientScript.RegisterStartupScript(Me.GetType, "alert", "alert('Dear " & txtNameR.Text & " You have been registered successfully ');", True)
    End Sub
    Sub SendEmailReg()
        Dim var As New Class1()
        Dim reader As New StreamReader(Server.MapPath("~/Email9.html"))
        Dim readFile As String = reader.ReadToEnd()
        Dim StrContent As String = ""
        StrContent = readFile
        StrContent = StrContent.Replace("[MyName]", txtdemoName.Text)
        StrContent = StrContent.Replace("[ENO]", Session("admin").ToString())
        'StrContent = StrContent.Replace("[ENO]", enquiryno)
        Dim altView As AlternateView = AlternateView.CreateAlternateViewFromString(StrContent, Nothing, MediaTypeNames.Text.Html)

        Try

            Dim mail As New _
                MailMessage("ThinkNEXT Technologies <training@thinknext.co.in>",
                            txtdemoEmail.Text, Trim("Free Demo Class Java"),
                            Trim(StrContent.ToString()))
            mail.IsBodyHtml = True
            mail.Priority = MailPriority.High
            ' DEFINE HOTMAIL SMTP MAIL SERVER ALONG WITH A PORT (587 IN THIS CASE)
            ' USING SmtpClient() CLASS.
            Dim client As New SmtpClient("smtp.live.com", 587)
            client.UseDefaultCredentials = True
            ' NETWORK CREADENTIALS. 
            ' YOUR HOTMAIL ID ALONG WITH THE PASSWORD. 
            ' NOTE: CHANGE THE STRING "your_hotmail_password" 
            ' WITH A VALID HOTMAIL PASSWORD.
            Dim credentials As _
                New NetworkCredential("training@thinknext.co.in", "SmartIndia345#$%")
            client.Credentials = credentials
            client.EnableSsl = True
            client.DeliveryMethod = SmtpDeliveryMethod.Network
            client.Send(mail)
            Return
        Catch ex As Exception
            Response.Write(ex.Message)
        End Try

    End Sub
    Protected Sub btnsyll_Click(sender As Object, e As EventArgs) Handles btnsyll.Click
        System.Threading.Thread.Sleep(0)
        SyllabusDownload()
    End Sub
    Public Sub SyllabusDownload()

        Dim varclass As New Class1()
        Dim con As New SqlConnection()

        con.ConnectionString = varclass.GetConnectionString("constr")
        Dim ses As String
        Dim sql As String
        ses = varclass.Session12(sess)
        Dim enquiryno As String
        enquiryno = GenEnquirytNo()
        If con.State = ConnectionState.Closed Then
            con.Open()
        End If
        If NameSyl.Text <> "" Then
            If EmailidSyl.Text <> "" Then
                If PhonenoSyl.Text <> "" Then
                    sql = ("insert into Admissions (EnquiryNo,StudentName,EmailID,StudentMobileNo,Course,ModeOfEnquiry,StatusCode,Session,FranchiseCode,BrandName,Admissiondate) values('" + enquiryno + "','" + NameSyl.Text + "','" + EmailidSyl.Text + "','" + PhonenoSyl.Text + "','" + "Short term job oriented after 12th" + "','" + "Download Syllabus" + "','" + "Enquiry" + "','" + ses + "','" + "TNK101" + "','" + "THINKNEXT TRAINING" + "',@Admissiondate)")
                    Dim cmd As New SqlCommand(sql, con)
                    cmd.Parameters.AddWithValue("@Admissiondate", Format(Now, "MM/dd/yyyy"))
                    cmd.ExecuteNonQuery()
                    cmd.Dispose()
                    con.Close()
                    varclass.SendLeads4(PhonenoSyl.Text, NameSyl.Text, EmailidSyl.Text, "Short Term Job Oriented Courses after 12th", "Download Syllabus", "https://www.thinknexttraining.com/short-term-job-oriented-courses-after-12th.aspx")
                    NameSyl.Text = ""
                    EmailidSyl.Text = ""
                    PhonenoSyl.Text = ""
                    Response.Redirect("download-syllabus-thanks.aspx?data=Brochure")



                End If
            End If
        End If
    End Sub

End Class
