﻿Imports System.Data.SqlClient
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
Imports System.Web.UI.WebControls
Imports System.Web.UI
Imports System.Drawing
Imports System.Text.RegularExpressions


Partial Class MasterPage2
    Inherits System.Web.UI.MasterPage
    Dim varIP As String
    Private _lnknews1 As Object
    Dim sess As String
    Protected Sub txtName1_TextChanged(sender As Object, e As EventArgs) Handles txtName1.TextChanged
        If Not Regex.Match(txtName1.Text, "(^[a-z ]*$)", RegexOptions.IgnoreCase).Success Then 'Only Letters
            Label4.Visible = True
            Label4.Text = "Please Enter Name Characters Only!" 'Inform User
            txtName1.Focus() 'Return Focus
            txtName1.Text = ""
            'NameValid = False 'Boolean = False
        Else
            ' NameValid = True 'Everything Fine
        End If
    End Sub



    Protected Sub txtMobile1_TextChanged(sender As Object, e As EventArgs) Handles txtMobile1.TextChanged
        If Not Regex.Match(txtMobile1.Text, "(^[1-9][0-9](\s){0,1}(\-){0,1}(\s){0,1}[0-9]{1}[0-9]{7}$)", RegexOptions.IgnoreCase).Success Then 'Only Letters
            Label4.Visible = True
            Label4.Text = "Please Enter Valid Mobile Number Only!" 'Inform User
            txtMobile1.Focus() 'Return Focus
            txtMobile1.Text = ""
            'NameValid = False 'Boolean = False
        Else
            ' NameValid = True 'Everything Fine
        End If
    End Sub



    Protected Sub txtEmailId1_TextChanged(sender As Object, e As EventArgs) Handles txtEmailId1.TextChanged
        If Not Regex.Match(txtEmailId1.Text, "(\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*)", RegexOptions.IgnoreCase).Success Then 'Only Letters
            Label4.Visible = True
            Label4.Text = "Please Enter Valid Email ID Only!" 'Inform User
            txtEmailId1.Focus() 'Return Focus
            txtEmailId1.Text = ""
            'NameValid = False 'Boolean = False
        Else
            ' NameValid = True 'Everything Fine
        End If
    End Sub
    Sub AddStudentDetail()
        Dim varclass As New Class1
        Dim con As SqlConnection
        con = New SqlConnection(varclass.GetConnectionString(varIP))
        con.Open()
        Dim sql As String
        Dim cultureInfo As CultureInfo = Thread.CurrentThread.CurrentCulture
        Dim objTextInfo As TextInfo = cultureInfo.TextInfo

        If txtName1.Text <> "" Then
            txtName1.Text = objTextInfo.ToTitleCase(txtName1.Text)
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
            cmd.Parameters.AddWithValue("@StudentName", txtName1.Text)
            cmd.Parameters.AddWithValue("@StudentMobileNo", txtMobile1.Text)
            cmd.Parameters.AddWithValue("@ModeOfEnquiry", "Scholarship")
            cmd.Parameters.AddWithValue("@Course", txtcrse.Text)
            'cmd.Parameters.AddWithValue("@CollegeName", txtCollege.Text)
            cmd.Parameters.AddWithValue("@EmailID", txtEmailId1.Text)
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
    Function GenEnquirytNo() As String
        Dim con As SqlConnection
        Dim sql As String
        Dim EnquiryNo As Integer
        Dim varClass1 As New Class1
        con = New SqlConnection(varClass1.GetConnectionString(varIP))
        con.Open()
        sql = "SELECT MAX(EnquiryNo) AS EnquiryNo FROM  Admissions"
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
    Public Sub SendEmailWithAttachment()
        Dim var As New Class1()
        Dim msg As New MailMessage()
        msg.From = New MailAddress("info@thinknexttraining.com", "ThinkNEXT Technologies Pvt. Ltd")
        msg.[To].Add(New MailAddress(txtEmailId1.Text))
        Dim reader As New StreamReader(Server.MapPath("~/Email6.htm"))
        Dim readFile As String = reader.ReadToEnd()
        Dim StrContent As String = ""
        StrContent = readFile
        StrContent = StrContent.Replace("[MyName]", txtName1.Text)
        StrContent = StrContent.Replace("[Course]", txtcrse.Text)
        StrContent = StrContent.Replace("[ENO]", Session("Admisn").ToString())
        Dim altView As AlternateView = AlternateView.CreateAlternateViewFromString(StrContent, Nothing, MediaTypeNames.Text.Html)
        msg.Subject = "Registration for Scholarship"
        msg.Body = StrContent.ToString()
        msg.IsBodyHtml = True
        msg.AlternateViews.Add(altView)
        Dim obj As New SmtpClient()
        obj.Host = "smtp.gmail.com"
        obj.Port = 587
        obj.DeliveryMethod = SmtpDeliveryMethod.Network
        msg.Priority = MailPriority.High
        obj.UseDefaultCredentials = False
        obj.Credentials = New NetworkCredential("info@thinknexttraining.com", "Hello456$%^")
        obj.EnableSsl = True
        obj.Timeout = 9999999
        Try
            obj.Send(msg)
            Return
        Catch ex As Exception
            Response.Write(ex.Message)
        End Try

    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim varclass As New Class1
        ' lblmessgaelogin.Text = ""
        If txtName1.Text = "" Then
            Label4.Visible = True
            Label4.ForeColor = Drawing.Color.Red
            Label4.Text = "Name field cannot be blank."
            Exit Sub
        End If
        If txtMobile1.Text = "" Then
            Label4.Visible = True
            Label4.ForeColor = Drawing.Color.Red
            Label4.Text = "Mobile Number field cannot be blank."
            Exit Sub
        End If
        If txtEmailId1.Text = "" Then
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
        If txtcrse.Text = "" Then
            Label4.Visible = True
            Label4.ForeColor = Drawing.Color.Red
            Label4.Text = "Course field cannot be blank."
            Exit Sub
        End If

        ' Add Fake Delay to simulate long running process.
        System.Threading.Thread.Sleep(0)
        If txtName1.Text <> "" Then

        End If
        AddStudentDetail()
        'SendEmailWithAttachment()
        '--------------------------------------
        'Dim Message As String
        'Message = "Dear " & txtName.Text & ", " & ddlTrainingType.SelectedValue & " Industrial Training in ISO Certified Software Company"
        'Message = Message & " for iPhone, Android, .Net, Java, PHP, CCNA, MCITP. Please visit ThinkNEXT Technologies Pvt. Ltd"
        'Message = Message & " S.C.F 113, Phase-XI, Mohali(Chd) www.thinknext.co.in, www.thinknexttraining.com Contact: 9815994197,7837433594"
        '-----------------------------------------
        'Dim SMS2nd As String
        'SMS2nd = "Congratulations!!! " & txtName1.Text & ", You have been registered successfully for scholarship at"
        'SMS2nd = SMS2nd & " ThinkNEXT Technologies Pvt. Ltd. S.C.F 113, Sector-65, Mohali (Chandigarh)"
        'SMS2nd = SMS2nd & " Call: 7837401000, 7837402000, 7837403000, 7837404000, 0172-4656197 Toll Free : 1800-102-4102 or visit us at www.thinknexttraining.com, One of our representative will get in touch with you soon. To know more about ThinkNEXT and get regular updates on your facebook account regarding placements and other activities, please like us at www.facebook.com/thinknexttechnologies"
        'varclass.SendSMS(txtMobile1.Text, SMS2nd, "Route9")
        'varclass.SendSMSBytePaper(txtMobile1.Text, txtName1.Text, txtEmailId1.Text, "Scholarship Form")

        varclass.SendLeads(txtMobile1.Text, txtName1.Text, txtEmailId1.Text, txtcrse.Text, "Scholarship Form", "https://www.thinknexttraining.com")

        'varclass.SendWhatsappPdf(txtMobile1.Text, "http://thinknexttraining.com/csebrochure.pdf", "whatsapppdf")
        'varclass.SendWhatsappimage(txtMobile1.Text, "http://thinknexttraining.com/awardphoto.jpg", "whatsappimg")
        'Dim whatsappmsg As String
        'whatsappmsg = "Congratulations!!! " & txtName1.Text & ", You have been registered successfully for scholarship at"
        ' varclass.SendWhatsappmsg(txtMobile1.Text, SMS2nd, "whatsappmsg")
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
        txtName1.Text = ""
        txtMobile1.Text = ""
        txtEmailId1.Text = ""
        'txtCollege.Text = ""
        txtcrse.Text = ""
        Response.Redirect("thanks.html")
    End Sub

End Class
