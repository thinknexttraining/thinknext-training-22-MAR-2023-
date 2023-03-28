Imports System.Data.SqlClient
Imports System.Data
Imports System.Net
Imports System.IO
Imports System.Data.Sql
Imports System.Text
Imports System.Net.Mime
Imports System.Net.Mail
Imports System.Net.Mail.Attachment
Imports System.Globalization
Imports System.Threading
Partial Class stipend_based_industrial_training
    Inherits System.Web.UI.Page
    Dim varIP As String
    Dim sess As String

    Protected Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
        System.Threading.Thread.Sleep(0)
        Dim con As SqlConnection
        Dim varclass As New Class1
        con = New SqlConnection(varclass.GetConnectionString(varIP))
        con.Open()

        'If txtNameR.Text = "" Then
        '    lblmsg.Visible = True
        '    lblstatus.Text = "Please Enter Name"
        '    Return
        '    Exit Sub
        'End If
        'If txtContectR.Text = "" Then
        '    lblmsg.Visible = True
        '    lblstatus.Text = "Please Enter MobileNo"
        '    Return
        '    Exit Sub
        'End If
        'If txtEmailR.Text = "" Then
        '    lblmsg.Visible = True
        '    lblstatus.Text = "Enter EmailID"
        '    Return
        '    Exit Sub
        'ElseIf txtEmailR.Text <> "" Then
        '    Dim pattern As String = "^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$"
        '    Dim emailAddressMatch As Match = Regex.Match(txtEmailR.Text, pattern)
        '    If emailAddressMatch.Success = False Then
        '        lblmsg.Visible = True
        '        lblstatus.Text = "Enter Valid EmailID"
        '        Return
        '        Exit Sub
        '    End If
        'End If
        Dim email As String = ""
        'Dim da As New SqlDataAdapter("select * from Admissions where EmailID='" + txtEmailR.Text + "' and Course='6 Months Free Industrial Training' ", con)
        'Dim ds As New DataSet()
        'da.Fill(ds, "Admissions")
        'If ds.Tables("Admissions").Rows.Count > 0 Then
        '    email = ds.Tables("Admissions").Rows(0).Item("EmailID").ToString()
        '    lblmsg.Visible = True
        '    lblmsg.Text = "The Person with this EmailID already Registered."
        '    txtNameR.Text = ""
        '    txtContectR.Text = ""
        '    txtEmailR.Text = ""
        '    txtcollege.Text = ""
        '    Exit Sub
        'End If

        If txtEmailR.Text <> email Then

            AddStudentScholarshipDetail()

            SendEmailReg()
            'Dim con As SqlConnection
            con = New SqlConnection(varclass.GetConnectionString(varIP))
            con.Open()
            Dim sql As String
            Dim cmd As New SqlCommand



            sql = "select distinct FileName from TNTAdminUpload t1 where Srno=(select max(Srno) from TNTAdminUpload where Category='NewsEvents') and  Category='NewsEvents' and FranchiseCode='TNK101' and BrandName='THINKNEXT TRAINING'"
            Dim daa As SqlDataAdapter = New SqlDataAdapter(sql, con)
            Dim dss As DataSet = New DataSet()
            daa.Fill(dss, "cs")
            If dss.Tables("cs").Rows.Count > 0 Then
                'lnknewsandevents.DataSource = ds
                'lnknewsandevents.DataBind()
                lblnewssss.Text = dss.Tables(0).Rows(0)("FileName").ToString()
            End If

            Dim SMS2nd As String
            'SMS2nd = "Dear " & txtNameR.Text & ", Thanks for your registration for Scholarship Test for  Free 6 Months Industrial Training "
            If lblweekmonth.Text = "Free 6 Months/6 Weeks" And txtNameR.Text <> "" Then
                SMS2nd = "Dear " & txtNameR.Text & ", Thanks for registration for Stipend based / Free Internship Training. Exam Date: " & lblnewssss.Text & " Timings: 10:00 AM to 5:00 PM Duration: 30 Minutes Venue: ThinkNEXT Technologies Pvt. Ltd., SCF 113, Sector-65, Phase-XI, Mohali (Chandigarh) Call: 7837401000, 7837402000, 7837403000, 7837404000, 0172-4656197 Toll Free : 1800-102-4102 or visit us at www.thinknexttraining.com, One of our representative will get in touch with you soon. To know more about ThinkNEXT and get regular updates on your facebook account regarding placements and other activities, please like us at www.facebook.com/thinknexttechnologies"
            Else
                SMS2nd = "Dear " & txtNameR.Text & ", Thanks for registration for Stipend Based Test for FREE 6 Months/6 Weeks Industrial Training. Exam Date: " & lblnewssss.Text & " Timings: 10:00 AM to 5:00 PM Duration: 30 Minutes Venue: ThinkNEXT Technologies Pvt. Ltd., SCF 113, Sector-65, Phase-XI, Mohali (Chandigarh) Call: 7837401000, 7837402000, 7837403000, 7837404000, 0172-4656197 Toll Free : 1800-102-4102 or visit us at www.thinknexttraining.com, One of our representative will get in touch with you soon. To know more about ThinkNEXT and get regular updates on your facebook account regarding placements and other activities, please like us at www.facebook.com/thinknexttechnologies"
            End If

            'SMS2nd = SMS2nd & " Venue : ThinkNEXT Technologies Pvt. Ltd., SCF 113, Sector-65, Phase-XI, Mohali (Chandigarh) Call: 0172-4656197, 7837401000, 7837402000. "

            ' varclass.SendSMS(txtContectR.Text, Message, "Route11")
            'varclass.SendSMS(txtContectR.Text, SMS2nd, "Route9")

            varclass.SendLeads(txtContectR.Text, txtNameR.Text, txtEmailR.Text, "None", "Register for Internship", "https://www.thinknexttraining.com/internship-in-chandigarh.aspx")
            'lblmsg.Visible = True
            'lblmsg.Text = "Dear + txtNameR.Text +  you have been registered successfully. Your Enquiry No is "
            txtNameR.Text = ""
            txtContectR.Text = ""
            txtEmailR.Text = ""
            'txtcollege.Text = ""

        End If


        ' Dim varclass As New Class1

    End Sub
    Sub SendEmailReg()
        ' Dim con As SqlConnection
        Dim var As New Class1()
        Dim msg As New MailMessage()
        msg.From = New MailAddress("info@thinknext.online", "ThinkNext Technologies Pvt. Ltd")
        'msg.From = New MailAddress("support@thinknext.co.in", "ThinkNext Technologies Pvt. Ltd")
        msg.To.Add(New MailAddress(txtEmailR.Text))
        Dim reader As New StreamReader(Server.MapPath("~/newemail2.html"))

        Dim readFile As String = reader.ReadToEnd()

        Dim StrContent As String = ""
        If lblweekmonth.Text = "Free 6 Months/6 Weeks" And txtNameR.Text <> "" Then
            StrContent = readFile
            StrContent = StrContent.Replace("[MyName]", txtNameR.Text)
            StrContent = StrContent.Replace("[ENO]", Session("admin").ToString())
            StrContent = StrContent.Replace("[msg]", lblnewssss.Text)
        Else
            StrContent = readFile
            StrContent = StrContent.Replace("[MyName]", txtNameR.Text)
            StrContent = StrContent.Replace("[ENO]", Session("admin").ToString())
            StrContent = StrContent.Replace("[msg]", lblnewssss.Text)
        End If



        Dim altView As AlternateView = AlternateView.CreateAlternateViewFromString(StrContent, Nothing, MediaTypeNames.Text.Html)
        If lblweekmonth.Text = "Free 6 Months/6 Weeks" And txtNameR.Text <> "" Then
            'Dim yourPictureRes As New LinkedResource(Server.MapPath(".") + "//Staff//attachmentemail//ThinknextTraining.png")
            'yourPictureRes.ContentId = "InlineImageID"
            'altView.LinkedResources.Add(yourPictureRes)
            'StrContent = StrContent.Replace("{Url}", altView.ToString())


            'Dim Pictures As New LinkedResource(Server.MapPath(".") + "//images//WHATSAPP+.png")
            'Pictures.ContentId = "ID"
            'altView.LinkedResources.Add(Pictures)
            'StrContent = StrContent.Replace("{IMG}", altView.ToString())
        Else
            'Dim yourPictureRes As New LinkedResource(Server.MapPath(".") + "//Staff//attachmentemail//ThinknextTraining.png")
            'yourPictureRes.ContentId = "InlineImageID"
            'altView.LinkedResources.Add(yourPictureRes)
            'StrContent = StrContent.Replace("{Url}", altView.ToString())


            'Dim Pictures As New LinkedResource(Server.MapPath(".") + "//images//WHATSAPP+.png")
            'Pictures.ContentId = "ID"
            'altView.LinkedResources.Add(Pictures)
            'StrContent = StrContent.Replace("{IMG}", altView.ToString())
        End If




        If lblweekmonth.Text = "Free 6 Months/6 Weeks" And txtNameR.Text <> "" Then
            msg.Subject = "Free 6 Months/6 Weeks Industrial Training"
        Else
            msg.Subject = "Stipend Based Industrial Training"
        End If

        msg.Body = StrContent.ToString()
        msg.IsBodyHtml = True
        'Dim fname As String = ""
        'Dim fname1 As String = ""
        'Dim fname2 As String = ""
        'If lblweekmonth.Text = "Free 6 Months/6 Weeks" And txtNameR.Text <> "" Then
        '    fname1 = Server.MapPath("~/Staff/attachmentemail/thinknext brochure.pdf")
        '    fname2 = Server.MapPath("~/Staff/attachmentemail/Thinknext pamphlet.pdf")
        '    msg.Attachments.Add(New Attachment(fname1))
        '    msg.Attachments.Add(New Attachment(fname2))
        'Else
        '    fname1 = Server.MapPath("//Staff/attachmentemail/thinknext brochure.pdf")
        '    fname2 = Server.MapPath("//Staff/attachmentemail/Thinknext pamphlet.pdf")
        '    msg.Attachments.Add(New Attachment(fname1))
        '    msg.Attachments.Add(New Attachment(fname2))
        ' End If

        msg.AlternateViews.Add(altView)
        Dim obj As New SmtpClient()
        'obj.Host = "smtp-mail.outlook.com"
        obj.Host = "relay-hosting.secureserver.net"
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
    'Function Session12() As String
    '    Dim sql As String = Nothing
    '    Dim con As SqlConnection
    '    Dim varClass1 As New Class1
    '    con = New SqlConnection(varClass1.GetConnectionString(varIP))
    '    con.Open()
    '    sql = "select * from MasterSession order by sessionid desc "
    '    Dim cmd As New SqlCommand(sql, con)
    '    Dim da As New SqlDataAdapter(cmd)
    '    Dim ds As New DataSet()
    '    da.Fill(ds, "MasterSession")
    '    Dim session As String
    '    session = Convert.ToInt32(ds.Tables("MasterSession").Rows(0).Item("Session"))
    '    Return session
    'End Function
    Sub AddStudentScholarshipDetail()
        Dim varclass As New Class1
        Dim con As SqlConnection
        con = New SqlConnection(varclass.GetConnectionString(varIP))
        con.Open()
        Dim sql As String
        Dim cultureInfo As CultureInfo = Thread.CurrentThread.CurrentCulture
        Dim objTextInfo As TextInfo = cultureInfo.TextInfo
        txtNameR.Text = objTextInfo.ToTitleCase(txtNameR.Text)
        txtcollege.Text = objTextInfo.ToTitleCase(txtcollege.Text)
        Dim ses As String
        ses = varclass.Session12(sess)
        sql = "insert into Admissions( Session,EnquiryNo, Admissiondate,StudentName,StudentMobileNo,EmailID,Duration,ModeOfEnquiry,StatusCode,FranchiseCode,BrandName,EnquiryStatus)values(@Session,@EnquiryNo,@Admissiondate,@StudentName,@StudentMobileNo,@EmailID,@Duration,@ModeOfEnquiry,@StatusCode,@FranchiseCode,@BrandName,@EnquiryStatus)"
        Dim cmd As New SqlCommand(sql, con)
        If lblweekmonth.Text = "Free 6 Months/6 Weeks" And txtNameR.Text <> "" Then
            Dim enquiryno As String
            enquiryno = GenEnquirytNo()
            Session("admin") = enquiryno

            cmd.Parameters.AddWithValue("@EnquiryNo", enquiryno)
            cmd.Parameters.AddWithValue("@Admissiondate", Format(Now, "MM/dd/yyyy"))
        Else
            Dim enquiryno As String
            enquiryno = GenEnquirytNo()
            Session("admin") = enquiryno

            cmd.Parameters.AddWithValue("@EnquiryNo", enquiryno)
            cmd.Parameters.AddWithValue("@Admissiondate", Format(Now, "MM/dd/yyyy"))
        End If

        If lblweekmonth.Text = "Free 6 Months/6 Weeks" And txtNameR.Text <> "" Then
            cmd.Parameters.AddWithValue("@StudentName", txtNameR.Text)
        Else
            cmd.Parameters.AddWithValue("@StudentName", txtNameR.Text)
        End If

        If lblweekmonth.Text = "Free 6 Months/6 Weeks" And txtNameR.Text <> "" Then
            cmd.Parameters.AddWithValue("@StudentMobileNo", txtContectR.Text)
        Else
            cmd.Parameters.AddWithValue("@StudentMobileNo", txtContectR.Text)
        End If

        If lblweekmonth.Text = "Free 6 Months/6 Weeks" And txtNameR.Text <> "" Then
            cmd.Parameters.AddWithValue("@ModeOfEnquiry", "Free Training")
        Else
            cmd.Parameters.AddWithValue("@ModeOfEnquiry", "Stipend Based Training")
        End If
        cmd.Parameters.AddWithValue("@EmailID", txtEmailR.Text)
        If lblweekmonth.Text = "Free 6 Months/6 Weeks" And txtNameR.Text <> "" Then
            cmd.Parameters.AddWithValue("@Duration", "Free Training")
        Else
            cmd.Parameters.AddWithValue("@Duration", "Stipend Based Training")
        End If
        'If lblweekmonth.Text = "Free 6 Months/6 Weeks" And txtNameR.Text <> "" Then
        '    cmd.Parameters.AddWithValue("@Course", "Free Training")
        'Else
        '    cmd.Parameters.AddWithValue("@Course", "Stipend Based Training")
        'End If


        'cmd.Parameters.AddWithValue("@CollegeName", txtcollege.Text)
        'If lblweekmonth.Text = "Free 6 Months/6 Weeks" And txtNameR.Text <> "" Then
        '    cmd.Parameters.AddWithValue("@Comment", "Free Training")
        'Else
        '    cmd.Parameters.AddWithValue("@Comment", "Stipend Based Training")
        'End If

        cmd.Parameters.AddWithValue("@StatusCode", "Enquiry")
        cmd.Parameters.AddWithValue("@FranchiseCode", "TNK101")
        cmd.Parameters.AddWithValue("@BrandName", "THINKNEXT TRAINING")
        cmd.Parameters.AddWithValue("@Session", ses)
        cmd.Parameters.AddWithValue("@EnquiryStatus", "Open")
        cmd.ExecuteNonQuery()
        cmd.Dispose()
        con.Close()
        If lblweekmonth.Text = "Free 6 Months/6 Weeks" And txtNameR.Text <> "" Then
            lblmsg.Visible = True
            lblmsg.Text = "Dear " + txtNameR.Text + " you have been registered successfully."
        Else
            lblmsg.Visible = True
            lblmsg.Text = "Dear " + txtNameR.Text + " you have been registered successfully."
        End If




        'ClientScript.RegisterStartupScript(Me.GetType, "alert", "alert('Dear " & txtNameR.Text & " You have been registered successfully ');", True)
    End Sub
    Function GenEnquirytNo() As String
        Dim con As SqlConnection
        Dim sql As String
        Dim EnquiryNo As Integer
        Dim varClass1 As New Class1
        con = New SqlConnection(varClass1.GetConnectionString(varIP))
        con.Open()
        sql = "SELECT MAX(EnquiryNo) AS EnquiryNo FROM  Admissions where FranchiseCode='TNK101' AND BrandName='THINKNEXT TRAINING' "
        Dim cmd As New SqlCommand(sql, con)
        Dim adp As New SqlDataAdapter(cmd)
        Dim ds As New DataSet
        adp.Fill(ds, "Admissions")
        If ds.Tables("Admissions").Rows.Count > 0 Then
            If IsDBNull(ds.Tables("Admissions").Rows(0).Item("EnquiryNo")) = False Then
                EnquiryNo = Convert.ToInt32(ds.Tables("Admissions").Rows(0).Item("EnquiryNo"))
                EnquiryNo = EnquiryNo + 1
            Else
                EnquiryNo = 1
            End If
        End If
        Return EnquiryNo
    End Function

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        If Not IsPostBack Then
            Dim script As String = "$(document).ready(function () { $('[id*=btnSubmit]').click(); });"
            ClientScript.RegisterStartupScript(Me.GetType, "load", script, True)
        End If
        Dim con As SqlConnection
        Dim varclass As New Class1
        con = New SqlConnection(varclass.GetConnectionString(varIP))
        con.Open()
        Dim sql As String
        Dim cmd As New SqlCommand



        sql = "select distinct FileName from TNTAdminUpload t1 where Srno=(select max(Srno) from TNTAdminUpload where Category='NewsEvents') and  Category='NewsEvents' and FranchiseCode='TNK101' and BrandName='THINKNEXT TRAINING'"
        Dim daa As SqlDataAdapter = New SqlDataAdapter(sql, con)
        Dim dss As DataSet = New DataSet()
        daa.Fill(dss, "cs")
        If dss.Tables("cs").Rows.Count > 0 Then
            'lnknewsandevents.DataSource = ds
            'lnknewsandevents.DataBind()
            lblnewssss.Text = dss.Tables(0).Rows(0)("FileName").ToString()
        End If
        lblmsg.Visible = False
    End Sub
End Class
