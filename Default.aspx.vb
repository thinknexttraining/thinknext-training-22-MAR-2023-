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
Imports System.Drawing
Imports System.Text.RegularExpressions
Partial Class Default2
    Inherits System.Web.UI.Page
    Dim varIP As String
    Private _lnknews1 As Object
    Dim sess As String

    Private Property lnknews1 As Object
        Get
            Return _lnknews1
        End Get
        Set(value As Object)
            _lnknews1 = value
        End Set
    End Property

    Protected Sub btnsubmit_Click(sender As Object, e As EventArgs) Handles btnsubmit.Click
        If txtName.Text = "" Then
            lblmsg.Visible = True
            lblmsg.ForeColor = Drawing.Color.Red
            lblmsg.Text = "Name field cannot be blank."
            Exit Sub
        End If
        If txtMobile.Text = "" Then
            lblmsg.Visible = True
            lblmsg.ForeColor = Drawing.Color.Red
            lblmsg.Text = "Mobile Number field cannot be blank."
            Exit Sub
        End If
        If txtEmailId.Text = "" Then
            lblmsg.Visible = True
            lblmsg.ForeColor = Drawing.Color.Red
            lblmsg.Text = "Email ID field cannot be blank."
            Exit Sub
        End If
        If txtCourses.Text = "" Then
            lblmsg.Visible = True
            lblmsg.ForeColor = Drawing.Color.Red
            lblmsg.Text = "Courses field cannot be blank."
            Exit Sub
        End If
        'If txtComments.Text = "" Then
        '    lblmsg.Visible = True
        '    lblmsg.ForeColor = Drawing.Color.Red
        '    lblmsg.Text = "Comments field cannot be blank."
        '    Exit Sub
        'End If
        Dim varclass As New Class1
        ' lblmessgaelogin.Text = ""
        System.Threading.Thread.Sleep(0)

        AddStudentDetail()
        ' SendEmailWithAttachment()
        '===================================================
        'Dim Message As String
        'Message = "Dear " & txtName.Text & ", " & ddlTrainingType.SelectedValue & " Industrial Training in ISO Certified Software Company"
        'Message = Message & " for iPhone, Android, .Net, Java, PHP, CCNA, MCITP. Please visit ThinkNEXT Technologies Pvt. Ltd"
        'Message = Message & " S.C.F 113, Phase-XI, Mohali(Chd) www.thinknext.co.in, www.thinknexttraining.com Contact: 9815994197,7837433594"
        '=====================================================
        'Dim SMS2nd As String
        'SMS2nd = "Dear " & txtName.Text & ", Thanks for your enquiry for Industrial Training in " & txtCourses.Text & ""
        'SMS2nd = SMS2nd & " @ThinkNEXT Technologies Pvt. Ltd. S.C.F 113, Sector-65, Mohali (Chandigarh)"
        'SMS2nd = SMS2nd & " Call: 7837401000, 7837402000, 7837403000 0172-4656197 Toll Free : 1800-102-4102 or visit us at www.thinknexttraining.com, One of our representative will get in touch with you soon. To know more about ThinkNEXT and get regular updates on your facebook account regarding placements and other activities, please like us at www.facebook.com/thinknexttechnologies"
        'varclass.SendSMS(txtMobile.Text, SMS2nd, "Route9")
        'varclass.SendSMSBytePaper(txtMobile.Text, txtName.Text, txtEmailId.Text, "Call Back Enquiry")

        '====================================================
        ' varclass.SendSMS(txtMobile.Text, Message, "Route11")
        'lblmsg.Text = "You are Successfully Registered and your Enquiry no is:" + Session("Admisn").ToString()
        '====================================================

        lblmsg.Text = "Thanks for your Enquiry at ThinkNEXT Technologies Pvt. Ltd."
        varclass.SendLeads(txtMobile.Text, txtName.Text, txtEmailId.Text, txtCourses.Text, "Arrange a Call Back", "https://www.thinknexttraining.com/")
        Response.Redirect("thanks.html")

        Clear()
    End Sub


    Sub Clear()
        txtName.Text = ""
        txtMobile.Text = ""
        txtEmailId.Text = ""
        ' ddlTrainingType.SelectedIndex = 0
        txtCourses.Text = ""
        txtComments.Text = ""
        ' Popup Clear
        'txtNameR.Text = ""
        'txtContectR.Text = ""
        'txtEmailR.Text = ""
        'txtCollege.Text = ""
        'ddlTraining.SelectedIndex = 0
        'ddlCouses.SelectedIndex = 0
    End Sub
    Public Sub SendEmailWithAttachment()
        ' Dim con As SqlConnection
        Dim var As New Class1()
        Dim msg As New MailMessage()
        'msg.From = New MailAddress("info@thinknext.online", "ThinkNext Technologies Pvt. Ltd")
        msg.From = New MailAddress("info@thinknexttraining.com", "ThinkNEXT Technologies Pvt. Ltd")
        msg.[To].Add(New MailAddress(txtEmailId.Text))
        Dim reader As New StreamReader(Server.MapPath("~/Email6.htm"))

        Dim readFile As String = reader.ReadToEnd()

        Dim StrContent As String = ""

        StrContent = readFile
        StrContent = StrContent.Replace("[MyName]", txtName.Text)

        If txtCourses.Text <> "" Then
            StrContent = StrContent.Replace("[Course]", txtCourses.Text)
            'ElseIf txtCourses2.Text <> "" Then
            '    StrContent = StrContent.Replace("[Course]", txtCourses2.Text)

        End If
        StrContent = StrContent.Replace("[ENO]", Session("Admisn").ToString())
        'StrContent = StrContent.Replace("[msg]", lblnewssss.Text)


        Dim altView As AlternateView = AlternateView.CreateAlternateViewFromString(StrContent, Nothing, MediaTypeNames.Text.Html)

        msg.Subject = "Industrial Training with Part-Time Job Offer and Free spoken English and PD"
        msg.Body = StrContent.ToString()
        msg.IsBodyHtml = True

        msg.AlternateViews.Add(altView)
        Dim obj As New SmtpClient()
        'obj.Host = "smtp-mail.outlook.com"
        'obj.Host = "relay-hosting.secureserver.net"
        obj.Host = "smtp.gmail.com"
        'obj.Port = 587
        obj.DeliveryMethod = SmtpDeliveryMethod.Network
        msg.Priority = MailPriority.High
        obj.UseDefaultCredentials = False
        ' obj.Credentials = New NetworkCredential("info@thinknext.online", "Yahoo456$%^")
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

    Sub AddStudentDetail()

        Dim varclass As New Class1
        Dim con As SqlConnection
        con = New SqlConnection(varclass.GetConnectionString(varIP))
        con.Open()
        Dim sql As String
        Dim cultureInfo As CultureInfo = Thread.CurrentThread.CurrentCulture
        Dim objTextInfo As TextInfo = cultureInfo.TextInfo
        If txtName.Text <> "" Then
            txtName.Text = objTextInfo.ToTitleCase(txtName.Text)
            txtCourses.Text = objTextInfo.ToTitleCase(txtCourses.Text)
            sql = "insert into Admissions( Session,EnquiryNo, Admissiondate,StudentName,StudentMobileNo,EmailID,Course,Comment,ModeOfEnquiry,StatusCode,FranchiseCode,BrandName,EnquiryStatus)values(@Session,@EnquiryNo,@Admissiondate,@StudentName,@StudentMobileNo,@EmailID,@Course,@Comment,@ModeOfEnquiry,@StatusCode,@FranchiseCode,@BrandName,@EnquiryStatus)"
            Dim cmd As New SqlCommand(sql, con)
            Dim enquiryno As String
            enquiryno = GenEnquirytNo()
            Session("Admisn") = enquiryno
            Dim ses As String
            ses = varclass.Session12(sess)
            cmd.Parameters.AddWithValue("@EnquiryNo", enquiryno)
            cmd.Parameters.AddWithValue("@Admissiondate", Format(Now, "MM/dd/yyyy"))
            cmd.Parameters.AddWithValue("@StudentName", txtName.Text)
            cmd.Parameters.AddWithValue("@StudentMobileNo", txtMobile.Text)
            cmd.Parameters.AddWithValue("@ModeOfEnquiry", "Call Back")
            cmd.Parameters.AddWithValue("@EmailID", txtEmailId.Text)
            ' cmd.Parameters.AddWithValue("@Duration", ddlTrainingType.Text)
            '  cmd.Parameters.AddWithValue("@CollegeName", txtCollege.Text)
            cmd.Parameters.AddWithValue("@Course", txtCourses.Text)
            cmd.Parameters.AddWithValue("@Comment", txtComments.Text)
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

    Protected Sub lnkfname_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim varclass As Class1
        Dim con As SqlConnection
        '  Dim lnk As New LinkButton
        con = New SqlConnection()
        varclass = New Class1()
        Dim varCurRow As String = ""
        Dim lnk As LinkButton = DirectCast(sender, LinkButton)
        Dim dl As DataListItem = DirectCast(lnk.NamingContainer, DataListItem)
        Dim lnknew As LinkButton = DirectCast(dl.FindControl("lnknews"), LinkButton)

        con.ConnectionString = varclass.GetConnectionString("constr")
        If con.State = ConnectionState.Closed Then
            con.Open()
        End If

        '  If varCurRow <> "" Then
        Dim sql As String = "Select Distinct FilePath from TNTAdminUpload where Category='NewsEvents' and  FileName='" + lnknew.Text + "' and FranchiseCode='" + txtfranchisecode.Text + "' order by srno"

        Dim adp As New SqlDataAdapter(sql, con)
        Dim ds As New DataSet()
        adp.Fill(ds, "PaperSubmitted")
        If ds.Tables("PaperSubmitted").Rows.Count > 0 Then
            varCurRow = ds.Tables("PaperSubmitted").Rows(0)("FilePath").ToString()
        End If
        Dim paath As String
        ' paath ="ftp://103.21.58.194/ptuconf/downloads/";
        paath = Server.MapPath("~/Ebooks/")

        Dim varFullPath As String
        varFullPath = paath & varCurRow
        Dim file As System.IO.FileInfo = Nothing
        file = New System.IO.FileInfo(varFullPath)
        If file.Exists = True Then
            Response.Clear()
            'Response.AddHeader("Content-Disposition", "attachment; filename=" + HttpUtility.UrlEncode(file.Name));
            Response.AddHeader("Content-Disposition", "attachment; filename=" + HttpUtility.UrlEncode(file.Name))

            Response.WriteFile(varFullPath)

            Response.[End]()
            'Response.Write("<SCRIPT language='javascript' type='text/javascript'>window.open('" + varFullPath + "','_blank');</SCRIPT>")

        Else


            ' ScriptManager.RegisterStartupScript(Me, Me.[GetType](), "alertmessage", "javascript:alert('No file Found.')", True)
        End If

    End Sub

    Function GenEnquirytNo() As String
        Dim con As SqlConnection
        Dim sql As String
        Dim EnquiryNo As Integer
        Dim varClass1 As New Class1
        con = New SqlConnection(varClass1.GetConnectionString(varIP))
        con.Open()
        sql = "SELECT MAX(EnquiryNo) AS EnquiryNo FROM  Admissions where FranchiseCode='" + txtfranchisecode.Text + "' AND BrandName='THINKNEXT TRAINING' "
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

    Protected Sub lnknews_Click(sender As Object, e As EventArgs)
        Dim varclass As Class1
        Dim con As SqlConnection
        '  Dim lnk As New LinkButton
        con = New SqlConnection()
        varclass = New Class1()
        Dim varCurRow As String = ""
        Dim lnk As LinkButton = DirectCast(sender, LinkButton)
        Dim dl As DataListItem = DirectCast(lnk.NamingContainer, DataListItem)
        Dim lnknew As LinkButton = DirectCast(dl.FindControl("lnknews"), LinkButton)

        con.ConnectionString = varclass.GetConnectionString("constr")
        If con.State = ConnectionState.Closed Then
            con.Open()
        End If

        '  If varCurRow <> "" Then
        Dim sql As String = "Select Distinct FilePath from TNTAdminUpload where Category='NewsEvents' and  FileName='" + lnknew.Text + "' and FranchiseCode='" + txtfranchisecode.Text + "' order by srno"

        Dim adp As New SqlDataAdapter(sql, con)
        Dim ds As New DataSet()
        adp.Fill(ds, "PaperSubmitted")
        If ds.Tables("PaperSubmitted").Rows.Count > 0 Then
            varCurRow = ds.Tables("PaperSubmitted").Rows(0)("FilePath").ToString()
        End If
        Dim paath As String
        ' paath ="ftp://103.21.58.194/ptuconf/downloads/";
        paath = Server.MapPath("~/Ebooks/")

        Dim varFullPath As String
        varFullPath = paath & varCurRow
        Dim file As System.IO.FileInfo = Nothing
        file = New System.IO.FileInfo(varFullPath)
        If file.Exists = True Then
            Response.Clear()
            'Response.AddHeader("Content-Disposition", "attachment; filename=" + HttpUtility.UrlEncode(file.Name));
            Response.AddHeader("Content-Disposition", "attachment; filename=" + HttpUtility.UrlEncode(file.Name))

            Response.WriteFile(varFullPath)

            Response.[End]()
            'Response.Write("<SCRIPT language='javascript' type='text/javascript'>window.open('" + varFullPath + "','_blank');</SCRIPT>")

        Else

            ' ScriptManager.RegisterStartupScript(Me, Me.[GetType](), "alertmessage", "javascript:alert('No file Found.')", True)
        End If

    End Sub
    Protected Sub lnknews1_Click(sender As Object, e As EventArgs)
        Dim varclass As Class1
        Dim con As SqlConnection
        '  Dim lnk As New LinkButton
        con = New SqlConnection()
        varclass = New Class1()
        Dim varCurRow As String = ""
        Dim lnk As LinkButton = DirectCast(sender, LinkButton)
        Dim dl As DataListItem = DirectCast(lnk.NamingContainer, DataListItem)
        Dim lnknew1 As LinkButton = DirectCast(dl.FindControl("lnknews1"), LinkButton)

        con.ConnectionString = varclass.GetConnectionString("constr")
        If con.State = ConnectionState.Closed Then
            con.Open()
        End If

        '  If varCurRow <> "" Then
        Dim sql As String = "Select Distinct FilePath from TNTAdminUpload where Category='Placement News' and  FileName='" + lnknews1.Text + "' and FranchiseCode='" + txtfranchisecode.Text + "' order by srno"

        Dim adp As New SqlDataAdapter(sql, con)
        Dim ds As New DataSet()
        adp.Fill(ds, "PaperSubmitted")
        If ds.Tables("PaperSubmitted").Rows.Count > 0 Then
            varCurRow = ds.Tables("PaperSubmitted").Rows(0)("FilePath").ToString()
        End If
        Dim paath As String
        ' paath ="ftp://103.21.58.194/ptuconf/downloads/";
        paath = Server.MapPath("~/Ebooks/")

        Dim varFullPath As String
        varFullPath = paath & varCurRow
        Dim file As System.IO.FileInfo = Nothing
        file = New System.IO.FileInfo(varFullPath)
        If file.Exists = True Then
            Response.Clear()
            'Response.AddHeader("Content-Disposition", "attachment; filename=" + HttpUtility.UrlEncode(file.Name));
            Response.AddHeader("Content-Disposition", "attachment; filename=" + HttpUtility.UrlEncode(file.Name))

            Response.WriteFile(varFullPath)

            Response.[End]()
            'Response.Write("<SCRIPT language='javascript' type='text/javascript'>window.open('" + varFullPath + "','_blank');</SCRIPT>")

        Else


            ' ScriptManager.RegisterStartupScript(Me, Me.[GetType](), "alertmessage", "javascript:alert('No file Found.')", True)
        End If
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        ' displayinfo()
        ' displayinfo1()
        'displayinfo2()
        'displaynewsandevents()
        'displaynewsandevents1()
        'displayHotJobs()

        If Not IsPostBack = True Then
            Dim script As String = "$(document).ready(function () { $('[id*=btnSubmit]').click(); });"
            ClientScript.RegisterStartupScript(Me.GetType, "load", script, True)

        End If
    End Sub
    Sub displayinfo()
        Dim con As SqlConnection
        Dim str As String
        Dim da As SqlDataAdapter
        Dim ds As DataSet
        Dim varClass1 As New Class1
        con = New SqlConnection(varClass1.GetConnectionString(varIP))
        con.Open()
        str = "select distinct FileName from TNTAdminUpload t1 where Srno=(select max(Srno) from TNTAdminUpload where Category='H_news&events') and  Category='H_news&events' and FranchiseCode='TNK101' and BrandName='THINKNEXT TRAINING' "
        'str = "select distinct FileName from TNTAdminUpload t1 where Srno=(select max(Srno) from TNTAdminUpload) and  Category='NewsEvents' and FranchiseCode='TNK101' and BrandName='THINKNEXT TRAINING' "
        da = New SqlDataAdapter(str, con)
        ds = New DataSet()
        da.Fill(ds, "cs1")
        If ds.Tables("cs1").Rows.Count > 0 Then
            lblnewssss.Text = ds.Tables(0).Rows(0)("FileName").ToString() + "<a href='stipend-based-industrial-training.aspx' class='registernow'> Register Now</a> &nbsp; &nbsp; | &nbsp; &nbsp; 100% Free Training Courses with Placement assistance under PSDM (Punjab Skill Development Mission) Govt. Schemes for Mohali Urban Residents only Call Now 78374-01000 "

        End If
    End Sub

    Sub displayinfo1()
        Dim con As SqlConnection
        Dim str As String
        Dim da As SqlDataAdapter
        Dim ds As DataSet
        Dim varClass1 As New Class1()
        con = New SqlConnection(varClass1.GetConnectionString(varIP))
        con.Open()
        str = "select distinct FileName from TNTAdminUpload t1 where Srno=(select max(Srno)-1 from TNTAdminUpload) and  Category='NewsEvents' and FranchiseCode='TNK101' and BrandName='THINKNEXT TRAINING' "
        'str = "select distinct FileName from TNTAdminUpload t1 where Srno=(select max(Srno) from TNTAdminUpload) and  Category='NewsEvents' and FranchiseCode='TNK101' and BrandName='THINKNEXT TRAINING' "
        da = New SqlDataAdapter(str, con)
        ds = New DataSet()
        da.Fill(ds, "cs1")
        If ds.Tables("cs1").Rows.Count > 0 Then
            'secnews.Text = ds.Tables(0).Rows(0)("FileName").ToString()
            'secnews.Text = ds.Tables(0).Rows(0)("FileName").ToString() + "<a href='#' runat=Server' style='font-size:11px; color:blue; text-decoration:none;' onclick='toggle();'> Click here to register for scholarship test</a> "

        End If
    End Sub
    Sub displayinfo2()
        Dim con As SqlConnection
        Dim str As String
        Dim da As SqlDataAdapter
        Dim ds As DataSet
        Dim varClass1 As New Class1()
        con = New SqlConnection(varClass1.GetConnectionString(varIP))
        con.Open()
        str = "select distinct FileName from TNTAdminUpload t1 where Srno=(select max(Srno)-2 from TNTAdminUpload) and  Category='NewsEvents' and FranchiseCode='TNK101' and BrandName='THINKNEXT TRAINING' "
        'str = "select distinct FileName from TNTAdminUpload t1 where Srno=(select max(Srno) from TNTAdminUpload) and  Category='NewsEvents' and FranchiseCode='TNK101' and BrandName='THINKNEXT TRAINING' "
        da = New SqlDataAdapter(str, con)
        ds = New DataSet()
        da.Fill(ds, "cs1")
        If ds.Tables("cs1").Rows.Count > 0 Then
            'app.Text = ds.Tables(0).Rows(0)("FileName").ToString()
            'secnews.Text = ds.Tables(0).Rows(0)("FileName").ToString() + "<a href='#' runat=Server' style='font-size:11px; color:blue; text-decoration:none;' onclick='toggle();'> Click here to register for scholarship test</a> "

        End If
    End Sub
    Sub displaynewsandevents()
        Dim con As SqlConnection
        Dim str As String
        Dim da As SqlDataAdapter
        Dim ds As DataSet
        Dim varClass1 As New Class1
        con = New SqlConnection(varClass1.GetConnectionString(varIP))
        con.Open()
        str = "select top(5) * from TNTAdminUpload t1 where  Category='NewsEvents' and FranchiseCode='" + txtfranchisecode.Text + "'  and filename not like '%saturday%' order by srno desc "
        'str = "select  * from TNTAdminUpload where category='NewsEvents' and FranchiseCode='" + txtfranchisecode.Text + "' order by srno desc"
        'str = "select distinct * from TNTAdminUpload where category='NewsEvents' and FranchiseCode='" + txtfranchisecode.Text + "'"
        da = New SqlDataAdapter(str, con)
        ds = New DataSet()
        da.Fill(ds, "cs")
        If ds.Tables("cs").Rows.Count > 0 Then
            lnknewsandevents.DataSource = ds
            lnknewsandevents.DataBind()
            '  For i = 0 To ds.Tables(0).Rows.Count - 1
            For i = 0 To lnknewsandevents.Items.Count - 1
                ' For Each dl As DataListItem In lnknewsandevents.Items
                Dim lblnewssssss As Label = DirectCast(lnknewsandevents.Items(i).FindControl("Label2"), Label)

                Dim lnkbtn As LinkButton = DirectCast(lnknewsandevents.Items(i).FindControl("lnknews"), LinkButton)
                Dim filename As String
                filename = ds.Tables("cs").Rows(i)("FilePath").ToString()
                If filename = "" Then
                    lblnewssssss.Visible = True
                    lblnewssssss.Text = "<p >" + ds.Tables(0).Rows(i).Item(1).ToString() + "</p>"
                    lnkbtn.Visible = False
                    'lblnewssssss.ForeColor = System.Drawing.Color.FromName(ds.Tables(0).Rows(i).Item(6).ToString())

                Else
                    lblnewssssss.Visible = False
                    lnkbtn.Visible = True
                    lblnewssssss.Text = "<p >" + ds.Tables(0).Rows(i).Item(1).ToString() + "</p>"



                End If

            Next



        End If
    End Sub
    Sub displaynewsandevents1()
        Dim con As SqlConnection
        Dim str As String
        Dim da As SqlDataAdapter
        Dim ds As DataSet
        Dim varClass1 As New Class1
        con = New SqlConnection(varClass1.GetConnectionString(varIP))
        con.Open()
        'str = "select * from TNTAdminUpload t1 where Srno=(select max(Srno)-1 from TNTAdminUpload) and  Category='NewsEvents' and FranchiseCode='" + txtfranchisecode.Text + "' order by srno desc "
        str = "select  * from TNTAdminUpload where category='Placement News' and FranchiseCode='" + txtfranchisecode.Text + "' order by srno desc"
        'str = "select distinct * from TNTAdminUpload where category='NewsEvents' and FranchiseCode='" + txtfranchisecode.Text + "'"
        da = New SqlDataAdapter(str, con)
        ds = New DataSet()
        da.Fill(ds, "cs")
        'If ds.Tables("cs").Rows.Count > 0 Then
        '    lnknewsandevents1.DataSource = ds
        '    lnknewsandevents1.DataBind()
        '    '  For i = 0 To ds.Tables(0).Rows.Count - 1
        '    For i = 0 To lnknewsandevents1.Items.Count - 1
        '        ' For Each dl As DataListItem In lnknewsandevents.Items
        '        Dim lblnewssssss As Label = DirectCast(lnknewsandevents1.Items(i).FindControl("Label2"), Label)

        '        Dim lnkbtn1 As LinkButton = DirectCast(lnknewsandevents1.Items(i).FindControl("lnknews1"), LinkButton)
        '        Dim filename As String
        '        filename = ds.Tables("cs").Rows(i)("FilePath").ToString()
        '        If filename = "" Then
        '            lblnewssssss.Visible = True
        '            lblnewssssss.Text = "<p>" + ds.Tables(0).Rows(i).Item(1).ToString() + "</p>"
        '            lnkbtn1.Visible = False
        '            'lblnewssssss.ForeColor = System.Drawing.Color.FromName(ds.Tables(0).Rows(i).Item(6).ToString())

        '        Else
        '            lblnewssssss.Visible = False
        '            lnkbtn1.Visible = True
        '            lblnewssssss.Text = "<p>" + ds.Tables(0).Rows(i).Item(1).ToString() + "</p>"



        '        End If

        ' Next



        'End If
    End Sub
    Sub displayHotJobs()
        Dim con As SqlConnection
        Dim cmd As SqlCommand
        Dim dr As SqlDataReader
        Dim varClass1 As New Class1
        con = New SqlConnection(varClass1.GetConnectionString(varIP))
        con.Open()

        cmd = New SqlCommand("Select Job_Title, Company_Name, Job_Description, Job_Type, Date_posted from tbl_hotJobs order by date_posted desc", con)
        dr = cmd.ExecuteReader()
        grd_hotJobs.DataSource = dr
        grd_hotJobs.DataBind()
    End Sub

    'Sub SendEmailReg()
    '    ' Dim con As SqlConnection
    '    Dim var As New Class1()
    '    Dim msg As New MailMessage()
    '    'msg.From = New MailAddress("thinknextsmart@gmail.com", "ThinkNext Technologies Pvt. Ltd")
    '    msg.From = New MailAddress("support@thinknext.co.in", "ThinkNext Technologies Pvt. Ltd")
    '    msg.To.Add(New MailAddress(txtEmailR.Text))
    '    Dim reader As New StreamReader(Server.MapPath("~/Email7.html"))

    '    Dim readFile As String = reader.ReadToEnd()

    '    Dim StrContent As String = ""

    '    StrContent = readFile
    '    StrContent = StrContent.Replace("[MyName]", txtNameR.Text)
    '    StrContent = StrContent.Replace("[Course]", txtcourses1.Text)
    '    StrContent = StrContent.Replace("[ENO]", Session("admin").ToString())
    '    StrContent = StrContent.Replace("[Training]", ddlTraining.Text)
    '    StrContent = StrContent.Replace("[msg]", lblnewssss.Text)


    '    Dim altView As AlternateView = AlternateView.CreateAlternateViewFromString(StrContent, Nothing, MediaTypeNames.Text.Html)
    '    Dim yourPictureRes As New LinkedResource(Server.MapPath(".") + "//Staff//attachmentemail//ThinknextTraining.png")
    '    yourPictureRes.ContentId = "InlineImageID"
    '    altView.LinkedResources.Add(yourPictureRes)
    '    StrContent = StrContent.Replace("{Url}", altView.ToString())


    '    Dim Pictures As New LinkedResource(Server.MapPath(".") + "//images//WHATSAPP+.png")
    '    Pictures.ContentId = "ID"
    '    altView.LinkedResources.Add(Pictures)
    '    StrContent = StrContent.Replace("{IMG}", altView.ToString())



    '    If ddlTraining.Text Is "6 Weeks" Then
    '        msg.Subject = "6 Weeks Industrial Training with Part-Time Job Offer and Free spoken English and PD"
    '        msg.Body = StrContent.ToString()
    '        msg.IsBodyHtml = True
    '        'Dim fname As String = ""
    '        Dim fname1 As String = ""
    '        Dim fname2 As String = ""
    '        fname1 = Server.MapPath("~/Staff/attachmentemail/thinknext brochure.pdf")
    '        fname2 = Server.MapPath("~/Staff/attachmentemail/Thinknext pamphlet.pdf")
    '        msg.Attachments.Add(New Attachment(fname1))
    '        msg.Attachments.Add(New Attachment(fname2))
    '        msg.AlternateViews.Add(altView)

    '    ElseIf ddlTraining.Text Is "6 Months" Then
    '        msg.Subject = "6 Months Industrial Training with Part-Time Job Offer and Free spoken English and PD"
    '        msg.Body = StrContent.ToString()
    '        msg.IsBodyHtml = True
    '        'Dim fname As String = ""
    '        Dim fname1 As String = ""
    '        Dim fname2 As String = ""
    '        fname1 = Server.MapPath("~/Staff/attachmentemail/thinknext brochure.pdf")
    '        fname2 = Server.MapPath("~/Staff/attachmentemail/Thinknext pamphlet.pdf")
    '        'msg.Attachments.Add(New Attachment(fname))
    '        msg.Attachments.Add(New Attachment(fname1))
    '        msg.Attachments.Add(New Attachment(fname2))
    '        msg.AlternateViews.Add(altView)

    '    ElseIf ddlTraining.Text Is "2 Months" Then
    '        msg.Subject = "2 Months Industrial Training with Part-Time Job Offer and Free spoken English and PD"
    '        msg.Body = StrContent.ToString()
    '        msg.IsBodyHtml = True
    '        'Dim fname As String = ""
    '        Dim fname1 As String = ""
    '        Dim fname2 As String = ""
    '        fname1 = Server.MapPath("~/Staff/attachmentemail/thinknext brochure.pdf")
    '        fname2 = Server.MapPath("~/Staff/attachmentemail/Thinknext pamphlet.pdf")
    '        'msg.Attachments.Add(New Attachment(fname))
    '        msg.Attachments.Add(New Attachment(fname1))
    '        msg.Attachments.Add(New Attachment(fname2))
    '        msg.AlternateViews.Add(altView)

    '    ElseIf ddlTraining.Text Is "3 Months" Then
    '        msg.Subject = "3 Months Industrial Training with Part-Time Job Offer and Free spoken English and PD"
    '        msg.Body = StrContent.ToString()
    '        msg.IsBodyHtml = True
    '        'Dim fname As String = ""
    '        Dim fname1 As String = ""
    '        Dim fname2 As String = ""
    '        fname1 = Server.MapPath("~/Staff/attachmentemail/thinknext brochure.pdf")
    '        fname2 = Server.MapPath("~/Staff/attachmentemail/Thinknext pamphlet.pdf")
    '        'msg.Attachments.Add(New Attachment(fname))
    '        msg.Attachments.Add(New Attachment(fname1))
    '        msg.Attachments.Add(New Attachment(fname2))
    '        msg.AlternateViews.Add(altView)
    '    Else
    '        msg.Subject = "6 Months Industrial Training with Part-Time Job Offer and Free spoken English and PD"
    '        msg.Body = StrContent.ToString()
    '        msg.IsBodyHtml = True
    '        ' Dim fname As String = ""
    '        Dim fname1 As String = ""
    '        Dim fname2 As String = ""
    '        'fname = Server.MapPath("~/Staff/attachmentemail/6 MONTHS CSE ECE IT ME.pdf")
    '        fname1 = Server.MapPath("~/Staff/attachmentemail/thinknext brochure.pdf")
    '        fname2 = Server.MapPath("~/Staff/attachmentemail/Thinknext pamphlet.pdf")
    '        'msg.Attachments.Add(New Attachment(fname))
    '        msg.Attachments.Add(New Attachment(fname1))
    '        msg.Attachments.Add(New Attachment(fname2))
    '        msg.AlternateViews.Add(altView)

    '    End If
    '    Dim obj As New SmtpClient()
    '    'obj.Host = "smtp-mail.outlook.com"
    '    obj.Host = "smtp.gmail.com"
    '    obj.Port = "587"
    '    obj.DeliveryMethod = SmtpDeliveryMethod.Network
    '    msg.Priority = MailPriority.High
    '    obj.UseDefaultCredentials = False
    '    obj.Credentials = New NetworkCredential("thinknextsmart@gmail.com", "smartthink")
    '    'obj.Credentials = New NetworkCredential("support@thinknext.co.in", "smartbss?")
    '    obj.EnableSsl = True
    '    obj.Timeout = 9999999
    '    Try
    '        obj.Send(msg)
    '        ClientScript.RegisterStartupScript(Me.GetType, "alert", "alert('Dear " & txtNameR.Text & " You have been registered successfully ');", True)
    '        Return
    '    Catch ex As Exception
    '        Response.Write(ex.Message)
    '    End Try

    'End Sub


    'Sub AddStudentScholarshipDetail()
    '    Dim varclass As New Class1
    '    Dim con As SqlConnection
    '    con = New SqlConnection(varclass.GetConnectionString(varIP))
    '    con.Open()
    '    Dim sql As String
    '    Dim cultureInfo As CultureInfo = Thread.CurrentThread.CurrentCulture
    '    Dim objTextInfo As TextInfo = cultureInfo.TextInfo
    '    txtNameR.Text = objTextInfo.ToTitleCase(txtNameR.Text)
    '    txtcourses1.Text = objTextInfo.ToTitleCase(txtcourses1.Text)
    '    sql = "insert into Admissions(Session, EnquiryNo, Admissiondate,StudentName,StudentMobileNo,EmailID,Duration,Course,Comment,ModeOfEnquiry,StatusCode,FranchiseCode,BrandName,EnquiryStatus)values(@Session,@EnquiryNo,@Admissiondate,@StudentName,@StudentMobileNo,@EmailID,@Duration,@Course,@Comment,@ModeOfEnquiry,@StatusCode,@FranchiseCode,@BrandName,@EnquiryStatus)"
    '    Dim cmd As New SqlCommand(sql, con)
    '    Dim enquiryno As String
    '    enquiryno = GenEnquirytNo()
    '    Dim ses As String
    '    ses = varclass.Session12(sess)
    '    Session("admin") = enquiryno
    '    cmd.Parameters.AddWithValue("@EnquiryNo", enquiryno)
    '    cmd.Parameters.AddWithValue("@Admissiondate", Format(Now, "MM/dd/yyyy"))
    '    cmd.Parameters.AddWithValue("@StudentName", txtNameR.Text)
    '    cmd.Parameters.AddWithValue("@StudentMobileNo", txtContectR.Text)
    '    cmd.Parameters.AddWithValue("@ModeOfEnquiry", "Register For Scholarship")
    '    cmd.Parameters.AddWithValue("@EmailID", txtEmailR.Text)
    '    cmd.Parameters.AddWithValue("@Duration", ddlTraining.Text)
    '    cmd.Parameters.AddWithValue("@Course", txtcourses1.Text)
    '    cmd.Parameters.AddWithValue("@Comment", "Register for scholarship")
    '    cmd.Parameters.AddWithValue("@StatusCode", "Enquiry")
    '    cmd.Parameters.AddWithValue("@FranchiseCode", txtfranchisecode.Text)
    '    cmd.Parameters.AddWithValue("@BrandName", "THINKNEXT TRAINING")
    '    cmd.Parameters.AddWithValue("@Session", ses)
    '    cmd.Parameters.AddWithValue("@EnquiryStatus", "Open")
    '    'cmd.Parameters.AddWithValue("@CourseEnrolled", "ddlCEnrolled")
    '    cmd.ExecuteNonQuery()
    '    cmd.Dispose()
    '    con.Close()
    '    lblstatus.Text = "You are Successfully Registered "
    'End Sub

    'Sub SendEmailbroucher()
    '    ' Dim con As SqlConnection
    '    Dim var As New Class1()
    '    Dim msg As New MailMessage()
    '    msg.From = New MailAddress("thinknextsmart@gmail.com", "ThinkNext Technologies Pvt. Ltd")
    '    'msg.From = New MailAddress("support@thinknext.co.in", "ThinkNext Technologies Pvt. Ltd")
    '    msg.To.Add(New MailAddress(txtEmailR.Text))
    '    Dim reader As New StreamReader(Server.MapPath("~/Email8.html"))

    '    Dim readFile As String = reader.ReadToEnd()

    '    Dim StrContent As String = ""

    '    StrContent = readFile
    '    StrContent = StrContent.Replace("[MyName]", txtNameR.Text)
    '    StrContent = StrContent.Replace("[ENO]", Session("admin").ToString())
    '    StrContent = StrContent.Replace("[msg]", lblnewssss.Text)


    '    Dim altView As AlternateView = AlternateView.CreateAlternateViewFromString(StrContent, Nothing, MediaTypeNames.Text.Html)
    '    Dim yourPictureRes As New LinkedResource(Server.MapPath(".") + "//Staff//attachmentemail//ThinknextTraining.png")
    '    yourPictureRes.ContentId = "InlineImageID"
    '    altView.LinkedResources.Add(yourPictureRes)
    '    StrContent = StrContent.Replace("{Url}", altView.ToString())


    '    Dim Pictures As New LinkedResource(Server.MapPath(".") + "//images//WHATSAPP+.png")
    '    Pictures.ContentId = "ID"
    '    altView.LinkedResources.Add(Pictures)
    '    StrContent = StrContent.Replace("{IMG}", altView.ToString())




    '    msg.Subject = "6 Months Free Industrial Training"
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
    '    Dim obj As New SmtpClient()
    '    'obj.Host = "smtp-mail.outlook.com"
    '    obj.Host = "smtp.gmail.com"
    '    obj.Port = "587"
    '    obj.DeliveryMethod = SmtpDeliveryMethod.Network
    '    msg.Priority = MailPriority.High
    '    obj.UseDefaultCredentials = False
    '    obj.Credentials = New NetworkCredential("thinknextsmart@gmail.com", "smartthink")
    '    'obj.Credentials = New NetworkCredential("support@thinknext.co.in", "smartbss?")
    '    obj.EnableSsl = True
    '    obj.Timeout = 9999999
    '    Try
    '        obj.Send(msg)
    '        'lblmsg.Visible = True
    '        'lblmsg.Text = "Dear " + txtNameR.Text + "You have been registered successfully." + " Your Enquiry No is " & Session("admin").ToString()
    '        '  ClientScript.RegisterStartupScript(Me.GetType, "alert", "alert('Dear " & txtNameR.Text & " You have been registered successfully ');", True)
    '        Return
    '    Catch ex As Exception
    '        Response.Write(ex.Message)
    '    End Try

    'End Sub
    Protected Sub btnsubmit1_Click(sender As Object, e As EventArgs) Handles btnsubmit1.Click

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

        If txtEmailR.Text <> email Then
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

            ' Dim SMS2nd As String
            'SMS2nd = "Dear " & txtNameR.Text & ", Thanks for your registration for free demo class. Venue: ThinkNEXT Technologies Pvt. Ltd., SCF 113, Sector-65, Phase-XI, Mohali (Chandigarh) Call: 7837401000, 7837402000, 7837403000, 7837404000, 0172-4656197 Toll Free : 1800-102-4102 or visit us at www.thinknexttraining.com, One of our representative will get in touch with you soon. To know more about ThinkNEXT and get regular updates on your facebook account regarding placements and other activities, please like us at www.facebook.com/thinknexttechnologies"
            'SMS2nd = "Dear " & txtNameR.Text & ", Thanks for registration for Online Industrial Training Test for Industrial Training. Exam Date: " & lblnewssss.Text & " Timings: 11:00 AM to 4:00 PM Duration: 30 Minutes Venue: ThinkNEXT Technologies Pvt. Ltd., SCF 113, Sector-65, Phase-XI, Mohali (Chandigarh) Call 0172-4656197, 7837401000, 7837402000."
            'SMS2nd = SMS2nd & " Venue : ThinkNEXT Technologies Pvt. Ltd., SCF 113, Sector-65, Phase-XI, Mohali (Chandigarh) Call: 0172-4656197, 7837401000, 7837402000. "

            ' varclass.SendSMS(txtContectR.Text, Message, "Route11")
            'varclass.SendSMS(txtContectR.Text, SMS2nd, "Route9")
            'varclass.SendSMSBytePaper(txtContectR.Text, txtNameR.Text, txtEmailR.Text, "Demo Class")
            varclass.SendLeads(txtContectR.Text, txtNameR.Text, txtEmailR.Text, txtjob.Text, "Demo Class", "https://www.thinknexttraining.com")
            txtNameR.Text = ""
            txtContectR.Text = ""
            txtEmailR.Text = ""
            txtjob.Text = ""
            Response.Redirect("thanks.html")
        End If
    End Sub
    Sub SendEmailReg()
        ' Dim con As SqlConnection
        Dim var As New Class1()
        Dim msg As New MailMessage()
        'msg.From = New MailAddress("info@thinknext.online", "ThinkNext Technologies Pvt. Ltd")
        msg.From = New MailAddress("training@thinknext.co.in", "ThinkNext Technologies Pvt. Ltd")
        msg.To.Add(New MailAddress(txtEmailR.Text))
        Dim reader As New StreamReader(Server.MapPath("~/Email9.html"))

        Dim readFile As String = reader.ReadToEnd()

        Dim StrContent As String = ""

        StrContent = readFile
        StrContent = StrContent.Replace("[MyName]", txtNameR.Text)
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
        Dim fname1 As String = ""
        Dim fname2 As String = ""
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
        'obj.Credentials = New NetworkCredential("info@thinknext.online", "Yahoo456$%^")
        obj.Credentials = New NetworkCredential("training@thinknext.co.in", "SmartIndia345#$%")
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
        txtjob.Text = objTextInfo.ToTitleCase(txtjob.Text)
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
        cmd.Parameters.AddWithValue("@StudentName", txtNameR.Text)
        cmd.Parameters.AddWithValue("@StudentMobileNo", txtContectR.Text)
        cmd.Parameters.AddWithValue("@ModeOfEnquiry", "Free Demo Class")
        cmd.Parameters.AddWithValue("@EmailID", txtEmailR.Text)
        cmd.Parameters.AddWithValue("@Duration", "Free Demo Class")
        cmd.Parameters.AddWithValue("@Course", txtjob.Text)
        'cmd.Parameters.AddWithValue("@CollegeName", )
        cmd.Parameters.AddWithValue("@Comment", "Free Demo Class")
        cmd.Parameters.AddWithValue("@StatusCode", "Enquiry")
        cmd.Parameters.AddWithValue("@FranchiseCode", "TNK101")
        cmd.Parameters.AddWithValue("@BrandName", "THINKNEXT TRAINING")
        cmd.Parameters.AddWithValue("@Session", ses)
        cmd.ExecuteNonQuery()
        cmd.Dispose()
        con.Close()
        lblmsg1.Visible = True
        'lblmsg1.Text = "Dear " + txtNameR.Text + " you have been registered successfully." + " Your Enquiry No is " & enquiryno
        lblmsg1.Text = "Dear " + txtNameR.Text + " you have been registered successfully."



        'ClientScript.RegisterStartupScript(Me.GetType, "alert", "alert('Dear " & txtNameR.Text & " You have been registered successfully ');", True)
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        System.Threading.Thread.Sleep(0)
        Dim con As SqlConnection
        Dim varclass As New Class1
        con = New SqlConnection(varclass.GetConnectionString(varIP))
        con.Open()
        Dim email As String = ""
        If WorkshopTxtEmail.Text <> email Then
            AddStudentScholarshipDetail1()
            SendEmailReg1()
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
            End If

            'Dim SMS2nd As String
            'SMS2nd = "Dear " & WorkshopTxtName.Text & ", Thanks for your registration for Free Workshop. Venue: ThinkNEXT Technologies Pvt. Ltd., SCF 113, Sector-65, Phase-XI, Mohali (Chandigarh) Call: 7837401000, 7837402000, 7837403000, 7837404000, 0172-4656197 Toll Free : 1800-102-4102 or visit us at www.thinknexttraining.com, One of our representative will get in touch with you soon. To know more about ThinkNEXT and get regular updates on your facebook account regarding placements and other activities, please like us at www.facebook.com/thinknexttechnologies"
            'varclass.SendSMS(WorkshopTxtMobile.Text, SMS2nd, "Route9")
            'varclass.SendSMSBytePaper(WorkshopTxtMobile.Text, WorkshopTxtEmail.Text, WorkshopTxtEmail.Text, "Free Workshop Enquiry")

            varclass.SendLeads(WorkshopTxtMobile.Text, WorkshopTxtName.Text, WorkshopTxtEmail.Text, WorkshopTxtCourse.Text, "Register for Free Workshop", "https://www.thinknexttraining.com")
            WorkshopTxtName.Text = ""
            WorkshopTxtMobile.Text = ""
            WorkshopTxtEmail.Text = ""
            WorkshopTxtCourse.Text = ""
            Response.Redirect("thanks.html")
        End If
    End Sub
    Sub AddStudentScholarshipDetail1()
        Dim varclass As New Class1
        Dim con As SqlConnection
        con = New SqlConnection(varclass.GetConnectionString(varIP))
        con.Open()
        Dim sql As String
        Dim cultureInfo As CultureInfo = Thread.CurrentThread.CurrentCulture
        Dim objTextInfo As TextInfo = cultureInfo.TextInfo
        WorkshopTxtName.Text = objTextInfo.ToTitleCase(WorkshopTxtName.Text)
        WorkshopTxtCourse.Text = objTextInfo.ToTitleCase(WorkshopTxtCourse.Text)
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
        cmd.Parameters.AddWithValue("@StudentName", WorkshopTxtName.Text)
        cmd.Parameters.AddWithValue("@StudentMobileNo", WorkshopTxtMobile.Text)
        cmd.Parameters.AddWithValue("@ModeOfEnquiry", "Free Workshop")
        cmd.Parameters.AddWithValue("@EmailID", WorkshopTxtEmail.Text)
        cmd.Parameters.AddWithValue("@Duration", "Free Workshop")
        cmd.Parameters.AddWithValue("@Course", WorkshopTxtCourse.Text)
        'cmd.Parameters.AddWithValue("@CollegeName", )
        cmd.Parameters.AddWithValue("@Comment", "Free Workshop")
        cmd.Parameters.AddWithValue("@StatusCode", "Enquiry")
        cmd.Parameters.AddWithValue("@FranchiseCode", "TNK101")
        cmd.Parameters.AddWithValue("@BrandName", "THINKNEXT TRAINING")
        cmd.Parameters.AddWithValue("@Session", ses)
        cmd.ExecuteNonQuery()
        cmd.Dispose()
        con.Close()
        Label3.Visible = True
        'lblmsg1.Text = "Dear " + txtNameR.Text + " you have been registered successfully." + " Your Enquiry No is " & enquiryno
        Label3.Text = "Dear " + WorkshopTxtName.Text + " you have been registered successfully."



        'ClientScript.RegisterStartupScript(Me.GetType, "alert", "alert('Dear " & txtNameR.Text & " You have been registered successfully ');", True)
    End Sub
    Sub SendEmailReg1()
        ' Dim con As SqlConnection
        Dim var As New Class1()
        Dim msg As New MailMessage()
        'msg.From = New MailAddress("info@thinknext.online", "ThinkNext Technologies Pvt. Ltd")
        msg.From = New MailAddress("training@thinknext.co.in", "ThinkNext Technologies Pvt. Ltd")
        msg.To.Add(New MailAddress(WorkshopTxtEmail.Text))
        Dim reader As New StreamReader(Server.MapPath("~/Email9.html"))

        Dim readFile As String = reader.ReadToEnd()

        Dim StrContent As String = ""

        StrContent = readFile
        StrContent = StrContent.Replace("[MyName]", WorkshopTxtName.Text)
        StrContent = StrContent.Replace("[ENO]", Session("admin").ToString())
        ' StrContent = StrContent.Replace("[msg]", lblnewssss.Text)


        Dim altView As AlternateView = AlternateView.CreateAlternateViewFromString(StrContent, Nothing, MediaTypeNames.Text.Html)

        msg.Subject = "Free Workshop"
        msg.Body = StrContent.ToString()
        msg.IsBodyHtml = True
        'Dim fname As String = ""
        Dim fname1 As String = ""
        Dim fname2 As String = ""

        msg.AlternateViews.Add(altView)
        Dim obj As New SmtpClient()
        'obj.Host = "smtp-mail.outlook.com"
        obj.Host = "relay-hosting.secureserver.net"
        'obj.Port = "587"
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

            Return
        Catch ex As Exception
            Response.Write(ex.Message)
        End Try

    End Sub
    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        System.Threading.Thread.Sleep(0)
        Dim con As SqlConnection
        Dim varclass As New Class1
        con = New SqlConnection(varclass.GetConnectionString(varIP))
        con.Open()
        Dim email As String = ""
        ' If WorkshopTxtEmail.Text <> email Then
        AddStudentScholarshipDetail2()
        'SendEmailReg2()
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
            End If

        ' Dim SMS2nd As String
        'SMS2nd = "Dear " & QuickCallTxtName.Text & ", One of our representative will get in touch with you soon. Regards ThinkNEXT Technologies Pvt. Ltd., SCF 113, Sector-65, Phase-XI, Mohali (Chandigarh) Call: 7837401000, 7837402000, 7837403000, 7837404000, 0172-4656197 Toll Free : 1800-102-4102 or visit us at www.thinknexttraining.com To know more about ThinkNEXT and get regular updates on your facebook account regarding placements and other activities, please like us at www.facebook.com/thinknexttechnologies"
        'varclass.SendSMS(QuickCallTxtMobile.Text, SMS2nd, "Route9")
        '' varclass.SendSMSBytePaper(QuickCallTxtMobile.Text, QuickCallTxtName.Text, "No Email Id Found", "Quick Call Enquiry")

        varclass.SendLeads(QuickCallTxtMobile.Text, QuickCallTxtName.Text, "thknxtwebdesigning@gmail.com", "None", "Get a Quick call from us", "https://www.thinknexttraining.com")

        'QuickCallTxtName.Text = ""
        'QuickCallTxtMobile.Text = ""
        'WorkshopTxtEmail.Text = ""
        'WorkshopTxtCourse.Text = ""
        'End If
        'Dim SMS3rd As String
        'SMS3rd = "You have a Quick Call From Student Name: " & QuickCallTxtName.Text & ", from Mobile No.: " & QuickCallTxtMobile.Text & ""
        'varclass.SendSMS("7837401000", SMS3rd, "Route9")
        QuickCallTxtName.Text = ""
        QuickCallTxtMobile.Text = ""
        Response.Redirect("thanks.html")
    End Sub
    Sub AddStudentScholarshipDetail2()
        Dim varclass As New Class1
        Dim con As SqlConnection
        con = New SqlConnection(varclass.GetConnectionString(varIP))
        con.Open()
        Dim sql As String
        Dim cultureInfo As CultureInfo = Thread.CurrentThread.CurrentCulture
        Dim objTextInfo As TextInfo = cultureInfo.TextInfo
        QuickCallTxtName.Text = objTextInfo.ToTitleCase(QuickCallTxtName.Text)
        'WorkshopTxtCourse.Text = objTextInfo.ToTitleCase(WorkshopTxtCourse.Text)
        Dim ses As String
        ses = varclass.Session12(sess)
        'ses = Session12()
        sql = "insert into Admissions( Session,EnquiryNo, Admissiondate,StudentName,StudentMobileNo,Comment,ModeOfEnquiry,StatusCode,FranchiseCode,BrandName)values(@Session,@EnquiryNo,@Admissiondate,@StudentName,@StudentMobileNo,@Comment,@ModeOfEnquiry,@StatusCode,@FranchiseCode,@BrandName)"
        Dim cmd As New SqlCommand(sql, con)
        Dim enquiryno As String
        enquiryno = GenEnquirytNo()
        Session("admin") = enquiryno
        cmd.Parameters.AddWithValue("@EnquiryNo", enquiryno)
        cmd.Parameters.AddWithValue("@Admissiondate", Format(Now, "MM/dd/yyyy"))
        cmd.Parameters.AddWithValue("@StudentName", QuickCallTxtName.Text)
        cmd.Parameters.AddWithValue("@StudentMobileNo", QuickCallTxtMobile.Text)
        cmd.Parameters.AddWithValue("@ModeOfEnquiry", "Quick Call")
        'cmd.Parameters.AddWithValue("@EmailID", "Quick Call")
        'cmd.Parameters.AddWithValue("@Duration", "Quick Call")
        'cmd.Parameters.AddWithValue("@Course", "Quick Call")
        'cmd.Parameters.AddWithValue("@CollegeName", )
        cmd.Parameters.AddWithValue("@Comment", "Quick Call")
        cmd.Parameters.AddWithValue("@StatusCode", "Enquiry")
        cmd.Parameters.AddWithValue("@FranchiseCode", "TNK101")
        cmd.Parameters.AddWithValue("@BrandName", "THINKNEXT TRAINING")
        cmd.Parameters.AddWithValue("@Session", ses)
        cmd.ExecuteNonQuery()
        cmd.Dispose()
        con.Close()
        Label6.Visible = True
        'lblmsg1.Text = "Dear " + txtNameR.Text + " you have been registered successfully." + " Your Enquiry No is " & enquiryno
        Label6.Text = "Dear " + QuickCallTxtName.Text + " you have been registered successfully."



        'ClientScript.RegisterStartupScript(Me.GetType, "alert", "alert('Dear " & txtNameR.Text & " You have been registered successfully ');", True)
    End Sub
    Sub SendEmailReg2()
        ' Dim con As SqlConnection
        Dim var As New Class1()
        Dim msg As New MailMessage()
        msg.From = New MailAddress("info@thinknext.online", "ThinkNext Technologies Pvt. Ltd")
        msg.From = New MailAddress("training@thinknext.co.in", "ThinkNext Technologies Pvt. Ltd")
        'msg.To.Add(New MailAddress(WorkshopTxtEmail.Text))
        ' Dim reader As New StreamReader(Server.MapPath("~/Email9.html"))

        ' Dim readFile As String = reader.ReadToEnd()

        Dim StrContent As String = ""

        'StrContent = readFile
        StrContent = StrContent.Replace("[MyName]", QuickCallTxtName.Text)
        StrContent = StrContent.Replace("[ENO]", Session("admin").ToString())
        ' StrContent = StrContent.Replace("[msg]", lblnewssss.Text)


        Dim altView As AlternateView = AlternateView.CreateAlternateViewFromString(StrContent, Nothing, MediaTypeNames.Text.Html)

        msg.Subject = "Quick Call"
        msg.Body = StrContent.ToString()
        msg.IsBodyHtml = True
        'Dim fname As String = ""
        Dim fname1 As String = ""
        Dim fname2 As String = ""

        msg.AlternateViews.Add(altView)
        Dim obj As New SmtpClient()
        'obj.Host = "smtp-mail.outlook.com"
        obj.Host = "relay-hosting.secureserver.net"
        'obj.Port = "587"
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

            Return
        Catch ex As Exception
            Response.Write(ex.Message)
        End Try
    End Sub
End Class
