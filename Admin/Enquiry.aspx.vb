Imports System.Data.SqlClient
Imports System.Data
Imports System.IO
Imports System.Net
Imports System.Text
Imports System.Net.Mime
Imports System.Net.Mail
Imports System.Net.Mail.Attachment
Imports System.Configuration
Imports System.Web.Services

Partial Class Enquiry
    Inherits System.Web.UI.Page
    Dim varIP As String
    Dim varclass As New Class1
    Shared flagCam As Integer
    Shared imgpath As String
    Dim bytes As Byte()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session.Timeout = 300
        If Session("myck") = "" Then

            Response.Redirect("~/default.aspx")
        End If
        If Page.IsPostBack = False Then
            txtEnquiryNo.Text = GenEnquirytNo()
            'fillcourses(drpappliedfor)
            Session12()
            modeofenquery()
            bindSession()
            txtIDNo.Text = GetIDNo()
            lblmessage.Visible = False
            'txtjoiningdate.Text = Format("MM/dd/yyyy", System.DateTime.Now.Date)
            If Session("CapturedImage") Is Nothing Then
                If Request.InputStream.Length > 0 Then
                    Using reader As New StreamReader(Request.InputStream)
                        Dim hexString As String = Server.UrlEncode(reader.ReadToEnd())
                        Dim imageName As String = "Pic- " & DateTime.Now.ToString("dd-MM-yy hh-mm-ss")
                        Dim imagePath As String = String.Format("Captures/{0}.jpg", imageName)
                        flagCam = 1
                        File.WriteAllBytes(Server.MapPath(imagePath), ConvertHexToBytes(hexString))

                        Session("CapturedImage") = ResolveUrl(imagePath)
                    End Using



                End If
            End If
            imgpath = Session("CapturedImage")
        Else
            flagCam = 0
        End If

        lblmessage1.Visible = False
        Label12.Visible = False
        txtRepresentativeName.Visible = False
        Label13.Visible = False
        txtSeminarPerson.Visible = False


    End Sub
    Private Shared Function ConvertHexToBytes(ByVal hex As String) As Byte()
        Dim bytes As Byte() = New Byte(hex.Length / 2 - 1) {}
        If flagCam <> 1 Then

        Else
            bytes = New Byte(hex.Length / 2 - 1) {}
            For i As Integer = 0 To hex.Length - 1 Step 2
                bytes(i / 2) = Convert.ToByte(hex.Substring(i, 2), 16)
            Next

        End If
        Return bytes
    End Function

    <WebMethod(EnableSession:=True)>
    Public Shared Function GetCapturedImage() As String
        Dim url As String = HttpContext.Current.Session("CapturedImage").ToString()
        HttpContext.Current.Session("CapturedImage") = Nothing
        Return url
    End Function
    Public Sub modeofenquery()
        Dim con As SqlConnection
        Dim varclass1 As New Class1
        con = New SqlConnection(varclass1.GetConnectionString(varIP))
        Dim sql As String = "select ModeOfEnquiry from MasterModeOfEnquiry "
        Dim cmd As New SqlCommand(sql, con)
        Dim da As New SqlDataAdapter(cmd)
        Dim ds As New DataSet()
        da.Fill(ds, "enquiry")
        ddlmodeofEnquiry.DataTextField = "modeofenquiry"
        ddlmodeofEnquiry.DataSource = ds.Tables(0)
        ddlmodeofEnquiry.DataBind()
        ddlmodeofEnquiry.Items.Insert(0, New ListItem("--Select--", "0"))
        cmd.Dispose()
        da.Dispose()
        ds.Dispose()
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
        sql = "SELECT MAX(EnquiryNo) AS EnquiryNo FROM  Admissions where SrNo in (SELECT max(SrNo) from admissions)"
        ' sql = "SELECT MAX(EnquiryNo) AS EnquiryNo FROM  Admissions"
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

    Class SurroundingClass
        Public Shared INDIAN_ZONE As TimeZoneInfo = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time")
        Public indianTime As DateTime = TimeZoneInfo.ConvertTimeFromUtc(DateTime.UtcNow, INDIAN_ZONE)
    End Class
    Sub savedata()
        Dim TodayDate As String
        Dim Date1 As New SurroundingClass
        TodayDate = Date1.indianTime.ToString("MM/dd/yyyy")
        'TodayDate = Date1.indianTime.ToString()
        Dim con As SqlConnection
        Dim sql As String
        Dim varClass1 As New Class1
        Dim i As Integer = 0
        'TodayDate = DateTime.Now.ToString("MM/dd/yyyy")
        con = New SqlConnection(varClass1.GetConnectionString(varIP))
        con.Open()
        Dim cmd As SqlCommand
        Dim cmd1 As SqlCommand

        Dim cmd2 As SqlCommand

        Dim cmd3 As SqlCommand
        If rdbVisited.SelectedValue <> "Yes" And rdbVisited.SelectedValue <> "No" Then
            lblmessage.Visible = True
            lblmessage.Text = "Please spacify whether student visited  or not"
            Return
        End If
        '//////////////////////image//////////////////////////
        Dim filepath As String = imgpath

        If filepath IsNot Nothing Then
            Dim fs As FileStream = New FileStream(Server.MapPath(filepath), FileMode.Open, FileAccess.ReadWrite)
            Dim br As BinaryReader = New BinaryReader(fs)
            Dim int32 As Integer
            int32 = fs.Length
            bytes = br.ReadBytes(int32)
        Else

        End If



        If Chkref.Checked = True Then
            sql = " Insert Into Admissions (FranchiseCode,BrandName,EnquiryNo, AdmissionDate,ModeOfEnquiry, CollegeName, Qualification, Batch, IDNo, UniRollNo,  Course,Duration,  "
            sql = sql & "  StudentName, FatherName, MotherName, ContactNo,StudentMobileNo, FatherMobileNo, Sex,  EmailID, CorrespondanceAddress, PermanentAddress, "
            sql = sql & "   ReferenceBy, Active, StatusCode,City ,Session,WhatsAppNo,RefContactNo,RefEmailID,RefDesignation,ReferenceBy2,RefContactNo2,RefEmailID2,RefDesignation2,DOB,CRName1,CRDesignation1,CRContact1,CREmail1,CRName2,CRDesignation2,CRContact2,CREmail2,FRName1,FRContact1,FRName2,FRContact2,FRName3,FRContact3,FRName4,FRContact4,RepresentativeName,SeminarPerson,Visited,Scholarshipdate,ScholarshipPersent,Feecommitment,imagecapture) "
            sql = sql & "  Values (@FranchiseCode,@BrandName,@EnquiryNo, @AdmissionDate,@ModeOfEnquiry, @CollegeName, @Qualification, @Batch, @IDNo, @UniRollNo, @Course, @Duration,  "
            sql = sql & "  @StudentName, @FatherName, @MotherName, @ContactNo, @StudentMobileNo, @FatherMobileNo, @Sex,  @EmailID, @CorrespondanceAddress, @PermanentAddress, "
            sql = sql & "   @ReferenceBy, @Active, @StatusCode,@City,@Session,@WhatsAppNo,@RefContactNo,@RefEmailID,@RefDesignation,"
            sql = sql & "@ReferenceBy2,@RefContactNo2,@RefEmailID2,@RefDesignation2,@DOB,"
            sql = sql & "@CRName1,@CRDesignation1,@CRContact1,@CREmail1,@CRName2,@CRDesignation2,@CRContact2,@CREmail2,"
            sql = sql & "@FRName1,@FRContact1,@FRName2,@FRContact2,@FRName3,@FRContact3,@FRName4,@FRContact4,@RepresentativeName,@SeminarPerson,@Visited,@Scholarshipdate,@ScholarshipPersent,@Feecommitment,@imagecapture)"
            cmd = New SqlCommand(sql, con)


            If bytes IsNot Nothing Then
                cmd.Parameters.AddWithValue("@imagecapture", bytes)
            Else
                cmd.Parameters.AddWithValue("@imagecapture", New Byte() {})

            End If


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

            '==== college and friend refrence  ====
            If txtname1.Text <> "" Then
                cmd.Parameters.AddWithValue("@CRName1", txtname1.Text)
            Else
                cmd.Parameters.AddWithValue("@CRName1", DBNull.Value)
            End If
            If txtdesignation1.Text <> "" Then
                cmd.Parameters.AddWithValue("@CRDesignation1", txtdesignation1.Text)
            Else
                cmd.Parameters.AddWithValue("@CRDesignation1", DBNull.Value)
            End If
            If txtcontact1.Text <> "" Then
                cmd.Parameters.AddWithValue("@CRContact1", txtcontact1.Text)
            Else
                cmd.Parameters.AddWithValue("@CRContact1", DBNull.Value)
            End If
            If txtemail1.Text <> "" Then
                cmd.Parameters.AddWithValue("@CREmail1", txtemail1.Text)
            Else
                cmd.Parameters.AddWithValue("@CREmail1", DBNull.Value)
            End If
            If txtname2.Text <> "" Then
                cmd.Parameters.AddWithValue("@CRName2", txtname2.Text)
            Else
                cmd.Parameters.AddWithValue("@CRName2", DBNull.Value)
            End If
            If txtdesignation2.Text <> "" Then
                cmd.Parameters.AddWithValue("@CRDesignation2", txtdesignation2.Text)
            Else
                cmd.Parameters.AddWithValue("@CRDesignation2", DBNull.Value)
            End If
            If txtcontact2.Text <> "" Then
                cmd.Parameters.AddWithValue("@CRContact2", txtcontact2.Text)
            Else
                cmd.Parameters.AddWithValue("@CRContact2", DBNull.Value)
            End If
            If txtemail2.Text <> "" Then
                cmd.Parameters.AddWithValue("@CREmail2", txtemail2.Text)
            Else
                cmd.Parameters.AddWithValue("@CREmail2", DBNull.Value)
            End If
            If txtFrndName1.Text <> "" Then
                cmd.Parameters.AddWithValue("@FRName1", txtFrndName1.Text)
            Else
                cmd.Parameters.AddWithValue("@FRName1", DBNull.Value)
            End If
            If txtFrndContact1.Text <> "" Then
                cmd.Parameters.AddWithValue("@FRContact1", txtFrndContact1.Text)
            Else
                cmd.Parameters.AddWithValue("@FRContact1", DBNull.Value)
            End If
            If txtFrndName2.Text <> "" Then
                cmd.Parameters.AddWithValue("@FRName2", txtFrndName2.Text)
            Else
                cmd.Parameters.AddWithValue("@FRName2", DBNull.Value)
            End If
            If txtFrndContact2.Text <> "" Then
                cmd.Parameters.AddWithValue("@FRContact2", txtFrndContact2.Text)
            Else
                cmd.Parameters.AddWithValue("@FRContact2", DBNull.Value)
            End If
            If txtFrndName3.Text <> "" Then
                cmd.Parameters.AddWithValue("@FRName3", txtFrndName3.Text)
            Else
                cmd.Parameters.AddWithValue("@FRName3", DBNull.Value)
            End If
            If txtFrndContact3.Text <> "" Then
                cmd.Parameters.AddWithValue("@FRContact3", txtFrndContact3.Text)
            Else
                cmd.Parameters.AddWithValue("@FRContact3", DBNull.Value)
            End If
            If txtFrndName4.Text <> "" Then
                cmd.Parameters.AddWithValue("@FRName4", txtFrndName4.Text)
            Else
                cmd.Parameters.AddWithValue("@FRName4", DBNull.Value)
            End If
            If txtFrndContact4.Text <> "" Then
                cmd.Parameters.AddWithValue("@FRContact4", txtFrndContact4.Text)
            Else
                cmd.Parameters.AddWithValue("@FRContact4", DBNull.Value)
            End If
            If ddlmodeofEnquiry.Text = "Representative Call" Then
                Label12.Visible = True
                txtRepresentativeName.Visible = True
                If txtRepresentativeName.Text <> "" Then
                    cmd.Parameters.AddWithValue("@RepresentativeName", txtRepresentativeName.Text)
                End If
            Else
                cmd.Parameters.AddWithValue("@RepresentativeName", DBNull.Value)

            End If

            If ddlmodeofEnquiry.Text = "Seminar" Then
                Label13.Visible = True
                txtSeminarPerson.Visible = True
                If txtSeminarPerson.Text <> "" Then
                    cmd.Parameters.AddWithValue("@SeminarPerson", txtSeminarPerson.Text)
                End If
            Else
                cmd.Parameters.AddWithValue("@SeminarPerson", DBNull.Value)

            End If
            If rdbVisited.SelectedValue = "Yes" Then
                cmd.Parameters.AddWithValue("@Visited", "Yes")
            ElseIf rdbVisited.SelectedValue = "No" Then
                cmd.Parameters.AddWithValue("@Visited", "No")
            End If
            If Txtdate.Text <> "" Then

                Dim sdDateTime As String = ""
                Dim ssDate As String() = Txtdate.Text.Split("/")
                sdDateTime = ssDate(1) + "/" + ssDate(0) + "/" + ssDate(2)
                '  Dim dtFinaldate As DateTime = Convert.ToDateTime(sDateTime)
                cmd.Parameters.AddWithValue("@Scholarshipdate", sdDateTime)
            Else
                cmd.Parameters.AddWithValue("@Scholarshipdate", DBNull.Value)
            End If
            'If Txtdate.Text <> "" Then
            '    cmd.Parameters.AddWithValue("@Scholarshipdate", Txtdate.Text)
            'Else
            '    cmd.Parameters.AddWithValue("@Scholarshipdate", DBNull.Value)
            'End If
            If TextBox2.Text <> "" Then
                cmd.Parameters.AddWithValue("@ScholarshipPersent", TextBox2.Text)
            Else
                cmd.Parameters.AddWithValue("@ScholarshipPersent", DBNull.Value)
            End If
            If txtfeecommitment.Text <> "" Then
                cmd.Parameters.AddWithValue("@Feecommitment", txtfeecommitment.Text)
            Else
                cmd.Parameters.AddWithValue("@Feecommitment", DBNull.Value)
            End If

            ' ClientScript.RegisterStartupScript(Me.GetType, "alert", "alert('Enquiry Save successfully');", True)
            'lblmessage.Visible = True
            'lblmessage.Text = "Enquiry Save successfully"

        ElseIf txtFrndName1.Text <> "" And txtFrndContact1.Text <> "" Then
            sql = " Insert Into Admissions (FranchiseCode,BrandName,EnquiryNo, AdmissionDate,ModeOfEnquiry, CollegeName, Qualification, Batch, IDNo, UniRollNo,  Course,Duration,  "
            sql = sql & "  StudentName, FatherName, MotherName, ContactNo,StudentMobileNo, FatherMobileNo, Sex,  EmailID, CorrespondanceAddress, PermanentAddress, "
            sql = sql & "   ReferenceBy, Active, StatusCode,City ,Session,WhatsAppNo,RefContactNo,RefEmailID,RefDesignation,DOB,CRName1,CRDesignation1,CRContact1,CREmail1,CRName2,CRDesignation2,CRContact2,CREmail2,FRName1,FRContact1,RepresentativeName,SeminarPerson,Visited,Scholarshipdate,ScholarshipPersent,Feecommitment,imagecapture) "
            sql = sql & "  Values (@FranchiseCode,@BrandName,@EnquiryNo, @AdmissionDate,@ModeOfEnquiry, @CollegeName, @Qualification, @Batch, @IDNo, @UniRollNo, @Course, @Duration,  "
            sql = sql & "  @StudentName, @FatherName, @MotherName, @ContactNo, @StudentMobileNo, @FatherMobileNo, @Sex,  @EmailID, @CorrespondanceAddress, @PermanentAddress, "
            sql = sql & "   @ReferenceBy, @Active, @StatusCode,@City,@Session,@WhatsAppNo,@RefContactNo,@RefEmailID,@RefDesignation,@DOB, "
            sql = sql & "@CRName1,@CRDesignation1,@CRContact1,@CREmail1,@CRName2,@CRDesignation2,@CRContact2,@CREmail2,"
            sql = sql & "@FRName1,@FRContact1,@RepresentativeName,@SeminarPerson,@Visited,@Scholarshipdate,@ScholarshipPersent,@Feecommitment,@imagecapture)"

            cmd = New SqlCommand(sql, con)

            cmd.Parameters.AddWithValue("@FranchiseCode", txtfranchise.Text)
            cmd.Parameters.AddWithValue("@BrandName", txtbrand.Text)
            cmd.Parameters.AddWithValue("@EnquiryNo", txtEnquiryNo.Text)
            cmd.Parameters.AddWithValue("@AdmissionDate", TodayDate)


            If bytes IsNot Nothing Then
                cmd.Parameters.AddWithValue("@imagecapture", bytes)
            Else
                cmd.Parameters.AddWithValue("@imagecapture", New Byte() {})

            End If






            If txtDOB.Text <> "" Then

                Dim sDateTime As String = ""
                Dim sDate As String() = txtDOB.Text.Split("/")
                sDateTime = sDate(1) + "/" + sDate(0) + "/" + sDate(2)
                '  Dim dtFinaldate As DateTime = Convert.ToDateTime(sDateTime)
                cmd.Parameters.AddWithValue("@DOB", sDateTime)
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

            '==== college and friend refrence  ====
            If txtname1.Text <> "" Then
                cmd.Parameters.AddWithValue("@CRName1", txtname1.Text)
            Else
                cmd.Parameters.AddWithValue("@CRName1", DBNull.Value)
            End If
            If txtdesignation1.Text <> "" Then
                cmd.Parameters.AddWithValue("@CRDesignation1", txtdesignation1.Text)
            Else
                cmd.Parameters.AddWithValue("@CRDesignation1", DBNull.Value)
            End If
            If txtcontact1.Text <> "" Then
                cmd.Parameters.AddWithValue("@CRContact1", txtcontact1.Text)
            Else
                cmd.Parameters.AddWithValue("@CRContact1", DBNull.Value)
            End If
            If txtemail1.Text <> "" Then
                cmd.Parameters.AddWithValue("@CREmail1", txtemail1.Text)
            Else
                cmd.Parameters.AddWithValue("@CREmail1", DBNull.Value)
            End If
            If txtname2.Text <> "" Then
                cmd.Parameters.AddWithValue("@CRName2", txtname2.Text)
            Else
                cmd.Parameters.AddWithValue("@CRName2", DBNull.Value)
            End If
            If txtdesignation2.Text <> "" Then
                cmd.Parameters.AddWithValue("@CRDesignation2", txtdesignation2.Text)
            Else
                cmd.Parameters.AddWithValue("@CRDesignation2", DBNull.Value)
            End If
            If txtcontact2.Text <> "" Then
                cmd.Parameters.AddWithValue("@CRContact2", txtcontact2.Text)
            Else
                cmd.Parameters.AddWithValue("@CRContact2", DBNull.Value)
            End If
            If txtemail2.Text <> "" Then
                cmd.Parameters.AddWithValue("@CREmail2", txtemail2.Text)
            Else
                cmd.Parameters.AddWithValue("@CREmail2", DBNull.Value)
            End If
            If txtFrndName1.Text <> "" Then
                cmd.Parameters.AddWithValue("@FRName1", txtFrndName1.Text)
            Else
                cmd.Parameters.AddWithValue("@FRName1", DBNull.Value)
            End If
            If txtFrndContact1.Text <> "" Then
                cmd.Parameters.AddWithValue("@FRContact1", txtFrndContact1.Text)
            Else
                cmd.Parameters.AddWithValue("@FRContact1", DBNull.Value)
            End If
            If txtFrndName2.Text <> "" Then
                cmd.Parameters.AddWithValue("@FRName2", txtFrndName2.Text)
            Else
                cmd.Parameters.AddWithValue("@FRName2", DBNull.Value)
            End If
            If txtFrndContact2.Text <> "" Then
                cmd.Parameters.AddWithValue("@FRContact2", txtFrndContact2.Text)
            Else
                cmd.Parameters.AddWithValue("@FRContact2", DBNull.Value)
            End If
            If txtFrndName3.Text <> "" Then
                cmd.Parameters.AddWithValue("@FRName3", txtFrndName3.Text)
            Else
                cmd.Parameters.AddWithValue("@FRName3", DBNull.Value)
            End If
            If txtFrndContact3.Text <> "" Then
                cmd.Parameters.AddWithValue("@FRContact3", txtFrndContact3.Text)
            Else
                cmd.Parameters.AddWithValue("@FRContact3", DBNull.Value)
            End If
            If txtFrndName4.Text <> "" Then
                cmd.Parameters.AddWithValue("@FRName4", txtFrndName4.Text)
            Else
                cmd.Parameters.AddWithValue("@FRName4", DBNull.Value)
            End If
            If txtFrndContact4.Text <> "" Then
                cmd.Parameters.AddWithValue("@FRContact4", txtFrndContact4.Text)
            Else
                cmd.Parameters.AddWithValue("@FRContact4", DBNull.Value)
            End If
            If ddlmodeofEnquiry.Text = "Representative Call" Then
                Label12.Visible = True
                txtRepresentativeName.Visible = True
                If txtRepresentativeName.Text <> "" Then
                    cmd.Parameters.AddWithValue("@RepresentativeName", txtRepresentativeName.Text)
                End If
            Else
                cmd.Parameters.AddWithValue("@RepresentativeName", DBNull.Value)

            End If
            If ddlmodeofEnquiry.Text = "Seminar" Then
                Label13.Visible = True
                txtSeminarPerson.Visible = True
                If txtSeminarPerson.Text <> "" Then
                    cmd.Parameters.AddWithValue("@SeminarPerson", txtSeminarPerson.Text)
                End If
            Else
                cmd.Parameters.AddWithValue("@SeminarPerson", DBNull.Value)

            End If
            If rdbVisited.SelectedValue = "Yes" Then
                cmd.Parameters.AddWithValue("@Visited", "Yes")
            ElseIf rdbVisited.SelectedValue = "No" Then
                cmd.Parameters.AddWithValue("@Visited", "No")
            End If
            If Txtdate.Text <> "" Then

                Dim sdDateTime As String = ""
                Dim ssDate As String() = Txtdate.Text.Split("/")
                sdDateTime = ssDate(1) + "/" + ssDate(0) + "/" + ssDate(2)
                '  Dim dtFinaldate As DateTime = Convert.ToDateTime(sDateTime)
                cmd.Parameters.AddWithValue("@Scholarshipdate", sdDateTime)
            Else
                cmd.Parameters.AddWithValue("@Scholarshipdate", DBNull.Value)
            End If
            'If Txtdate.Text <> "" Then
            '    cmd.Parameters.AddWithValue("@Scholarshipdate", Txtdate.Text)
            'Else
            '    cmd.Parameters.AddWithValue("@Scholarshipdate", DBNull.Value)
            'End If
            If TextBox2.Text <> "" Then
                cmd.Parameters.AddWithValue("@ScholarshipPersent", TextBox2.Text)
            Else
                cmd.Parameters.AddWithValue("@ScholarshipPersent", DBNull.Value)
            End If
            If txtfeecommitment.Text <> "" Then
                cmd.Parameters.AddWithValue("@Feecommitment", txtfeecommitment.Text)
            Else
                cmd.Parameters.AddWithValue("@Feecommitment", DBNull.Value)
            End If
            ' ClientScript.RegisterStartupScript(Me.GetType, "alert", "alert('Enquiry Save successfully');", True)
            'lblmessage.Visible = True
            'lblmessage.Text = "Enquiry Save successfully"
            cmd.ExecuteNonQuery()

            cmd.Dispose()

        Else
            sql = " Insert Into Admissions (FranchiseCode,BrandName,EnquiryNo, AdmissionDate,ModeOfEnquiry, CollegeName, Qualification, Batch, IDNo, UniRollNo,  Course,Duration,  "
            sql = sql & "  StudentName, FatherName, MotherName, ContactNo,StudentMobileNo, FatherMobileNo, Sex,  EmailID, CorrespondanceAddress, PermanentAddress, "
            sql = sql & "   ReferenceBy, Active, StatusCode,City ,Session,WhatsAppNo,RefContactNo,RefEmailID,RefDesignation,DOB,CRName1,CRDesignation1,CRContact1,CREmail1,CRName2,CRDesignation2,CRContact2,CREmail2,FRName1,FRContact1,RepresentativeName,SeminarPerson,Visited,Scholarshipdate,ScholarshipPersent,Feecommitment,imagecapture) "
            sql = sql & "  Values (@FranchiseCode,@BrandName,@EnquiryNo, @AdmissionDate,@ModeOfEnquiry, @CollegeName, @Qualification, @Batch, @IDNo, @UniRollNo, @Course, @Duration,  "
            sql = sql & "  @StudentName, @FatherName, @MotherName, @ContactNo, @StudentMobileNo, @FatherMobileNo, @Sex,  @EmailID, @CorrespondanceAddress, @PermanentAddress, "
            sql = sql & "   @ReferenceBy, @Active, @StatusCode,@City,@Session,@WhatsAppNo,@RefContactNo,@RefEmailID,@RefDesignation,@DOB, "
            sql = sql & "@CRName1,@CRDesignation1,@CRContact1,@CREmail1,@CRName2,@CRDesignation2,@CRContact2,@CREmail2,"
            sql = sql & "@FRName1,@FRContact1,@RepresentativeName,@SeminarPerson,@Visited,@Scholarshipdate,@ScholarshipPersent,@Feecommitment,@imagecapture)"

            cmd = New SqlCommand(sql, con)

            cmd.Parameters.AddWithValue("@FranchiseCode", txtfranchise.Text)
            cmd.Parameters.AddWithValue("@BrandName", txtbrand.Text)
            cmd.Parameters.AddWithValue("@EnquiryNo", txtEnquiryNo.Text)
            cmd.Parameters.AddWithValue("@AdmissionDate", TodayDate)

            If bytes IsNot Nothing Then
                cmd.Parameters.AddWithValue("@imagecapture", bytes)
            Else
                cmd.Parameters.AddWithValue("@imagecapture", New Byte() {})

            End If


            If txtDOB.Text <> "" Then

                Dim sDateTime As String = ""
                Dim sDate As String() = txtDOB.Text.Split("/")
                sDateTime = sDate(1) + "/" + sDate(0) + "/" + sDate(2)
                '// Dim dtFinaldate As DateTime = Convert.ToDateTime(sDateTime)
                cmd.Parameters.AddWithValue("@DOB", sDateTime)
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

            '==== college and friend refrence  ====
            If txtname1.Text <> "" Then
                cmd.Parameters.AddWithValue("@CRName1", txtname1.Text)
            Else
                cmd.Parameters.AddWithValue("@CRName1", DBNull.Value)
            End If
            If txtdesignation1.Text <> "" Then
                cmd.Parameters.AddWithValue("@CRDesignation1", txtdesignation1.Text)
            Else
                cmd.Parameters.AddWithValue("@CRDesignation1", DBNull.Value)
            End If
            If txtcontact1.Text <> "" Then
                cmd.Parameters.AddWithValue("@CRContact1", txtcontact1.Text)
            Else
                cmd.Parameters.AddWithValue("@CRContact1", DBNull.Value)
            End If
            If txtemail1.Text <> "" Then
                cmd.Parameters.AddWithValue("@CREmail1", txtemail1.Text)
            Else
                cmd.Parameters.AddWithValue("@CREmail1", DBNull.Value)
            End If
            If txtname2.Text <> "" Then
                cmd.Parameters.AddWithValue("@CRName2", txtname2.Text)
            Else
                cmd.Parameters.AddWithValue("@CRName2", DBNull.Value)
            End If
            If txtdesignation2.Text <> "" Then
                cmd.Parameters.AddWithValue("@CRDesignation2", txtdesignation2.Text)
            Else
                cmd.Parameters.AddWithValue("@CRDesignation2", DBNull.Value)
            End If
            If txtcontact2.Text <> "" Then
                cmd.Parameters.AddWithValue("@CRContact2", txtcontact2.Text)
            Else
                cmd.Parameters.AddWithValue("@CRContact2", DBNull.Value)
            End If
            If txtemail2.Text <> "" Then
                cmd.Parameters.AddWithValue("@CREmail2", txtemail2.Text)
            Else
                cmd.Parameters.AddWithValue("@CREmail2", DBNull.Value)
            End If
            If txtFrndName1.Text <> "" Then
                cmd.Parameters.AddWithValue("@FRName1", txtFrndName1.Text)
            Else
                cmd.Parameters.AddWithValue("@FRName1", DBNull.Value)
            End If
            If txtFrndContact1.Text <> "" Then
                cmd.Parameters.AddWithValue("@FRContact1", txtFrndContact1.Text)
            Else
                cmd.Parameters.AddWithValue("@FRContact1", DBNull.Value)
            End If
            If txtFrndName2.Text <> "" Then
                cmd.Parameters.AddWithValue("@FRName2", txtFrndName2.Text)
            Else
                cmd.Parameters.AddWithValue("@FRName2", DBNull.Value)
            End If
            If txtFrndContact2.Text <> "" Then
                cmd.Parameters.AddWithValue("@FRContact2", txtFrndContact2.Text)
            Else
                cmd.Parameters.AddWithValue("@FRContact2", DBNull.Value)
            End If
            If txtFrndName3.Text <> "" Then
                cmd.Parameters.AddWithValue("@FRName3", txtFrndName3.Text)
            Else
                cmd.Parameters.AddWithValue("@FRName3", DBNull.Value)
            End If
            If txtFrndContact3.Text <> "" Then
                cmd.Parameters.AddWithValue("@FRContact3", txtFrndContact3.Text)
            Else
                cmd.Parameters.AddWithValue("@FRContact3", DBNull.Value)
            End If
            If txtFrndName4.Text <> "" Then
                cmd.Parameters.AddWithValue("@FRName4", txtFrndName4.Text)
            Else
                cmd.Parameters.AddWithValue("@FRName4", DBNull.Value)
            End If
            If txtFrndContact4.Text <> "" Then
                cmd.Parameters.AddWithValue("@FRContact4", txtFrndContact4.Text)
            Else
                cmd.Parameters.AddWithValue("@FRContact4", DBNull.Value)
            End If
            If ddlmodeofEnquiry.Text = "Representative Call" Then
                Label12.Visible = True
                txtRepresentativeName.Visible = True
                If txtRepresentativeName.Text <> "" Then
                    cmd.Parameters.AddWithValue("@RepresentativeName", txtRepresentativeName.Text)
                End If
            Else
                cmd.Parameters.AddWithValue("@RepresentativeName", DBNull.Value)

            End If
            If ddlmodeofEnquiry.Text = "Seminar" Then
                Label13.Visible = True
                txtSeminarPerson.Visible = True
                If txtSeminarPerson.Text <> "" Then
                    cmd.Parameters.AddWithValue("@SeminarPerson", txtSeminarPerson.Text)
                End If
            Else
                cmd.Parameters.AddWithValue("@SeminarPerson", DBNull.Value)

            End If
            If rdbVisited.SelectedValue = "Yes" Then
                cmd.Parameters.AddWithValue("@Visited", "Yes")
            ElseIf rdbVisited.SelectedValue = "No" Then
                cmd.Parameters.AddWithValue("@Visited", "No")
            End If
            If Txtdate.Text <> "" Then

                Dim sdDateTime As String = ""
                Dim ssDate As String() = Txtdate.Text.Split("/")
                sdDateTime = ssDate(1) + "/" + ssDate(0) + "/" + ssDate(2)
                '  Dim dtFinaldate As DateTime = Convert.ToDateTime(sDateTime)
                cmd.Parameters.AddWithValue("@Scholarshipdate", sdDateTime)
            Else
                cmd.Parameters.AddWithValue("@Scholarshipdate", DBNull.Value)
            End If
            'If Txtdate.Text <> "" Then
            '    cmd.Parameters.AddWithValue("@Scholarshipdate", Txtdate.Text)
            'Else
            '    cmd.Parameters.AddWithValue("@Scholarshipdate", DBNull.Value)
            'End If
            If TextBox2.Text <> "" Then
                cmd.Parameters.AddWithValue("@ScholarshipPersent", TextBox2.Text)
            Else
                cmd.Parameters.AddWithValue("@ScholarshipPersent", DBNull.Value)
            End If
            If txtfeecommitment.Text <> "" Then
                cmd.Parameters.AddWithValue("@Feecommitment", txtfeecommitment.Text)
            Else
                cmd.Parameters.AddWithValue("@Feecommitment", DBNull.Value)
            End If
            cmd.ExecuteNonQuery()
            cmd.Dispose()

            'ClientScript.RegisterStartupScript(Me.GetType, "alert", "alert('Enquiry Save successfully');", True)
            'lblmessage.Visible = True
            'lblmessage.Text = "Enquiry Save successfully"

        End If
        If txtFrndName2.Text <> "" And txtFrndContact2.Text <> "" Then
            Dim sql1 As String = ""
            sql1 = " Insert Into Admissions (FranchiseCode,BrandName,EnquiryNo, AdmissionDate,ModeOfEnquiry, CollegeName, Qualification, Batch, IDNo, UniRollNo,  Course,Duration,  "
            sql1 = sql1 & "  StudentName, FatherName, MotherName, ContactNo,StudentMobileNo, FatherMobileNo, Sex,  EmailID, CorrespondanceAddress, PermanentAddress, "
            sql1 = sql1 & "   ReferenceBy, Active, StatusCode,City ,Session,WhatsAppNo,RefContactNo,RefEmailID,RefDesignation,DOB,CRName1,CRDesignation1,CRContact1,CREmail1,CRName2,CRDesignation2,CRContact2,CREmail2,FRName1,FRContact1,RepresentativeName,SeminarPerson,Visited,Scholarshipdate,ScholarshipPersent,Feecommitment,imagecapture) "
            sql1 = sql1 & "  Values (@FranchiseCode,@BrandName,@EnquiryNo, @AdmissionDate,@ModeOfEnquiry, @CollegeName, @Qualification, @Batch, @IDNo, @UniRollNo, @Course, @Duration,  "
            sql1 = sql1 & "  @StudentName, @FatherName, @MotherName, @ContactNo, @StudentMobileNo, @FatherMobileNo, @Sex,  @EmailID, @CorrespondanceAddress, @PermanentAddress, "
            sql1 = sql1 & "   @ReferenceBy, @Active, @StatusCode,@City,@Session,@WhatsAppNo,@RefContactNo,@RefEmailID,@RefDesignation,@DOB, "
            sql1 = sql1 & "@CRName1,@CRDesignation1,@CRContact1,@CREmail1,@CRName2,@CRDesignation2,@CRContact2,@CREmail2,"
            sql1 = sql1 & "@FRName2,@FRContact2,@RepresentativeName,@SeminarPerson,@Visited,@Scholarshipdate,@ScholarshipPersent,@Feecommitment,@imagecapture)"

            cmd1 = New SqlCommand(sql1, con)
            cmd1.Parameters.AddWithValue("@FranchiseCode", txtfranchise.Text)
            cmd1.Parameters.AddWithValue("@BrandName", txtbrand.Text)
            cmd1.Parameters.AddWithValue("@EnquiryNo", txtEnquiryNo.Text)
            cmd1.Parameters.AddWithValue("@AdmissionDate", TodayDate)

            If bytes IsNot Nothing Then
                cmd1.Parameters.AddWithValue("@imagecapture", bytes)
            Else
                cmd1.Parameters.AddWithValue("@imagecapture", New Byte() {})

            End If



            If txtDOB.Text <> "" Then

                Dim sDateTime As String = ""
                Dim sDate As String() = txtDOB.Text.Split("/")
                sDateTime = sDate(1) + "/" + sDate(0) + "/" + sDate(2)
                '  Dim dtFinaldate As DateTime = Convert.ToDateTime(sDateTime)
                cmd1.Parameters.AddWithValue("@DOB", sDateTime)
            Else
                cmd1.Parameters.AddWithValue("@DOB", DBNull.Value)
            End If
            If ddlmodeofEnquiry.Text <> "Select" Then
                cmd1.Parameters.AddWithValue("@ModeOfEnquiry", ddlmodeofEnquiry.Text)
            Else
                cmd1.Parameters.AddWithValue("@ModeOfEnquiry", DBNull.Value)
            End If
            If txtcollegename.Text <> "" Then
                cmd1.Parameters.AddWithValue("@CollegeName", txtcollegename.Text)
            Else
                cmd1.Parameters.AddWithValue("@CollegeName", DBNull.Value)
            End If

            If txtcourse.Text <> "" Then
                cmd1.Parameters.AddWithValue("@Qualification", txtcourse.Text)
            Else
                cmd1.Parameters.AddWithValue("@Qualification", DBNull.Value)
            End If

            If txtbatch.Text <> "" Then
                cmd1.Parameters.AddWithValue("@Batch", txtbatch.Text)
            Else
                cmd1.Parameters.AddWithValue("@Batch", DBNull.Value)
            End If

            If txtIDNo.Text <> "" Then
                cmd1.Parameters.AddWithValue("@IDNo", txtIDNo.Text)
            Else
                cmd1.Parameters.AddWithValue("@IDNo", DBNull.Value)
            End If

            If txtIUniRollNo.Text <> "" Then
                cmd1.Parameters.AddWithValue("@UniRollNo", txtIUniRollNo.Text)
            Else
                cmd1.Parameters.AddWithValue("@UniRollNo", DBNull.Value)
            End If

            If txtAddCourse.Text <> "" Then
                cmd1.Parameters.AddWithValue("@Course", txtAddCourse.Text)
            Else
                cmd1.Parameters.AddWithValue("@Course", DBNull.Value)
            End If

            If drptrainingtype.Text <> "Select" Then
                cmd1.Parameters.AddWithValue("@Duration", drptrainingtype.Text)
            Else
                cmd1.Parameters.AddWithValue("@Duration", DBNull.Value)
            End If
            If txtStudentName.Text <> "" Then
                cmd1.Parameters.AddWithValue("@StudentName", txtStudentName.Text)
            Else
                cmd1.Parameters.AddWithValue("@StudentName", DBNull.Value)
            End If

            If txtFatherName.Text <> "" Then
                cmd1.Parameters.AddWithValue("@FatherName", txtFatherName.Text)
            Else
                cmd1.Parameters.AddWithValue("@FatherName", DBNull.Value)
            End If

            If txtMotherName.Text <> "" Then
                cmd1.Parameters.AddWithValue("@MotherName", txtMotherName.Text)
            Else
                cmd1.Parameters.AddWithValue("@MotherName", DBNull.Value)
            End If

            If txtContactNumber.Text <> "" Then
                cmd1.Parameters.AddWithValue("@ContactNo", txtContactNumber.Text)
            Else
                cmd1.Parameters.AddWithValue("@ContactNo", DBNull.Value)
            End If

            If txtstudentmobNo.Text <> "" Then
                cmd1.Parameters.AddWithValue("@StudentMobileNo", txtstudentmobNo.Text)
            Else
                cmd1.Parameters.AddWithValue("@StudentMobileNo", DBNull.Value)
            End If

            If txtFathermobNo0.Text <> "" Then
                cmd1.Parameters.AddWithValue("@FatherMobileNo", txtFathermobNo0.Text)
            Else
                cmd1.Parameters.AddWithValue("@FatherMobileNo", DBNull.Value)
            End If

            If ddlSex.Text <> "Select" Then
                cmd1.Parameters.AddWithValue("@Sex", ddlSex.Text)
            Else
                cmd1.Parameters.AddWithValue("@Sex", DBNull.Value)
            End If

            If txtEmailID.Text <> "" Then
                cmd1.Parameters.AddWithValue("@EmailID", txtEmailID.Text)
            Else
                cmd1.Parameters.AddWithValue("@EmailID", DBNull.Value)
            End If

            If txtcorrespondence.Text <> "" Then
                cmd1.Parameters.AddWithValue("@CorrespondanceAddress", txtcorrespondence.Text)
            Else
                cmd1.Parameters.AddWithValue("@CorrespondanceAddress", DBNull.Value)
            End If
            If txtpermanentaddress.Text <> "" Then
                cmd1.Parameters.AddWithValue("@PermanentAddress", txtpermanentaddress.Text)
            Else
                cmd1.Parameters.AddWithValue("@PermanentAddress", DBNull.Value)
            End If

            If txtreferenceby.Text <> "" Then
                cmd1.Parameters.AddWithValue("@ReferenceBy", txtreferenceby.Text)
            Else
                cmd1.Parameters.AddWithValue("@ReferenceBy", DBNull.Value)
            End If

            If txtrefdescription.Text <> "" Then
                cmd1.Parameters.AddWithValue("@RefContactNo", txtrefdescription.Text)
            Else
                cmd1.Parameters.AddWithValue("@RefContactNo", DBNull.Value)
            End If
            If txttown.Text <> "" Then
                cmd1.Parameters.AddWithValue("@City", txttown.Text)
            Else
                cmd1.Parameters.AddWithValue("@City", DBNull.Value)
            End If
            If txtWhatsappno.Text <> "" Then
                cmd1.Parameters.AddWithValue("@WhatsAppNo", txtWhatsappno.Text)
            Else
                cmd1.Parameters.AddWithValue("@WhatsAppNo", DBNull.Value)
            End If
            If txtEmailS.Text <> "" Then
                cmd1.Parameters.AddWithValue("@RefEmailID", txtEmailS.Text)
            Else
                cmd1.Parameters.AddWithValue("@RefEmailID", DBNull.Value)
            End If
            If txtDesig.Text <> "" Then
                cmd1.Parameters.AddWithValue("@RefDesignation", txtDesig.Text)
            Else
                cmd1.Parameters.AddWithValue("@RefDesignation", DBNull.Value)
            End If
            cmd1.Parameters.AddWithValue("@Session", DropDownList1.Text)
            'cmd.Parameters.AddWithValue("@SessionYear", drpsession.Text)
            cmd1.Parameters.AddWithValue("@StatusCode", "Enquiry")
            cmd1.Parameters.AddWithValue("@Active", 1)

            '==== college and friend refrence  ====
            If txtname1.Text <> "" Then
                cmd1.Parameters.AddWithValue("@CRName1", txtname1.Text)
            Else
                cmd1.Parameters.AddWithValue("@CRName1", DBNull.Value)
            End If
            If txtdesignation1.Text <> "" Then
                cmd1.Parameters.AddWithValue("@CRDesignation1", txtdesignation1.Text)
            Else
                cmd1.Parameters.AddWithValue("@CRDesignation1", DBNull.Value)
            End If
            If txtcontact1.Text <> "" Then
                cmd1.Parameters.AddWithValue("@CRContact1", txtcontact1.Text)
            Else
                cmd1.Parameters.AddWithValue("@CRContact1", DBNull.Value)
            End If
            If txtemail1.Text <> "" Then
                cmd1.Parameters.AddWithValue("@CREmail1", txtemail1.Text)
            Else
                cmd1.Parameters.AddWithValue("@CREmail1", DBNull.Value)
            End If
            If txtname2.Text <> "" Then
                cmd1.Parameters.AddWithValue("@CRName2", txtname2.Text)
            Else
                cmd1.Parameters.AddWithValue("@CRName2", DBNull.Value)
            End If
            If txtdesignation2.Text <> "" Then
                cmd1.Parameters.AddWithValue("@CRDesignation2", txtdesignation2.Text)
            Else
                cmd1.Parameters.AddWithValue("@CRDesignation2", DBNull.Value)
            End If
            If txtcontact2.Text <> "" Then
                cmd1.Parameters.AddWithValue("@CRContact2", txtcontact2.Text)
            Else
                cmd1.Parameters.AddWithValue("@CRContact2", DBNull.Value)
            End If
            If txtemail2.Text <> "" Then
                cmd1.Parameters.AddWithValue("@CREmail2", txtemail2.Text)
            Else
                cmd1.Parameters.AddWithValue("@CREmail2", DBNull.Value)
            End If
            If txtFrndName1.Text <> "" Then
                cmd1.Parameters.AddWithValue("@FRName1", txtFrndName1.Text)
            Else
                cmd1.Parameters.AddWithValue("@FRName1", DBNull.Value)
            End If
            If txtFrndContact1.Text <> "" Then
                cmd1.Parameters.AddWithValue("@FRContact1", txtFrndContact1.Text)
            Else
                cmd1.Parameters.AddWithValue("@FRContact1", DBNull.Value)
            End If
            If txtFrndName2.Text <> "" Then
                cmd1.Parameters.AddWithValue("@FRName2", txtFrndName2.Text)
            Else
                cmd1.Parameters.AddWithValue("@FRName2", DBNull.Value)
            End If
            If txtFrndContact2.Text <> "" Then
                cmd1.Parameters.AddWithValue("@FRContact2", txtFrndContact2.Text)
            Else
                cmd1.Parameters.AddWithValue("@FRContact2", DBNull.Value)
            End If
            If txtFrndName3.Text <> "" Then
                cmd1.Parameters.AddWithValue("@FRName3", txtFrndName3.Text)
            Else
                cmd1.Parameters.AddWithValue("@FRName3", DBNull.Value)
            End If
            If txtFrndContact3.Text <> "" Then
                cmd1.Parameters.AddWithValue("@FRContact3", txtFrndContact3.Text)
            Else
                cmd1.Parameters.AddWithValue("@FRContact3", DBNull.Value)
            End If
            If txtFrndName4.Text <> "" Then
                cmd1.Parameters.AddWithValue("@FRName4", txtFrndName4.Text)
            Else
                cmd1.Parameters.AddWithValue("@FRName4", DBNull.Value)
            End If
            If txtFrndContact4.Text <> "" Then
                cmd1.Parameters.AddWithValue("@FRContact4", txtFrndContact4.Text)
            Else
                cmd1.Parameters.AddWithValue("@FRContact4", DBNull.Value)
            End If
            If ddlmodeofEnquiry.Text = "Representative Call" Then
                Label12.Visible = True
                txtRepresentativeName.Visible = True
                If txtRepresentativeName.Text <> "" Then
                    cmd1.Parameters.AddWithValue("@RepresentativeName", txtRepresentativeName.Text)
                End If
            Else
                cmd1.Parameters.AddWithValue("@RepresentativeName", DBNull.Value)

            End If
            If ddlmodeofEnquiry.Text = "Seminar" Then
                Label13.Visible = True
                txtSeminarPerson.Visible = True
                If txtSeminarPerson.Text <> "" Then
                    cmd1.Parameters.AddWithValue("@SeminarPerson", txtSeminarPerson.Text)
                End If
            Else
                cmd1.Parameters.AddWithValue("@SeminarPerson", DBNull.Value)

            End If
            If rdbVisited.SelectedValue = "Yes" Then
                cmd1.Parameters.AddWithValue("@Visited", "Yes")
            ElseIf rdbVisited.SelectedValue = "No" Then
                cmd1.Parameters.AddWithValue("@Visited", "No")
            End If
            If Txtdate.Text <> "" Then

                Dim sdDateTime As String = ""
                Dim ssDate As String() = Txtdate.Text.Split("/")
                sdDateTime = ssDate(1) + "/" + ssDate(0) + "/" + ssDate(2)
                '  Dim dtFinaldate As DateTime = Convert.ToDateTime(sDateTime)
                cmd.Parameters.AddWithValue("@Scholarshipdate", sdDateTime)
            Else
                cmd.Parameters.AddWithValue("@Scholarshipdate", DBNull.Value)
            End If
            'If Txtdate.Text <> "" Then
            '    cmd.Parameters.AddWithValue("@Scholarshipdate", Txtdate.Text)
            'Else
            '    cmd.Parameters.AddWithValue("@Scholarshipdate", DBNull.Value)
            'End If
            If TextBox2.Text <> "" Then
                cmd.Parameters.AddWithValue("@ScholarshipPersent", TextBox2.Text)
            Else
                cmd.Parameters.AddWithValue("@ScholarshipPersent", DBNull.Value)
            End If
            If txtfeecommitment.Text <> "" Then
                cmd.Parameters.AddWithValue("@Feecommitment", txtfeecommitment.Text)
            Else
                cmd.Parameters.AddWithValue("@Feecommitment", DBNull.Value)
            End If
            cmd1.ExecuteNonQuery()
            cmd1.Dispose()

            ' ClientScript.RegisterStartupScript(Me.GetType, "alert", "alert('Enquiry Save successfully');", True)
            'lblmessage.Visible = True
            'lblmessage.Text = "Enquiry Save successfully"

        End If
        If txtFrndName3.Text <> "" And txtFrndContact3.Text <> "" Then
            Dim sql2 As String = ""
            sql2 = " Insert Into Admissions (FranchiseCode,BrandName,EnquiryNo, AdmissionDate,ModeOfEnquiry, CollegeName, Qualification, Batch, IDNo, UniRollNo,  Course,Duration,  "
            sql2 = sql2 & "  StudentName, FatherName, MotherName, ContactNo,StudentMobileNo, FatherMobileNo, Sex,  EmailID, CorrespondanceAddress, PermanentAddress, "
            sql2 = sql2 & "   ReferenceBy, Active, StatusCode,City ,Session,WhatsAppNo,RefContactNo,RefEmailID,RefDesignation,DOB,CRName1,CRDesignation1,CRContact1,CREmail1,CRName2,CRDesignation2,CRContact2,CREmail2,FRName1,FRContact1,RepresentativeName,SeminarPerson,Visited,Scholarshipdate,ScholarshipPersent,Feecommitment,imagecapture) "
            sql2 = sql2 & "  Values (@FranchiseCode,@BrandName,@EnquiryNo, @AdmissionDate,@ModeOfEnquiry, @CollegeName, @Qualification, @Batch, @IDNo, @UniRollNo, @Course, @Duration,  "
            sql2 = sql2 & "  @StudentName, @FatherName, @MotherName, @ContactNo, @StudentMobileNo, @FatherMobileNo, @Sex,  @EmailID, @CorrespondanceAddress, @PermanentAddress, "
            sql2 = sql2 & "   @ReferenceBy, @Active, @StatusCode,@City,@Session,@WhatsAppNo,@RefContactNo,@RefEmailID,@RefDesignation,@DOB, "
            sql2 = sql2 & "@CRName1,@CRDesignation1,@CRContact1,@CREmail1,@CRName2,@CRDesignation2,@CRContact2,@CREmail2,"
            sql2 = sql2 & "@FRName3,@FRContact3,@RepresentativeName,@SeminarPerson,@Visited,@Scholarshipdate,@ScholarshipPersent,@Feecommitment,@imagecapture)"

            cmd2 = New SqlCommand(sql2, con)
            cmd2.Parameters.AddWithValue("@FranchiseCode", txtfranchise.Text)
            cmd2.Parameters.AddWithValue("@BrandName", txtbrand.Text)
            cmd2.Parameters.AddWithValue("@EnquiryNo", txtEnquiryNo.Text)
            cmd2.Parameters.AddWithValue("@AdmissionDate", TodayDate)

            If bytes IsNot Nothing Then
                cmd2.Parameters.AddWithValue("@imagecapture", bytes)
            Else
                cmd2.Parameters.AddWithValue("@imagecapture", New Byte() {})

            End If


            If txtDOB.Text <> "" Then

                Dim sDateTime As String = ""
                Dim sDate As String() = txtDOB.Text.Split("/")
                sDateTime = sDate(1) + "/" + sDate(0) + "/" + sDate(2)
                'Dim dtFinaldate As DateTime = Convert.ToDateTime(sDateTime)
                cmd2.Parameters.AddWithValue("@DOB", sDateTime)
            Else
                cmd2.Parameters.AddWithValue("@DOB", DBNull.Value)
            End If
            If ddlmodeofEnquiry.Text <> "Select" Then
                cmd2.Parameters.AddWithValue("@ModeOfEnquiry", ddlmodeofEnquiry.Text)
            Else
                cmd2.Parameters.AddWithValue("@ModeOfEnquiry", DBNull.Value)
            End If
            If txtcollegename.Text <> "" Then
                cmd2.Parameters.AddWithValue("@CollegeName", txtcollegename.Text)
            Else
                cmd2.Parameters.AddWithValue("@CollegeName", DBNull.Value)
            End If

            If txtcourse.Text <> "" Then
                cmd2.Parameters.AddWithValue("@Qualification", txtcourse.Text)
            Else
                cmd2.Parameters.AddWithValue("@Qualification", DBNull.Value)
            End If

            If txtbatch.Text <> "" Then
                cmd2.Parameters.AddWithValue("@Batch", txtbatch.Text)
            Else
                cmd2.Parameters.AddWithValue("@Batch", DBNull.Value)
            End If

            If txtIDNo.Text <> "" Then
                cmd2.Parameters.AddWithValue("@IDNo", txtIDNo.Text)
            Else
                cmd2.Parameters.AddWithValue("@IDNo", DBNull.Value)
            End If

            If txtIUniRollNo.Text <> "" Then
                cmd2.Parameters.AddWithValue("@UniRollNo", txtIUniRollNo.Text)
            Else
                cmd2.Parameters.AddWithValue("@UniRollNo", DBNull.Value)
            End If

            If txtAddCourse.Text <> "" Then
                cmd2.Parameters.AddWithValue("@Course", txtAddCourse.Text)
            Else
                cmd2.Parameters.AddWithValue("@Course", DBNull.Value)
            End If

            If drptrainingtype.Text <> "Select" Then
                cmd2.Parameters.AddWithValue("@Duration", drptrainingtype.Text)
            Else
                cmd2.Parameters.AddWithValue("@Duration", DBNull.Value)
            End If
            If txtStudentName.Text <> "" Then
                cmd2.Parameters.AddWithValue("@StudentName", txtStudentName.Text)
            Else
                cmd2.Parameters.AddWithValue("@StudentName", DBNull.Value)
            End If

            If txtFatherName.Text <> "" Then
                cmd2.Parameters.AddWithValue("@FatherName", txtFatherName.Text)
            Else
                cmd2.Parameters.AddWithValue("@FatherName", DBNull.Value)
            End If

            If txtMotherName.Text <> "" Then
                cmd2.Parameters.AddWithValue("@MotherName", txtMotherName.Text)
            Else
                cmd2.Parameters.AddWithValue("@MotherName", DBNull.Value)
            End If

            If txtContactNumber.Text <> "" Then
                cmd2.Parameters.AddWithValue("@ContactNo", txtContactNumber.Text)
            Else
                cmd2.Parameters.AddWithValue("@ContactNo", DBNull.Value)
            End If

            If txtstudentmobNo.Text <> "" Then
                cmd2.Parameters.AddWithValue("@StudentMobileNo", txtstudentmobNo.Text)
            Else
                cmd2.Parameters.AddWithValue("@StudentMobileNo", DBNull.Value)
            End If

            If txtFathermobNo0.Text <> "" Then
                cmd2.Parameters.AddWithValue("@FatherMobileNo", txtFathermobNo0.Text)
            Else
                cmd2.Parameters.AddWithValue("@FatherMobileNo", DBNull.Value)
            End If

            If ddlSex.Text <> "Select" Then
                cmd2.Parameters.AddWithValue("@Sex", ddlSex.Text)
            Else
                cmd2.Parameters.AddWithValue("@Sex", DBNull.Value)
            End If

            If txtEmailID.Text <> "" Then
                cmd2.Parameters.AddWithValue("@EmailID", txtEmailID.Text)
            Else
                cmd2.Parameters.AddWithValue("@EmailID", DBNull.Value)
            End If

            If txtcorrespondence.Text <> "" Then
                cmd2.Parameters.AddWithValue("@CorrespondanceAddress", txtcorrespondence.Text)
            Else
                cmd2.Parameters.AddWithValue("@CorrespondanceAddress", DBNull.Value)
            End If
            If txtpermanentaddress.Text <> "" Then
                cmd2.Parameters.AddWithValue("@PermanentAddress", txtpermanentaddress.Text)
            Else
                cmd2.Parameters.AddWithValue("@PermanentAddress", DBNull.Value)
            End If

            If txtreferenceby.Text <> "" Then
                cmd2.Parameters.AddWithValue("@ReferenceBy", txtreferenceby.Text)
            Else
                cmd2.Parameters.AddWithValue("@ReferenceBy", DBNull.Value)
            End If

            If txtrefdescription.Text <> "" Then
                cmd2.Parameters.AddWithValue("@RefContactNo", txtrefdescription.Text)
            Else
                cmd2.Parameters.AddWithValue("@RefContactNo", DBNull.Value)
            End If
            If txttown.Text <> "" Then
                cmd2.Parameters.AddWithValue("@City", txttown.Text)
            Else
                cmd2.Parameters.AddWithValue("@City", DBNull.Value)
            End If
            If txtWhatsappno.Text <> "" Then
                cmd2.Parameters.AddWithValue("@WhatsAppNo", txtWhatsappno.Text)
            Else
                cmd2.Parameters.AddWithValue("@WhatsAppNo", DBNull.Value)
            End If
            If txtEmailS.Text <> "" Then
                cmd2.Parameters.AddWithValue("@RefEmailID", txtEmailS.Text)
            Else
                cmd2.Parameters.AddWithValue("@RefEmailID", DBNull.Value)
            End If
            If txtDesig.Text <> "" Then
                cmd2.Parameters.AddWithValue("@RefDesignation", txtDesig.Text)
            Else
                cmd2.Parameters.AddWithValue("@RefDesignation", DBNull.Value)
            End If
            cmd2.Parameters.AddWithValue("@Session", DropDownList1.Text)
            'cmd2.Parameters.AddWithValue("@SessionYear", drpsession.Text)
            cmd2.Parameters.AddWithValue("@StatusCode", "Enquiry")
            cmd2.Parameters.AddWithValue("@Active", 1)

            '==== college and friend refrence  ====
            If txtname1.Text <> "" Then
                cmd2.Parameters.AddWithValue("@CRName1", txtname1.Text)
            Else
                cmd2.Parameters.AddWithValue("@CRName1", DBNull.Value)
            End If
            If txtdesignation1.Text <> "" Then
                cmd2.Parameters.AddWithValue("@CRDesignation1", txtdesignation1.Text)
            Else
                cmd2.Parameters.AddWithValue("@CRDesignation1", DBNull.Value)
            End If
            If txtcontact1.Text <> "" Then
                cmd2.Parameters.AddWithValue("@CRContact1", txtcontact1.Text)
            Else
                cmd2.Parameters.AddWithValue("@CRContact1", DBNull.Value)
            End If
            If txtemail1.Text <> "" Then
                cmd2.Parameters.AddWithValue("@CREmail1", txtemail1.Text)
            Else
                cmd2.Parameters.AddWithValue("@CREmail1", DBNull.Value)
            End If
            If txtname2.Text <> "" Then
                cmd2.Parameters.AddWithValue("@CRName2", txtname2.Text)
            Else
                cmd2.Parameters.AddWithValue("@CRName2", DBNull.Value)
            End If
            If txtdesignation2.Text <> "" Then
                cmd2.Parameters.AddWithValue("@CRDesignation2", txtdesignation2.Text)
            Else
                cmd2.Parameters.AddWithValue("@CRDesignation2", DBNull.Value)
            End If
            If txtcontact2.Text <> "" Then
                cmd2.Parameters.AddWithValue("@CRContact2", txtcontact2.Text)
            Else
                cmd2.Parameters.AddWithValue("@CRContact2", DBNull.Value)
            End If
            If txtemail2.Text <> "" Then
                cmd2.Parameters.AddWithValue("@CREmail2", txtemail2.Text)
            Else
                cmd2.Parameters.AddWithValue("@CREmail2", DBNull.Value)
            End If
            If txtFrndName1.Text <> "" Then
                cmd2.Parameters.AddWithValue("@FRName1", txtFrndName1.Text)
            Else
                cmd2.Parameters.AddWithValue("@FRName1", DBNull.Value)
            End If
            If txtFrndContact1.Text <> "" Then
                cmd2.Parameters.AddWithValue("@FRContact1", txtFrndContact1.Text)
            Else
                cmd2.Parameters.AddWithValue("@FRContact1", DBNull.Value)
            End If
            If txtFrndName2.Text <> "" Then
                cmd2.Parameters.AddWithValue("@FRName2", txtFrndName2.Text)
            Else
                cmd2.Parameters.AddWithValue("@FRName2", DBNull.Value)
            End If
            If txtFrndContact2.Text <> "" Then
                cmd2.Parameters.AddWithValue("@FRContact2", txtFrndContact2.Text)
            Else
                cmd2.Parameters.AddWithValue("@FRContact2", DBNull.Value)
            End If
            If txtFrndName3.Text <> "" Then
                cmd2.Parameters.AddWithValue("@FRName3", txtFrndName3.Text)
            Else
                cmd2.Parameters.AddWithValue("@FRName3", DBNull.Value)
            End If
            If txtFrndContact3.Text <> "" Then
                cmd2.Parameters.AddWithValue("@FRContact3", txtFrndContact3.Text)
            Else
                cmd2.Parameters.AddWithValue("@FRContact3", DBNull.Value)
            End If
            If txtFrndName4.Text <> "" Then
                cmd2.Parameters.AddWithValue("@FRName4", txtFrndName4.Text)
            Else
                cmd2.Parameters.AddWithValue("@FRName4", DBNull.Value)
            End If
            If txtFrndContact4.Text <> "" Then
                cmd2.Parameters.AddWithValue("@FRContact4", txtFrndContact4.Text)
            Else
                cmd2.Parameters.AddWithValue("@FRContact4", DBNull.Value)
            End If
            If ddlmodeofEnquiry.Text = "Representative Call" Then
                Label12.Visible = True
                txtRepresentativeName.Visible = True
                If txtRepresentativeName.Text <> "" Then
                    cmd2.Parameters.AddWithValue("@RepresentativeName", txtRepresentativeName.Text)
                End If
            Else
                cmd2.Parameters.AddWithValue("@RepresentativeName", DBNull.Value)

            End If
            If ddlmodeofEnquiry.Text = "Seminar" Then
                Label13.Visible = True
                txtSeminarPerson.Visible = True
                If txtSeminarPerson.Text <> "" Then
                    cmd2.Parameters.AddWithValue("@SeminarPerson", txtSeminarPerson.Text)
                End If
            Else
                cmd2.Parameters.AddWithValue("@SeminarPerson", DBNull.Value)

            End If
            If rdbVisited.SelectedValue = "Yes" Then
                cmd2.Parameters.AddWithValue("@Visited", "Yes")
            ElseIf rdbVisited.SelectedValue = "No" Then
                cmd2.Parameters.AddWithValue("@Visited", "No")
            End If
            If Txtdate.Text <> "" Then

                Dim sdDateTime As String = ""
                Dim ssDate As String() = Txtdate.Text.Split("/")
                sdDateTime = ssDate(1) + "/" + ssDate(0) + "/" + ssDate(2)
                '  Dim dtFinaldate As DateTime = Convert.ToDateTime(sDateTime)
                cmd.Parameters.AddWithValue("@Scholarshipdate", sdDateTime)
            Else
                cmd.Parameters.AddWithValue("@Scholarshipdate", DBNull.Value)
            End If
            'If Txtdate.Text <> "" Then
            '    cmd.Parameters.AddWithValue("@Scholarshipdate", Txtdate.Text)
            'Else
            '    cmd.Parameters.AddWithValue("@Scholarshipdate", DBNull.Value)
            'End If
            If TextBox2.Text <> "" Then
                cmd.Parameters.AddWithValue("@ScholarshipPersent", TextBox2.Text)
            Else
                cmd.Parameters.AddWithValue("@ScholarshipPersent", DBNull.Value)
            End If
            If txtfeecommitment.Text <> "" Then
                cmd.Parameters.AddWithValue("@Feecommitment", txtfeecommitment.Text)
            Else
                cmd.Parameters.AddWithValue("@Feecommitment", DBNull.Value)
            End If
            cmd2.ExecuteNonQuery()
            cmd2.Dispose()

            ' ClientScript.RegisterStartupScript(Me.GetType, "alert", "alert('Enquiry Save successfully');", True)
            'lblmessage.Visible = True
            'lblmessage.Text = "Enquiry Save successfully"
        End If
        If txtFrndName4.Text <> "" And txtFrndContact4.Text <> "" Then
            Dim sql3 As String = ""
            sql3 = " Insert Into Admissions (FranchiseCode,BrandName,EnquiryNo, AdmissionDate,ModeOfEnquiry, CollegeName, Qualification, Batch, IDNo, UniRollNo,  Course,Duration,  "
            sql3 = sql3 & "  StudentName, FatherName, MotherName, ContactNo,StudentMobileNo, FatherMobileNo, Sex,  EmailID, CorrespondanceAddress, PermanentAddress, "
            sql3 = sql3 & "   ReferenceBy, Active, StatusCode,City ,Session,WhatsAppNo,RefContactNo,RefEmailID,RefDesignation,DOB,CRName1,CRDesignation1,CRContact1,CREmail1,CRName2,CRDesignation2,CRContact2,CREmail2,FRName1,FRContact1,RepresentativeName,SeminarPerson,Visited,Scholarshipdate,ScholarshipPersent,Feecommitment,imagecapture) "
            sql3 = sql3 & "  Values (@FranchiseCode,@BrandName,@EnquiryNo, @AdmissionDate,@ModeOfEnquiry, @CollegeName, @Qualification, @Batch, @IDNo, @UniRollNo, @Course, @Duration,  "
            sql3 = sql3 & "  @StudentName, @FatherName, @MotherName, @ContactNo, @StudentMobileNo, @FatherMobileNo, @Sex,  @EmailID, @CorrespondanceAddress, @PermanentAddress, "
            sql3 = sql3 & "   @ReferenceBy, @Active, @StatusCode,@City,@Session,@WhatsAppNo,@RefContactNo,@RefEmailID,@RefDesignation,@DOB, "
            sql3 = sql3 & "@CRName1,@CRDesignation1,@CRContact1,@CREmail1,@CRName2,@CRDesignation2,@CRContact2,@CREmail2,"
            sql3 = sql3 & "@FRName4,@FRContact4,@RepresentativeName,@SeminarPerson,@Visited,@Scholarshipdate,@ScholarshipPersent,@Feecommitment,@imagecapture)"

            cmd3 = New SqlCommand(sql3, con)
            cmd3.Parameters.AddWithValue("@FranchiseCode", txtfranchise.Text)
            cmd3.Parameters.AddWithValue("@BrandName", txtbrand.Text)
            cmd3.Parameters.AddWithValue("@EnquiryNo", txtEnquiryNo.Text)
            cmd3.Parameters.AddWithValue("@AdmissionDate", TodayDate)

            If bytes IsNot Nothing Then
                cmd3.Parameters.AddWithValue("@imagecapture", bytes)
            Else
                cmd3.Parameters.AddWithValue("@imagecapture", New Byte() {})

            End If


            If txtDOB.Text <> "" Then

                Dim sDateTime As String = ""
                Dim sDate As String() = txtDOB.Text.Split("/")
                sDateTime = sDate(1) + "/" + sDate(0) + "/" + sDate(2)
                ' Dim dtFinaldate As DateTime = Convert.ToDateTime(sDateTime)
                cmd3.Parameters.AddWithValue("@DOB", sDateTime)
            Else
                cmd3.Parameters.AddWithValue("@DOB", DBNull.Value)
            End If
            If ddlmodeofEnquiry.Text <> "Select" Then
                cmd3.Parameters.AddWithValue("@ModeOfEnquiry", ddlmodeofEnquiry.Text)
            Else
                cmd3.Parameters.AddWithValue("@ModeOfEnquiry", DBNull.Value)
            End If
            If txtcollegename.Text <> "" Then
                cmd3.Parameters.AddWithValue("@CollegeName", txtcollegename.Text)
            Else
                cmd3.Parameters.AddWithValue("@CollegeName", DBNull.Value)
            End If

            If txtcourse.Text <> "" Then
                cmd3.Parameters.AddWithValue("@Qualification", txtcourse.Text)
            Else
                cmd3.Parameters.AddWithValue("@Qualification", DBNull.Value)
            End If

            If txtbatch.Text <> "" Then
                cmd3.Parameters.AddWithValue("@Batch", txtbatch.Text)
            Else
                cmd3.Parameters.AddWithValue("@Batch", DBNull.Value)
            End If

            If txtIDNo.Text <> "" Then
                cmd3.Parameters.AddWithValue("@IDNo", txtIDNo.Text)
            Else
                cmd3.Parameters.AddWithValue("@IDNo", DBNull.Value)
            End If

            If txtIUniRollNo.Text <> "" Then
                cmd3.Parameters.AddWithValue("@UniRollNo", txtIUniRollNo.Text)
            Else
                cmd3.Parameters.AddWithValue("@UniRollNo", DBNull.Value)
            End If

            If txtAddCourse.Text <> "" Then
                cmd3.Parameters.AddWithValue("@Course", txtAddCourse.Text)
            Else
                cmd3.Parameters.AddWithValue("@Course", DBNull.Value)
            End If

            If drptrainingtype.Text <> "Select" Then
                cmd3.Parameters.AddWithValue("@Duration", drptrainingtype.Text)
            Else
                cmd3.Parameters.AddWithValue("@Duration", DBNull.Value)
            End If
            If txtStudentName.Text <> "" Then
                cmd3.Parameters.AddWithValue("@StudentName", txtStudentName.Text)
            Else
                cmd3.Parameters.AddWithValue("@StudentName", DBNull.Value)
            End If

            If txtFatherName.Text <> "" Then
                cmd3.Parameters.AddWithValue("@FatherName", txtFatherName.Text)
            Else
                cmd3.Parameters.AddWithValue("@FatherName", DBNull.Value)
            End If

            If txtMotherName.Text <> "" Then
                cmd3.Parameters.AddWithValue("@MotherName", txtMotherName.Text)
            Else
                cmd3.Parameters.AddWithValue("@MotherName", DBNull.Value)
            End If

            If txtContactNumber.Text <> "" Then
                cmd3.Parameters.AddWithValue("@ContactNo", txtContactNumber.Text)
            Else
                cmd3.Parameters.AddWithValue("@ContactNo", DBNull.Value)
            End If

            If txtstudentmobNo.Text <> "" Then
                cmd3.Parameters.AddWithValue("@StudentMobileNo", txtstudentmobNo.Text)
            Else
                cmd3.Parameters.AddWithValue("@StudentMobileNo", DBNull.Value)
            End If

            If txtFathermobNo0.Text <> "" Then
                cmd3.Parameters.AddWithValue("@FatherMobileNo", txtFathermobNo0.Text)
            Else
                cmd3.Parameters.AddWithValue("@FatherMobileNo", DBNull.Value)
            End If

            If ddlSex.Text <> "Select" Then
                cmd3.Parameters.AddWithValue("@Sex", ddlSex.Text)
            Else
                cmd3.Parameters.AddWithValue("@Sex", DBNull.Value)
            End If

            If txtEmailID.Text <> "" Then
                cmd3.Parameters.AddWithValue("@EmailID", txtEmailID.Text)
            Else
                cmd3.Parameters.AddWithValue("@EmailID", DBNull.Value)
            End If

            If txtcorrespondence.Text <> "" Then
                cmd3.Parameters.AddWithValue("@CorrespondanceAddress", txtcorrespondence.Text)
            Else
                cmd3.Parameters.AddWithValue("@CorrespondanceAddress", DBNull.Value)
            End If
            If txtpermanentaddress.Text <> "" Then
                cmd3.Parameters.AddWithValue("@PermanentAddress", txtpermanentaddress.Text)
            Else
                cmd3.Parameters.AddWithValue("@PermanentAddress", DBNull.Value)
            End If

            If txtreferenceby.Text <> "" Then
                cmd3.Parameters.AddWithValue("@ReferenceBy", txtreferenceby.Text)
            Else
                cmd3.Parameters.AddWithValue("@ReferenceBy", DBNull.Value)
            End If

            If txtrefdescription.Text <> "" Then
                cmd3.Parameters.AddWithValue("@RefContactNo", txtrefdescription.Text)
            Else
                cmd3.Parameters.AddWithValue("@RefContactNo", DBNull.Value)
            End If
            If txttown.Text <> "" Then
                cmd3.Parameters.AddWithValue("@City", txttown.Text)
            Else
                cmd3.Parameters.AddWithValue("@City", DBNull.Value)
            End If
            If txtWhatsappno.Text <> "" Then
                cmd3.Parameters.AddWithValue("@WhatsAppNo", txtWhatsappno.Text)
            Else
                cmd3.Parameters.AddWithValue("@WhatsAppNo", DBNull.Value)
            End If
            If txtEmailS.Text <> "" Then
                cmd3.Parameters.AddWithValue("@RefEmailID", txtEmailS.Text)
            Else
                cmd3.Parameters.AddWithValue("@RefEmailID", DBNull.Value)
            End If
            If txtDesig.Text <> "" Then
                cmd3.Parameters.AddWithValue("@RefDesignation", txtDesig.Text)
            Else
                cmd3.Parameters.AddWithValue("@RefDesignation", DBNull.Value)
            End If
            cmd3.Parameters.AddWithValue("@Session", DropDownList1.Text)
            'cmd3.Parameters.AddWithValue("@SessionYear", drpsession.Text)
            cmd3.Parameters.AddWithValue("@StatusCode", "Enquiry")
            cmd3.Parameters.AddWithValue("@Active", 1)

            '==== college and friend refrence  ====
            If txtname1.Text <> "" Then
                cmd3.Parameters.AddWithValue("@CRName1", txtname1.Text)
            Else
                cmd3.Parameters.AddWithValue("@CRName1", DBNull.Value)
            End If
            If txtdesignation1.Text <> "" Then
                cmd3.Parameters.AddWithValue("@CRDesignation1", txtdesignation1.Text)
            Else
                cmd3.Parameters.AddWithValue("@CRDesignation1", DBNull.Value)
            End If
            If txtcontact1.Text <> "" Then
                cmd3.Parameters.AddWithValue("@CRContact1", txtcontact1.Text)
            Else
                cmd3.Parameters.AddWithValue("@CRContact1", DBNull.Value)
            End If
            If txtemail1.Text <> "" Then
                cmd3.Parameters.AddWithValue("@CREmail1", txtemail1.Text)
            Else
                cmd3.Parameters.AddWithValue("@CREmail1", DBNull.Value)
            End If
            If txtname2.Text <> "" Then
                cmd3.Parameters.AddWithValue("@CRName2", txtname2.Text)
            Else
                cmd3.Parameters.AddWithValue("@CRName2", DBNull.Value)
            End If
            If txtdesignation2.Text <> "" Then
                cmd3.Parameters.AddWithValue("@CRDesignation2", txtdesignation2.Text)
            Else
                cmd3.Parameters.AddWithValue("@CRDesignation2", DBNull.Value)
            End If
            If txtcontact2.Text <> "" Then
                cmd3.Parameters.AddWithValue("@CRContact2", txtcontact2.Text)
            Else
                cmd3.Parameters.AddWithValue("@CRContact2", DBNull.Value)
            End If
            If txtemail2.Text <> "" Then
                cmd3.Parameters.AddWithValue("@CREmail2", txtemail2.Text)
            Else
                cmd3.Parameters.AddWithValue("@CREmail2", DBNull.Value)
            End If
            If txtFrndName1.Text <> "" Then
                cmd3.Parameters.AddWithValue("@FRName1", txtFrndName1.Text)
            Else
                cmd3.Parameters.AddWithValue("@FRName1", DBNull.Value)
            End If
            If txtFrndContact1.Text <> "" Then
                cmd3.Parameters.AddWithValue("@FRContact1", txtFrndContact1.Text)
            Else
                cmd3.Parameters.AddWithValue("@FRContact1", DBNull.Value)
            End If
            If txtFrndName2.Text <> "" Then
                cmd3.Parameters.AddWithValue("@FRName2", txtFrndName2.Text)
            Else
                cmd3.Parameters.AddWithValue("@FRName2", DBNull.Value)
            End If
            If txtFrndContact2.Text <> "" Then
                cmd3.Parameters.AddWithValue("@FRContact2", txtFrndContact2.Text)
            Else
                cmd3.Parameters.AddWithValue("@FRContact2", DBNull.Value)
            End If
            If txtFrndName3.Text <> "" Then
                cmd3.Parameters.AddWithValue("@FRName3", txtFrndName3.Text)
            Else
                cmd3.Parameters.AddWithValue("@FRName3", DBNull.Value)
            End If
            If txtFrndContact3.Text <> "" Then
                cmd3.Parameters.AddWithValue("@FRContact3", txtFrndContact3.Text)
            Else
                cmd3.Parameters.AddWithValue("@FRContact3", DBNull.Value)
            End If
            If txtFrndName4.Text <> "" Then
                cmd3.Parameters.AddWithValue("@FRName4", txtFrndName4.Text)
            Else
                cmd3.Parameters.AddWithValue("@FRName4", DBNull.Value)
            End If
            If txtFrndContact4.Text <> "" Then
                cmd3.Parameters.AddWithValue("@FRContact4", txtFrndContact4.Text)
            Else
                cmd3.Parameters.AddWithValue("@FRContact4", DBNull.Value)
            End If
            If ddlmodeofEnquiry.Text = "Representative Call" Then
                Label12.Visible = True
                txtRepresentativeName.Visible = True
                If txtRepresentativeName.Text <> "" Then
                    cmd3.Parameters.AddWithValue("@RepresentativeName", txtRepresentativeName.Text)
                End If
            Else
                cmd3.Parameters.AddWithValue("@RepresentativeName", DBNull.Value)

            End If
            If ddlmodeofEnquiry.Text = "Seminar" Then
                Label13.Visible = True
                txtSeminarPerson.Visible = True
                If txtSeminarPerson.Text <> "" Then
                    cmd3.Parameters.AddWithValue("@SeminarPerson", txtSeminarPerson.Text)
                End If
            Else
                cmd3.Parameters.AddWithValue("@SeminarPerson", DBNull.Value)

            End If
            If rdbVisited.SelectedValue = "Yes" Then
                cmd3.Parameters.AddWithValue("@Visited", "Yes")
            ElseIf rdbVisited.SelectedValue = "No" Then
                cmd3.Parameters.AddWithValue("@Visited", "No")
            End If
            If Txtdate.Text <> "" Then

                Dim sdDateTime As String = ""
                Dim ssDate As String() = Txtdate.Text.Split("/")
                sdDateTime = ssDate(1) + "/" + ssDate(0) + "/" + ssDate(2)
                '  Dim dtFinaldate As DateTime = Convert.ToDateTime(sDateTime)
                cmd.Parameters.AddWithValue("@Scholarshipdate", sdDateTime)
            Else
                cmd.Parameters.AddWithValue("@Scholarshipdate", DBNull.Value)
            End If
            'If Txtdate.Text <> "" Then
            '    cmd.Parameters.AddWithValue("@Scholarshipdate", Txtdate.Text)
            'Else
            '    cmd.Parameters.AddWithValue("@Scholarshipdate", DBNull.Value)
            'End If
            If TextBox2.Text <> "" Then
                cmd.Parameters.AddWithValue("@ScholarshipPersent", TextBox2.Text)
            Else
                cmd.Parameters.AddWithValue("@ScholarshipPersent", DBNull.Value)
            End If
            If txtfeecommitment.Text <> "" Then
                cmd.Parameters.AddWithValue("@Feecommitment", txtfeecommitment.Text)
            Else
                cmd.Parameters.AddWithValue("@Feecommitment", DBNull.Value)
            End If
            cmd3.ExecuteNonQuery()
            cmd3.Dispose()
            'lblmessage.Visible = True
            'lblmessage.Text = "Enquiry Save successfully.."
        End If
        'ClientScript.RegisterStartupScript(Me.GetType, "alert", "alert('Enquiry Save successfully');", True)
        'lblmessage.Visible = True
        'lblmessage.Text = "Enquiry Save successfully"

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
        Label12.Visible = False
        txtRepresentativeName.Visible = False
        Label13.Visible = False
        txtSeminarPerson.Visible = False
        rdbVisited.ClearSelection()

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
        If ddlmodeofEnquiry.Text = "Representative Call" Then
            Label12.Visible = True
            txtRepresentativeName.Visible = True
        End If
        If ddlmodeofEnquiry.Text = "Seminar" Then
            Label13.Visible = True
            txtSeminarPerson.Visible = True
        End If
    End Sub
    Protected Sub txtfranchise_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtfranchise.TextChanged
    End Sub
    Protected Sub txtbrand_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtbrand.TextChanged
    End Sub

    Sub SendEmailWithAttachment()
        ' Dim con As SqlConnection
        Dim var As New Class1()
        Dim msg As New MailMessage()
        msg.From = New MailAddress("thinknextsmart@gmail.com", "ThinkNext Technologies Pvt. Ltd")
        'msg.From = New MailAddress("info@thinknext.online", "ThinkNext Technologies Pvt. Ltd")
        msg.To.Add(New MailAddress(txtEmailID.Text))

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
            fname1 = Server.MapPath("~/Staff/attachmentemail/thinknext brochure.pdf")
            fname2 = Server.MapPath("~/Staff/attachmentemail/Thinknext pamphlet.pdf")
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
            fname1 = Server.MapPath("~/Staff/attachmentemail/thinknext brochure.pdf")
            fname2 = Server.MapPath("~/Staff/attachmentemail/Thinknext pamphlet.pdf")
            'msg.Attachments.Add(New Attachment(fname))
            msg.Attachments.Add(New Attachment(fname1))
            msg.Attachments.Add(New Attachment(fname2))
            msg.AlternateViews.Add(altView)
        ElseIf drptrainingtype.Text Is "3 Months" Then
            msg.Subject = "3 Months Industrial Training with Part-Time Job Offer and Free spoken English and PD"
            msg.Body = StrContent.ToString()
            msg.IsBodyHtml = True
            'Dim fname As String = ""
            Dim fname1 As String = ""
            Dim fname2 As String = ""
            fname1 = Server.MapPath("~/Staff/attachmentemail/thinknext brochure.pdf")
            fname2 = Server.MapPath("~/Staff/attachmentemail/Thinknext pamphlet.pdf")
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
            fname1 = Server.MapPath("~/Staff/attachmentemail/thinknext brochure.pdf")
            fname2 = Server.MapPath("~/Staff/attachmentemail/Thinknext pamphlet.pdf")
            'msg.Attachments.Add(New Attachment(fname))
            msg.Attachments.Add(New Attachment(fname1))
            msg.Attachments.Add(New Attachment(fname2))
            msg.AlternateViews.Add(altView)
        End If
        Dim obj As New SmtpClient()
        'obj.Host = "smtp-mail.outlook.com"
        obj.Host = "relay-hosting.secureserver.net"
        ' obj.Port = "587"
        obj.DeliveryMethod = SmtpDeliveryMethod.Network
        msg.Priority = MailPriority.High
        obj.UseDefaultCredentials = False
        'obj.Credentials = New NetworkCredential("info@thinknext.online", "Yahoo456$%^")
        obj.Credentials = New NetworkCredential("thinknextsmart@gmail.com", "smartthink")
        'obj.Credentials = New NetworkCredential("support@thinknext.co.in", "smartbss?")
        ' obj.EnableSsl = True
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

    <System.Web.Script.Services.ScriptMethod()>
    <System.Web.Services.WebMethod()>
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

    Protected Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click



        'End If
        If ddlmodeofEnquiry.Text = "Seminar" Then
            Label13.Visible = True
            txtSeminarPerson.Visible = True
            If txtSeminarPerson.Text = "" Then
                lblmessage.Visible = True
                lblmessage.Text = "Please Enter Seminar Person Name."
                Return
            End If


        End If

        If ddlmodeofEnquiry.Text = "Representative Call" Then
            Label12.Visible = True
            txtRepresentativeName.Visible = True
            If txtRepresentativeName.Text = "" Then
                lblmessage.Visible = True
                lblmessage.Text = "Please Enter Representative Name."
                Return
            End If



        End If
        If txtEnquiryNo.Text <> "" Then
            If DropDownList1.SelectedIndex = 0 Then
                lblmessage.Visible = True
                lblmessage.Text = "Please Select the Session Month"
                Return
            End If
            If drpsession.SelectedIndex = 0 Then
                lblmessage.Visible = True
                lblmessage.Text = "Please Select the Session Year"
                Return

            End If

            If txtEnquiryNo.Text = "" Then
                lblmessage.Visible = True
                lblmessage.Text = "please enter Enquiery No.."
            End If

            If txtStudentName.Text = "" Then
                lblmessage.Visible = True
                lblmessage.Text = "please enter Student Name.."
                Return

            End If
            If ddlmodeofEnquiry.Text = "Select" Then
                lblmessage.Visible = True
                lblmessage.Text = "Please Select Mode Of Enquiry..."
                Return
            End If
            If txtEmailID.Text = "" Then
                lblmessage.Visible = True
                lblmessage.Text = "Please enter Email ID..."
                Return
            End If
            If txtContactNumber.Text = "" Then
                lblmessage.Visible = True
                lblmessage.Text = "Please enter Contact Number..."
                Return
            End If
            If txtAddCourse.Text = "" Then
                lblmessage.Visible = True
                lblmessage.Text = "Please enter Add Course..."
                Return
            End If
            If varclass.ChekIDNo(txtIDNo.Text) = True Then
                lblmessage.Visible = True
                lblmessage.Text = "This ID No Is already Exists"
                Return
            End If
            If rdbVisited.SelectedValue <> "Yes" And rdbVisited.SelectedValue <> "No" Then
                lblmessage.Visible = True
                lblmessage.Text = "Please spacify whether student visited  or not"
                Return
            End If
            If varclass.ChekEnquiryNo(txtEnquiryNo.Text) = True Then
                lblmessage.Visible = True
                lblmessage.Text = "This Enquiry No Is already Exists"
                Return
                'ChekIDNo
            Else

                'savedata()
                'lblmessage.Visible = True
                'lblmessage.Text = "Enquiry Save successfully.."

                'Insertmasterreference()
                'If txtEmailID.Text <> "" Then
                '    SendEmailWithAttachment()
                'End If


                '%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                If txtFrndContact1.Text <> "" Then
                    If txtFrndContact2.Text <> "" Then
                        If txtFrndContact3.Text <> "" Then
                            If txtFrndContact4.Text <> "" Then
                                If txtFrndContact1.Text <> txtFrndContact2.Text And txtFrndContact1.Text <> txtFrndContact3.Text And txtFrndContact1.Text <> txtFrndContact4.Text Then
                                    If txtFrndContact2.Text <> txtFrndContact3.Text And txtFrndContact2.Text <> txtFrndContact4.Text Then
                                        If txtFrndContact3.Text <> txtFrndContact4.Text Then
                                            savedata()
                                            'lblmessage.Visible = True
                                            'lblmessage.Text = "Enquiry Save successfully.."

                                            Insertmasterreference()
                                            If txtEmailID.Text <> "" Then
                                                SendEmailWithAttachment()
                                            End If
                                        Else
                                            lblmessage.Visible = True
                                            lblmessage.Text = "Duplicate contact entered in Friend Reference"

                                            txtFrndContact1.Focus()
                                            txtFrndContact2.Focus()
                                            txtFrndContact3.Focus()
                                            txtFrndContact4.Focus()

                                            txtFrndContact1.ForeColor = Drawing.Color.Red
                                            txtFrndContact2.ForeColor = Drawing.Color.Red
                                            txtFrndContact3.ForeColor = Drawing.Color.Red
                                            txtFrndContact4.ForeColor = Drawing.Color.Red

                                            Exit Sub
                                        End If
                                    Else
                                        lblmessage.Visible = True
                                        lblmessage.Text = "Duplicate contact entered in Friend Reference"

                                        txtFrndContact1.Focus()
                                        txtFrndContact2.Focus()
                                        txtFrndContact3.Focus()
                                        txtFrndContact4.Focus()

                                        txtFrndContact1.ForeColor = Drawing.Color.Red
                                        txtFrndContact2.ForeColor = Drawing.Color.Red
                                        txtFrndContact3.ForeColor = Drawing.Color.Red
                                        txtFrndContact4.ForeColor = Drawing.Color.Red

                                        Exit Sub
                                    End If
                                Else
                                    lblmessage.Visible = True
                                    lblmessage.Text = "Duplicate contact entered in Friend Reference"

                                    txtFrndContact1.Focus()
                                    txtFrndContact2.Focus()
                                    txtFrndContact3.Focus()
                                    txtFrndContact4.Focus()

                                    txtFrndContact1.ForeColor = Drawing.Color.Red
                                    txtFrndContact2.ForeColor = Drawing.Color.Red
                                    txtFrndContact3.ForeColor = Drawing.Color.Red
                                    txtFrndContact4.ForeColor = Drawing.Color.Red

                                    Exit Sub
                                End If
                            Else
                                If txtFrndContact1.Text = txtFrndContact2.Text Or txtFrndContact1.Text = txtFrndContact3.Text Or txtFrndContact2.Text = txtFrndContact3.Text Then

                                    lblmessage.Visible = True
                                    lblmessage.Text = "Duplicate contact entered in Friend Reference"
                                    txtFrndContact1.ForeColor = Drawing.Color.Red
                                    txtFrndContact2.ForeColor = Drawing.Color.Red
                                    txtFrndContact3.ForeColor = Drawing.Color.Red
                                    txtFrndContact4.ForeColor = Drawing.Color.Red
                                    Exit Sub
                                Else
                                    savedata()
                                    'lblmessage.Visible = True
                                    'lblmessage.Text = "Enquiry Save successfully.."

                                    Insertmasterreference()
                                    If txtEmailID.Text <> "" Then
                                        ' SendEmailWithAttachment()
                                    End If
                                End If

                            End If
                        Else
                            If txtFrndContact1.Text = txtFrndContact2.Text Then
                                lblmessage.Visible = True
                                lblmessage.Text = "Duplicate contact entered in Friend Reference"
                                txtFrndContact1.ForeColor = Drawing.Color.Red
                                txtFrndContact2.ForeColor = Drawing.Color.Red
                                txtFrndContact3.ForeColor = Drawing.Color.Red
                                txtFrndContact4.ForeColor = Drawing.Color.Red
                                Exit Sub
                            Else
                                savedata()
                                'lblmessage.Visible = True
                                'lblmessage.Text = "Enquiry Save successfully.."

                                Insertmasterreference()
                                If txtEmailID.Text <> "" Then
                                    '   SendEmailWithAttachment()
                                End If
                            End If
                        End If
                    Else
                        savedata()
                        'lblmessage.Visible = True
                        'lblmessage.Text = "Enquiry Save successfully.."

                        Insertmasterreference()
                        If txtEmailID.Text <> "" Then
                            ' SendEmailWithAttachment()
                        End If
                    End If
                Else
                    savedata()
                    'lblmessage.Visible = True
                    'lblmessage.Text = "Enquiry Save successfully.."

                    Insertmasterreference()
                    If txtEmailID.Text <> "" Then
                        SendEmailWithAttachment()
                    End If
                End If

                '%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


            End If

            ' socholarshipsms()


            '  lblmessage.Visible = True
            ' lblmessage.Text = "Saved Successfully"
            Dim Message As String
            Message = "Dear " & txtStudentName.Text & ",Thanks for your enquiry at ThinkNEXT Technologies Private Limited, Mohali (Chandigarh).Call: 7837401000,7837402000,01724656197. www.thinknexttraining.com Your Enquiry No. is " & txtEnquiryNo.Text
            varclass.SendSMS(txtstudentmobNo.Text, Message, "Route9")
            varclass.SendSMS(txtContactNumber.Text, Message, "Route9")

            Dim message1 As String
            Dim message2 As String
            ' message1 = ", has given refrence for " & drptrainingtype.Text & " industrial training in ThinkNEXT Technology Private Limited,SCF-113,Phase 11, Sector 65, Mohali (Chandigarh).Confirm your seat for industrial training by calling us on : 7837401000,7837402000,01724656197. www.thinknexttraining.com"
            message1 = " Your Friend " & txtStudentName.Text & " has given your reference for " & drptrainingtype.Text & " Industrial Training at ThinkNEXT Technologies Private Limited, Mohali (Chandigarh). Call 7837401000, 7837402000, 01724656197. www.thinknexttraining.com"
            message2 = " Confirm your seat for " & drptrainingtype.Text & " Industrial Training in MNC with Dual  Certification (ThinkNEXT and Govt. of India)  under Digital India Govt. Project with Part-Time/Full-Time Job Offer and Free Spoken English, PD, IELTS  and Interview Preparation (HR+ Technical) classes on daily basis. ThinkNEXT Technologies Private Limited, SCF 113, Sector 65, Mohali (Chandigarh). Call 0172-4656197, 7837401000, 7837402000 www.thinknexttraining.com"
            If txtFrndName1.Text <> "" Then
                Dim msg1 As String
                Dim msg11 As String
                msg1 = "Dear " & txtFrndName1.Text & message1
                msg11 = "Dear " & txtFrndName1.Text & message2
                varclass.SendSMS(txtFrndContact1.Text, msg1, "Route9")
                varclass.SendSMS(txtFrndContact1.Text, msg11, "Route9")
            End If
            If txtFrndName2.Text <> "" Then
                Dim msg2 As String
                Dim msg22 As String
                msg2 = "Dear " & txtFrndName2.Text & message1
                msg22 = "Dear " & txtFrndName2.Text & message2
                varclass.SendSMS(txtFrndContact2.Text, msg2, "Route9")
                varclass.SendSMS(txtFrndContact2.Text, msg22, "Route9")
            End If
            If txtFrndName3.Text <> "" Then
                Dim msg3 As String
                Dim msg33 As String
                msg3 = "Dear " & txtFrndName3.Text & message1
                msg33 = "Dear " & txtFrndName3.Text & message2
                varclass.SendSMS(txtFrndContact3.Text, msg3, "Route9")
                varclass.SendSMS(txtFrndContact3.Text, msg33, "Route9")
            End If
            If txtFrndName4.Text <> "" Then
                Dim msg4 As String
                Dim msg44 As String
                msg4 = "Dear " & txtFrndName4.Text & message1
                msg44 = "Dear " & txtFrndName4.Text & message2
                varclass.SendSMS(txtFrndContact4.Text, msg4, "Route9")
                varclass.SendSMS(txtFrndContact4.Text, msg44, "Route9")
            End If

            ' Clearrec
            lblmessage.Visible = True
            lblmessage.Text = "Enquiry Save successfully.."
            ' Response.Redirect("Enquiry.aspx")
            Response.AppendHeader("Refresh", "1")

        Else
            lblmessage.Visible = True
            lblmessage.Text = "Enter Enquiry No"
        End If
        'ClientScript.RegisterStartupScript(Me.GetType, "alert", "alert('Enquiry Save successfully');", True)
    End Sub
    Public Sub socholarshipsms()
        Dim Messagesch As String
        If TextBox2.Text = "" Then
            Exit Sub
        End If
        If Txtdate.Text = "" Then
            Exit Sub
        End If
        If Chksms.Checked = True Then
            Messagesch = "Dear " & txtStudentName.Text & ", Congratulations!!! You have got " & TextBox2.Text & "% scholarship for industrial training against scholarship test held on " & Txtdate.Text & ". To avail this scholarship, Kindly register yourself as early as possible. Limited seats ThinkNEXT Technologies Private Limited, Mohali (Chandigarh).Call: 7837401000, 7837402000, 01724656197.www.thinknext.co.in, www.thinknexttraining.com Your Enquiry No. is " & txtEnquiryNo.Text
            varclass.SendSMS(txtstudentmobNo.Text, Messagesch, "Route9")
            varclass.SendSMS(txtContactNumber.Text, Messagesch, "Route9")
        End If
    End Sub

    Public Sub RefrenceValidation()
        'If txtFrndContact1.Text <> "" Then
        '    If txtFrndContact2.Text <> "" Then
        '        If txtFrndContact3.Text <> "" Then
        '            If txtFrndContact4.Text <> "" Then
        '                If txtFrndContact1.Text <> txtFrndContact2.Text And txtFrndContact1.Text <> txtFrndContact3.Text And txtFrndContact1.Text <> txtFrndContact4.Text Then
        '                    If txtFrndContact2.Text <> txtFrndContact3.Text And txtFrndContact2.Text <> txtFrndContact4.Text Then
        '                        If txtFrndContact3.Text <> txtFrndContact4.Text Then
        '                            savedata()
        '                            lblmessage.Visible = True
        '                            lblmessage.Text = "Enquiry Save successfully.."

        '                            Insertmasterreference()
        '                            If txtEmailID.Text <> "" Then
        '                                SendEmailWithAttachment()
        '                            End If
        '                        Else
        '                            lblmessage.Visible = True
        '                            lblmessage.Text = "Duplicate contact entered in Friend Reference"

        '                            txtFrndContact1.Focus()
        '                            txtFrndContact2.Focus()
        '                            txtFrndContact3.Focus()
        '                            txtFrndContact4.Focus()

        '                            txtFrndContact1.ForeColor = Drawing.Color.Red
        '                            txtFrndContact2.ForeColor = Drawing.Color.Red
        '                            txtFrndContact3.ForeColor = Drawing.Color.Red
        '                            txtFrndContact4.ForeColor = Drawing.Color.Red

        '                            Exit Sub
        '                        End If
        '                    End If
        '                End If
        '            End If
        '        End If
        '    End If
        'End If
    End Sub


    Protected Sub RadioButtonList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles RadioButtonList1.SelectedIndexChanged
        If RadioButtonList1.Text = "Yes" Then
            Txtdate.Enabled = True
            TextBox2.Enabled = True
            Chksms.Checked = True
        End If
        If RadioButtonList1.Text = "No" Then
            Txtdate.Text = String.Empty
            TextBox2.Text = String.Empty
            Txtdate.Enabled = False
            TextBox2.Enabled = False
            Chksms.Checked = False
        End If

    End Sub
    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click


        Dim con As New SqlConnection
        Dim sql As String
        Dim da As SqlDataAdapter
        Dim ds As New DataSet
        Dim rowctr As Integer = 0
        Dim varClass1 As New Class1
        con = New SqlConnection(varClass1.GetConnectionString(varIP))
        con.Open()
        sql = "select EnquiryNo,ModeOfEnquiry, CollegeName, Qualification, Batch, IDNo, UniRollNo,  Course,Duration, "
        sql = sql & " StudentName, FatherName, MotherName, ContactNo,StudentMobileNo, FatherMobileNo, Sex,  EmailID, CorrespondanceAddress, PermanentAddress, "
        sql = sql & " ReferenceBy,City,Session,WhatsAppNo,RefContactNo,RefEmailID,RefDesignation,DOB,CRName1,CRDesignation1,CRContact1,CREmail1,CRName2,CRDesignation2,CRContact2,CREmail2,FRName1,FRContact1,RepresentativeName,SeminarPerson,Visited,Scholarshipdate,ScholarshipPersent,Feecommitment,imagecapture from Admissions where enquiryno='" & Txtsearch.Text & "'"
        da = New SqlDataAdapter(sql, con)
        da.Fill(ds, "Admissions")

        If ds.Tables("Admissions").Rows(0).Item("imagecapture").ToString <> "" Then
            Session("pth") = ds.Tables("Admissions").Rows(0).Item("imagecapture")
            Dim imgBytes As Byte() = DirectCast(ds.Tables("Admissions").Rows(0).Item("imagecapture"), Byte())
            Dim base64string As String = Convert.ToBase64String(imgBytes, 0, imgBytes.Length)
            Image1.ImageUrl = Convert.ToString("data:image/jpg;base64,") & base64string
        Else

        End If

        txtEnquiryNo.Text = ds.Tables("Admissions").Rows(0).Item("EnquiryNo").ToString()
        ddlmodeofEnquiry.Text = ds.Tables("Admissions").Rows(0).Item("ModeOfEnquiry").ToString()
        txtcollegename.Text = ds.Tables("Admissions").Rows(0).Item("CollegeName").ToString()
        txtcourse.Text = ds.Tables("Admissions").Rows(0).Item("Qualification").ToString()
        txtbatch.Text = ds.Tables("Admissions").Rows(0).Item("Batch").ToString()
        txtIDNo.Text = ds.Tables("Admissions").Rows(0).Item("IDNo").ToString()
        txtIUniRollNo.Text = ds.Tables("Admissions").Rows(0).Item("UniRollNo").ToString()
        txtAddCourse.Text = ds.Tables("Admissions").Rows(0).Item("Course").ToString()
        drptrainingtype.Text = ds.Tables("Admissions").Rows(0).Item("Duration").ToString()
        txtStudentName.Text = ds.Tables("Admissions").Rows(0).Item("StudentName").ToString()
        txtFatherName.Text = ds.Tables("Admissions").Rows(0).Item("FatherName").ToString()
        txtMotherName.Text = ds.Tables("Admissions").Rows(0).Item("MotherName").ToString()
        txtContactNumber.Text = ds.Tables("Admissions").Rows(0).Item("ContactNo").ToString()
        txtstudentmobNo.Text = ds.Tables("Admissions").Rows(0).Item("StudentMobileNo").ToString()
        txtFathermobNo0.Text = ds.Tables("Admissions").Rows(0).Item("FatherMobileNo").ToString()
        ddlSex.Text = ds.Tables("Admissions").Rows(0).Item("Sex").ToString()
        txtEmailID.Text = ds.Tables("Admissions").Rows(0).Item("EmailID").ToString()
        txtcorrespondence.Text = ds.Tables("Admissions").Rows(0).Item("CorrespondanceAddress").ToString()
        txtpermanentaddress.Text = ds.Tables("Admissions").Rows(0).Item("PermanentAddress").ToString()
        txtreferenceby.Text = ds.Tables("Admissions").Rows(0).Item("ReferenceBy").ToString()
        txttown.Text = ds.Tables("Admissions").Rows(0).Item("City").ToString()
        DropDownList1.Text = ds.Tables("Admissions").Rows(0).Item("Session").ToString()
        txtWhatsappno.Text = ds.Tables("Admissions").Rows(0).Item("WhatsAppNo").ToString()
        txtrefContact2.Text = ds.Tables("Admissions").Rows(0).Item("RefContactNo").ToString()
        txtref2email.Text = ds.Tables("Admissions").Rows(0).Item("RefEmailID").ToString()
        txtref2desig.Text = ds.Tables("Admissions").Rows(0).Item("RefDesignation").ToString()
        txtDOB.Text = ds.Tables("Admissions").Rows(0).Item("DOB").ToString()
        txtname1.Text = ds.Tables("Admissions").Rows(0).Item("CRName1").ToString()
        txtdesignation1.Text = ds.Tables("Admissions").Rows(0).Item("CRDesignation1").ToString()
        txtcontact1.Text = ds.Tables("Admissions").Rows(0).Item("CRContact1").ToString()
        txtemail1.Text = ds.Tables("Admissions").Rows(0).Item("CREmail1").ToString()
        txtname2.Text = ds.Tables("Admissions").Rows(0).Item("CRName2").ToString()
        txtdesignation2.Text = ds.Tables("Admissions").Rows(0).Item("CRDesignation2").ToString()
        txtcontact2.Text = ds.Tables("Admissions").Rows(0).Item("CRContact2").ToString()
        txtemail2.Text = ds.Tables("Admissions").Rows(0).Item("CREmail2").ToString()
        txtFrndName1.Text = ds.Tables("Admissions").Rows(0).Item("FRName1").ToString()
        txtFrndContact1.Text = ds.Tables("Admissions").Rows(0).Item("FRContact1").ToString()
        txtRepresentativeName.Text = ds.Tables("Admissions").Rows(0).Item("RepresentativeName").ToString()
        txtSeminarPerson.Text = ds.Tables("Admissions").Rows(0).Item("SeminarPerson").ToString()
        rdbVisited.Text = ds.Tables("Admissions").Rows(0).Item("Visited").ToString()
        Txtdate.Text = ds.Tables("Admissions").Rows(0).Item("Scholarshipdate").ToString()
        TextBox2.Text = ds.Tables("Admissions").Rows(0).Item("ScholarshipPersent").ToString()
        txtfeecommitment.Text = ds.Tables("Admissions").Rows(0).Item("Feecommitment").ToString()
        btnSave.Enabled = False




    End Sub
    Protected Sub btnUpdate_Click(sender As Object, e As EventArgs) Handles btnUpdate.Click

        Dim con As SqlConnection
        Dim sql As String
        Dim varClass1 As New Class1
        Dim fileName As String

        Dim bit As Byte()

        '//////////////////////image//////////////////////////
        Dim filepath As String = imgpath

        If filepath IsNot Nothing Then
            Dim fs As FileStream = New FileStream(Server.MapPath(filepath), FileMode.Open, FileAccess.ReadWrite)
            Dim br As BinaryReader = New BinaryReader(fs)
            Dim int32 As Integer
            int32 = fs.Length
            bytes = br.ReadBytes(int32)
        Else

        End If

        '\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\file upload
        fileName = Path.GetFileName(Filedoc.PostedFile.FileName)
        Dim contentType As String = Filedoc.PostedFile.ContentType
        Using fs As Stream = Filedoc.PostedFile.InputStream
            Using br As New BinaryReader(fs)
                bit = br.ReadBytes(CType(fs.Length, Integer))
            End Using
        End Using

        con = New SqlConnection(varClass1.GetConnectionString(varIP))
        con.Open()
        Dim cmd As SqlCommand
        sql = "update Admissions Set  FranchiseCode=@FranchiseCode, BrandName =@BrandName, EnquiryNo =@EnquiryNo, ModeOfEnquiry =@ModeOfEnquiry, CollegeName =@CollegeName, Qualification =@Qualification, Batch =@Batch, IDNo =@IDNo, UniRollNo =@UniRollNo, Course =@Course, Duration =@Duration,"
        sql = sql & "StudentName =@StudentName, FatherName =@FatherName, MotherName =@MotherName, ContactNo =@ContactNo, StudentMobileNo =@StudentMobileNo, FatherMobileNo =@FatherMobileNo, Sex =@Sex, EmailID =@EmailID, CorrespondanceAddress =@CorrespondanceAddress, PermanentAddress =@PermanentAddress,"
        sql = sql & " ReferenceBy =@ReferenceBy,Active =@Active, StatusCode =@StatusCode, City =@City , Session =@Session, WhatsAppNo =@WhatsAppNo, RefContactNo =@RefContactNo, RefEmailID =@RefEmailID, RefDesignation =@RefDesignation, DOB =@DOB, CRName1 =@CRName1, CRDesignation1 =@CRDesignation1, CRContact1 =@CRContact1, CREmail1 =@CREmail1, CRName2 =@CRName2, CRDesignation2 =@CRDesignation2, CRContact2 =@CRContact2, CREmail2 =@CREmail2, FRName1 =@FRName1, FRContact1 =@FRContact1, RepresentativeName =@RepresentativeName, SeminarPerson =@SeminarPerson, Visited =@Visited, Scholarshipdate =@Scholarshipdate, ScholarshipPersent =@ScholarshipPersent, Feecommitment =@Feecommitment,imagecapture=@imagecapture where enquiryno='" & txtEnquiryNo.Text & "'"
        cmd = New SqlCommand(sql, con)
        cmd.Parameters.AddWithValue("@FranchiseCode", txtfranchise.Text)
        cmd.Parameters.AddWithValue("@BrandName", txtbrand.Text)
        cmd.Parameters.AddWithValue("@EnquiryNo", txtEnquiryNo.Text)

        If bytes IsNot Nothing Then
            cmd.Parameters.AddWithValue("@imagecapture", bytes)
        ElseIf Session("path") IsNot Nothing Then
            cmd.Parameters.AddWithValue("imagecapture", Session("path"))
        ElseIf bit.Length > 0 Then
            cmd.Parameters.Add("@imagecapture", SqlDbType.Binary).Value = bit
        Else
            cmd.Parameters.AddWithValue("imagecapture", New Byte() {})
        End If


        If txtDOB.Text <> "" Then
            Dim sDateTime As String = ""
            Dim sDate As String() = txtDOB.Text.Split("/")
            sDateTime = sDate(1) + "/" + sDate(0) + "/" + sDate(2)
            '// Dim dtFinaldate As DateTime = Convert.ToDateTime(sDateTime)
            cmd.Parameters.AddWithValue("@DOB", sDateTime)
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

        '==== college and friend refrence  ====
        If txtname1.Text <> "" Then
            cmd.Parameters.AddWithValue("@CRName1", txtname1.Text)
        Else
            cmd.Parameters.AddWithValue("@CRName1", DBNull.Value)
        End If
        If txtdesignation1.Text <> "" Then
            cmd.Parameters.AddWithValue("@CRDesignation1", txtdesignation1.Text)
        Else
            cmd.Parameters.AddWithValue("@CRDesignation1", DBNull.Value)
        End If
        If txtcontact1.Text <> "" Then
            cmd.Parameters.AddWithValue("@CRContact1", txtcontact1.Text)
        Else
            cmd.Parameters.AddWithValue("@CRContact1", DBNull.Value)
        End If
        If txtemail1.Text <> "" Then
            cmd.Parameters.AddWithValue("@CREmail1", txtemail1.Text)
        Else
            cmd.Parameters.AddWithValue("@CREmail1", DBNull.Value)
        End If
        If txtname2.Text <> "" Then
            cmd.Parameters.AddWithValue("@CRName2", txtname2.Text)
        Else
            cmd.Parameters.AddWithValue("@CRName2", DBNull.Value)
        End If
        If txtdesignation2.Text <> "" Then
            cmd.Parameters.AddWithValue("@CRDesignation2", txtdesignation2.Text)
        Else
            cmd.Parameters.AddWithValue("@CRDesignation2", DBNull.Value)
        End If
        If txtcontact2.Text <> "" Then
            cmd.Parameters.AddWithValue("@CRContact2", txtcontact2.Text)
        Else
            cmd.Parameters.AddWithValue("@CRContact2", DBNull.Value)
        End If
        If txtemail2.Text <> "" Then
            cmd.Parameters.AddWithValue("@CREmail2", txtemail2.Text)
        Else
            cmd.Parameters.AddWithValue("@CREmail2", DBNull.Value)
        End If
        If txtFrndName1.Text <> "" Then
            cmd.Parameters.AddWithValue("@FRName1", txtFrndName1.Text)
        Else
            cmd.Parameters.AddWithValue("@FRName1", DBNull.Value)
        End If
        If txtFrndContact1.Text <> "" Then
            cmd.Parameters.AddWithValue("@FRContact1", txtFrndContact1.Text)
        Else
            cmd.Parameters.AddWithValue("@FRContact1", DBNull.Value)
        End If
        If txtFrndName2.Text <> "" Then
            cmd.Parameters.AddWithValue("@FRName2", txtFrndName2.Text)
        Else
            cmd.Parameters.AddWithValue("@FRName2", DBNull.Value)
        End If
        If txtFrndContact2.Text <> "" Then
            cmd.Parameters.AddWithValue("@FRContact2", txtFrndContact2.Text)
        Else
            cmd.Parameters.AddWithValue("@FRContact2", DBNull.Value)
        End If
        If txtFrndName3.Text <> "" Then
            cmd.Parameters.AddWithValue("@FRName3", txtFrndName3.Text)
        Else
            cmd.Parameters.AddWithValue("@FRName3", DBNull.Value)
        End If
        If txtFrndContact3.Text <> "" Then
            cmd.Parameters.AddWithValue("@FRContact3", txtFrndContact3.Text)
        Else
            cmd.Parameters.AddWithValue("@FRContact3", DBNull.Value)
        End If
        If txtFrndName4.Text <> "" Then
            cmd.Parameters.AddWithValue("@FRName4", txtFrndName4.Text)
        Else
            cmd.Parameters.AddWithValue("@FRName4", DBNull.Value)
        End If
        If txtFrndContact4.Text <> "" Then
            cmd.Parameters.AddWithValue("@FRContact4", txtFrndContact4.Text)
        Else
            cmd.Parameters.AddWithValue("@FRContact4", DBNull.Value)
        End If
        If ddlmodeofEnquiry.Text = "Representative Call" Then
            Label12.Visible = True
            txtRepresentativeName.Visible = True
            If txtRepresentativeName.Text <> "" Then
                cmd.Parameters.AddWithValue("@RepresentativeName", txtRepresentativeName.Text)
            End If
        Else
            cmd.Parameters.AddWithValue("@RepresentativeName", DBNull.Value)

        End If
        If ddlmodeofEnquiry.Text = "Seminar" Then
            Label13.Visible = True
            txtSeminarPerson.Visible = True
            If txtSeminarPerson.Text <> "" Then
                cmd.Parameters.AddWithValue("@SeminarPerson", txtSeminarPerson.Text)
            End If
        Else
            cmd.Parameters.AddWithValue("@SeminarPerson", DBNull.Value)

        End If
        If rdbVisited.SelectedValue = "Yes" Then
            cmd.Parameters.AddWithValue("@Visited", "Yes")
        ElseIf rdbVisited.SelectedValue = "No" Then
            cmd.Parameters.AddWithValue("@Visited", "No")
        End If
        If Txtdate.Text <> "" Then

            Dim sdDateTime As String = ""
            Dim ssDate As String() = Txtdate.Text.Split("/")
            sdDateTime = ssDate(1) + "/" + ssDate(0) + "/" + ssDate(2)
            '  Dim dtFinaldate As DateTime = Convert.ToDateTime(sDateTime)
            cmd.Parameters.AddWithValue("@Scholarshipdate", sdDateTime)
        Else
            cmd.Parameters.AddWithValue("@Scholarshipdate", DBNull.Value)
        End If
        'If Txtdate.Text <> "" Then
        '    cmd.Parameters.AddWithValue("@Scholarshipdate", Txtdate.Text)
        'Else
        '    cmd.Parameters.AddWithValue("@Scholarshipdate", DBNull.Value)
        'End If
        If TextBox2.Text <> "" Then
            cmd.Parameters.AddWithValue("@ScholarshipPersent", TextBox2.Text)
        Else
            cmd.Parameters.AddWithValue("@ScholarshipPersent", DBNull.Value)
        End If
        If txtfeecommitment.Text <> "" Then
            cmd.Parameters.AddWithValue("@Feecommitment", txtfeecommitment.Text)
        Else
            cmd.Parameters.AddWithValue("@Feecommitment", DBNull.Value)
        End If
        cmd.ExecuteNonQuery()
        cmd.Dispose()
        socholarshipsms()
        lblmessage.Visible = True
        lblmessage.Text = "Enquiry updated successfully.."
        Response.AppendHeader("Refresh", "1")
    End Sub
End Class
