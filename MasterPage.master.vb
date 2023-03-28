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


Partial Class MasterPage
    Inherits System.Web.UI.MasterPage
    Dim varClass1 As New Class1()
    Dim varIP As String
    Dim sess As String
    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        '  popup.Style.Add("display", "block")
        ' popup.Attributes.Add("onClick", "Block")
        Dim varclass As New Class1
     
        If txtNameR.Text = "" Then
            lblstatus.Text = "Please Enter Name"
            Return
            Exit Sub
        End If

        If txtContectR.Text = "" Then
            lblstatus.Text = "Please Enter MobileNo"
            Return
            Exit Sub
        End If

        If txtEmailR.Text = "" Then
            lblstatus.Text = "Enter EmailID"
            Return
            Exit Sub
        ElseIf txtEmailR.Text <> "" Then
            Dim pattern As String = "^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$"
            Dim emailAddressMatch As Match = Regex.Match(txtEmailR.Text, pattern)
            If emailAddressMatch.Success = False Then
                lblstatus.Text = "Enter Valid EmailID"
                Return
                Exit Sub
            End If
        End If

        If ddlTraining.Text = "Select" Then
            lblstatus.Text = "Please Specify Training Type"
            Return
            Exit Sub
        End If

        If txtcourses.Text = "" Then
            lblstatus.Text = "Please Specify Course"
            Return
            Exit Sub
        End If
        Dim con As SqlConnection
        Dim varclass1 As New Class1
        con = New SqlConnection(varclass.GetConnectionString(varIP))
        con.Open()
        Dim email As String = ""
        Dim da As New SqlDataAdapter("select * from Admissions where EmailID='" + txtEmailR.Text + "' and Duration='Register for scholarship'  ", con)
        Dim ds As New DataSet()
        da.Fill(ds, "Admissions")
        If ds.Tables("Admissions").Rows.Count > 0 Then
            email = ds.Tables("Admissions").Rows(0).Item("EmailID").ToString()
            ScriptManager.RegisterStartupScript(Me, Me.[GetType](), "alertmessage", "javascript:alert('The Person with this Email ID already Registered.')", True)
            Clear()
            Exit Sub
        End If

        If txtEmailR.Text <> email Then
            Dim cultureInfo As CultureInfo = Thread.CurrentThread.CurrentCulture
            Dim objTextInfo As TextInfo = cultureInfo.TextInfo
            txtcourses.Text = objTextInfo.ToTitleCase(txtcourses.Text)
            Session("course") = txtcourses.Text
            AddStudentScholarshipDetail()


            Dim SMS2nd As String
            SMS2nd = "Dear " & txtNameR.Text & ", Thanks for your Registration for Scholarship Test for " & ddlTraining.Text & " Industrial Training in " & txtcourses.Text
            SMS2nd = SMS2nd & " @ThinkNEXT Technologies Pvt. Ltd. SCF 113, Sector-65, Mohali (Chandigarh). Call: 01724656197, 7837401000, 7837402000, 7696016894"


            ' varclass.SendSMS(txtContectR.Text, Message, "Route11")
            varclass.SendSMS(txtContectR.Text, SMS2nd, "Route9")

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
        'lblstatus.Text = "You are Successfully Registered "
    End Sub
    Sub Clear()


        txtNameR.Text = ""
        txtContectR.Text = ""
        txtEmailR.Text = ""

        ddlTraining.SelectedIndex = 0
        txtcourses.Text = ""

    End Sub

    Sub Clear1()


        txtnamename.Text = ""
        txtmobilenono.Text = ""
        txtemailidid.Text = ""
        txtcollegenamename.Text = ""
        txtbatchch.Text = ""
        txtqualificationn.Text = ""
        'txtdiscription.Text = ""


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

    Sub PlacementDrive()
        Dim varclass As New Class1
        Dim con As SqlConnection
        con = New SqlConnection(varclass.GetConnectionString(varIP))
        con.Open()
        Dim sql As String
        Dim cultureInfo As CultureInfo = Thread.CurrentThread.CurrentCulture
        Dim objTextInfo As TextInfo = cultureInfo.TextInfo
        txtnamename.Text = objTextInfo.ToTitleCase(txtnamename.Text)
        txtcollegenamename.Text = objTextInfo.ToTitleCase(txtcollegenamename.Text)
        txtbatchch.Text = objTextInfo.ToTitleCase(txtbatchch.Text)
        txtqualificationn.Text = objTextInfo.ToTitleCase(txtqualificationn.Text)
        sql = "insert into PlacementDrive(Session,EnquiryNo,Name,MobileNo,EmailID,CollegeName,Batch,Qualification,Admissiondate)values(@Session,@EnquiryNo,@Name,@MobileNo,@EmailID,@CollegeName,@Batch,@Qualification,@Admissiondate)"
        Dim cmd As New SqlCommand(sql, con)
        Dim enquiryno1 As String
        enquiryno1 = GenEnquirytNo1()
        Dim ses As String
        ses = varclass.Session12(sess)
        Session("admin12") = enquiryno1
        cmd.Parameters.AddWithValue("@EnquiryNo", enquiryno1)
        cmd.Parameters.AddWithValue("@Name", txtnamename.Text)
        cmd.Parameters.AddWithValue("@MobileNo", txtmobilenono.Text)
        cmd.Parameters.AddWithValue("@EmailID", txtemailidid.Text)
        cmd.Parameters.AddWithValue("@CollegeName", txtcollegenamename.Text)
        cmd.Parameters.AddWithValue("@Batch", txtbatchch.Text)
        cmd.Parameters.AddWithValue("@Qualification", txtqualificationn.Text)
        cmd.Parameters.AddWithValue("@Session", ses)
        cmd.Parameters.AddWithValue("@Admissiondate", Format(Now, "MM/dd/yyyy"))

        'cmd.Parameters.AddWithValue("@Description", txtdiscription.Text)
        cmd.ExecuteNonQuery()
        cmd.Dispose()
        con.Close()
        Dim SMS2nd As String = ""
        SMS2nd = "Hi " + txtnamename.Text + ", Thank you for your email. Your message is important  to us and our Representative will contact you shortly., "
        SMS2nd = SMS2nd & Convert.ToString("ThinkNEXT Technologies Pvt. Ltd. SCF 113, Sector-65, Mohali (Chandigarh). Call:  01724656197, 7837401000, 7837402000, 7696016894")


        varClass1.SendSMS(txtmobilenono.Text, SMS2nd, "Route9")
        SendEmailAgain(txtemailidid.Text, txtnamename.Text)

        ScriptManager.RegisterStartupScript(Me, Me.[GetType](), "alertmessage", "javascript:alert('You are Successfully Registerd.')", True)

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

    Function GenEnquirytNo1() As String
        Dim con As SqlConnection
        Dim sql As String
        Dim EnquiryNo As Integer
        Dim varClass1 As New Class1
        con = New SqlConnection(varClass1.GetConnectionString(varIP))
        con.Open()
        sql = "SELECT max(EnquiryNo) AS EnquiryNo FROM  PlacementDrive where SrId in(SELECT max(SrId)  FROM  PlacementDrive )"
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
    Protected Sub btnsubmit_Click(sender As Object, e As EventArgs) Handles btnsubmit.Click
        If txtnamename.Text = "" Then
            ScriptManager.RegisterStartupScript(Me, Me.[GetType](), "alertmessage", "javascript:alert('Please Enter Name.')", True)
            Return
        End If
        If txtmobilenono.Text = "" Then
            ScriptManager.RegisterStartupScript(Me, Me.[GetType](), "alertmessage", "javascript:alert('Please Enter Mobile No.')", True)
            Return
        End If
        If txtemailidid.Text = "" Then
            ScriptManager.RegisterStartupScript(Me, Me.[GetType](), "alertmessage", "javascript:alert('Please Enter Email ID.')", True)
            Return
        End If
        If txtcollegenamename.Text = "" Then
            ScriptManager.RegisterStartupScript(Me, Me.[GetType](), "alertmessage", "javascript:alert('Please Enter College Name.')", True)
            Return
        End If
        If txtbatchch.Text = "" Then
            ScriptManager.RegisterStartupScript(Me, Me.[GetType](), "alertmessage", "javascript:alert('Please Enter Batch.')", True)
            Return
        End If
        If txtqualificationn.Text = "" Then
            ScriptManager.RegisterStartupScript(Me, Me.[GetType](), "alertmessage", "javascript:alert('Please Enter qualification.')", True)
            Return
        End If
        'If txtdiscription.Text = "" Then
        '    ScriptManager.RegisterStartupScript(Me, Me.[GetType](), "alertmessage", "javascript:alert('Please Enter Description.')", True)
        '    Return
        'End If
        Dim con As SqlConnection
        Dim varClass1 As New Class1
        con = New SqlConnection(varClass1.GetConnectionString(varIP))
        con.Open()
        Dim email As String = ""
        Dim da As New SqlDataAdapter("select * from PlacementDrive where EmailID='" + txtemailidid.Text + "'", con)
        Dim ds As New DataSet()
        da.Fill(ds, "Admissions")
        If ds.Tables("Admissions").Rows.Count > 0 Then
            email = ds.Tables("Admissions").Rows(0).Item("EmailID").ToString()
            ScriptManager.RegisterStartupScript(Me, Me.[GetType](), "alertmessage", "javascript:alert('The Person with this Email ID already Registered.')", True)
            Clear1()
            Exit Sub
        End If

        If txtemailidid.Text <> email Then
            PlacementDrive()
            SemdMail("hr@thinknext.co.in", Session("admin12").ToString())
            'SemdMail("vikasparmar4001@hotmail.com", Session("admin12").ToString())
            'SemdMail("vikasparmarthinknext@gmail.com", Session("admin12").ToString())
            Clear1()
        End If

    End Sub

    Protected Sub SemdMail(mailID As String, enquery As String)
        Dim Msg As New MailMessage()
        ' Sender e-mail address.
        Msg.From = New MailAddress("support@thinknext.co.in", "ThinkNext Technologies Pvt. Ltd")
        ' Recipient e-mail address.
        Msg.[To].Add(mailID)
        Msg.Subject = "Placement Drive Details"
        Dim HTML As String = "<head>"
        HTML = HTML & Convert.ToString("</head>")
        HTML = HTML & Convert.ToString("<body>")
        HTML = HTML & Convert.ToString("<div id='ert' runat='server'>")
        HTML = (HTML & Convert.ToString("<table style='border:1px solid #EB5E00;'>"))
        HTML = (HTML & Convert.ToString("<tr>"))
        HTML = (HTML & Convert.ToString("<td><b><span style = 'font-family:Arial;font-size:10pt;'>Enquiry No:</span></b></td>"))
        HTML = (HTML & Convert.ToString("<td>")) + enquery + "</td>"
        HTML = (HTML & Convert.ToString("</tr>"))
        HTML = (HTML & Convert.ToString("<tr>"))
        HTML = (HTML & Convert.ToString("<td><b><span style = 'font-family:Arial;font-size:10pt;'>Name:</span></b></td>"))
        HTML = (HTML & Convert.ToString("<td>")) + txtnamename.Text + "</td>"
        HTML = (HTML & Convert.ToString("</tr>"))
        HTML = (HTML & Convert.ToString("<tr>"))
        HTML = (HTML & Convert.ToString("<td><b><span style = 'font-family:Arial;font-size:10pt';>Mobile No:</span></b></td>"))
        HTML = (HTML & Convert.ToString("<td>")) + txtmobilenono.Text + "</td>"
        HTML = (HTML & Convert.ToString("</tr>"))
        HTML = (HTML & Convert.ToString("<tr>"))
        HTML = (HTML & Convert.ToString("<td><b><span style = 'font-family:Arial;font-size:10pt'>E-mail ID:</span></b></td>"))
        HTML = (HTML & Convert.ToString("<td>")) + txtemailidid.Text + "</td>"
        HTML = (HTML & Convert.ToString("</tr>"))
        HTML = (HTML & Convert.ToString("<tr>"))
        HTML = (HTML & Convert.ToString("<td><b><span style = 'font-family:Arial;font-size:10pt'>College Name:</span></b></td>"))
        HTML = (HTML & Convert.ToString("<td>")) + txtcollegenamename.Text + "</td>"
        HTML = (HTML & Convert.ToString("</tr>"))
        HTML = (HTML & Convert.ToString("<tr>"))
        HTML = (HTML & Convert.ToString("<td><b><span style = 'font-family:Arial;font-size:10pt'>Batch:</span></b></td>"))
        HTML = (HTML & Convert.ToString("<td>")) + txtbatchch.Text + "</td>"
        HTML = (HTML & Convert.ToString("</tr>"))
        HTML = (HTML & Convert.ToString("<tr>"))
        HTML = (HTML & Convert.ToString("<td><b><span style = 'font-family:Arial;font-size:10pt'>Qualification:</span></b></td>"))
        HTML = (HTML & Convert.ToString("<td>")) + txtqualificationn.Text + "</td>"
        HTML = (HTML & Convert.ToString("</tr>"))
        HTML = (HTML & Convert.ToString("<tr>"))
        HTML = (HTML & Convert.ToString("<td><b><span style = 'font-family:Arial;font-size:10pt'>Description:</span></b></td>"))
        'HTML = (HTML & Convert.ToString("<td>")) + txtdiscription.Text + "</td>"
        HTML = (HTML & Convert.ToString("</tr>"))
        HTML = (HTML & Convert.ToString("</table>"))
        HTML = HTML & Convert.ToString("</div>")
        HTML = HTML & Convert.ToString("</body>")
        HTML = HTML & Convert.ToString("</html>")
        Msg.Body = HTML
        Msg.IsBodyHtml = True
        Dim smtp As New SmtpClient()
        smtp.Host = "smtp.gmail.com"
        smtp.Port = 587
        smtp.DeliveryMethod = SmtpDeliveryMethod.Network

        smtp.UseDefaultCredentials = False
        smtp.Credentials = New System.Net.NetworkCredential("thinknextsmart@gmail.com", "smartthink")
        smtp.EnableSsl = True
        smtp.Timeout = 9999999

        smtp.Send(Msg)

    End Sub
    Public Sub SendEmailAgain(mailID1 As String, name As String)
        Dim Msg As New MailMessage()
        Msg.From = New MailAddress("support@thinknext.co.in", "ThinkNext Technologies Pvt. Ltd")
        Msg.[To].Add(mailID1)
        ' Msg.Subject = "Apply Under Skill development in ESDM  is Successfully";
        Msg.Subject = "ThinkNEXT - Register for Placement Drive"
        Dim HTML As String = "<head>"
        HTML = HTML & Convert.ToString("</head>")
        HTML = HTML & Convert.ToString("<body>")
        HTML = HTML & Convert.ToString("<div id='ert' runat='server'>")
        HTML = (Convert.ToString(HTML & Convert.ToString("<p><b>Hi ")) & name) + "</b></p>"
        HTML = (Convert.ToString(HTML & Convert.ToString("<p><font color='blue'> <b>Thank you for your email. Your message is important  to us and our Representative will contact you shortly.</b> </font> </p>")))
        HTML = HTML & Convert.ToString("<b>Regards<b>")
        HTML = HTML & Convert.ToString("<p><b>ThinkNEXT Technologies Pvt. Ltd.</b></p>")
        HTML = HTML & Convert.ToString("<p><b>SCF 113, Sector-65, Mohali (Chandigarh).</b></p>")
        HTML = HTML & Convert.ToString("<p><b>Call:  01724656197, 7837401000, 7837402000</b></p>")
        HTML = HTML & Convert.ToString("</div>")
        HTML = HTML & Convert.ToString("</body>")
        HTML = HTML & Convert.ToString("</html>")
        Msg.Body = HTML
        Msg.IsBodyHtml = True
        Dim smtp As New SmtpClient()
        smtp.Host = "smtp.gmail.com"
        smtp.Port = 587
        smtp.DeliveryMethod = SmtpDeliveryMethod.Network

        smtp.UseDefaultCredentials = False
        smtp.Credentials = New System.Net.NetworkCredential("thinknextsmart@gmail.com", "smartthink")
        smtp.EnableSsl = True
        smtp.Timeout = 9999999
        smtp.Send(Msg)






    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
     
    End Sub
End Class

