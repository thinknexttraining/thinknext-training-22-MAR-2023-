Imports System.Data.SqlClient
Imports System.Data
Imports System.IO
Imports System.Net
Imports System.Text
Imports System.Net.Mime
Imports System.Net.Mail
Imports System.Net.Mail.Attachment
Imports System.Configuration
Partial Class Staff_Enquiry
    Inherits System.Web.UI.Page
    Dim varIP As String
    Dim varclass As New Class1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        If Session("myck") = "" Then
            Response.Redirect("~/default.aspx")
        End If
        If Page.IsPostBack = False Then
            txtEnquiryNo.Text = GenEnquirytNo()
            'fillcourses(drpappliedfor)
            Session12()
            bindSession()
            txtIDNo.Text = GetIDNo()
            'txtjoiningdate.Text = Format("MM/dd/yyyy", System.DateTime.Now.Date)
        End If
    End Sub
    Public Sub bindSession()
        Dim con As SqlConnection


        Dim varclass1 As New Class1
        con = New SqlConnection(varclass1.GetConnectionString(varIP))
        Dim sql As String = "select Distinct courses from mastercourses order by courses asc"
        Dim cmd As New SqlCommand(sql, con)
        Dim da As New SqlDataAdapter(cmd)
        Dim ds As New DataSet()
        da.Fill(ds, "masterCourses")
        ChkliCourse.DataTextField = "courses"
        ChkliCourse.DataSource = ds.Tables(0)
        ChkliCourse.DataBind()
        'If ds.Tables("masterCourses").Rows.Count > 0 Then
        '    For i As Integer = 0 To ds.Tables("masterCourses").Rows.Count - 1

        '        ChkliCourse.Items.Add(ds.Tables("masterCourses").Rows(i)("courses").ToString())

        '    Next

        'Else
        'End If
        cmd.Dispose()
        da.Dispose()
        ds.Dispose()

    End Sub
    Protected Sub ButtonInsSave_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        If ChkliCourse.SelectedIndex >= 0 Then

            For Each item As ListItem In ChkliCourse.Items


                If item.Selected = True Then

                    txtAddCourse.Text = txtAddCourse.Text + item.Text + ","

                    'TextBoxInsert.Text.Substring(TextBoxInsert.Text)
                End If
            Next
            Dim val As String = ""


            val = txtAddCourse.Text.TrimEnd(",")
            txtAddCourse.Text = val
        End If
    End Sub

    Function GetIDNo() As String
        Dim con As SqlConnection
        Dim sql As String
        Dim IDNo As Integer
        Dim varclass1 As New Class1
        con = New SqlConnection(varclass1.GetConnectionString(varIP))
        con.Open()
        sql = "SELECT MAX(IDNo) AS IDNo FROM  Admissions  where  FranchiseCode='TNK101' and BrandName='THINKNEXT TRAINING'"
        Dim cmd As New SqlCommand(sql, con)
        Dim adp As New SqlDataAdapter(cmd)
        Dim ds As New DataSet
        adp.Fill(ds, "Admissions")
        If ds.Tables("Admissions").Rows.Count > 0 Then
            If IsDBNull(ds.Tables("Admissions").Rows(0).Item("IDNo")) = False Then
                IDNo = Convert.ToInt32(ds.Tables("Admissions").Rows(0).Item("IDNo"))
                IDNo = IDNo + 1
            Else
                IDNo = 10001
            End If
        End If
        Return IDNo
    End Function
    Function GenEnquirytNo() As String
        Dim con As SqlConnection
        Dim sql As String
        Dim EnquiryNo As Integer
        Dim varClass1 As New Class1
        con = New SqlConnection(varClass1.GetConnectionString(varIP))
        con.Open()
        sql = "SELECT MAX(EnquiryNo) AS EnquiryNo FROM  Admissions where  FranchiseCode='TNK101' and BrandName='THINKNEXT TRAINING'"
        Dim cmd As New SqlCommand(sql, con)
        Dim adp As New SqlDataAdapter(cmd)
        Dim ds As New DataSet
        adp.Fill(ds, "Admissions")
        If ds.Tables("Admissions").Rows.Count > 0 Then
            If IsDBNull(ds.Tables("Admissions").Rows(0).Item("EnquiryNo")) = False Then
                EnquiryNo = Convert.ToInt32(ds.Tables("Admissions").Rows(0).Item("EnquiryNo"))
                EnquiryNo = EnquiryNo + 1
            Else
                EnquiryNo = 1001
            End If
        End If
        Return EnquiryNo

    End Function
    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        If txtEnquiryNo.Text <> "" Then
            If DropDownList1.SelectedIndex = 0 Then
                lblmsgs.Text = "Please Select the Session Month"
                Exit Sub

            End If
            If drpsession.SelectedIndex = 0 Then
                lblmsgs.Text = "Please Select the Session Year"
                Exit Sub

            End If

            If txtEnquiryNo.Text = "" Then
                lblmsgs.Text = "please enter Enquiery No.."
            End If

            If txtStudentName.Text = "" Then
                lblmsgs.Text = "please enter Student Name.."
                Exit Sub

            End If
            If ddlmodeofEnquiry.Text = "Select" Then
                lblmsgs.Text = "Please Select Mode Of Enquiry..."
                Exit Sub
            End If
            If varclass.ChekIDNo(txtIDNo.Text) = True Then
                lblmsgs.Text = "This ID No Is already Exists"
                Exit Sub
            End If
            If varclass.ChekEnquiryNo(txtEnquiryNo.Text) = True Then
                lblmsgs.Text = "This Enquiry No Is already Exists"
                Exit Sub
                'ChekIDNo
            Else

                savedata()
                lblmsgs.Visible = True
                lblmsgs.Text = "Enquiry Save successfully.."
            End If


            Insertmasterreference()
            If txtEmailID.Text <> "" Then
                SendEmailWithAttachment()
            End If
            lblmsgs.Visible = True
            lblmsgs.Text = "Saved Successfully"
            Dim Message As String
            Message = "Dear " & txtStudentName.Text & ",Thanks for your enquiry at ThinkNEXT Technologies Private Limited, Mohali (Chandigarh).Call: 7837401000,7837402000,01724656197. Your Enquiry No. is " & txtEnquiryNo.Text
            varclass.SendSMS(txtstudentmobNo.Text, Message, "Route9")
            varclass.SendSMS(txtContactNumber.Text, Message, "Route9")
            ' Clearrec
            ClientScript.RegisterStartupScript(Me.GetType, "alert", "alert('Enquiry Save successfully');", True)
            Response.Redirect("Enquiry.aspx")
            lblmsgs.Visible = True
            lblmsgs.Text = "Enquiry Save successfully.."
        Else
            lblmsgs.Text = "Enter Enquiry No"
        End If
    End Sub
    Sub savedata()
        Dim con As SqlConnection
        Dim sql As String
        Dim varClass1 As New Class1
        Dim TodayDate As String
        TodayDate = DateTime.Now.ToString("MM/dd/yyyy")

        con = New SqlConnection(varClass1.GetConnectionString(varIP))
        con.Open()
        Dim cmd As SqlCommand
        If Chkref.Checked = True Then
            sql = " Insert Into Admissions (FranchiseCode,BrandName,EnquiryNo, AdmissionDate,ModeOfEnquiry, CollegeName, Qualification, Batch, IDNo, UniRollNo,  Course,Duration,  "
            sql = sql & "  StudentName, FatherName, MotherName, ContactNo,StudentMobileNo, FatherMobileNo, Sex,  EmailID, CorrespondanceAddress, PermanentAddress, "
            sql = sql & "   ReferenceBy, Active, StatusCode,City ,Session,WhatsAppNo,RefContactNo,RefEmailID,RefDesignation,ReferenceBy2,RefContactNo2,RefEmailID2,RefDesignation2,DOB) "
            sql = sql & "  Values (@FranchiseCode,@BrandName,@EnquiryNo, @AdmissionDate,@ModeOfEnquiry, @CollegeName, @Qualification, @Batch, @IDNo, @UniRollNo, @Course, @Duration,  "
            sql = sql & "  @StudentName, @FatherName, @MotherName, @ContactNo, @StudentMobileNo, @FatherMobileNo, @Sex,  @EmailID, @CorrespondanceAddress, @PermanentAddress, "
            sql = sql & "   @ReferenceBy, @Active, @StatusCode,@City,@Session,@WhatsAppNo,@RefContactNo,@RefEmailID,@RefDesignation,"
            sql = sql & "@ReferenceBy2,@RefContactNo2,@RefEmailID2,@RefDesignation2,@DOB)"
            cmd = New SqlCommand(sql, con)

            If txtrefContact2.Text <> "" Then
                cmd.Parameters.AddWithValue("@RefContactNo2", txtrefContact2.Text)
            Else
                cmd.Parameters.AddWithValue("@RefContactNo2", DBNull.Value)
            End If
            If txtRef2.Text <> "" Then
                cmd.Parameters.AddWithValue("@ReferenceBy2", txtRef2.Text)
            Else
                cmd.Parameters.AddWithValue("@ReferenceBy2", DBNull.Value)
            End If

            If txtref2email.Text <> "" Then
                cmd.Parameters.AddWithValue("@RefEmailID2", txtref2email.Text)
            Else
                cmd.Parameters.AddWithValue("@RefEmailID2", DBNull.Value)
            End If
            If txtref2desig.Text <> "" Then
                cmd.Parameters.AddWithValue("@RefDesignation2", txtref2desig.Text)
            Else
                cmd.Parameters.AddWithValue("@RefDesignation2", DBNull.Value)
            End If
        Else
            sql = " Insert Into Admissions (FranchiseCode,BrandName,EnquiryNo, AdmissionDate,ModeOfEnquiry, CollegeName, Qualification, Batch, IDNo, UniRollNo,  Course,Duration,  "
            sql = sql & "  StudentName, FatherName, MotherName, ContactNo,StudentMobileNo, FatherMobileNo, Sex,  EmailID, CorrespondanceAddress, PermanentAddress, "
            sql = sql & "   ReferenceBy, Active, StatusCode,City ,Session,WhatsAppNo,RefContactNo,RefEmailID,RefDesignation,DOB) "
            sql = sql & "  Values (@FranchiseCode,@BrandName,@EnquiryNo, @AdmissionDate,@ModeOfEnquiry, @CollegeName, @Qualification, @Batch, @IDNo, @UniRollNo, @Course, @Duration,  "
            sql = sql & "  @StudentName, @FatherName, @MotherName, @ContactNo, @StudentMobileNo, @FatherMobileNo, @Sex,  @EmailID, @CorrespondanceAddress, @PermanentAddress, "
            sql = sql & "   @ReferenceBy, @Active, @StatusCode,@City,@Session,@WhatsAppNo,@RefContactNo,@RefEmailID,@RefDesignation,@DOB) "
            cmd = New SqlCommand(sql, con)
        End If
        'sql = " Insert Into Admissions (FranchiseCode,BrandName,EnquiryNo, AdmissionDate,ModeOfEnquiry, CollegeName, Qualification, Batch, IDNo, UniRollNo,  Course,Duration,  "
        'sql = sql & "  StudentName, FatherName, MotherName, ContactNo,StudentMobileNo, FatherMobileNo, Sex,  EmailID, CorrespondanceAddress, PermanentAddress, "
        'sql = sql & "   ReferenceBy, ReferenceDescription, Active, StatusCode,City ,Session,WhatsAppNo,RefContactNo,RefEmail,RefDesignation) "
        'sql = sql & "  Values (@FranchiseCode,@BrandName,@EnquiryNo, @AdmissionDate,@ModeOfEnquiry, @CollegeName, @Qualification, @Batch, @IDNo, @UniRollNo, @Course, @Duration,  "
        'sql = sql & "  @StudentName, @FatherName, @MotherName, @ContactNo, @StudentMobileNo, @FatherMobileNo, @Sex,  @EmailID, @CorrespondanceAddress, @PermanentAddress, "
        'sql = sql & "   @ReferenceBy, @ReferenceDescription, @Active, @StatusCode,@City,@Session,@WhatsAppNo,@RefContactNo,@RefEmail,@RefDesignation) "


        cmd.Parameters.AddWithValue("@FranchiseCode", txtfranchise.Text)
        cmd.Parameters.AddWithValue("@BrandName", txtbrand.Text)
        cmd.Parameters.AddWithValue("@EnquiryNo", txtEnquiryNo.Text)
        cmd.Parameters.AddWithValue("@AdmissionDate", TodayDate)
        If txtDOB.Text <> "" Then

            Dim sDateTime As String = ""
            Dim sDate As String() = txtDOB.Text.Split("/")
            sDateTime = sDate(1) + "/" + sDate(0) + "/" + sDate(2)
            Dim dtFinaldate As DateTime = Convert.ToDateTime(sDateTime)
            cmd.Parameters.AddWithValue("@DOB", dtFinaldate)
        Else
            cmd.Parameters.AddWithValue("@DOB", DBNull.Value)
        End If
        If ddlmodeofEnquiry.Text <> "Select" Then
            cmd.Parameters.AddWithValue("@ModeOfEnquiry", ddlmodeofEnquiry.Text)
        Else
            cmd.Parameters.AddWithValue("@ModeOfEnquiry", DBNull.Value)
        End If
        If txtcollegename.Text <> "" Then
            cmd.Parameters.AddWithValue("@CollegeName", txtcollegename.Text)
        Else
            cmd.Parameters.AddWithValue("@CollegeName", DBNull.Value)
        End If

        If txtcourse.Text <> "" Then
            cmd.Parameters.AddWithValue("@Qualification", txtcourse.Text)
        Else
            cmd.Parameters.AddWithValue("@Qualification", DBNull.Value)
        End If

        If txtbatch.Text <> "" Then
            cmd.Parameters.AddWithValue("@Batch", txtbatch.Text)
        Else
            cmd.Parameters.AddWithValue("@Batch", DBNull.Value)
        End If

        If txtIDNo.Text <> "" Then
            cmd.Parameters.AddWithValue("@IDNo", txtIDNo.Text)
        Else
            cmd.Parameters.AddWithValue("@IDNo", DBNull.Value)
        End If

        If txtIUniRollNo.Text <> "" Then
            cmd.Parameters.AddWithValue("@UniRollNo", txtIUniRollNo.Text)
        Else
            cmd.Parameters.AddWithValue("@UniRollNo", DBNull.Value)
        End If

        If txtAddCourse.Text <> "" Then
            cmd.Parameters.AddWithValue("@Course", txtAddCourse.Text)
        Else
            cmd.Parameters.AddWithValue("@Course", DBNull.Value)
        End If

        If drptrainingtype.Text <> "Select" Then
            cmd.Parameters.AddWithValue("@Duration", drptrainingtype.Text)
        Else
            cmd.Parameters.AddWithValue("@Duration", DBNull.Value)
        End If
        If txtStudentName.Text <> "" Then
            cmd.Parameters.AddWithValue("@StudentName", txtStudentName.Text)
        Else
            cmd.Parameters.AddWithValue("@StudentName", DBNull.Value)
        End If

        If txtFatherName.Text <> "" Then
            cmd.Parameters.AddWithValue("@FatherName", txtFatherName.Text)
        Else
            cmd.Parameters.AddWithValue("@FatherName", DBNull.Value)
        End If

        If txtMotherName.Text <> "" Then
            cmd.Parameters.AddWithValue("@MotherName", txtMotherName.Text)
        Else
            cmd.Parameters.AddWithValue("@MotherName", DBNull.Value)
        End If

        If txtContactNumber.Text <> "" Then
            cmd.Parameters.AddWithValue("@ContactNo", txtContactNumber.Text)
        Else
            cmd.Parameters.AddWithValue("@ContactNo", DBNull.Value)
        End If

        If txtstudentmobNo.Text <> "" Then
            cmd.Parameters.AddWithValue("@StudentMobileNo", txtstudentmobNo.Text)
        Else
            cmd.Parameters.AddWithValue("@StudentMobileNo", DBNull.Value)
        End If

        If txtFathermobNo0.Text <> "" Then
            cmd.Parameters.AddWithValue("@FatherMobileNo", txtFathermobNo0.Text)
        Else
            cmd.Parameters.AddWithValue("@FatherMobileNo", DBNull.Value)
        End If

        If ddlSex.Text <> "Select" Then
            cmd.Parameters.AddWithValue("@Sex", ddlSex.Text)
        Else
            cmd.Parameters.AddWithValue("@Sex", DBNull.Value)
        End If

        If txtEmailID.Text <> "" Then
            cmd.Parameters.AddWithValue("@EmailID", txtEmailID.Text)
        Else
            cmd.Parameters.AddWithValue("@EmailID", DBNull.Value)
        End If

        If txtcorrespondence.Text <> "" Then
            cmd.Parameters.AddWithValue("@CorrespondanceAddress", txtcorrespondence.Text)
        Else
            cmd.Parameters.AddWithValue("@CorrespondanceAddress", DBNull.Value)
        End If
        If txtpermanentaddress.Text <> "" Then
            cmd.Parameters.AddWithValue("@PermanentAddress", txtpermanentaddress.Text)
        Else
            cmd.Parameters.AddWithValue("@PermanentAddress", DBNull.Value)
        End If

        If txtreferenceby.Text <> "" Then
            cmd.Parameters.AddWithValue("@ReferenceBy", txtreferenceby.Text)
        Else
            cmd.Parameters.AddWithValue("@ReferenceBy", DBNull.Value)
        End If

        If txtrefdescription.Text <> "" Then
            cmd.Parameters.AddWithValue("@RefContactNo", txtrefdescription.Text)
        Else
            cmd.Parameters.AddWithValue("@RefContactNo", DBNull.Value)
        End If
        If txttown.Text <> "" Then
            cmd.Parameters.AddWithValue("@City", txttown.Text)
        Else
            cmd.Parameters.AddWithValue("@City", DBNull.Value)
        End If
        If txtWhatsappno.Text <> "" Then
            cmd.Parameters.AddWithValue("@WhatsAppNo", txtWhatsappno.Text)
        Else
            cmd.Parameters.AddWithValue("@WhatsAppNo", DBNull.Value)
        End If
        If txtEmailS.Text <> "" Then
            cmd.Parameters.AddWithValue("@RefEmailID", txtEmailS.Text)
        Else
            cmd.Parameters.AddWithValue("@RefEmailID", DBNull.Value)
        End If
        If txtDesig.Text <> "" Then
            cmd.Parameters.AddWithValue("@RefDesignation", txtDesig.Text)
        Else
            cmd.Parameters.AddWithValue("@RefDesignation", DBNull.Value)
        End If
        cmd.Parameters.AddWithValue("@Session", DropDownList1.Text)
        'cmd.Parameters.AddWithValue("@SessionYear", drpsession.Text)
        cmd.Parameters.AddWithValue("@StatusCode", "Enquiry")
        cmd.Parameters.AddWithValue("@Active", 1)
        cmd.ExecuteNonQuery()
        lblmsgs.Visible = True
        lblmsgs.Text = "Enquiry Save successfully.."
        cmd.Dispose()
        con.Close()
    End Sub
    Sub Clearrec()
        ddlmodeofEnquiry.SelectedIndex = -1

        chkaddress.Checked = False
        drptrainingtype.SelectedIndex = -1
        ddlSex.SelectedIndex = -1
        txtcollegename.Text = ""
        txtcourse.Text = ""
        txtbatch.Text = ""
        txtIDNo.Text = ""
        txtIUniRollNo.Text = ""
        txtEnquiryNo.Text = GenEnquirytNo()
        txtStudentName.Text = ""
        txtFatherName.Text = ""
        txtMotherName.Text = ""
        txtContactNumber.Text = ""
        txtstudentmobNo.Text = ""
        txtFathermobNo0.Text = ""
        txtEmailID.Text = ""
        txtcorrespondence.Text = ""
        txtpermanentaddress.Text = ""
        txtreferenceby.Text = ""
        txtrefdescription.Text = ""
        txtWhatsappno.Text = ""
        txtRef2.Text = ""
        txtref2desig.Text = ""
        txtref2email.Text = ""
        txtrefContact2.Text = ""
        txtDesig.Text = ""
        txtEmailS.Text = ""
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Response.Redirect("~/Admin/AllEnquiries.aspx")
    End Sub
    Sub fillcourses(ByVal ddl As DropDownList)
        Dim con As New SqlConnection
        Dim sql As String
        Dim da As SqlDataAdapter
        Dim ds As New DataSet
        Dim rowctr As Integer = 0
        Dim varClass1 As New Class1
        con = New SqlConnection(varClass1.GetConnectionString(varIP))
        con.Open()
        sql = "select Distinct Courses from MasterCourses  where FranchiseCode='" + txtfranchise.Text + "' order by Courses  "
        da = New SqlDataAdapter(sql, con)
        da.Fill(ds, "MasterCourses")
        ddl.Items.Clear()
        ddl.Items.Add("Select")
        If ds.Tables("MasterCourses").Rows.Count > 0 Then
            While rowctr < ds.Tables("MasterCourses").Rows.Count
                If IsDBNull(ds.Tables("MasterCourses").Rows(rowctr).Item("Courses")) = False Then
                    ddl.Items.Add(ds.Tables("MasterCourses").Rows(rowctr).Item("Courses"))
                End If
                rowctr = rowctr + 1
            End While
        End If
        con.Close()
    End Sub
    Sub Session12()
        Dim con As SqlConnection
        Dim sql As String
        Dim varClass1 As New Class1
        con = New SqlConnection(varClass1.GetConnectionString(varIP))
        con.Open()
        sql = "select Distinct Session from MasterSession where FranchiseCode='TNK101' and BrandName='THINKNEXT TRAINING'"
        Dim cmd As New SqlCommand(sql, con)
        Dim da As New SqlDataAdapter(cmd)
        Dim ds As New DataSet
        da.Fill(ds, "MasterSession")
        DropDownList1.DataSource = ds
        DropDownList1.DataTextField = "Session"
        DropDownList1.DataValueField = "Session"
        DropDownList1.DataBind()
        DropDownList1.Items.Insert(0, New ListItem("--Select--", "0"))
    End Sub
    Protected Sub drpsession_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles drpsession.SelectedIndexChanged
    End Sub

    Protected Sub txtcorrespondence_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtcorrespondence.TextChanged
    End Sub
    Protected Sub chkaddress_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkaddress.CheckedChanged
        If chkaddress.Checked = True Then
            txtcorrespondence.Text = txtpermanentaddress.Text
        End If
    End Sub
    Protected Sub ddlmodeofEnquiry_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlmodeofEnquiry.SelectedIndexChanged
    End Sub
    Protected Sub txtfranchise_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtfranchise.TextChanged
    End Sub
    Protected Sub txtbrand_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtbrand.TextChanged
    End Sub

    Sub SendEmailWithAttachment()
        ' Dim con As SqlConnection
        Dim var As New Class1()
        Dim msg As New MailMessage()
        'msg.From = New MailAddress("thinknextsmart@gmail.com", "ThinkNext Technologies Pvt. Ltd")
        msg.From = New MailAddress("support@thinknext.co.in", "ThinkNext Technologies Pvt. Ltd")
        msg.To.Add(New MailAddress(txtEmailId.Text))

        Dim reader As New StreamReader(Server.MapPath("~/Email6.htm"))

        Dim readFile As String = reader.ReadToEnd()

        Dim StrContent As String = ""

        StrContent = readFile
        StrContent = StrContent.Replace("[MyName]", txtStudentName.Text)
        StrContent = StrContent.Replace("[Course]", txtAddCourse.Text)
        StrContent = StrContent.Replace("[ENO]", txtEnquiryNo.Text)
        Dim altView As AlternateView = AlternateView.CreateAlternateViewFromString(StrContent, Nothing, MediaTypeNames.Text.Html)
        Dim yourPictureRes As New LinkedResource(Server.MapPath(".") + "//ThinknextTraining.png")
        yourPictureRes.ContentId = "InlineImageID"
        altView.LinkedResources.Add(yourPictureRes)
        StrContent = StrContent.Replace("{Url}", altView.ToString())


        Dim Pictures As New LinkedResource(Server.MapPath(".") + "//WHATSAPP+.png")
        Pictures.ContentId = "ID"
        altView.LinkedResources.Add(Pictures)
        StrContent = StrContent.Replace("{IMG}", altView.ToString())


        If drptrainingtype.Text Is "6 Weeks" Then
            msg.Subject = "6 Weeks Industrial Training with Part-Time Job Offer and Free spoken English and PD"
            msg.Body = StrContent.ToString()
            msg.IsBodyHtml = True
            'Dim fname As String = ""
            Dim fname1 As String = ""
            Dim fname2 As String = ""
            fname1 = Server.MapPath("~/Staff/attachmentemail/thinknext brochure.PDF")
            fname2 = Server.MapPath("~/Staff/attachmentemail/Thinknext pamphlet.PDF")
            msg.Attachments.Add(New Attachment(fname1))
            msg.Attachments.Add(New Attachment(fname2))
            msg.AlternateViews.Add(altView)
        ElseIf drptrainingtype.Text Is "2 Months" Then
            msg.Subject = "2 Months Industrial Training with Part-Time Job Offer and Free spoken English and PD"
            msg.Body = StrContent.ToString()
            msg.IsBodyHtml = True
            'Dim fname As String = ""
            Dim fname1 As String = ""
            Dim fname2 As String = ""
            fname1 = Server.MapPath("~/Staff/attachmentemail/thinknext brochure.PDF")
            fname2 = Server.MapPath("~/Staff/attachmentemail/Thinknext pamphlet.PDF")
            'msg.Attachments.Add(New Attachment(fname))
            msg.Attachments.Add(New Attachment(fname1))
            msg.Attachments.Add(New Attachment(fname2))
            msg.AlternateViews.Add(altView)
        Else
            msg.Subject = "6 Months Industrial Training with Part-Time Job Offer and Free spoken English and PD"
            msg.Body = StrContent.ToString()
            msg.IsBodyHtml = True
            ' Dim fname As String = ""
            Dim fname1 As String = ""
            Dim fname2 As String = ""
            'fname = Server.MapPath("~/Staff/attachmentemail/6 MONTHS CSE ECE IT ME.pdf")
            fname1 = Server.MapPath("~/Staff/attachmentemail/thinknext brochure.PDF")
            fname2 = Server.MapPath("~/Staff/attachmentemail/Thinknext pamphlet.PDF")
            'msg.Attachments.Add(New Attachment(fname))
            msg.Attachments.Add(New Attachment(fname1))
            msg.Attachments.Add(New Attachment(fname2))
            msg.AlternateViews.Add(altView)
        End If
        Dim obj As New SmtpClient()
        'obj.Host = "smtp-mail.outlook.com"
        obj.Host = "smtp.gmail.com"
        obj.Port = "587"
        obj.DeliveryMethod = SmtpDeliveryMethod.Network
        msg.Priority = MailPriority.High
        obj.UseDefaultCredentials = False
        obj.Credentials = New NetworkCredential("thinknextsmart@gmail.com", "smartthink")
        'obj.Credentials = New NetworkCredential("support@thinknext.co.in", "smartbss?")
        obj.EnableSsl = True
        obj.Timeout = 9999999
        Try
            obj.Send(msg)
            'ClientScript.RegisterStartupScript(Me.GetType, "alert", "alert('You Are Registered Successfully and your Enquiry no is:" + Session("Admisn").ToString() + "');", True)
            Return
        Catch ex As Exception
            Response.Write(ex.Message)
        End Try

    End Sub



    Protected Sub Chkref_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Chkref.CheckedChanged
        If Chkref.Checked = True Then
            tblref.Visible = True
        Else
            tblref.Visible = False
        End If
    End Sub
    Sub Insertmasterreference()
        Dim con1 As SqlConnection
        Dim sql As String

        Dim varClass1 As New Class1
        con1 = New SqlConnection(varClass1.GetConnectionString(varIP))
        con1.Open()
        sql = "insert into masterReference(Reference,ContactNo,EmailID,Designation,StudentIDNo,ReferenceNo)values(@Reference,@ContactNo,@EmailID,@Designation,@StudentIDNo,@ReferenceNo)"
        Dim cmd As New SqlCommand(sql, con1)

        If txtreferenceby.Text <> "" Then
            cmd.Parameters.AddWithValue("@Reference", txtreferenceby.Text)
        Else
            cmd.Parameters.AddWithValue("@Reference", DBNull.Value)
        End If

        If txtrefdescription.Text <> "" Then
            cmd.Parameters.AddWithValue("@ContactNo", txtrefdescription.Text)
        Else
            cmd.Parameters.AddWithValue("@ContactNo", DBNull.Value)
        End If
        If txtEmailS.Text <> "" Then
            cmd.Parameters.AddWithValue("@EmailID", txtEmailS.Text)
        Else
            cmd.Parameters.AddWithValue("@EmailID", DBNull.Value)
        End If
        If txtDesig.Text <> "" Then
            cmd.Parameters.AddWithValue("@Designation", txtDesig.Text)
        Else
            cmd.Parameters.AddWithValue("@Designation", DBNull.Value)
        End If
        If txtIDNo.Text <> "" Then
            cmd.Parameters.AddWithValue("@StudentIDNo", txtIDNo.Text)
        Else
            cmd.Parameters.AddWithValue("@StudentIDNo", DBNull.Value)
        End If
        cmd.Parameters.AddWithValue("@ReferenceNo", "First")
        cmd.ExecuteNonQuery()
        cmd.Dispose()
        con1.Close()
        If Chkref.Checked = True Then
            Dim con As SqlConnection
            Dim varClass As New Class1
            con = New SqlConnection(varClass.GetConnectionString(varIP))
            con.Open()
            Dim sql2 As String
            sql2 = "insert into masterReference(Reference,ContactNo,EmailID,Designation,StudentIDNo,ReferenceNo)values(@Reference,@ContactNo,@EmailID,@Designation,@StudentIDNo,@ReferenceNo)"
            Dim cmd1 As New SqlCommand(sql2, con)
            If txtrefContact2.Text <> "" Then
                cmd1.Parameters.AddWithValue("@ContactNo", txtrefContact2.Text)
            Else
                cmd1.Parameters.AddWithValue("@ContactNo", DBNull.Value)
            End If
            If txtRef2.Text <> "" Then
                cmd1.Parameters.AddWithValue("@Reference", txtRef2.Text)
            Else
                cmd1.Parameters.AddWithValue("@Reference", DBNull.Value)
            End If

            If txtref2email.Text <> "" Then
                cmd1.Parameters.AddWithValue("@EmailID", txtref2email.Text)
            Else
                cmd1.Parameters.AddWithValue("@EmailID", DBNull.Value)
            End If
            If txtref2desig.Text <> "" Then
                cmd1.Parameters.AddWithValue("@Designation", txtref2desig.Text)
            Else
                cmd1.Parameters.AddWithValue("@Designation", DBNull.Value)
            End If
            If txtIDNo.Text <> "" Then
                cmd1.Parameters.AddWithValue("@StudentIDNo", txtIDNo.Text)
            Else
                cmd1.Parameters.AddWithValue("@StudentIDNo", DBNull.Value)
            End If
            cmd1.Parameters.AddWithValue("@ReferenceNo", "Second")
            cmd1.ExecuteNonQuery()
            cmd1.Dispose()
            con.Close()
        End If
    End Sub

    <System.Web.Script.Services.ScriptMethod()> _
 <System.Web.Services.WebMethod()> _
    Public Shared Function SearchCustomers(ByVal prefixText As String, ByVal count As Integer) As List(Of String)
        Dim varclass As New Class1()
        Using con As New SqlConnection()
            con.ConnectionString = varclass.GetConnectionString("")
            Using cmd As New SqlCommand()
                cmd.CommandText = "select distinct reference from masterreference where reference like '" + prefixText + "%'"
                cmd.Connection = con
                Dim da As New SqlDataAdapter(cmd)
                Dim dt As New DataTable()
                da.Fill(dt)
                Dim CountryNames As New List(Of String)()
                For i As Integer = 0 To dt.Rows.Count - 1
                    CountryNames.Add(dt.Rows(i)(0).ToString())
                Next
                Return CountryNames
            End Using
        End Using
    End Function

    Protected Sub txtRefSearch_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtRefSearch.TextChanged
        Dim varclass As New Class1()
        Using con As New SqlConnection()
            con.ConnectionString = varclass.GetConnectionString("")
            Using cmd As New SqlCommand()
                cmd.CommandText = "select distinct reference,Contactno,EmailID,Designation from masterreference where reference='" + txtRefSearch.Text + "'"
                cmd.Connection = con
                Dim da As New SqlDataAdapter(cmd)
                Dim ds As New DataSet()
                da.Fill(ds, "ref")
                If ds.Tables("ref").Rows.Count > 0 Then
                    txtreferenceby.Text = ds.Tables("ref").Rows(0).Item("reference").ToString()
                    txtrefdescription.Text = ds.Tables("ref").Rows(0).Item("Contactno").ToString()
                    txtEmailS.Text = ds.Tables("ref").Rows(0).Item("EmailID").ToString()
                    txtDesig.Text = ds.Tables("ref").Rows(0).Item("Designation").ToString()
                End If
            End Using
        End Using

    End Sub

End Class
