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
Imports System.Web.UI.WebControls
Imports System.Web.UI
Partial Class Free_6Months_6Weeks_Industrial_Training
    Inherits System.Web.UI.Page
    Dim varClass As New Class1()
    Dim varIP As String
    Dim sess As String
    'Private _txtNameR As Object
    'Private Property txtNameR As Object
    '    Get
    '        Return _txtNameR
    '    End Get
    '    Set(value As Object)
    '        _txtNameR = value
    '    End Set
    'End Property

    Protected Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
        System.Threading.Thread.Sleep(0)
        Dim con As SqlConnection
        Dim varclass1 As New Class1
        con = New SqlConnection(varClass.GetConnectionString(varIP))
        con.Open()
        Dim email As String = ""
        'Dim da As New SqlDataAdapter("select * from Admissions where EmailID='" + txtEmailR.Text + "' and Duration='Register for scholarship'  ", con)
        'Dim ds As New DataSet()
        'da.Fill(ds, "Admissions")
        'If ds.Tables("Admissions").Rows.Count > 0 Then
        '    email = ds.Tables("Admissions").Rows(0).Item("EmailID").ToString()
        '    ScriptManager.RegisterStartupScript(Me, Me.[GetType](), "alertmessage", "javascript:alert('The Person with this Email ID already Registered.')", True)
        '    Clear()
        '    Exit Sub
        'End If

        If txtEmailR.Text <> email Then
            Dim cultureInfo As CultureInfo = Thread.CurrentThread.CurrentCulture
            Dim objTextInfo As TextInfo = cultureInfo.TextInfo
            txtcourses.Text = objTextInfo.ToTitleCase(txtcourses.Text)
            Session("course") = txtcourses.Text
            AddStudentScholarshipDetail()


            Dim SMS2nd As String
            SMS2nd = "Dear " & txtNameR.Text & ", Thanks for your Registration for Aptitude-Cum-Technical Test Industrial Training. Exam Date: " & lblnewssss.Text & " Timings: 11:00 AM to 4:00 PM Duration: 30 Minutes Venue: ThinkNEXT Technologies Pvt. Ltd., SCF 113, Sector-65, Phase-XI, Mohali (Chandigarh) Call 0172-4656197, 7837401000, 7837402000."



            varClass.SendSMS(txtContectR.Text, SMS2nd, "Route9")
            'lblmsg.Visible = True
            'lblmsg.Text = "You have been Registered Successfully."
            Clear()
        End If
    End Sub
    Sub AddStudentScholarshipDetail()
        Dim varclass As New Class1
        Dim con As SqlConnection
        con = New SqlConnection(varclass.GetConnectionString(varIP))
        con.Open()
        Dim sql As String
        sql = "insert into Admissions(Session, EnquiryNo, Admissiondate,StudentName,StudentMobileNo,EmailID,Batch,Course,Comment,ModeOfEnquiry,StatusCode,Duration,FranchiseCode,BrandName)values(@Session,@EnquiryNo,@Admissiondate,@StudentName,@StudentMobileNo,@EmailID,@Batch,@Course,@Comment,@ModeOfEnquiry,@StatusCode,@Duration,@FranchiseCode,@BrandName)"
        Dim cmd As New SqlCommand(sql, con)
        Dim enquiryno As String
        enquiryno = GenEnquirytNo()
        Dim ses As String
        ses = varclass.Session12(sess)
        cmd.Parameters.AddWithValue("@EnquiryNo", enquiryno)
        cmd.Parameters.AddWithValue("@Admissiondate", Format(Now, "MM/dd/yyyy"))
        cmd.Parameters.AddWithValue("@StudentName", txtNameR.Text)
        cmd.Parameters.AddWithValue("@StudentMobileNo", txtContectR.Text)
        cmd.Parameters.AddWithValue("@ModeOfEnquiry", "Online")
        cmd.Parameters.AddWithValue("@EmailID", txtEmailR.Text)
        cmd.Parameters.AddWithValue("@Batch", ddlTraining.Text)
        cmd.Parameters.AddWithValue("@Course", txtcourses.Text)
        cmd.Parameters.AddWithValue("@Duration", "Register for scholarship")
        cmd.Parameters.AddWithValue("@Comment", "Register for scholarship")
        cmd.Parameters.AddWithValue("@StatusCode", "Enquiry")
        cmd.Parameters.AddWithValue("@Session", ses)
        cmd.Parameters.AddWithValue("@FranchiseCode", "TNK101")
        cmd.Parameters.AddWithValue("@BrandName", "THINKNEXT TRAINING")
        'cmd.Parameters.AddWithValue("@CourseEnrolled", "ddlCEnrolled")
        cmd.ExecuteNonQuery()
        cmd.Dispose()
        con.Close()
        lblmsg.Visible = True
        lblmsg.Text = "You have been Registered Successfully."
    End Sub
    Function GenEnquirytNo() As String
        Dim con As SqlConnection
        Dim sql As String
        Dim EnquiryNo As Integer
        Dim varClass1 As New Class1
        con = New SqlConnection(varClass1.GetConnectionString(varIP))
        con.Open()
        sql = "SELECT MAX(EnquiryNo) AS EnquiryNo FROM  Admissions "
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
    Sub Clear()


        txtNameR.Text = ""
        txtContectR.Text = ""
        txtEmailR.Text = ""

        ddlTraining.SelectedIndex = 0
        txtcourses.Text = ""

    End Sub

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
        'lblmsg.Visible = False

    End Sub


    Protected Sub CustomValidator1_ServerValidate(source As Object, args As ServerValidateEventArgs) Handles CustomValidator1.ServerValidate
        'Requires that either Phone or Email is not empty
        If ddlTraining.Text <> "Training Type" Then
            args.IsValid = True
        Else
            args.IsValid = False


        End If
    End Sub
End Class
