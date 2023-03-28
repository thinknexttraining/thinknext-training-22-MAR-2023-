
Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Data
Imports System
Imports System.Web.UI.WebControls
Imports System.Net
Imports System.IO
Imports System.Net.WebPermission
Imports System.Xml
Imports System.Text
Imports System.Security.Cryptography
Imports System.Net.Mail
Imports System.Threading
Imports System.Net.Mail.Attachment
Imports System.Globalization
Imports System.Web
Imports System.Net.Mime

Public Class Class1
    Dim varIP As String
    Function GetConnectionString(ByVal constr As String) As String

        'constr = " Data Source=SmartTraining;Initial Catalog=dbSmartCampusTHK;Persist Security Info=True;User ID=sa;Password=b2y3rt98159(*!%(; Max Pool Size=10000;"
        ' old     constr = " Data Source=103.21.58.193;Initial Catalog=dbthinknex;Persist Security Info=True;User ID=thinknex;Password=techsmart?; Max Pool Size=10000;"
        'constr = " Data Source=202.143.99.95;Initial Catalog=thinknex_training;Persist Security Info=True;User ID=thinknex_usertraining;Password=Dvas07!8; Max Pool Size=32000;"
        'constr = " Data Source=43.255.152.21;Initial Catalog=thinknex_training;Persist Security Info=True;User ID=thinknex_usertraining;Password=Dvas07!8; Max Pool Size=32000;"
        constr = " Data Source=103.21.58.193;Initial Catalog=thinknex_training;Persist Security Info=True;User ID=thinknex_usertraining;Password=Dvas07!8; Max Pool Size=32000;"

        'constr = " Data Source=192.168.178.89;Initial Catalog=dbthinknext12-04-2018;Persist Security Info=True;User ID=sa;Password=asp; Max Pool Size=32000;"
        'constr = " Data Source=dbthinknextcard.db.11478413.hostedresource.com;Initial Catalog=dbthinknextcard;Persist Security Info=True;User ID=dbthinknextcard;Password=smartBSS123!@#; Max Pool Size=10000;"
        'constr = " Data Source=dbthinknextcard.db.9384571.hostedresource.com;Initial Catalog=dbthinknextcard;Persist Security Info=True;User ID=dbthinknextcard;Password=smartBSS123!@#;"
        'constr = "Data Source=" & "208.91.198.196" & "; Initial Catalog=admin_thinknextcard; Persist Security Info=True; User ID=thinknext; Password=b3yrt98159; Max Pool Size=10000;"
        'constr = "Data Source=" & "10.0.0.59" & "; Initial Catalog=DBSmartSviet; Persist Security Info=True; User ID=sa; Password=b2y3rt78374&*#&$; Max Pool Size=10000;"
        'constr = "Data Source=" & "192.168.137.113" & "; Initial Catalog=ThinkNext; Persist Security Info=True; User ID=sa; Password=b2y3rt78374&*#&$; Max Pool Size=10000;"
        Return constr
    End Function
    Function GetConnectionString2(ByVal constr As String) As String
        constr = " Data Source=43.255.152.21;Initial Catalog=thinknex_training;Persist Security Info=True;User ID=thinknex_usertraining;Password=Dvas07!8; Max Pool Size=32000;"
        Return constr
    End Function


    Function GetLOCALCONN(ByVal constr As String) As String
        'constr = "Data Source=" & "203.134.192.14" & "; Initial Catalog=dbCloudCampus; Persist Security Info=True; User ID=sa; Password=b2y3rt78374&*#&$;Max Pool Size=10000;"
        'constr = "Data Source=" & "192.168.137.113" & "; Initial Catalog=ThinkNext; Persist Security Info=True; User ID=sa; Password=b2y3rt78374&*#&$; Max Pool Size=10000;"
        'constr = "Data Source=" & "208.91.198.196" & "; Initial Catalog=admin_thinknextcard; Persist Security Info=True; User ID=thinknext; Password=b3yrt98159; Max Pool Size=10000;"
        'constr = "Data Source=" & "10.0.0.59" & "; Initial Catalog=DBSmartSviet; Persist Security Info=True; User ID=sa; Password=b2y3rt78374&*#&$; Max Pool Size=10000;"
        Return constr
    End Function
    Sub fillcourses(ByVal ddl As DropDownList)
        Dim con As New SqlConnection
        Dim sql As String
        Dim da As SqlDataAdapter
        Dim ds As New DataSet
        Dim rowctr As Integer = 0
        Dim varClass1 As New Class1
        con = New SqlConnection(varClass1.GetConnectionString(varIP))
        con.Open()
        sql = "select Distinct Courses from MasterCourses order by Courses "
        da = New SqlDataAdapter(sql, con)
        da.Fill(ds, "Course1")
        ddl.Items.Clear()
        ddl.Items.Add("Select")
        If ds.Tables("Course1").Rows.Count > 0 Then
            While rowctr < ds.Tables("Course1").Rows.Count
                If IsDBNull(ds.Tables("Course1").Rows(rowctr).Item("Courses")) = False Then
                    ddl.Items.Add(ds.Tables("Course1").Rows(rowctr).Item("Courses"))
                End If
                rowctr = rowctr + 1
            End While
        End If
        con.Close()
    End Sub
    Public Function Session12(ByVal session As String) As String
        Dim sql As String = Nothing
        Dim con As SqlConnection
        Dim varClass1 As New Class1
        con = New SqlConnection(varClass1.GetConnectionString(varIP))
        con.Open()
        sql = "select top 1 session from (select top 1 session from mastersession group by session order by session desc ) as a order by session"
        ' sql = "select * from MasterSession order by sessionid desc "
        Dim cmd As New SqlCommand(sql, con)
        Dim da As New SqlDataAdapter(cmd)
        Dim ds As New DataSet()
        da.Fill(ds, "MasterSession")
        ' Dim session As String
        session = Convert.ToInt32(ds.Tables("MasterSession").Rows(0).Item("Session"))
        Return session
    End Function
    Public Function SendWhatsappPdf(ByVal MobileNo As String, ByVal link As String, ByVal Route As String) As String
        Dim url As String
        'url = "http://www.wtsapi.com/api/sendQuickMsg?token=f5362167c2a74a9340e21f2f1969ebc2ca8366febc66752be2&phone=" & 91 & "" & MobileNo & "&type=pdf&link=" & link & ""
        url = SendSMS50WHATSPdf(MobileNo, link, Route)
        Return url
    End Function

    Public Function SendWhatsappmsg(ByVal MobileNo As String, ByVal msg As String, ByVal Route As String) As String
        Dim url As String
        'url = "http://www.wtsapi.com/api/sendQuickMsg?token=f5362167c2a74a9340e21f2f1969ebc2ca8366febc66752be2&phone=" & 91 & "" & MobileNo & "&type=text&message=" & msg & ""
        url = SendSMS50WHATS(MobileNo, msg, Route)
        Return url
    End Function
    Public Function SendWhatsappimage(ByVal MobileNo As String, ByVal link As String, ByVal Route As String) As String
        Dim url As String
        'url = "http://www.wtsapi.com/api/sendQuickMsg?token=f5362167c2a74a9340e21f2f1969ebc2ca8366febc66752be2&phone=" & 91 & "" & MobileNo & "&type=image&link=" & link & ""
        url = SendSMS50WHATSimg(MobileNo, link, Route)
        Return url
    End Function
    Public Function SendSMS(ByVal MobileNo As String, ByVal Msg As String, ByVal Route As String) As String
        Dim str As String
        Dim strReturnCode As String = ""
        str = MobileNo
        Dim totalMobileNo As String() = str.Split(",")
        Dim arrLenght As Integer = totalMobileNo.Length
        Dim total As Integer
        Dim total1 As Double = arrLenght / 50
        Dim Remender As Integer = arrLenght Mod 50
        total = Math.Truncate(total1)
        For i As Integer = 0 To total
            Dim j As Integer = 50 * i + 1
            Dim k As Integer = j + 49
            If (k > arrLenght) Then
                k = j + Remender - 1
            End If
            Dim strMobileNo As String = ""
            While (j <= k)
                If strMobileNo = "" Then
                    strMobileNo = strMobileNo + totalMobileNo(j - 1)
                Else
                    strMobileNo = strMobileNo + "," + totalMobileNo(j - 1)
                End If
                j = j + 1
            End While
            If strMobileNo.Length = 0 Then
                Exit Function
            End If
            If strReturnCode = "" Then
                strReturnCode = SendSMS50(strMobileNo, Msg, Route)
            Else
                strReturnCode = strReturnCode & "," & SendSMS50(strMobileNo, Msg, Route)
            End If
        Next
        Return strReturnCode
    End Function
    Public Function SendSMS50WHATSPdf(ByVal MobileNo As String, ByVal link As String, ByVal Route As String) As String
        Dim url As String
        Dim baseurl As String
        Dim rowCounter As Integer = 0
        Dim UserName As String
        UserName = SMSUserName()
        Dim Password As String
        Password = SMSUserPassword()
        Dim GetSenderName As String
        GetSenderName = SenderName()
        Dim oWeb As New System.Net.WebClient()
        oWeb.Headers.Add("Content-Type", "application/x-www-form-urlencoded")
        Dim bytRetData As Byte()
        If Route = "whatsapppdf" Then
            Dim client As New WebClient()
            baseurl = "http://www.wtsapi.com/api/sendQuickMsg?token=f5362167c2a74a9340e21f2f1969ebc2ca8366febc66752be2&phone=" & 91 & "" & MobileNo & "&type=pdf&link=" & link & ""
            Dim data As Stream = client.OpenRead(baseurl)
            Dim reader As New StreamReader(data)
            Dim s As String = reader.ReadToEnd()
            data.Close()
            reader.Close()
            Return s
        End If
    End Function
    Public Function SendSMS50WHATSimg(ByVal MobileNo As String, ByVal link As String, ByVal Route As String) As String
        Dim url As String
        Dim baseurl As String
        Dim rowCounter As Integer = 0
        Dim UserName As String
        UserName = SMSUserName()
        Dim Password As String
        Password = SMSUserPassword()
        Dim GetSenderName As String
        GetSenderName = SenderName()
        Dim oWeb As New System.Net.WebClient()
        oWeb.Headers.Add("Content-Type", "application/x-www-form-urlencoded")
        Dim bytRetData As Byte()
        If Route = "whatsappimg" Then
            Dim client As New WebClient()
            baseurl = "http://www.wtsapi.com/api/sendQuickMsg?token=f5362167c2a74a9340e21f2f1969ebc2ca8366febc66752be2&phone=" & 91 & "" & MobileNo & "&type=image&link=" & link & ""
            Dim data As Stream = client.OpenRead(baseurl)
            Dim reader As New StreamReader(data)
            Dim s As String = reader.ReadToEnd()
            data.Close()
            reader.Close()
            Return s
        End If
    End Function
    Public Function SendSMSBytePaper(ByVal MobileNo As String, ByVal Name As String, ByVal EmailID As String, ByVal leadtype As String) As String
        Dim baseurl As String
        Dim rowCounter As Integer = 0
        Dim oWeb As New System.Net.WebClient()
        oWeb.Headers.Add("Content-Type", "application/x-www-form-urlencoded")
        Dim bytRetData As Byte()

        Dim client As New WebClient()
        'baseurl = "http://www.wtsapi.com/api/sendQuickMsg?token=f5362167c2a74a9340e21f2f1969ebc2ca8366febc66752be2&phone=" & 91 & "" & MobileNo & "&type=text&message=" & Msg & ""
        'baseurl = "https://www.bytepaper.com/Cloud/Capture/Website/Capture.php?License=535580444&Name=" & Name & "&Contact=" & 91 & "" & MobileNo & "&Email=" & EmailID & ""
        baseurl = "https://www.bytepaper.com/Cloud/Capture/Website/Capture.php?License=535580444&Name=" & Name & "&Contact=" & 91 & "" & MobileNo & "&Email=" & EmailID & "&LeadType=" & leadtype & "&CreatedBy=swarnthinknext@gmail.com"

        Dim data As Stream = client.OpenRead(baseurl)
        Dim reader As New StreamReader(data)
        Dim s As String = reader.ReadToEnd()
        data.Close()
        reader.Close()
        Return s

    End Function

    Public Function SendLeadsForIELTS(ByVal varMobile As String, ByVal varName As String, ByVal varEmail As String, ByVal varCourse As String, ByVal varComments As String, ByVal varPage As String) As String
        Dim strUrl As String
        Dim recordcount As Integer = 0
        Dim FlagRecordExists As Boolean
        FlagRecordExists = False
        Dim con As New SqlConnection
        con = New SqlConnection(GetConnectionString(varIP))

        Dim da As New SqlDataAdapter
        Dim vardate As Date = Date.Today
        vardate.ToString("mm/dd/yyyy")


        Dim ds As New DataSet
        Dim ssqlRecordCheck As String
        ssqlRecordCheck = "Select StudentMobileNo, EmailID from Admissions where StudentMobileNo='" & varMobile & "' and EmailID='" & varEmail & "'" & " and AdmissionDate='" & vardate & "'"


        da = New SqlDataAdapter(ssqlRecordCheck, con)
        da.Fill(ds, "StudentRecode")

        If ds.Tables("StudentRecode").Rows.Count > 1 Then

            FlagRecordExists = True

            Exit Function
        ElseIf ds.Tables("StudentRecode").Rows.Count = 1 Then
            FlagRecordExists = False
        End If
        '''''''''
        If FlagRecordExists = False Then
            Dim rowCounter As Integer = 0
            ServicePointManager.Expect100Continue = True
            ServicePointManager.SecurityProtocol = CType(3072, SecurityProtocolType)
            Dim oWeb As New System.Net.WebClient()

            oWeb.Headers.Add("Content-Type", "application/x-www-form-urlencoded")
            Dim bytRetData As Byte()

            Dim client As New WebClient()

            strUrl = "https://connect.pabbly.com/workflow/sendwebhookdata/IjkxMDI0Ig_3D_3D?Name=" & varName & "&Phone=" & varMobile & "&Email=" & varEmail & "&Course=" & varCourse & "&Comments=" & varComments & "&WebURL=" & varPage
            Dim request As WebRequest = HttpWebRequest.Create(strUrl)
            Dim response As HttpWebResponse = CType(request.GetResponse(), HttpWebResponse)
            Dim s As Stream = CType(response.GetResponseStream(), Stream)
            Dim readStream As StreamReader = New StreamReader(s)
            Dim dataString As String = readStream.ReadToEnd()
            response.Close()
            s.Close()
            readStream.Close()
            con.Close()
            'Dim rp As HttpResponse
            'rp.Redirect("thanks.html")

            ' HttpContext.Current.Response.Redirect("thanks.html", False)
        End If


        'Return s
    End Function
    Public Function SendLeads(ByVal varMobile As String, ByVal varName As String, ByVal varEmail As String, ByVal varCourse As String, ByVal varComments As String, ByVal varPage As String) As String
        If IsNumeric(varMobile) Then
        Else

            Return False
        End If
        Dim strUrl As String
        Dim recordcount As Integer = 0
        Dim FlagRecordExists As Boolean
        FlagRecordExists = False
        Dim con As New SqlConnection
        con = New SqlConnection(GetConnectionString(varIP))

        Dim da As New SqlDataAdapter
        Dim vardate As Date = Date.Today
        vardate.ToString("mm/dd/yyyy")


        Dim ds As New DataSet
        Dim ssqlRecordCheck As String
        ssqlRecordCheck = "Select StudentMobileNo, EmailID from Admissions where StudentMobileNo='" & varMobile & "' and EmailID='" & varEmail & "'" & " and AdmissionDate='" & vardate & "'"

        da = New SqlDataAdapter(ssqlRecordCheck, con)
        da.Fill(ds, "StudentRecode")

        If ds.Tables("StudentRecode").Rows.Count > 1 Then

            FlagRecordExists = True

            Exit Function
        ElseIf ds.Tables("StudentRecode").Rows.Count = 1 Then
            FlagRecordExists = False
        End If
        '''''''''
        If FlagRecordExists = False Then
            Dim rowCounter As Integer = 0
            ServicePointManager.Expect100Continue = True
            ServicePointManager.SecurityProtocol = CType(3072, SecurityProtocolType)
            Dim oWeb As New System.Net.WebClient()

            oWeb.Headers.Add("Content-Type", "application/x-www-form-urlencoded")
            Dim bytRetData As Byte()

            Dim client As New WebClient()

            strUrl = "https://connect.pabbly.com/workflow/sendwebhookdata/IjcxMDE3Ig_3D_3D?Name=" & varName & "&MobileNo=" & varMobile & "&Email=" & varEmail & "&Course=" & varCourse & "&Comments=" & varComments & "&PageURL=" & varPage
            Dim request As WebRequest = HttpWebRequest.Create(strUrl)
            Dim response As HttpWebResponse = CType(request.GetResponse(), HttpWebResponse)
            Dim s As Stream = CType(response.GetResponseStream(), Stream)
            Dim readStream As StreamReader = New StreamReader(s)
            Dim dataString As String = readStream.ReadToEnd()
            response.Close()
            s.Close()
            readStream.Close()
            con.Close()
            'Dim rp As HttpResponse
            'rp.Redirect("thanks.html")

            HttpContext.Current.Response.Redirect("thanks.html", False)
        End If


        'Return s
    End Function

    Public Function SendLeads1(ByVal varMobile As String, ByVal varName As String, ByVal varEmail As String, ByVal varCourse As String, ByVal varComments As String, ByVal varPage As String) As String
        Dim strUrl As String
        Dim recordcount As Integer = 0
        Dim FlagRecordExists As Boolean
        FlagRecordExists = False
        Dim con As New SqlConnection
        con = New SqlConnection(GetConnectionString(varIP))
        ServicePointManager.Expect100Continue = True
        ServicePointManager.SecurityProtocol = CType(3072, SecurityProtocolType)
        Dim oWeb As New System.Net.WebClient()
        oWeb.Headers.Add("Content-Type", "application/x-www-form-urlencoded")
        Dim bytRetData As Byte()

        Dim client As New WebClient()

        strUrl = "https://connect.pabbly.com/workflow/sendwebhookdata/IjgwOTM5Ig_3D_3D?Name=" & varName & "&MobileNo=" & varMobile & "&Email=" & varEmail & "&Course=" & varCourse & "&Comments=" & varComments & "&PageURL=" & varPage
        Dim request As WebRequest = HttpWebRequest.Create(strUrl)
        Dim response As HttpWebResponse = CType(request.GetResponse(), HttpWebResponse)
        Dim s As Stream = CType(response.GetResponseStream(), Stream)
        Dim readStream As StreamReader = New StreamReader(s)
        Dim dataString As String = readStream.ReadToEnd()
        response.Close()
        s.Close()
        readStream.Close()
        con.Close()

        'Return s
    End Function
    Public Function SendLeads3(ByVal varMobile As String, ByVal varName As String, ByVal varEmail As String, ByVal varCourse As String, ByVal varComments As String, ByVal varPage As String) As String
        Dim strUrl As String
        Dim recordcount As Integer = 0
        Dim FlagRecordExists As Boolean
        FlagRecordExists = False
        Dim con As New SqlConnection
        con = New SqlConnection(GetConnectionString(varIP))
        ServicePointManager.Expect100Continue = True
        ServicePointManager.SecurityProtocol = CType(3072, SecurityProtocolType)
        Dim oWeb As New System.Net.WebClient()
        oWeb.Headers.Add("Content-Type", "application/x-www-form-urlencoded")
        Dim bytRetData As Byte()

        Dim client As New WebClient()

        strUrl = "https://connect.pabbly.com/workflow/sendwebhookdata/Ijg1NTc1Ig_3D_3D?Name=" & varName & "&MobileNo=" & varMobile & "&Email=" & varEmail & "&Course=" & varCourse & "&Comments=" & varComments & "&PageURL=" & varPage
        Dim request As WebRequest = HttpWebRequest.Create(strUrl)
        Dim response As HttpWebResponse = CType(request.GetResponse(), HttpWebResponse)
        Dim s As Stream = CType(response.GetResponseStream(), Stream)
        Dim readStream As StreamReader = New StreamReader(s)
        Dim dataString As String = readStream.ReadToEnd()
        response.Close()
        s.Close()
        readStream.Close()
        con.Close()

        'Return s
    End Function
    Public Function SendLeads4(ByVal varMobile As String, ByVal varName As String, ByVal varEmail As String, ByVal varCourse As String, ByVal varComments As String, ByVal varPage As String) As String
        Dim strUrl As String
        Dim recordcount As Integer = 0
        Dim FlagRecordExists As Boolean
        FlagRecordExists = False
        Dim con As New SqlConnection
        con = New SqlConnection(GetConnectionString(varIP))

        Dim da As New SqlDataAdapter
        Dim vardate As Date = Date.Today
        vardate.ToString("mm/dd/yyyy")


        Dim ds As New DataSet
        Dim ssqlRecordCheck As String
        ssqlRecordCheck = "Select StudentMobileNo, EmailID from Admissions where StudentMobileNo='" & varMobile & "' and EmailID='" & varEmail & "'" & " and AdmissionDate='" & vardate & "'"


        da = New SqlDataAdapter(ssqlRecordCheck, con)
        da.Fill(ds, "StudentRecode")

        If ds.Tables("StudentRecode").Rows.Count > 1 Then

            FlagRecordExists = True

            Exit Function
        ElseIf ds.Tables("StudentRecode").Rows.Count = 1 Then
            FlagRecordExists = False
        End If
        '''''''''
        If FlagRecordExists = False Then
            Dim rowCounter As Integer = 0

            ServicePointManager.Expect100Continue = True
            ServicePointManager.SecurityProtocol = CType(3072, SecurityProtocolType)
            Dim oWeb As New System.Net.WebClient()

            oWeb.Headers.Add("Content-Type", "application/x-www-form-urlencoded")
            Dim bytRetData As Byte()

            Dim client As New WebClient()

            strUrl = "https://connect.pabbly.com/workflow/sendwebhookdata/IjcxMDE3Ig_3D_3D?Name=" & varName & "&MobileNo=" & varMobile & "&Email=" & varEmail & "&Course=" & varCourse & "&Comments=" & varComments & "&PageURL=" & varPage
            Dim request As WebRequest = HttpWebRequest.Create(strUrl)
            Dim response As HttpWebResponse = CType(request.GetResponse(), HttpWebResponse)
            Dim s As Stream = CType(response.GetResponseStream(), Stream)
            Dim readStream As StreamReader = New StreamReader(s)
            Dim dataString As String = readStream.ReadToEnd()
            response.Close()
            s.Close()
            readStream.Close()
            con.Close()

        End If


        'Return s
    End Function
    Public Function SendLeadsDM(ByVal varMobile As String, ByVal varName As String, ByVal varEmail As String, ByVal varCourse As String, ByVal varComments As String, ByVal varPage As String) As String
        Dim strUrl As String
        Dim recordcount As Integer = 0
        Dim FlagRecordExists As Boolean
        FlagRecordExists = False
        Dim con As New SqlConnection
        con = New SqlConnection(GetConnectionString(varIP))

        Dim da As New SqlDataAdapter
        Dim vardate As Date = Date.Today
        vardate.ToString("mm/dd/yyyy")


        Dim ds As New DataSet
        Dim ssqlRecordCheck As String
        ssqlRecordCheck = "Select StudentMobileNo, EmailID from Admissions where StudentMobileNo='" & varMobile & "' and EmailID='" & varEmail & "'" & " and AdmissionDate='" & vardate & "'"


        da = New SqlDataAdapter(ssqlRecordCheck, con)
        da.Fill(ds, "StudentRecode")

        If ds.Tables("StudentRecode").Rows.Count > 1 Then

            FlagRecordExists = True

            Exit Function
        ElseIf ds.Tables("StudentRecode").Rows.Count = 1 Then
            FlagRecordExists = False
        End If
        '''''''''
        If FlagRecordExists = False Then
            Dim rowCounter As Integer = 0
            ServicePointManager.Expect100Continue = True
            ServicePointManager.SecurityProtocol = CType(3072, SecurityProtocolType)
            Dim oWeb As New System.Net.WebClient()

            oWeb.Headers.Add("Content-Type", "application/x-www-form-urlencoded")
            Dim bytRetData As Byte()

            Dim client As New WebClient()

            strUrl = "https://connect.pabbly.com/workflow/sendwebhookdata/IjE1NDQ2OCI_3D?Name=" & varName & "&MobileNo=" & varMobile & "&Email=" & varEmail & "&Course=" & varCourse & "&Comments=" & varComments & "&PageURL=" & varPage
            Dim request As WebRequest = HttpWebRequest.Create(strUrl)
            Dim response As HttpWebResponse = CType(request.GetResponse(), HttpWebResponse)
            Dim s As Stream = CType(response.GetResponseStream(), Stream)
            Dim readStream As StreamReader = New StreamReader(s)
            Dim dataString As String = readStream.ReadToEnd()
            response.Close()
            s.Close()
            readStream.Close()
            con.Close()

        End If


        'Return s
    End Function

    Public Function SendSMS50WHATS(ByVal MobileNo As String, ByVal Msg As String, ByVal Route As String) As String
        Dim url As String
        Dim baseurl As String
        Dim rowCounter As Integer = 0
        Dim UserName As String
        UserName = SMSUserName()
        Dim Password As String
        Password = SMSUserPassword()
        Dim GetSenderName As String
        GetSenderName = SenderName()
        Dim oWeb As New System.Net.WebClient()
        oWeb.Headers.Add("Content-Type", "application/x-www-form-urlencoded")
        Dim bytRetData As Byte()
        If Route = "whatsappmsg" Then
            Dim client As New WebClient()
            baseurl = "http://www.wtsapi.com/api/sendQuickMsg?token=f5362167c2a74a9340e21f2f1969ebc2ca8366febc66752be2&phone=" & 91 & "" & MobileNo & "&type=text&message=" & Msg & ""
            Dim data As Stream = client.OpenRead(baseurl)
            Dim reader As New StreamReader(data)
            Dim s As String = reader.ReadToEnd()
            data.Close()
            reader.Close()
            Return s
        End If
    End Function
    Public Function SendSMS50(ByVal MobileNo As String, ByVal Msg As String, ByVal Route As String) As String
        Dim url As String
        Dim baseurl As String
        Dim rowCounter As Integer = 0
        Dim UserName As String
        UserName = SMSUserName()
        Dim Password As String
        Password = SMSUserPassword()
        Dim GetSenderName As String
        GetSenderName = SenderName()
        Dim oWeb As New System.Net.WebClient()
        oWeb.Headers.Add("Content-Type", "application/x-www-form-urlencoded")
        Dim bytRetData As Byte()
        If Route <> "Route8" And Route <> "Route9" And Route <> "Route10" And Route <> "Route11" Then
            url = "myusername=" & UserName & "&mypassword=" & Password & "&To=" & MobileNo & "&msg=" & Msg & "&sender=" & GetSenderName & "&MyRoute=" & Route
            Dim bytArguments As Byte() = System.Text.Encoding.ASCII.GetBytes(url)
            bytRetData = oWeb.UploadData("http://thinknext.co.in/testnewres.aspx", "POST", bytArguments)
            Dim result As String
            result = System.Text.Encoding.ASCII.GetString(bytRetData)
            Return result
        ElseIf Route = "Route8" Then
            url = "uname=" & UserName & "&pwd=" & Password & "&senderid=" & GetSenderName & "&to=" & MobileNo & "&msg=" & Msg & "&route=T"
            Dim bytArguments As Byte() = System.Text.Encoding.ASCII.GetBytes(url)
            bytRetData = oWeb.UploadData("http://thinknextsms.com/sendsms", "POST", bytArguments)
            Dim result As String
            result = System.Text.Encoding.ASCII.GetString(bytRetData)
            Return result
        ElseIf Route = "Route9" Then
            'Dim baseurl As String = "http://sms5.thinknext.co.in/api/web2sms.php?workingkey=A66cea90fba509378f35003cf5964b529&to=" & MobileNo & "&sender=THKNXT&message=" & Msg
            Dim client As New WebClient()
            baseurl = "http://sms5.thinknext.co.in/api/web2sms.php?workingkey=A66cea90fba509378f35003cf5964b529&to=" & MobileNo & "&sender=THKNXT&message=" & Msg
            ' baseurl = "http://sms3.thinknext.co.in/sendhttp.php?user=" & UserName & "&password=" & Password & "&mobiles=" & MobileNo & "&message=" & Msg & "&sender=" & GetSenderName '& "&route=4"
            Dim data As Stream = client.OpenRead(baseurl)
            Dim reader As New StreamReader(data)
            Dim s As String = reader.ReadToEnd()
            data.Close()
            reader.Close()
            Return s
        ElseIf Route = "Route10" Then
            Dim client As New WebClient()
            baseurl = "http://sms4.thinknext.co.in/SMSAPI.jsp?username=" & UserName & "&password=" & Password & "&sendername=" & GetSenderName & "&mobileno=" & MobileNo & "&message=" & Msg & ""
            Dim data As Stream = client.OpenRead(baseurl)
            Dim reader As New StreamReader(data)
            Dim s As String = reader.ReadToEnd()
            data.Close()
            reader.Close()
            Return s
        ElseIf Route = "Route11" Then
            Dim client As New WebClient()

            baseurl = "http://sms5.thinknext.co.in/api/web2sms.php?workingkey=56868ifnmplngunc04k&to=" & MobileNo & "&sender=THKNXT&message=" & Msg
            ' Dim baseurl As String = "http://sms5.thinknext.co.in/SMSAPI.jsp?username=" & UserName & "&password=" & Password & "&sendername=" & GetSenderName & "&mobileno=" & MobileNo & "&message=" & Msg & ""
            Dim data As Stream = client.OpenRead(baseurl)
            Dim reader As New StreamReader(data)
            Dim s As String = reader.ReadToEnd()
            data.Close()
            reader.Close()
            Return s
            'http://sms4.thinknext.co.in/SMSAPI.jsp?username=username&password=password&sendername=ABC&mobileno=919999999989,919999999990,919999999991&message=Hello 
        End If
    End Function
    Function CheckFileExtension(ByVal varextension As String) As String
        If varextension = "doc" Then
            Return True
        ElseIf varextension = "pdf" Then
            Return True
        ElseIf varextension = "txt" Then
            Return True
        ElseIf varextension = "docx" Then
            Return True
        ElseIf varextension = "rtf" Then
            Return True
        Else
            Return False
        End If
    End Function
    Function chkFileExist(ByVal FileName As String, ByVal varTableName As String) As Boolean
        Dim sql1 As String
        Dim da As SqlDataAdapter
        Dim ds As New DataSet
        Dim cmd1 As SqlCommand
        Dim Con As SqlConnection
        Con = New SqlConnection(GetConnectionString(varIP))
        Con.Open()
        sql1 = "Select FileName from " & varTableName & " where FileName=@FileName"
        cmd1 = New SqlCommand(sql1, Con)
        cmd1.Parameters.AddWithValue("@FileName", FileName)
        da = New SqlDataAdapter(cmd1)
        da.Fill(ds, "FileCheck")
        If ds.Tables("FileCheck").Rows.Count > 0 Then
            Return True
        Else
            Return False
        End If
    End Function
    Function SMSUserName() As String
        Dim da As SqlDataAdapter
        Dim ds As New DataSet
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(GetConnectionString(""))
        Con.Open()
        Dim varUserName As String = ""
        da = New SqlDataAdapter("Select UserName from MasterSMSUser where WebSiteName='Training' ", Con)
        da.Fill(ds, "MasterSenderName")
        If ds.Tables("MasterSenderName").Rows.Count > 0 Then
            varUserName = ds.Tables("MasterSenderName").Rows(0).Item("UserName").ToString
        End If
        Con.Close()
        Return varUserName
    End Function
    Function SMSUserPassword() As String
        Dim da As SqlDataAdapter
        Dim ds As New DataSet
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(GetConnectionString(""))
        Con.Open()
        Dim varPassword As String
        da = New SqlDataAdapter("Select Password from MasterSMSUser where WebSiteName='Training' ", Con)
        da.Fill(ds, "MasterSenderName")
        If ds.Tables("MasterSenderName").Rows.Count > 0 Then
            varPassword = ds.Tables("MasterSenderName").Rows(0).Item("Password").ToString()
        End If
        Con.Close()
        Return varPassword
    End Function
    Public Function SenderName() As String
        Dim sql As String
        Dim da As SqlDataAdapter
        Dim ds As New DataSet
        Dim sendername1 As String
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(""))
        Con.Open()
        sql = "Select Distinct SenderName from MasterSMSUser where WebSiteName='Training' "
        da = New SqlDataAdapter(sql, Con)
        da.Fill(ds, "SenderName")
        If ds.Tables("SenderName").Rows.Count > 0 Then
            sendername1 = ds.Tables("SenderName").Rows(0).Item("SenderName")
        End If
        Con.Close()
        Return sendername1
    End Function
    Function GetUniqueCode(ByVal username As String) As String
        Dim uniqueID As String
        Dim userID As String
        uniqueID = Guid.NewGuid.ToString
        uniqueID = Left(uniqueID, 6)
        userID = username & uniqueID
        Return userID
    End Function
    Function StripHTML(ByVal source As String) As String
        Try
            Dim result As String
            ' Remove HTML Development formatting
            ' Replace line breaks with space
            ' because browsers inserts space
            result = source.Replace(vbCr, " ")
            ' Replace line breaks with space
            ' because browsers inserts space
            result = result.Replace(vbLf, " ")
            ' Remove step-formatting
            result = result.Replace(vbTab, String.Empty)
            ' Remove repeating spaces because browsers ignore them
            result = System.Text.RegularExpressions.Regex.Replace(result, "( )+", " ")

            ' Remove the header (prepare first by clearing attributes)
            result = System.Text.RegularExpressions.Regex.Replace(result, "<( )*head([^>])*>", "<head>", System.Text.RegularExpressions.RegexOptions.IgnoreCase)
            result = System.Text.RegularExpressions.Regex.Replace(result, "(<( )*(/)( )*head( )*>)", "</head>", System.Text.RegularExpressions.RegexOptions.IgnoreCase)
            result = System.Text.RegularExpressions.Regex.Replace(result, "(<head>).*(</head>)", String.Empty, System.Text.RegularExpressions.RegexOptions.IgnoreCase)

            ' remove all scripts (prepare first by clearing attributes)
            result = System.Text.RegularExpressions.Regex.Replace(result, "<( )*script([^>])*>", "<script>", System.Text.RegularExpressions.RegexOptions.IgnoreCase)
            result = System.Text.RegularExpressions.Regex.Replace(result, "(<( )*(/)( )*script( )*>)", "</script>", System.Text.RegularExpressions.RegexOptions.IgnoreCase)
            'result = System.Text.RegularExpressions.Regex.Replace(result,
            '         @"(<script>)([^(<script>\.</script>)])*(</script>)",
            '         string.Empty,
            '         System.Text.RegularExpressions.RegexOptions.IgnoreCase);
            result = System.Text.RegularExpressions.Regex.Replace(result, "(<script>).*(</script>)", String.Empty, System.Text.RegularExpressions.RegexOptions.IgnoreCase)

            ' remove all styles (prepare first by clearing attributes)
            result = System.Text.RegularExpressions.Regex.Replace(result, "<( )*style([^>])*>", "<style>", System.Text.RegularExpressions.RegexOptions.IgnoreCase)
            result = System.Text.RegularExpressions.Regex.Replace(result, "(<( )*(/)( )*style( )*>)", "</style>", System.Text.RegularExpressions.RegexOptions.IgnoreCase)
            result = System.Text.RegularExpressions.Regex.Replace(result, "(<style>).*(</style>)", String.Empty, System.Text.RegularExpressions.RegexOptions.IgnoreCase)

            ' insert tabs in spaces of <td> tags
            result = System.Text.RegularExpressions.Regex.Replace(result, "<( )*td([^>])*>", vbTab, System.Text.RegularExpressions.RegexOptions.IgnoreCase)

            ' insert line breaks in places of <BR> and <LI> tags
            result = System.Text.RegularExpressions.Regex.Replace(result, "<( )*br( )*>", vbCr, System.Text.RegularExpressions.RegexOptions.IgnoreCase)
            result = System.Text.RegularExpressions.Regex.Replace(result, "<( )*li( )*>", vbCr, System.Text.RegularExpressions.RegexOptions.IgnoreCase)

            ' insert line paragraphs (double line breaks) in place
            ' if <P>, <DIV> and <TR> tags
            result = System.Text.RegularExpressions.Regex.Replace(result, "<( )*div([^>])*>", vbCr & vbCr, System.Text.RegularExpressions.RegexOptions.IgnoreCase)
            result = System.Text.RegularExpressions.Regex.Replace(result, "<( )*tr([^>])*>", vbCr & vbCr, System.Text.RegularExpressions.RegexOptions.IgnoreCase)
            result = System.Text.RegularExpressions.Regex.Replace(result, "<( )*p([^>])*>", vbCr & vbCr, System.Text.RegularExpressions.RegexOptions.IgnoreCase)

            ' Remove remaining tags like <a>, links, images,
            ' comments etc - anything that's enclosed inside < >
            'result = System.Text.RegularExpressions.Regex.Replace(result, "<[^>]*>", String.Empty, System.Text.RegularExpressions.RegexOptions.IgnoreCase)

            ' replace special characters:
            result = System.Text.RegularExpressions.Regex.Replace(result, " ", " ", System.Text.RegularExpressions.RegexOptions.IgnoreCase)
            result = System.Text.RegularExpressions.Regex.Replace(result, "&bull;", " * ", System.Text.RegularExpressions.RegexOptions.IgnoreCase)
            result = System.Text.RegularExpressions.Regex.Replace(result, "&lsaquo;", "<", System.Text.RegularExpressions.RegexOptions.IgnoreCase)
            result = System.Text.RegularExpressions.Regex.Replace(result, "&rsaquo;", ">", System.Text.RegularExpressions.RegexOptions.IgnoreCase)
            result = System.Text.RegularExpressions.Regex.Replace(result, "&trade;", "(tm)", System.Text.RegularExpressions.RegexOptions.IgnoreCase)
            result = System.Text.RegularExpressions.Regex.Replace(result, "&frasl;", "/", System.Text.RegularExpressions.RegexOptions.IgnoreCase)
            result = System.Text.RegularExpressions.Regex.Replace(result, "&lt;", "<", System.Text.RegularExpressions.RegexOptions.IgnoreCase)
            result = System.Text.RegularExpressions.Regex.Replace(result, "&gt;", ">", System.Text.RegularExpressions.RegexOptions.IgnoreCase)
            result = System.Text.RegularExpressions.Regex.Replace(result, "&copy;", "(c)", System.Text.RegularExpressions.RegexOptions.IgnoreCase)
            result = System.Text.RegularExpressions.Regex.Replace(result, "&reg;", "(r)", System.Text.RegularExpressions.RegexOptions.IgnoreCase)
            ' Remove all others. More can be added, see
            ' http://hotwired.lycos.com/webmonkey/reference/special_characters/
            result = System.Text.RegularExpressions.Regex.Replace(result, "&(.{2,6});", String.Empty, System.Text.RegularExpressions.RegexOptions.IgnoreCase)

            ' for testing
            'System.Text.RegularExpressions.Regex.Replace(result,
            '       this.txtRegex.Text,string.Empty,
            '       System.Text.RegularExpressions.RegexOptions.IgnoreCase);

            ' make line breaking consistent
            result = result.Replace(vbLf, vbCr)

            ' Remove extra line breaks and tabs:
            ' replace over 2 breaks with 2 and over 4 tabs with 4.
            ' Prepare first to remove any whitespaces in between
            ' the escaped characters and remove redundant tabs in between line breaks
            result = System.Text.RegularExpressions.Regex.Replace(result, "(" & vbCr & ")( )+(" & vbCr & ")", vbCr & vbCr, System.Text.RegularExpressions.RegexOptions.IgnoreCase)
            result = System.Text.RegularExpressions.Regex.Replace(result, "(" & vbTab & ")( )+(" & vbTab & ")", vbTab & vbTab, System.Text.RegularExpressions.RegexOptions.IgnoreCase)
            result = System.Text.RegularExpressions.Regex.Replace(result, "(" & vbTab & ")( )+(" & vbCr & ")", vbTab & vbCr, System.Text.RegularExpressions.RegexOptions.IgnoreCase)
            result = System.Text.RegularExpressions.Regex.Replace(result, "(" & vbCr & ")( )+(" & vbTab & ")", vbCr & vbTab, System.Text.RegularExpressions.RegexOptions.IgnoreCase)
            ' Remove redundant tabs
            result = System.Text.RegularExpressions.Regex.Replace(result, "(" & vbCr & ")(" & vbTab & ")+(" & vbCr & ")", vbCr & vbCr, System.Text.RegularExpressions.RegexOptions.IgnoreCase)
            ' Remove multiple tabs following a line break with just one tab
            result = System.Text.RegularExpressions.Regex.Replace(result, "(" & vbCr & ")(" & vbTab & ")+", vbCr & vbTab, System.Text.RegularExpressions.RegexOptions.IgnoreCase)
            ' Initial replacement target string for line breaks
            Dim breaks As String = vbCr & vbCr & vbCr
            ' Initial replacement target string for tabs
            Dim tabs As String = vbTab & vbTab & vbTab & vbTab & vbTab
            For index As Integer = 0 To result.Length - 1
                result = result.Replace(breaks, vbCr & vbCr)
                result = result.Replace(tabs, vbTab & vbTab & vbTab & vbTab)
                breaks = breaks & vbCr
                tabs = tabs & vbTab
            Next

            ' That's it.
            Return result
        Catch
            'MessageBox.Show("Error")
            Return source
        End Try
    End Function
    Function TrainingCourse(ByVal IDNo As String) As String
        Dim da As SqlDataAdapter
        Dim ds As New DataSet
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(GetConnectionString(""))
        Con.Open()
        Dim varTraining As String
        da = New SqlDataAdapter("Select Course from Admissions where IDNo=" & IDNo & " ", Con)
        da.Fill(ds, "Admissions")
        varTraining = ds.Tables("Admissions").Rows(0).Item("Course")
        Con.Close()
        Return varTraining
    End Function
    Sub UploadImageFTP(ByVal varFTPpath As String, ByVal FUC As FileUpload)
        ' set up request...      
        Dim clsRequest As System.Net.FtpWebRequest =
        DirectCast(System.Net.WebRequest.Create(varFTPpath), System.Net.FtpWebRequest)


        clsRequest.Credentials = New System.Net.NetworkCredential("thinknex", "d6u3Yi#5")
        clsRequest.Method = System.Net.WebRequestMethods.Ftp.UploadFile

        Dim bFile() As Byte = FUC.FileBytes
        Dim size As Integer = FUC.PostedFile.ContentLength

        clsRequest.Timeout = 10000000
        clsRequest.KeepAlive = False



        clsRequest.ReadWriteTimeout = 10000000


        Dim clsStream As System.IO.Stream =
            clsRequest.GetRequestStream()

        clsStream.Write(bFile, 0, bFile.Length)

        clsStream.Close()
        clsStream.Dispose()
        clsRequest.Abort()
    End Sub
    Sub UpoadImgFTP()

        Dim SentFile As String = "ftp://202.143.99.95/httpdocs/Ebooks/"
        Dim SendFileShort As String = System.IO.Path.GetFileNameWithoutExtension(SentFile)
        Dim FTPRequest As System.Net.FtpWebRequest = DirectCast(System.Net.WebRequest.Create("ftp://202.143.99.95/httpdocs/Ebooks/" & SendFileShort), System.Net.FtpWebRequest)

        FTPRequest.Credentials = New System.Net.NetworkCredential("thinknex", "d6u3Yi#5")
        FTPRequest.Method = System.Net.WebRequestMethods.Ftp.UploadFile
        Dim entered As Boolean = False
        Dim sent As Boolean = False
        Do Until sent = True
            FTPRequest.KeepAlive = False
            FTPRequest.Proxy = Nothing
            FTPRequest.UsePassive = True
            FTPRequest.UseBinary = False
            FTPRequest.Method = WebRequestMethods.Ftp.UploadFile
            FTPRequest.Timeout = 180000
            Try
                Dim bytesread As Integer = 0
                Dim buffer As Integer = 8100
                Dim fs As FileStream = File.OpenRead(SentFile)
                Dim byteFile As Byte() = New Byte(8100) {}
                Dim fstream As Stream = FTPRequest.GetRequestStream
                Do
                    bytesread = fs.Read(byteFile, 0, buffer)
                    fs.Read(byteFile, 0, buffer)
                    fstream.Write(byteFile, 0, byteFile.Length)
                Loop Until bytesread = 0
                fstream.Close()
                fstream.Dispose()

                sent = True
            Catch
                Thread.Sleep(1000)
            End Try
        Loop
    End Sub
    '=================================================================
    Sub UploadingImgFTP()
        ' Open file.txt with the Using statement.
        Using r As StreamReader = New StreamReader("list.txt")
            ' Store contents in this String.
            Dim line As String

            ' Read first line.
            line = r.ReadLine

            ' Loop over each line in file, While list is Not Nothing.
            Do While (Not line Is Nothing)
                'lblFTPStatus.Text = ("Status: Uploading " & line)
                'lblFTPStatus.Refresh()
                'list the names of all files in the specified directory

                Dim local_file As String = Dir() & "\" & line
                Dim remote_file As String = "ftp://202.143.99.95/httpdocs/Ebooks/" & line
                Dim cls_request As System.Net.FtpWebRequest = DirectCast(System.Net.WebRequest.Create(remote_file), System.Net.FtpWebRequest)
                Dim user_name As String = "thinknex"
                Dim password As String = "d6u3Yi#5"

                'Establish credentials for logging into ftp site
                cls_request.Credentials = New System.Net.NetworkCredential(user_name, password)

                'Set properties
                cls_request.KeepAlive = False
                cls_request.Proxy = Nothing
                cls_request.Method = System.Net.WebRequestMethods.Ftp.UploadFile
                cls_request.UseBinary = True



                'Read in the file
                Dim b_file() As Byte = System.IO.File.ReadAllBytes(local_file)

                'Upload the file
                Dim cls_stream As System.IO.Stream = cls_request.GetRequestStream()
                cls_stream.Write(b_file, 0, b_file.Length)
                cls_stream.Close()
                cls_stream.Dispose()

                line = r.ReadLine
            Loop
            r.Close()
        End Using
        'lblFTPStatus.Text = ("Status: IDLE")
        'create & upload html
        'grpThree.Enabled = True
    End Sub

    'FTP code Exaple
    '=================================================================
    'Sub UploadFileToFTP()
    '    Try
    '        Dim filename As String = Path.GetFileName("ftp://202.143.99.95/httpdocs/Ebooks/")
    '        Dim ftpfullpath As String = "ftp://202.143.99.95/httpdocs/Ebooks/"
    '        Dim ftp As FtpWebRequest = DirectCast(FtpWebRequest.Create(ftpfullpath), FtpWebRequest)
    '        ftp.Credentials = New NetworkCredential("thinknex", "d6u3Yi#5")

    '        ftp.KeepAlive = True
    '        ftp.UseBinary = True
    '        ftp.Method = WebRequestMethods.Ftp.UploadFile

    '        Dim fs As FileStream = File.OpenRead("ftp://202.143.99.95/httpdocs/Ebooks/")
    '        Dim buffer As Byte() = New Byte(fs.Length - 1) {}
    '        fs.Read(buffer, 0, buffer.Length)
    '        fs.Close()

    '        Dim ftpstream As Stream = ftp.GetRequestStream()
    '        ftpstream.Write(buffer, 0, buffer.Length)
    '        ftpstream.Close()
    '    Catch ex As Exception
    '        Throw ex
    '    End Try
    'End Sub
    '=================================================================
    '=================================================================






    Sub UPdatePassword(ByVal username As String, ByVal Password As String, ByVal LoginType As String)
        Dim varclass As New Class1
        Dim con As SqlConnection
        con = New SqlConnection(varclass.GetConnectionString(""))
        con.Open()
        Dim sql1 As String
        sql1 = "Update UserLogin set Password=@Password  where LoginType=@LoginType and UserName=@UserName "
        Dim cmd1 As New SqlCommand(sql1, con)
        cmd1.Parameters.AddWithValue("@UserName", username)
        cmd1.Parameters.AddWithValue("@Password", Password)
        cmd1.Parameters.AddWithValue("@LoginType", LoginType)
        cmd1.ExecuteNonQuery()
        cmd1.Dispose()
        con.Close()
    End Sub
    Sub CreateUserLogin(ByVal username As String, ByVal Password As String, ByVal Logintype As String)
        Dim varclass As New Class1
        Dim con As SqlConnection
        con = New SqlConnection(varclass.GetConnectionString(""))
        con.Open()
        Dim sql As String
        sql = "insert into userlogin(UserName,password,LoginType,FranchiseCode,BrandName)values(@UserName,@password,@LoginType,@FranchiseCode,@BrandName)"
        Dim cmd1 As New SqlCommand(sql, con)
        cmd1.Parameters.AddWithValue("@UserName", username)
        cmd1.Parameters.AddWithValue("@Password", Password)
        cmd1.Parameters.AddWithValue("@LoginType", Logintype)
        cmd1.Parameters.AddWithValue("FranchiseCode", "TNK101")
        cmd1.Parameters.AddWithValue("BrandName", "THINKNEXT TRAINING")
        ' cmd1.Parameters.AddWithValue("@LoginType", LoginType)
        cmd1.ExecuteNonQuery()
        cmd1.Dispose()
        con.Close()
    End Sub
    Function Checkuser(ByVal username As String) As Boolean
        Dim varclass As New Class1
        Dim con As SqlConnection
        con = New SqlConnection(varclass.GetConnectionString(""))
        con.Open()
        Dim sql As String
        sql = "Select * from UserLogin where Username=@UserName "
        'sql = sql & " values (@UserName, @Password, @LoginType ) "
        Dim cmd1 As New SqlCommand(sql, con)
        cmd1.Parameters.AddWithValue("@UserName", username)
        Dim ds As New DataSet
        Dim da As New SqlDataAdapter(cmd1)
        da.Fill(ds, "UserLogin")
        If ds.Tables("UserLogin").Rows.Count > 0 Then
            Return True
        Else
            Return False
        End If
    End Function
    Function getuserpassworduser(ByVal username As String) As String
        Dim password As String = ""
        Dim varclass As New Class1
        Dim con As SqlConnection
        con = New SqlConnection(varclass.GetConnectionString(""))
        con.Open()
        Dim sql As String
        sql = "Select Password from UserLogin where UserName=@UserName "
        Dim cmd1 As New SqlCommand(sql, con)
        cmd1.Parameters.AddWithValue("@UserName", username)
        Dim ds As New DataSet
        Dim da As New SqlDataAdapter(cmd1)
        da.Fill(ds, "UserLogin")
        If ds.Tables("UserLogin").Rows.Count > 0 Then
            password = ds.Tables("UserLogin").Rows(0).Item("Password")
        Else
        End If
        Return password
    End Function
    'Function getusrnameandpassword(ByVal username As String, ByVal password1 As String) As String()
    '    Dim password As String = ""
    '    Dim userName1 As String = ""
    '    Dim array(2) As String
    '    Dim varclass As New Class1
    '    Dim con As SqlConnection
    '    con = New SqlConnection(varclass.GetConnectionString(""))
    '    con.Open()
    '    Dim sql As String
    '    sql = "Select UserName,Password from UserLogin where UserName=@UserName "
    '    Dim cmd1 As New SqlCommand(sql, con)
    '    cmd1.Parameters.AddWithValue("@UserName", username)
    '    cmd1.Parameters.AddWithValue("@Password", password1)
    '    Dim ds As New DataSet
    '    Dim da As New SqlDataAdapter(cmd1)
    '    da.Fill(ds, "UserLogin")
    '    If ds.Tables("UserLogin").Rows.Count > 0 Then
    '        password = ds.Tables("UserLogin").Rows(0).Item("Password")
    '        userName1 = ds.Tables("UserLogin").Rows(0).Item("UserName")

    '        array = New String() {userName1, password}
    '    Else
    '    End If
    '    Return array
    'End Function
    Function checkdate(ByVal vardate As Date, ByVal userid As String, ByVal vargrp As String) As Boolean
        Dim sql1 As String
        Dim da As SqlDataAdapter
        Dim ds As New DataSet
        Dim cmd1 As SqlCommand
        Dim Con As SqlConnection
        Con = New SqlConnection(GetConnectionString(varIP))
        Con.Open()
        sql1 = "Select convert(varchar(11),AttDate,101) as ATTDate from AttRecord where Attdate=@Attdate and BatchGroup=@BatchGroup and UserID=@UserID "
        cmd1 = New SqlCommand(sql1, Con)
        'Dim vardate As DateTime
        'vardate = Format(DateTime, "MM/dd/yyyy")
        cmd1.Parameters.AddWithValue("@Attdate", Format(vardate, "MM/dd/yyyy"))
        cmd1.Parameters.AddWithValue("@UserID", userid)
        cmd1.Parameters.AddWithValue("@BatchGroup", vargrp)
        da = New SqlDataAdapter(cmd1)
        da.Fill(ds, "AttRecords")
        If ds.Tables("AttRecords").Rows.Count > 0 Then
            Return True
        Else
            Return False

        End If
    End Function
    Function ChekEnquiryNo(ByVal EnquiryNo As String) As Boolean
        Dim varclass As New Class1
        Dim con As SqlConnection
        con = New SqlConnection(varclass.GetConnectionString(""))
        con.Open()
        Dim sql As String
        sql = "Select EnquiryNo from Admissions where EnquiryNo=@EnquiryNo  and FranchiseCode='TNK101' and BrandName='THINKNEXT TRAINING' "
        'sql = sql & " values (@UserName, @Password, @LoginType ) "
        Dim cmd1 As New SqlCommand(sql, con)
        cmd1.Parameters.AddWithValue("@EnquiryNo", EnquiryNo)
        Dim ds As New DataSet
        Dim da As New SqlDataAdapter(cmd1)
        da.Fill(ds, "Admissions")
        If ds.Tables("Admissions").Rows.Count > 0 Then
            Return True
        Else
            Return False
        End If
    End Function


    Function ChekIDNo(ByVal IDNo As String) As Boolean
        Dim varclass As New Class1
        Dim con As SqlConnection
        con = New SqlConnection(varclass.GetConnectionString(""))
        con.Open()
        Dim sql As String
        sql = "Select IDNo from Admissions where IDNo=@IDNo  and FranchiseCode='TNK101' and BrandName='THINKNEXT TRAINING' "
        'sql = sql & " values (@UserName, @Password, @LoginType ) "
        Dim cmd1 As New SqlCommand(sql, con)
        cmd1.Parameters.AddWithValue("@IDNo ", IDNo)
        Dim ds As New DataSet
        Dim da As New SqlDataAdapter(cmd1)
        da.Fill(ds, "Admissions")
        If ds.Tables("Admissions").Rows.Count > 0 Then
            Return True
        Else
            Return False
        End If
    End Function



    Function ChekCourse(ByVal Course As String) As Boolean
        Dim varclass As New Class1
        Dim con As SqlConnection
        con = New SqlConnection(varclass.GetConnectionString(""))
        con.Open()
        Dim sql As String
        sql = "Select Distinct courses from mastercourses where Courses=@Courses  and FranchiseCode='TNK101' "
        'sql = sql & " values (@UserName, @Password, @LoginType ) "
        Dim cmd1 As New SqlCommand(sql, con)
        cmd1.Parameters.AddWithValue("@Courses ", Course)
        Dim ds As New DataSet
        Dim da As New SqlDataAdapter(cmd1)
        da.Fill(ds, "mastercourses")
        If ds.Tables("mastercourses").Rows.Count > 0 Then
            Return True
        Else
            Return False
        End If
    End Function






    Function ChekDate(ByVal Batch As String, ByVal Session As String, ByVal Dates As String) As Boolean
        Dim varclass As New Class1
        Dim con As SqlConnection
        con = New SqlConnection(varclass.GetConnectionString(""))
        con.Open()
        Dim sql As String
        sql = "select distinct attdate from AttRecord where AttDate='" + Dates + "' and BatchGroup='" + Session + "' and Session='" + Batch + "' and FranchiseCode='TNK101' and BrandName='THINKNEXT TRAINING'"
        'sql = sql & " values (@UserName, @Password, @LoginType ) "
        Dim cmd1 As New SqlCommand(sql, con)
        'cmd1.Parameters.AddWithValue("@Courses ", Course)
        Dim ds As New DataSet
        Dim da As New SqlDataAdapter(cmd1)
        da.Fill(ds, "mastercourses")
        If ds.Tables("mastercourses").Rows.Count > 0 Then
            Return True
        Else
            Return False
        End If
    End Function

    Dim sess As String
    'Function AddStudentScholarshipDetail(ByVal demoname As String, ByVal demomsg As String, ByVal demomblno As Int32, ByVal demoemail As String, ByVal lbl As Label, ByVal enquiryno As String) As String
    '    Dim varclass As New Class1
    '    Dim con As SqlConnection
    '    con = New SqlConnection(varclass.GetConnectionString(varIP))
    '    con.Open()
    '    Dim sql As String
    '    Dim cultureInfo As CultureInfo = Thread.CurrentThread.CurrentCulture
    '    Dim objTextInfo As TextInfo = cultureInfo.TextInfo
    '    demoname = objTextInfo.ToTitleCase(demoname)
    '    demomsg = objTextInfo.ToTitleCase(demomsg)
    '    Dim ses As String
    '    ses = varclass.Session12(sess)
    '    'ses = Session12()
    '    sql = "insert into Admissions( Session,EnquiryNo, Admissiondate,StudentName,StudentMobileNo,EmailID,Duration,Course,Comment,ModeOfEnquiry,StatusCode,FranchiseCode,BrandName)values(@Session,@EnquiryNo,@Admissiondate,@StudentName,@StudentMobileNo,@EmailID,@Duration,@Course,@Comment,@ModeOfEnquiry,@StatusCode,@FranchiseCode,@BrandName)"
    '    Dim cmd As New SqlCommand(sql, con)

    '    enquiryno = GenEnquirytNo()

    '    cmd.Parameters.AddWithValue("@EnquiryNo", enquiryno)
    '    cmd.Parameters.AddWithValue("@Admissiondate", Format(Now, "MM/dd/yyyy"))
    '    cmd.Parameters.AddWithValue("@StudentName", demoname)
    '    cmd.Parameters.AddWithValue("@StudentMobileNo", demomblno)
    '    cmd.Parameters.AddWithValue("@ModeOfEnquiry", "Free Demo Class")
    '    cmd.Parameters.AddWithValue("@EmailID", demoemail)
    '    cmd.Parameters.AddWithValue("@Duration", "Free Demo Class")
    '    cmd.Parameters.AddWithValue("@Course", demomsg)
    '    'cmd.Parameters.AddWithValue("@CollegeName", )
    '    cmd.Parameters.AddWithValue("@Comment", "Free Demo Class")
    '    cmd.Parameters.AddWithValue("@StatusCode", "Enquiry")
    '    cmd.Parameters.AddWithValue("@FranchiseCode", "TNK101")
    '    cmd.Parameters.AddWithValue("@BrandName", "THINKNEXT TRAINING")
    '    cmd.Parameters.AddWithValue("@Session", ses)
    '    cmd.ExecuteNonQuery()
    '    cmd.Dispose()
    '    con.Close()
    '    lbl.Visible = True
    '    'lblmsg.Text = "Dear " + txtNameR.Text + " you have been registered successfully." + " Your Enquiry No is " & enquiryno
    '    lbl.Text = "Dear " + demoname + " you have been registered successfully."


    '    Return enquiryno
    '    'ClientScript.RegisterStartupScript(Me.GetType, "alert", "alert('Dear " & txtNameR.Text & " You have been registered successfully ');", True)
    'End Function

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

    Function dnow() As DateTime
        Dim con As New SqlConnection
        Dim varconnectionstring As String
        Dim serverdatetime As Date
        Dim sql As String = ""
        Dim da As SqlDataAdapter
        Dim ds As DataSet = New DataSet()
        Dim cmd As New SqlCommand
        Dim VarClass As Class1 = New Class1()
        varconnectionstring = VarClass.GetConnectionString("constr")
        con = New SqlConnection(varconnectionstring)
        sql = "SELECT CONVERT(VARCHAR(10),GETDATE() ,103) as date"
        da = New SqlDataAdapter(sql, con)
        da.Fill(ds, "date")
        If ds.Tables(0).Rows.Count > 0 Then
            Dim dt As String = ds.Tables("date").Rows(0).Item("date")
            Dim newDt As DateTime = DateTime.ParseExact(dt, "dd/MM/yyyy", CultureInfo.InvariantCulture)
            serverdatetime = newDt
        End If
        Return serverdatetime
    End Function

End Class


