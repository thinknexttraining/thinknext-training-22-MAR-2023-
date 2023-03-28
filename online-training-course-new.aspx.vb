Imports System.Collections
Imports System.Configuration
Imports System.Data
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
Imports System.Threading
Imports System.Net.Mail.Attachment
Imports System.Globalization
Partial Class digital_marketing_course_training_in_chandigarh
    Inherits System.Web.UI.Page
    Dim varIP As String
    Dim sess As String
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
    Protected Sub btnsubmit_Click(sender As Object, e As EventArgs) Handles btnsubmit.Click
        System.Threading.Thread.Sleep(0)

        insert()
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
                    sql = ("insert into Admissions (EnquiryNo,StudentName,EmailID,StudentMobileNo,Course,ModeOfEnquiry,StatusCode,Session,FranchiseCode,BrandName,Admissiondate) values('" + enquiryno + "','" + txtName.Text + "','" + txtEmailId.Text + "','" + txtMobile.Text + "','" + "Online Training Course" + "','" + "Online Training Course" + "','" + "Enquiry" + "','" + ses + "','" + "TNK101" + "','" + "THINKNEXT TRAINING" + "',@Admissiondate)")
                    Dim cmd As New SqlCommand(sql, con)
                    cmd.Parameters.AddWithValue("@Admissiondate", Format(Now, "MM/dd/yyyy"))
                    cmd.ExecuteNonQuery()
                    cmd.Dispose()
                    con.Close()

                    ' SendEmailbroucher()
                    'Dim SMS2nd As String
                    ' SMS2nd = "Dear " & txtName.Text & ", Thanks for your enquiry for Online Training at ThinkNEXT Technologies Pvt. Ltd., SCF 113, Sector-65, Phase-XI, Mohali (Chandigarh) Call: 7837401000, 7837402000, 7837403000, 7837404000, 0172-4656197 Toll Free : 1800-102-4102 or visit us at www.thinknexttraining.com, One of our representative will get in touch with you soon.  To know more about ThinkNEXT and get regular updates on your facebook account regarding placements and other activities, please like us at www.facebook.com/thinknexttechnologies"
                    'varclass.SendSMS(txtMobile.Text, SMS2nd, "Route9")
                    varclass.SendLeads(txtMobile.Text, txtName.Text, txtEmailId.Text, "None", "Arrange a Call Back", "https://www.thinknexttraining.com/online-training-course-new.aspx")
                    lblmsg.Visible = True
                    lblmsg.ForeColor = Drawing.Color.Red
                    lblmsg.Text = "Thanks for your Enquiry at ThinkNEXT Technologies Pvt. Ltd."
                    txtName.Text = ""
                    txtEmailId.Text = ""
                    txtMobile.Text = ""


                    ' ScriptManager.RegisterStartupScript(Me, Me.[GetType](), "alertmessage", "javascript:alert('Submit Successfully')", True)
                    Response.Redirect("thanks.html")
                End If
            End If
        End If
    End Sub

    Public Sub SendEmailbroucher()
        ' Dim con As SqlConnection
        Dim var As New Class1()
        Dim msg As New MailMessage()
        'msg.From = New MailAddress(info@thinknext.online", "ThinkNext Technologies Pvt. Ltd")
        msg.From = New MailAddress("training@thinknext.co.in", "ThinkNext Technologies Pvt. Ltd")
        msg.[To].Add(New MailAddress(txtEmailId.Text))
        Dim reader As New StreamReader(Server.MapPath("~/Email6.htm"))

        Dim readFile As String = reader.ReadToEnd()

        Dim StrContent As String = ""

        StrContent = readFile
        StrContent = StrContent.Replace("[MyName]", txtName.Text)
        StrContent = StrContent.Replace("[Course]", "Online Training Course")
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




        msg.Subject = "Online Training Course"
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
        'obj.Credentials = New NetworkCredential("info@thinknext.online", "Yahoo456$%^")
        obj.Credentials = New NetworkCredential("training@thinknext.co.in", "SmartIndia345#$%")
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

    Protected Sub Btndemo_Click(sender As Object, e As EventArgs) Handles Btndemo.Click
        System.Threading.Thread.Sleep(0)
        Dim con As SqlConnection
        Dim varclass As New Class1
        con = New SqlConnection(varclass.GetConnectionString(varIP))
        con.Open()

        'If txtNameR.Text = "" Then
        '    lblstatus.Text = "Please Enter Name"
        '    Return
        '    Exit Sub
        'End If
        'If txtContectR.Text = "" Then
        '    lblstatus.Text = "Please Enter MobileNo"
        '    Return
        '    Exit Sub
        'End If
        'If txtEmailR.Text = "" Then
        '    lblstatus.Text = "Enter EmailID"
        '    Return
        '    Exit Sub
        'ElseIf txtEmailR.Text <> "" Then
        '    Dim pattern As String = "^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$"
        '    Dim emailAddressMatch As Match = Regex.Match(txtEmailR.Text, pattern)
        '    If emailAddressMatch.Success = False Then
        '        lblstatus.Text = "Enter Valid EmailID"
        '        Return
        '        Exit Sub
        '    End If
        'End If
        Dim email As String = ""
        'Dim da As New SqlDataAdapter("select * from Admissions where EmailID='" + txtEmailR.Text + "' and Course='Civil Engineering' ", con)
        'Dim ds As New DataSet()
        'da.Fill(ds, "Admissions")
        'If ds.Tables("Admissions").Rows.Count > 0 Then
        '    email = ds.Tables("Admissions").Rows(0).Item("EmailID").ToString()
        '    lblmsg.Visible = True
        '    lblmsg.Text = "The Person with this EmailID already Registered."
        '    txtNameR.Text = ""
        '    txtContectR.Text = ""
        '    txtEmailR.Text = ""
        '    txtjob.Text = ""
        '    Exit Sub
        'End If

        If txtdemoEmail.Text <> email Then
            AddStudentScholarshipDetail()

            'SendEmailReg()
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

            'Dim SMS2nd As String
            ' SMS2nd = "Dear " & txtdemoName.Text & ", Thanks for your registration for free demo class. Venue: ThinkNEXT Technologies Pvt. Ltd., SCF 113, Sector-65, Phase-XI, Mohali (Chandigarh) Call: 7837401000, 7837402000, 7837403000, 7837404000, 0172-4656197 Toll Free : 1800-102-4102 or visit us at www.thinknexttraining.com, One of our representative will get in touch with you soon."
            'SMS2nd = "Dear " & txtNameR.Text & ", Thanks for registration for Online Industrial Training Test for Industrial Training. Exam Date: " & lblnewssss.Text & " Timings: 11:00 AM to 4:00 PM Duration: 30 Minutes Venue: ThinkNEXT Technologies Pvt. Ltd., SCF 113, Sector-65, Phase-XI, Mohali (Chandigarh) Call 0172-4656197, 7837401000, 7837402000."
            'SMS2nd = SMS2nd & " Venue : ThinkNEXT Technologies Pvt. Ltd., SCF 113, Sector-65, Phase-XI, Mohali (Chandigarh) Call: 0172-4656197, 7837401000, 7837402000. "

            ' varclass.SendSMS(txtContectR.Text, Message, "Route11")
            'varclass.SendSMS(txtdemoMblno.Text, SMS2nd, "Route9")
            varclass.SendLeads(txtdemoMblno.Text, txtdemoName.Text, txtdemoEmail.Text, "None", "Demo Class", "https://www.thinknexttraining.com/online-training-course-new.aspx")
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
        Label1.Text = "Dear " + txtdemoName.Text + " you have been registered successfully."



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
    Sub AddStudentDetailScholar()
        Dim varclass As New Class1
        Dim con As SqlConnection
        con = New SqlConnection(varclass.GetConnectionString(varIP))
        con.Open()
        Dim sql As String
        Dim cultureInfo As CultureInfo = Thread.CurrentThread.CurrentCulture
        Dim objTextInfo As TextInfo = cultureInfo.TextInfo
        If txtNameScholar.Text <> "" Then
            txtNameScholar.Text = objTextInfo.ToTitleCase(txtNameScholar.Text)
            txtCoursesScholar.Text = objTextInfo.ToTitleCase(txtCoursesScholar.Text)
            'sql = "insert into Admissions( Session,EnquiryNo, Admissiondate,StudentName,StudentMobileNo,EmailID,Course,Comment,ModeOfEnquiry,StatusCode,FranchiseCode,BrandName,EnquiryStatus)values(@Session,@EnquiryNo,@Admissiondate,@StudentName,@StudentMobileNo,@EmailID,@Course,@Comment,@ModeOfEnquiry,@StatusCode,@FranchiseCode,@BrandName,@EnquiryStatus)"
            sql = "insert into Admissions( Session,EnquiryNo, Admissiondate,StudentName,StudentMobileNo,EmailID,Course,ModeOfEnquiry,StatusCode,FranchiseCode,BrandName,EnquiryStatus)values(@Session,@EnquiryNo,@Admissiondate,@StudentName,@StudentMobileNo,@EmailID,@Course,@ModeOfEnquiry,@StatusCode,@FranchiseCode,@BrandName,@EnquiryStatus)"
            Dim cmd As New SqlCommand(sql, con)
            Dim enquiryno As String
            enquiryno = GenEnquirytNo()
            Session("Admisn") = enquiryno
            Dim ses As String
            ses = varclass.Session12(sess)
            cmd.Parameters.AddWithValue("@EnquiryNo", enquiryno)
            cmd.Parameters.AddWithValue("@Admissiondate", Format(Now, "MM/dd/yyyy"))
            cmd.Parameters.AddWithValue("@StudentName", txtNameScholar.Text)
            cmd.Parameters.AddWithValue("@StudentMobileNo", txtMobileScholar.Text)
            cmd.Parameters.AddWithValue("@ModeOfEnquiry", "Scholarship for Online Course")
            cmd.Parameters.AddWithValue("@EmailID", txtEmailIdScholar.Text)
            ' cmd.Parameters.AddWithValue("@Duration", ddlTrainingType.Text)
            '  cmd.Parameters.AddWithValue("@CollegeName", txtCollege.Text)
            cmd.Parameters.AddWithValue("@Course", txtCoursesScholar.Text)
            'cmd.Parameters.AddWithValue("@Comment", txtComments.Text)
            cmd.Parameters.AddWithValue("@StatusCode", "Enquiry")
            cmd.Parameters.AddWithValue("@FranchiseCode", "TNK101")
            cmd.Parameters.AddWithValue("@BrandName", "THINKNEXT TRAINING")
            cmd.Parameters.AddWithValue("@Session", ses)
            cmd.Parameters.AddWithValue("@EnquiryStatus", "Open")
            cmd.ExecuteNonQuery()
            cmd.Dispose()
            con.Close()
        ElseIf txtNameScholar.Text <> "" Then
            txtNameScholar.Text = objTextInfo.ToTitleCase(txtNameScholar.Text)
            ' txtCourses2.Text = objTextInfo.ToTitleCase(txtCourses2.Text)
            ' sql = "insert into Admissions( Session,EnquiryNo, Admissiondate,StudentName,StudentMobileNo,EmailID,Course,CollegeName,ModeOfEnquiry,StatusCode,FranchiseCode,BrandName,EnquiryStatus)values(@Session,@EnquiryNo,@Admissiondate,@StudentName,@StudentMobileNo,@EmailID,@Course,@CollegeName,@ModeOfEnquiry,@StatusCode,@FranchiseCode,@BrandName,@EnquiryStatus)"
            sql = "insert into Admissions( Session,EnquiryNo, Admissiondate,StudentName,StudentMobileNo,EmailID,Course,ModeOfEnquiry,StatusCode,FranchiseCode,BrandName,EnquiryStatus)values(@Session,@EnquiryNo,@Admissiondate,@StudentName,@StudentMobileNo,@EmailID,@Course,@ModeOfEnquiry,@StatusCode,@FranchiseCode,@BrandName,@EnquiryStatus)"
            Dim cmd As New SqlCommand(sql, con)
            Dim enquiryno As String
            enquiryno = GenEnquirytNo()
            Session("Admisn") = enquiryno
            Dim ses As String
            ses = varclass.Session12(sess)
            cmd.Parameters.AddWithValue("@EnquiryNo", enquiryno)
            cmd.Parameters.AddWithValue("@Admissiondate", Format(Now, "MM/dd/yyyy"))
            cmd.Parameters.AddWithValue("@StudentName", txtNameScholar.Text)
            cmd.Parameters.AddWithValue("@StudentMobileNo", txtMobileScholar.Text)
            cmd.Parameters.AddWithValue("@ModeOfEnquiry", "Scholarship for Online Course")
            cmd.Parameters.AddWithValue("@Course", txtCoursesScholar.Text)
            'cmd.Parameters.AddWithValue("@CollegeName", txtCollege.Text)
            cmd.Parameters.AddWithValue("@EmailID", txtEmailIdScholar.Text)
            ' cmd.Parameters.AddWithValue("@Duration", ddlTrainingType.Text)
            '  cmd.Parameters.AddWithValue("@CollegeName", txtCollege.Text)
            ' cmd.Parameters.AddWithValue("@Course", txtCourses2.Text)
            ' cmd.Parameters.AddWithValue("@Comment", txtComments1.Text)
            cmd.Parameters.AddWithValue("@StatusCode", "Enquiry")
            cmd.Parameters.AddWithValue("@FranchiseCode", "TNK101")
            cmd.Parameters.AddWithValue("@BrandName", "THINKNEXT TRAINING")
            cmd.Parameters.AddWithValue("@Session", ses)
            cmd.Parameters.AddWithValue("@EnquiryStatus", "Open")
            cmd.ExecuteNonQuery()
            cmd.Dispose()
            con.Close()
        End If
    End Sub
    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim varclass As New Class1
        lblmessgaelogin.Text = ""
        If txtNameScholar.Text = "" Then
            Label4.Visible = True
            Label4.ForeColor = Drawing.Color.Red
            Label4.Text = "Name field cannot be blank."
            Exit Sub
        End If
        If txtMobileScholar.Text = "" Then
            Label4.Visible = True
            Label4.ForeColor = Drawing.Color.Red
            Label4.Text = "Mobile Number field cannot be blank."
            Exit Sub
        End If
        If txtEmailIdScholar.Text = "" Then
            Label4.Visible = True
            Label4.ForeColor = Drawing.Color.Red
            Label4.Text = "Email ID field cannot be blank."
            Exit Sub
        End If
        'If txtCollege.Text = "" Then
        '    Label4.Visible = True
        '    Label4.ForeColor = Drawing.Color.Red
        '    Label4.Text = "CollegeName field cannot be blank."
        '    Exit Sub
        'End If
        If txtCoursesScholar.Text = "" Then
            Label4.Visible = True
            Label4.ForeColor = Drawing.Color.Red
            Label4.Text = "Course field cannot be blank."
            Exit Sub
        End If

        ' Add Fake Delay to simulate long running process.
        System.Threading.Thread.Sleep(0)
        If txtNameScholar.Text <> "" Then

        End If
        AddStudentDetailScholar()
        SendEmailWithAttachment()
        '--------------------------------------
        'Dim Message As String
        'Message = "Dear " & txtName.Text & ", " & ddlTrainingType.SelectedValue & " Industrial Training in ISO Certified Software Company"
        'Message = Message & " for iPhone, Android, .Net, Java, PHP, CCNA, MCITP. Please visit ThinkNEXT Technologies Pvt. Ltd"
        'Message = Message & " S.C.F 113, Phase-XI, Mohali(Chd) www.thinknext.co.in, www.thinknexttraining.com Contact: 9815994197,7837433594"
        '-----------------------------------------
        ' Dim SMS2nd As String
        ' SMS2nd = "Congratulations!!! " & txtNameScholar.Text & ", You have been registered successfully for scholarship at"
        ' SMS2nd = SMS2nd & " ThinkNEXT Technologies Pvt. Ltd. S.C.F 113, Sector-65, Mohali (Chandigarh)"
        ' SMS2nd = SMS2nd & " Call: 7837401000, 7837402000, 7837403000, 7837404000, 0172-4656197 Toll Free : 1800-102-4102 or visit us at www.thinknexttraining.com, One of our representative will get in touch with you soon. To know more about ThinkNEXT and get regular updates on your facebook account regarding placements and other activities, please like us at www.facebook.com/thinknexttechnologies"
        ' varclass.SendSMS(txtMobileScholar.Text, SMS2nd, "Route9")
        'varclass.SendWhatsappPdf(txtMobileScholar.Text, "http://thinknexttraining.com/csebrochure.pdf", "whatsapppdf")
        'varclass.SendWhatsappimage(txtMobileScholar.Text, "http://thinknexttraining.com/awardphoto.jpg", "whatsappimg")
        Dim whatsappmsg As String
        whatsappmsg = "Congratulations!!! " & txtNameScholar.Text & ", You have been registered successfully for scholarship for Online Course at ThinkNEXT Technologies Pvt. Ltd. S.C.F 113, Sector-65, Mohali (Chandigarh)"
        varclass.SendWhatsappmsg(txtMobileScholar.Text, whatsappmsg, "whatsappmsg")

        '------------------------------------------------
        '   varclass.SendSMS(txtMobile.Text, Message, "Route11")
        '    lblmsg.Text = "You are Successfully Registered and your Enquiry no is:" + Session("Admisn").ToString()
        'Response.Write("<script language='javascript'>window.alert('You are Successfully Registered and your Enquiry no is:'" & Session("Admisn").ToString() & "');</script>")
        '------------------------------------------------------------------------
        Label4.Visible = True
        Label4.ForeColor = Drawing.Color.White
        Label4.Text = "Thanks for your Enquiry at ThinkNEXT Technologies"
        '  Response.AppendHeader("Refresh", "5")
        'Button3_Click(sender, e)
        txtNameScholar.Text = ""
        txtMobileScholar.Text = ""
        txtEmailIdScholar.Text = ""
        'txtCollege.Text = ""
        txtCoursesScholar.Text = ""
        Response.Redirect("thanks.html")
    End Sub
    Sub SendEmailWithAttachment()
        ' Dim con As SqlConnection
        Dim var As New Class1()
        Dim msg As New MailMessage()
        'msg.From = New MailAddress("thinknextsmart@gmail.com", "ThinkNext Technologies Pvt. Ltd")
        msg.From = New MailAddress("training@thinknext.co.in", "ThinkNext Technologies Pvt. Ltd")
        'msg.From = New MailAddress("info@thinknext.online", "ThinkNext Technologies Pvt. Ltd")
        If txtEmailIdScholar.Text <> "" Then
            msg.To.Add(New MailAddress(txtEmailIdScholar.Text))
            'ElseIf txtEmailId1.Text <> "" Then
            '    msg.To.Add(New MailAddress(txtEmailId1.Text))
        End If

        Dim reader As New StreamReader(Server.MapPath("~/Email6.htm"))

        Dim readFile As String = reader.ReadToEnd()

        Dim StrContent As String = ""

        StrContent = readFile
        If txtNameScholar.Text <> "" Then
            StrContent = StrContent.Replace("[MyName]", txtNameScholar.Text)
            'ElseIf txtName1.Text <> "" Then
            '    StrContent = StrContent.Replace("[MyName]", txtName1.Text)
        End If
        If txtCoursesScholar.Text <> "" Then
            StrContent = StrContent.Replace("[Course]", txtCoursesScholar.Text)
            'ElseIf txtCourses2.Text <> "" Then
            '    StrContent = StrContent.Replace("[Course]", txtCourses2.Text)

        End If

        StrContent = StrContent.Replace("[ENO]", Session("Admisn").ToString())


        Dim altView As AlternateView = AlternateView.CreateAlternateViewFromString(StrContent, Nothing, MediaTypeNames.Text.Html)
        'Dim yourPictureRes As New LinkedResource(Server.MapPath(".") + "//Staff//attachmentemail//ThinknextTraining.png")
        'yourPictureRes.ContentId = "InlineImageID"
        'altView.LinkedResources.Add(yourPictureRes)
        'StrContent = StrContent.Replace("{Url}", altView.ToString())


        'Dim Pictures As New LinkedResource(Server.MapPath(".") + "//images//WHATSAPP+.png")
        'Pictures.ContentId = "ID"
        'altView.LinkedResources.Add(Pictures)
        'StrContent = StrContent.Replace("{IMG}", altView.ToString())

        'If ddlTrainingType.Text Is "6 Weeks" Then
        '    msg.Subject = "6 Weeks Industrial Training with Part-Time Job Offer and Free spoken English and PD"
        '    msg.Body = StrContent.ToString()
        '    msg.IsBodyHtml = True
        '    'Dim fname As String = ""
        '    Dim fname1 As String = ""
        '    Dim fname2 As String = ""
        '    fname1 = Server.MapPath("~/Staff/attachmentemail/thinknext brochure.pdf")
        '    fname2 = Server.MapPath("~/Staff/attachmentemail/Thinknext pamphlet.pdf")
        '    msg.Attachments.Add(New Attachment(fname1))
        '    msg.Attachments.Add(New Attachment(fname2))
        '    msg.AlternateViews.Add(altView)

        'ElseIf ddlTrainingType.Text Is "6 Months" Then
        '    msg.Subject = "6 Months Industrial Training with Part-Time Job Offer and Free spoken English and PD"
        '    msg.Body = StrContent.ToString()
        '    msg.IsBodyHtml = True
        '    'Dim fname As String = ""
        '    Dim fname1 As String = ""
        '    Dim fname2 As String = ""
        '    fname1 = Server.MapPath("~/Staff/attachmentemail/thinknext brochure.pdf")
        '    fname2 = Server.MapPath("~/Staff/attachmentemail/Thinknext pamphlet.pdf")
        '    'msg.Attachments.Add(New Attachment(fname))
        '    msg.Attachments.Add(New Attachment(fname1))
        '    msg.Attachments.Add(New Attachment(fname2))
        '    msg.AlternateViews.Add(altView)

        'ElseIf ddlTrainingType.Text Is "2 Months" Then
        '    msg.Subject = "2 Months Industrial Training with Part-Time Job Offer and Free spoken English and PD"
        '    msg.Body = StrContent.ToString()
        '    msg.IsBodyHtml = True
        '    'Dim fname As String = ""
        '    Dim fname1 As String = ""
        '    Dim fname2 As String = ""
        '    fname1 = Server.MapPath("~/Staff/attachmentemail/thinknext brochure.pdf")
        '    fname2 = Server.MapPath("~/Staff/attachmentemail/Thinknext pamphlet.pdf")
        '    'msg.Attachments.Add(New Attachment(fname))
        '    msg.Attachments.Add(New Attachment(fname1))
        '    msg.Attachments.Add(New Attachment(fname2))
        '    msg.AlternateViews.Add(altView)

        'ElseIf ddlTrainingType.Text Is "3 Months" Then
        '    msg.Subject = "3 Months Industrial Training with Part-Time Job Offer and Free spoken English and PD"
        '    msg.Body = StrContent.ToString()
        '    msg.IsBodyHtml = True
        '    'Dim fname As String = ""
        '    Dim fname1 As String = ""
        '    Dim fname2 As String = ""
        '    fname1 = Server.MapPath("~/Staff/attachmentemail/thinknext brochure.pdf")
        '    fname2 = Server.MapPath("~/Staff/attachmentemail/Thinknext pamphlet.pdf")
        '    'msg.Attachments.Add(New Attachment(fname))
        '    msg.Attachments.Add(New Attachment(fname1))
        '    msg.Attachments.Add(New Attachment(fname2))
        'msg.AlternateViews.Add(altView)

        ' Else
        msg.Subject = "ThinkNEXT Technologies Pvt. Ltd"
        msg.Body = StrContent.ToString()
        msg.IsBodyHtml = True
        ' Dim fname As String = ""
        'Dim fname1 As String = ""
        'Dim fname2 As String = ""
        'fname = Server.MapPath("~/Staff/attachmentemail/6 MONTHS CSE ECE IT ME.pdf")
        'fname1 = Server.MapPath("~/Staff/attachmentemail/thinknext brochure.pdf")
        'fname2 = Server.MapPath("~/Staff/attachmentemail/Thinknext pamphlet.pdf")
        'msg.Attachments.Add(New Attachment(fname))
        'msg.Attachments.Add(New Attachment(fname1))
        'msg.Attachments.Add(New Attachment(fname2))
        'msg.AlternateViews.Add(altView)

        'End If
        Dim obj As New SmtpClient()
        ' obj.Host = "smtp-mail.outlook.com"
        obj.Host = "relay-hosting.secureserver.net"
        'obj.Host = "smtp.gmail.com"
        'obj.Port = "587"
        obj.DeliveryMethod = SmtpDeliveryMethod.Network
        msg.Priority = MailPriority.High
        obj.UseDefaultCredentials = False
        'obj.Credentials = New NetworkCredential("thinknextsmart@gmail.com", "smartthink")
        obj.Credentials = New NetworkCredential("training@thinknext.co.in", "SmartIndia345#$%")
        'obj.Credentials = New NetworkCredential("info@thinknext.online", "Yahoo456$%^")
        'obj.Credentials = New NetworkCredential("support@thinknext.co.in", "smartbss?")
        ' obj.EnableSsl = True
        obj.Timeout = 9999999
        Try
            obj.Send(msg)
            'If txtName.Text <> "" Then
            '    ClientScript.RegisterStartupScript(Me.GetType, "alert", "alert('Dear " & txtName.Text & " You have been registered successfully and your Enquiry no is:" + Session("Admisn").ToString() + "');", True)
            'ElseIf txtName1.Text <> "" Then
            '    ClientScript.RegisterStartupScript(Me.GetType, "alert", "alert('Dear " & txtName.Text & " You have been registered successfully and your Enquiry no is:" + Session("Admisn").ToString() + "');", True)

            'End If
            Return
        Catch ex As Exception
            Response.Write(ex.Message)
        End Try

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
End Class
