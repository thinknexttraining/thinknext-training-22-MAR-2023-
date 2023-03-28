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
Partial Class ielts_coaching_institute_mohali
    Inherits System.Web.UI.Page
    Dim varIP As String
    Dim sess As String
    Dim varclass As New Class1
    Protected Sub btnsubmit_Click(sender As Object, e As EventArgs) Handles btnsubmit.Click
        System.Threading.Thread.Sleep(0)

        insert()

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
                    sql = ("insert into Admissions (EnquiryNo,StudentName,EmailID,StudentMobileNo,Course,ModeOfEnquiry,StatusCode,Session,FranchiseCode,BrandName,Admissiondate) values('" + enquiryno + "','" + txtName.Text + "','" + txtEmailId.Text + "','" + txtMobile.Text + "','" + "IELTS Coaching" + "','" + "IELTS Coaching" + "','" + "Enquiry" + "','" + ses + "','" + "TNK101" + "','" + "THINKNEXT TRAINING" + "',@Admissiondate)")
                    Dim cmd As New SqlCommand(sql, con)
                    cmd.Parameters.AddWithValue("@Admissiondate", Format(Now, "MM/dd/yyyy"))
                    cmd.ExecuteNonQuery()
                    cmd.Dispose()
                    con.Close()

                    ' SendEmailbroucher()
                    'Dim SMS2nd As String
                    ' SMS2nd = "Dear " & txtName.Text & ", Thanks for your enquiry for IELTS Coaching at ThinkNEXT Technologies Pvt. Ltd., SCF 113, Sector-65, Phase-XI, Mohali (Chandigarh) Call: 7837401000, 7837402000, 7837403000, 7837404000, 0172-4656197 Toll Free : 1800-102-4102 or visit us at www.thinknexttraining.com, One of our representative will get in touch with you soon. To know more about ThinkNEXT and get regular updates on your facebook account regarding placements and other activities, please like us at www.facebook.com/thinknexttechnologies"
                    'varclass.SendSMS(txtMobile.Text, SMS2nd, "Route9")
                    varclass.SendLeadsForIELTS(txtMobile.Text, txtName.Text, txtEmailId.Text, "IELTS (Mohali)", "Arrange a Call Back", "https://thinknexttraining.com/ielts-coaching-institute-mohali.aspx/")

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
    Public Sub SendEmailbroucher()
        ' Dim con As SqlConnection
        Dim var As New Class1()
        Dim msg As New MailMessage()
        msg.From = New MailAddress("info@thinknext.online", "ThinkNext Technologies Pvt. Ltd")
        'msg.From = New MailAddress("support@thinknext.co.in", "ThinkNext Technologies Pvt. Ltd")
        msg.[To].Add(New MailAddress(txtEmailId.Text))
        Dim reader As New StreamReader(Server.MapPath("~/Email6.htm"))

        Dim readFile As String = reader.ReadToEnd()

        Dim StrContent As String = ""

        StrContent = readFile
        StrContent = StrContent.Replace("[MyName]", txtName.Text)
        StrContent = StrContent.Replace("[Course]", "IELTS Coaching")
        'StrContent = StrContent.Replace("[ENO]", Session["admin"].ToString())
        'StrContent = StrContent.Replace("[msg]", lblnewssss.Text)


        Dim altView As AlternateView = AlternateView.CreateAlternateViewFromString(StrContent, Nothing, MediaTypeNames.Text.Html)
        'Dim yourPictureRes As New LinkedResource(Server.MapPath(".") + "//Staff//attachmentemail//ThinknextTraining.png")
        'yourPictureRes.ContentId = "InlineImageID"
        'altView.LinkedResources.Add(yourPictureRes)
        'StrContent = StrContent.Replace("{Url}", altView.ToString())


        'Dim Pictures As New LinkedResource(Server.MapPath(".") + "//images//WHATSAPP+.png")
        'Pictures.ContentId = "ID"
        'altView.LinkedResources.Add(Pictures)
        'StrContent = StrContent.Replace("{IMG}", altView.ToString())




        msg.Subject = "IELTS Coaching"
        msg.Body = StrContent.ToString()
        msg.IsBodyHtml = True
        'Dim fname As String = ""
        'Dim fname1 As String = ""
        'Dim fname2 As String = ""
        'fname1 = Server.MapPath("~/Staff/attachmentemail/thinknext brochure.pdf")
        'fname2 = Server.MapPath("~/Staff/attachmentemail/Thinknext pamphlet.pdf")
        'msg.Attachments.Add(New Attachment(fname1))
        'msg.Attachments.Add(New Attachment(fname2))
        msg.AlternateViews.Add(altView)
        Dim obj As New SmtpClient()
        'obj.Host = "smtp-mail.outlook.com"
        obj.Host = "relay-hosting.secureserver.net"
        'obj.Port = 587
        obj.DeliveryMethod = SmtpDeliveryMethod.Network
        msg.Priority = MailPriority.High
        obj.UseDefaultCredentials = False
        obj.Credentials = New NetworkCredential("info@thinknext.online", "Yahoo456$%^")
        'obj.Credentials = New NetworkCredential("support@thinknext.co.in", "smartbss?")
        'obj.EnableSsl = True
        obj.Timeout = 9999999
        Try
            obj.Send(msg)
            'lblmsg.Visible = True
            'lblmsg.Text = "Dear " + txtNameR.Text + "You have been registered successfully." + " Your Enquiry No is " & Session["admin"].ToString()
            '  ClientScript.RegisterStartupScript(Me.GetType, "alert", "alert('Dear " & txtNameR.Text & " You have been registered successfully ');", True)
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
        'Dim con As SqlConnection
        'Dim varclass As New Class1
        'con = New SqlConnection(varclass.GetConnectionString(varIP))
        'con.Open()

        ''If txtNameR.Text = "" Then
        ''    lblstatus.Text = "Please Enter Name"
        ''    Return
        ''    Exit Sub
        ''End If
        ''If txtContectR.Text = "" Then
        ''    lblstatus.Text = "Please Enter MobileNo"
        ''    Return
        ''    Exit Sub
        ''End If
        ''If txtEmailR.Text = "" Then
        ''    lblstatus.Text = "Enter EmailID"
        ''    Return
        ''    Exit Sub
        ''ElseIf txtEmailR.Text <> "" Then
        ''    Dim pattern As String = "^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$"
        ''    Dim emailAddressMatch As Match = Regex.Match(txtEmailR.Text, pattern)
        ''    If emailAddressMatch.Success = False Then
        ''        lblstatus.Text = "Enter Valid EmailID"
        ''        Return
        ''        Exit Sub
        ''    End If
        ''End If
        'Dim email As String = ""
        ''Dim da As New SqlDataAdapter("select * from Admissions where EmailID='" + txtEmailR.Text + "' and Course='Civil Engineering' ", con)
        ''Dim ds As New DataSet()
        ''da.Fill(ds, "Admissions")
        ''If ds.Tables("Admissions").Rows.Count > 0 Then
        ''    email = ds.Tables("Admissions").Rows(0).Item("EmailID").ToString()
        ''    lblmsg.Visible = True
        ''    lblmsg.Text = "The Person with this EmailID already Registered."
        ''    txtNameR.Text = ""
        ''    txtContectR.Text = ""
        ''    txtEmailR.Text = ""
        ''    txtjob.Text = ""
        ''    Exit Sub
        ''End If

        'If txtdemoEmail.Text <> email Then
        '    AddStudentScholarshipDetail()

        '    'SendEmailReg()
        '    'Dim con As SqlConnection
        '    con = New SqlConnection(varclass.GetConnectionString(varIP))
        '    con.Open()
        '    Dim sql As String
        '    Dim cmd As New SqlCommand



        '    sql = "select distinct FileName from TNTAdminUpload t1 where Srno=(select max(Srno) from TNTAdminUpload) and  Category='NewsEvents' and FranchiseCode='TNK101' and BrandName='THINKNEXT TRAINING'"
        '    Dim daa As SqlDataAdapter = New SqlDataAdapter(sql, con)
        '    Dim dss As DataSet = New DataSet()
        '    daa.Fill(dss, "cs")
        '    If dss.Tables("cs").Rows.Count > 0 Then
        '        'lnknewsandevents.DataSource = ds
        '        'lnknewsandevents.DataBind()
        '        '  lblnewssss.Text = dss.Tables(0).Rows(0)("FileName").ToString()
        '    End If

        '    Dim SMS2nd As String
        '    SMS2nd = "Dear " & txtdemoName.Text & ", Thanks for your registration for free demo class. Venue: ThinkNEXT Technologies Pvt. Ltd., SCF 113, Sector-65, Phase-XI, Mohali (Chandigarh) Call: 7837401000, 7837402000, 7837403000, 7837404000, 0172-4656197 Toll Free : 1800-102-4102 or visit us at www.thinknexttraining.com, One of our representative will get in touch with you soon."
        '    'SMS2nd = "Dear " & txtNameR.Text & ", Thanks for registration for Online Industrial Training Test for Industrial Training. Exam Date: " & lblnewssss.Text & " Timings: 11:00 AM to 4:00 PM Duration: 30 Minutes Venue: ThinkNEXT Technologies Pvt. Ltd., SCF 113, Sector-65, Phase-XI, Mohali (Chandigarh) Call 0172-4656197, 7837401000, 7837402000."
        '    'SMS2nd = SMS2nd & " Venue : ThinkNEXT Technologies Pvt. Ltd., SCF 113, Sector-65, Phase-XI, Mohali (Chandigarh) Call: 0172-4656197, 7837401000, 7837402000. "

        '    ' varclass.SendSMS(txtContectR.Text, Message, "Route11")
        '    varclass.SendSMS(txtdemoMblno.Text, SMS2nd, "Route9")
        '    txtdemoName.Text = ""
        '    txtdemoMblno.Text = ""
        '    txtdemoEmail.Text = ""
        '    txtdemoMsg.Text = ""
        'End If

        AddStudentScholarshipDetail()

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
        sql = "insert into Admissions( Session,EnquiryNo, Admissiondate,StudentName,StudentMobileNo,EmailID,Duration,Course,Comment,ModeOfEnquiry,StatusCode,FranchiseCode,BrandName)values(@Session,@EnquiryNo,@Admissiondate,@StudentName,@StudentMobileNo,@EmailID,@Duration,@Course,@Comment,@ModeOfEnquiry,@StatusCode,@FranchiseCode,@BrandName)"
        Dim cmd As New SqlCommand(sql, con)
        Dim enquiryno As String
        enquiryno = GenEnquirytNo()
        Session("admin") = enquiryno
        cmd.Parameters.AddWithValue("@EnquiryNo", enquiryno)
        cmd.Parameters.AddWithValue("@Admissiondate", Format(Now, "MM/dd/yyyy"))
        cmd.Parameters.AddWithValue("@StudentName", txtdemoName.Text)
        cmd.Parameters.AddWithValue("@StudentMobileNo", txtdemoMblno.Text)
        cmd.Parameters.AddWithValue("@ModeOfEnquiry", "Free Demo Class")
        cmd.Parameters.AddWithValue("@EmailID", txtdemoEmail.Text)
        cmd.Parameters.AddWithValue("@Duration", "Free Demo Class")
        cmd.Parameters.AddWithValue("@Course", txtdemoMsg.Text)
        'cmd.Parameters.AddWithValue("@CollegeName", )
        cmd.Parameters.AddWithValue("@Comment", "Free Demo Class")
        cmd.Parameters.AddWithValue("@StatusCode", "Enquiry")
        cmd.Parameters.AddWithValue("@FranchiseCode", "TNK101")
        cmd.Parameters.AddWithValue("@BrandName", "THINKNEXT TRAINING")
        cmd.Parameters.AddWithValue("@Session", ses)
        cmd.ExecuteNonQuery()
        cmd.Dispose()
        con.Close()
        Label1.Visible = True
        'lblmsg.Text = "Dear " + txtNameR.Text + " you have been registered successfully." + " Your Enquiry No is " & enquiryno
        varclass.SendLeadsForIELTS(txtdemoMblno.Text, txtdemoName.Text, txtdemoEmail.Text, "IELTS Demo Class (Mohali)", txtdemoMsg.Text, "https://thinknexttraining.com/ielts-coaching-institute-mohali.aspx")



        'ClientScript.RegisterStartupScript(Me.GetType, "alert", "alert('Dear " & txtNameR.Text & " You have been registered successfully ');", True)
    End Sub
    Sub SendEmailReg()
        ' Dim con As SqlConnection
        Dim var As New Class1()
        Dim msg As New MailMessage()
        msg.From = New MailAddress("info@thinknext.online", "ThinkNext Technologies Pvt. Ltd")
        'msg.From = New MailAddress("support@thinknext.co.in", "ThinkNext Technologies Pvt. Ltd")
        msg.To.Add(New MailAddress(txtdemoEmail.Text))
        Dim reader As New StreamReader(Server.MapPath("~/Email9.html"))

        Dim readFile As String = reader.ReadToEnd()

        Dim StrContent As String = ""

        StrContent = readFile
        StrContent = StrContent.Replace("[MyName]", txtdemoName.Text)
        StrContent = StrContent.Replace("[ENO]", Session("admin").ToString())
        ' StrContent = StrContent.Replace("[msg]", lblnewssss.Text)


        Dim altView As AlternateView = AlternateView.CreateAlternateViewFromString(StrContent, Nothing, MediaTypeNames.Text.Html)
        'Dim yourPictureRes As New LinkedResource(Server.MapPath(".") + "//Staff//attachmentemail//ThinknextTraining.png")
        'yourPictureRes.ContentId = "InlineImageID"
        'altView.LinkedResources.Add(yourPictureRes)
        'StrContent = StrContent.Replace("{Url}", altView.ToString())


        'Dim Pictures As New LinkedResource(Server.MapPath(".") + "//images//WHATSAPP+.png")
        'Pictures.ContentId = "ID"
        'altView.LinkedResources.Add(Pictures)
        'StrContent = StrContent.Replace("{IMG}", altView.ToString())




        msg.Subject = "Free Demo Class"
        msg.Body = StrContent.ToString()
        msg.IsBodyHtml = True
        'Dim fname As String = ""
        'Dim fname1 As String = ""
        'Dim fname2 As String = ""
        'fname1 = Server.MapPath("~/Staff/attachmentemail/thinknext brochure.pdf")
        'fname2 = Server.MapPath("~/Staff/attachmentemail/Thinknext pamphlet.pdf")
        'msg.Attachments.Add(New Attachment(fname1))
        'msg.Attachments.Add(New Attachment(fname2))
        msg.AlternateViews.Add(altView)
        Dim obj As New SmtpClient()
        'obj.Host = "smtp-mail.outlook.com"
        obj.Host = "info@thinknext.online"
        'obj.Port = "587"
        obj.DeliveryMethod = SmtpDeliveryMethod.Network
        msg.Priority = MailPriority.High
        obj.UseDefaultCredentials = False
        obj.Credentials = New NetworkCredential("info@thinknext.online", "Yahoo456$%^")
        'obj.Credentials = New NetworkCredential("support@thinknext.co.in", "smartbss?")
        'obj.EnableSsl = True
        obj.Timeout = 9999999
        Try
            obj.Send(msg)
            'lblmsg.Visible = True
            'lblmsg.Text = "Dear " + txtNameR.Text + "You have been registered successfully." + " Your Enquiry No is " & Session("admin").ToString()
            '  ClientScript.RegisterStartupScript(Me.GetType, "alert", "alert('Dear " & txtNameR.Text & " You have been registered successfully ');", True)
            Return
        Catch ex As Exception
            Response.Write(ex.Message)
        End Try

    End Sub

    'Function GenEnquirytNo() As String
    '    Dim con As SqlConnection
    '    Dim sql As String
    '    Dim EnquiryNo As Integer
    '    Dim varClass1 As New Class1
    '    con = New SqlConnection(varClass1.GetConnectionString(varIP))
    '    con.Open()
    '    sql = "SELECT MAX(EnquiryNo) AS EnquiryNo FROM  Admissions where FranchiseCode='TNK101' AND BrandName='THINKNEXT TRAINING' "
    '    Dim cmd As New SqlCommand(sql, con)
    '    Dim adp As New SqlDataAdapter(cmd)
    '    Dim ds As New DataSet
    '    adp.Fill(ds, "Admissions")
    '    If ds.Tables("Admissions").Rows.Count > 0 Then
    '        If IsDBNull(ds.Tables("Admissions").Rows(0).Item("EnquiryNo")) = False Then
    '            EnquiryNo = Convert.ToInt32(ds.Tables("Admissions").Rows(0).Item("EnquiryNo"))
    '            EnquiryNo = EnquiryNo + 1
    '        Else
    '            EnquiryNo = 1
    '        End If
    '    End If
    '    Return EnquiryNo
    'End Function
End Class
