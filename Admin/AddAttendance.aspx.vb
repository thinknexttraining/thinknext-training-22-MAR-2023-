Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports System.IO
Imports System.Collections.Specialized
Imports System.Runtime.InteropServices.Marshal
Imports System.Drawing.Printing
Imports System.Xml.Linq

Imports iTextSharp.text.html.simpleparser

Imports System.Configuration

Partial Class AddAttendance

    Inherits System.Web.UI.Page
    Dim varIP As String


    Sub ShowCourse(ByVal ddl As DropDownList)

        varIP = Request.ServerVariables("SERVER_NAME").ToString
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()
        Dim da As SqlDataAdapter
        Dim ds As DataSet
        Dim sql As String
        ddl.Items.Clear()
        ddl.Items.Insert(0, "Select")
        ' sql = "select Distinct Training from Admissions where Training is not Null"
        sql = "select Distinct Session from mastersession  where FranchiseCode='" + txtfranchiseCode.Text + "' and BrandName='THINKNEXT TRAINING'"
        da = New SqlDataAdapter(sql, Con)
        ds = New DataSet
        da.Fill(ds, "mastersession")
        For i = 0 To ds.Tables("mastersession").Rows.Count - 1
            If IsDBNull(ds.Tables("mastersession").Rows(i).Item("Session")) = False Then
                ddl.Items.Add(ds.Tables("mastersession").Rows(i).Item("Session"))
            End If
        Next
        Con.Close()
    End Sub
    Sub ShowGroup(ByVal Course As String, ByVal ddl As DropDownList)
        Dim VAL As String = Session("myck").ToString()
        varIP = Request.ServerVariables("SERVER_NAME").ToString
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()
        Dim da As SqlDataAdapter
        Dim ds As DataSet
        Dim sql As String
        ddl.Items.Clear()
        ddl.Items.Add("Select")
        'sql = "select Distinct BatchGroup from Admissions where Course=@Course AND FranchiseCode=@FranchiseCode and brandname=@brandname"

        sql = "select Distinct BatchName from MasterBatches where StaffIDNo='" + VAL + "' and Session='" + Course + "' And FranchiseCode='" + txtfranchiseCode.Text + "' And brandname='THINKNEXT TRAINING'"

        Dim cmd As New SqlCommand(sql, Con)
        da = New SqlDataAdapter(cmd)
        ds = New DataSet
        da.Fill(ds, "MasterBatches")
        For i = 0 To ds.Tables("MasterBatches").Rows.Count - 1
            If IsDBNull(ds.Tables("MasterBatches").Rows(i).Item("BatchName")) = False Then
                ddl.Items.Add(ds.Tables("MasterBatches").Rows(i).Item("BatchName"))
            End If
        Next
        'Dim j As Int32 = 1
        'For i = 0 To ds.Tables("MasterBatches").Rows.Count - 1
        '    If IsDBNull(ds.Tables("MasterBatches").Rows(i).Item("BatchName")) = False Then
        '        Dim batch(50) As String

        '        batch = ds.Tables("MasterBatches").Rows(i).Item("BatchName").ToString().Split(",")
        '        ' batch.Distinct().ToArray()

        '        'If batch = DBNull.Value Then

        '        'End If
        '        For Each a As String In batch

        '            Dim li As ListItem = ddl.Items.FindByValue(a)
        '            If li IsNot Nothing Then
        '                Dim str As String = li.Text.ToString()
        '                j = 0
        '            End If

        '            If j = 0 Then
        '                j = 1
        '            Else

        '                ddl.Items.Add(a)

        '            End If

        '        Next



        '    End If
        'Next
        Con.Close()
    End Sub
    Sub ShowStudents(ByVal Training As String, ByVal Group As String)
        varIP = Request.ServerVariables("SERVER_NAME").ToString
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()
        Dim da As SqlDataAdapter
        Dim ds As DataSet
        Dim sql As String
        sql = "select B.IDNo,A.StudentName,A.FatherName,A.Duration,A.Course,M.BatchTimings,B.BatchName,A.EnquiryNo from Admissions as A inner join BatchMembers as B on A.IDNo=B.IDNo inner join MasterBatches as M on B.BatchName=M.BatchName where B.BatchName='" + Group + "' and M.Session='" + Training + "' and M.BrandName='THINKNEXT TRAINING' and M.Franchisecode='TNK101'"
        'sql = "select *  from Admissions where Course like '" + Training + "' and BatchGroup like '%" + Group + "%' AND FranchiseCode=@FranchiseCode "
        Dim cmd As New SqlCommand(sql, Con)
        'cmd.Parameters.AddWithValue("@Course", Training)
        'cmd.Parameters.AddWithValue("@BatchGroup", Group)
        'cmd.Parameters.AddWithValue("@FranchiseCode", txtfranchiseCode.Text)
        da = New SqlDataAdapter(cmd)
        ds = New DataSet
        da.Fill(ds, "Admissions")
        If ds.Tables("Admissions").Rows.Count > 0 Then
            gvAttendance.DataSource = ds.Tables("Admissions")
            gvAttendance.DataBind()
        Else
            gvAttendance.DataSource = Nothing
            gvAttendance.DataBind()
        End If
        lbltotalrecords.Visible = True
        lbltotalrecords.Text = "Total Records:" + ds.Tables("Admissions").Rows.Count.ToString() + ""
        Con.Close()
    End Sub


    Protected Sub chkLecture_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs)
        lblMsg0.Visible = False
        Dim chkLect As CheckBox = DirectCast(sender, CheckBox)
        Dim grdrDropDownRow As GridViewRow = DirectCast(chkLect.Parent.Parent, GridViewRow)
        Dim LecDelivered As TextBox = DirectCast(grdrDropDownRow.FindControl("txtLectDelivered"), TextBox)
        Dim LecAttended As TextBox = DirectCast(grdrDropDownRow.FindControl("txtLectAttended"), TextBox)
        If chkLect.Checked = True Then
            If LecDelivered.Text <> "" Then
                LecAttended.Text = LecDelivered.Text
            Else
                lblMsg0.Visible = True
                lblMsg0.Text = "Please Set Lecture Delivered First"
                Exit Sub
            End If
        Else
            LecAttended.Text = "0"
        End If
    End Sub
  
    Dim MaxLimit As Integer
  

    Protected Sub btnExport_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnExport.Click
       
        If gvAttendance.Rows.Count > 0 Then
            If gvAttendance.Visible = True Then
                Response.Clear()
                Response.Buffer = True
                Response.AddHeader("content-disposition", "attachment;filename=StudentAttendance.xls")
                Response.Charset = ""
                Response.ContentType = "application/vnd.xls"
                Dim sWriter As New StringWriter()
                Dim hWriter As New HtmlTextWriter(sWriter)
                gvAttendance.Style.Add("text-transform", "Capitalize")
                gvAttendance.RenderControl(hWriter)
                Response.Output.Write(sWriter.ToString())
                Response.Flush()
                Response.[End]()
            Else
                lblMsg.Visible = True
                lblMsg.Text = "No record found"
                Exit Sub
            End If
        Else
            lblMsg.Visible = True
            lblMsg.Text = "No record found"
            Exit Sub
        End If
        lblMsg.Visible = False
    End Sub
    Public Overrides Sub VerifyRenderingInServerForm(ByVal control As System.Web.UI.Control)
        'MyBase.VerifyRenderingInServerForm(control)
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session.Timeout = 300
        If Session("myck") = "" Then
            Response.Redirect("~/default.aspx")
        End If


        'If Session("myck") = "" Then
        '    Response.Redirect("~/default.aspx")
        'End If

        If Page.IsPostBack = False Then
            txtdate.Text = Format(System.DateTime.Now.Date, "MM/dd/yyyy")
            ShowCourse(drpCourse)
        End If
    End Sub

    Protected Sub drpCourse_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles drpCourse.SelectedIndexChanged
        If drpCourse.Text <> "Select" Then
            ShowGroup(drpCourse.Text, drpgroup)
        End If
    End Sub

    Protected Sub btnshow_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnshow.Click
        If drpgroup.Text <> "Select" Then
            ShowStudents(drpCourse.Text, drpgroup.Text)
        Else

        End If
    End Sub

   
    Protected Sub btnAddLectDelivered_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAddLectDelivered.Click

        If IsNumeric(textBoxLectDelivered.Text) = False Then
            textBoxLectAttended.Text = textBoxLectDelivered.Text
            textBoxLectAttended.ReadOnly = True
        Else
            textBoxLectAttended.Text = ""
            textBoxLectAttended.ReadOnly = False
        End If
        Dim rowctr As Integer = 0
        While rowctr < gvAttendance.Rows.Count
            Dim varlectAttended As TextBox
            varlectAttended = gvAttendance.Rows(rowctr).FindControl("LectDelivered")
            varlectAttended.Text = textBoxLectDelivered.Text
            rowctr = rowctr + 1
        End While


    End Sub

    Protected Sub btnLecturesAttended_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLecturesAttended.Click
        If IsNumeric(textBoxLectAttended.Text) And IsNumeric(textBoxLectDelivered.Text) = False Then
            If textBoxLectAttended.Text <> textBoxLectDelivered.Text Then
                lblMsg.Text = "Lecture Attended and Lecture Delivered Should be same"
                Exit Sub
            End If
        Else
            If Val(textBoxLectAttended.Text) > Val(textBoxLectDelivered.Text) Then
                lblMsg.Text = "Lecture Attended should Not be greater Then Lecture Delivered"
                Exit Sub
            End If
        End If

        'If IsNumeric(textBoxLectAttended.Text) = False Then
        '    lblMsg.Text = "Lecture Attended should be Numeric"
        '    Exit Sub
        'End If
        Dim rowctr As Integer = 0
        While rowctr < gvAttendance.Rows.Count
            Dim varlectAttended As TextBox
            varlectAttended = gvAttendance.Rows(rowctr).FindControl("LectAttended")
            varlectAttended.Text = textBoxLectAttended.Text
            rowctr = rowctr + 1
        End While
    End Sub



    Sub addattendence(ByVal IDNo As String, ByVal StudentName As String, ByVal FatherName As String, ByVal Training As String, ByVal TrainingBatch As String, ByVal BatchTiming As String, ByVal Session1 As String, ByVal BatchGroup As String, ByVal LectDelievered As String, ByVal LectAttended As String, ByVal UserID As String, ByVal EnquiryNo As String)
        varIP = Request.ServerVariables("SERVER_NAME").ToString
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()

        Dim sql1 As String = "select FranchiseCode from Admissions where EnquiryNo=" + EnquiryNo
        Dim adp1 As SqlDataAdapter

        adp1 = New SqlDataAdapter(sql1, Con)

        Dim ds As New DataSet()

        adp1.Fill(ds)
        Dim FC As String = ds.Tables(0).Rows(0)(0).ToString()


        Dim Sql As String = "Insert into AttRecord (AttDate, IDNo, StudentName, FatherName, Course, Duration, BatchTiming, Session,BatchGroup, LectDelievered, LectAttended, UserID,FranchiseCode,BrandName) "
        Sql = Sql & " values ( @AttDate, @IDNo, @StudentName, @FatherName, @Course, @Duration, @BatchTiming,@Session, @BatchGroup, @LectDelievered, @LectAttended, @UserID,@FranchiseCode,@BrandName) "
        Dim provider As System.Globalization.CultureInfo = System.Globalization.CultureInfo.InvariantCulture
        Dim cmd As New SqlCommand(Sql, Con)
        Dim varDate As DateTime
        varDate = DateTime.ParseExact(txtdate.Text, "MM/dd/yyyy", provider)
        cmd.Parameters.AddWithValue("@AttDate", Format(varDate, "MM/dd/yyyy"))
        If IDNo = "" Or IsDBNull(IDNo) Then
            cmd.Parameters.AddWithValue("@IDNo", DBNull.Value)
        Else
            cmd.Parameters.AddWithValue("@IDNo", IDNo)
        End If
        If StudentName = "" Or IsDBNull(StudentName) Then
            cmd.Parameters.AddWithValue("@StudentName", DBNull.Value)
        Else
            cmd.Parameters.AddWithValue("@StudentName", StudentName)
        End If
        If FatherName = "" Or IsDBNull(FatherName) Then
            cmd.Parameters.AddWithValue("@FatherName", DBNull.Value)
        Else
            cmd.Parameters.AddWithValue("@FatherName", FatherName)
        End If
        If Training = "&nbsp;" Or IsDBNull(Training) Then
            cmd.Parameters.AddWithValue("@Course", DBNull.Value)
        Else
            cmd.Parameters.AddWithValue("@Course", Training)
        End If


        If TrainingBatch = "&nbsp;" Or IsDBNull(TrainingBatch) Then
            cmd.Parameters.AddWithValue("@Duration", DBNull.Value)
        Else
            cmd.Parameters.AddWithValue("@Duration", TrainingBatch)
        End If
        If BatchTiming = "&nbsp;" Or IsDBNull(BatchTiming) Then
            cmd.Parameters.AddWithValue("@BatchTiming", DBNull.Value)
        Else
            cmd.Parameters.AddWithValue("@BatchTiming", BatchTiming)
        End If
        If BatchGroup = "&nbsp;" Or IsDBNull(BatchGroup) Then
            cmd.Parameters.AddWithValue("@BatchGroup", DBNull.Value)
        Else
            cmd.Parameters.AddWithValue("@BatchGroup", BatchGroup)
        End If



        '-----Session------'Session1------

        If Session1 = "&nbsp;" Or IsDBNull(Session1) Then
            cmd.Parameters.AddWithValue("@Session", DBNull.Value)
        Else
            cmd.Parameters.AddWithValue("@Session", Session1)
        End If





        If LectDelievered = "" Or IsDBNull(LectDelievered) Then
            cmd.Parameters.AddWithValue("@LectDelievered", DBNull.Value)
        Else
            cmd.Parameters.AddWithValue("@LectDelievered", LectDelievered)
        End If
        If LectAttended = "" Or IsDBNull(LectAttended) Then
            cmd.Parameters.AddWithValue("@LectAttended", DBNull.Value)
        Else
            cmd.Parameters.AddWithValue("@LectAttended", LectAttended)
        End If
        If UserID = "" Or IsDBNull(UserID) Then
            cmd.Parameters.AddWithValue("@UserID", DBNull.Value)
        Else
            cmd.Parameters.AddWithValue("@UserID", UserID)
        End If
        If EnquiryNo = "" Or IsDBNull(UserID) Then
            cmd.Parameters.AddWithValue("@FranchiseCode", DBNull.Value)
        Else
            cmd.Parameters.AddWithValue("@FranchiseCode", "TNK101")
        End If
        If EnquiryNo = "" Or IsDBNull(UserID) Then
            cmd.Parameters.AddWithValue("@BrandName", DBNull.Value)
        Else
            cmd.Parameters.AddWithValue("@BrandName", "THINKNEXT TRAINING")
        End If
        cmd.ExecuteNonQuery()
        cmd.Dispose()
        Con.Close()
    End Sub
    Sub UpdateAttendence(ByVal IDNo As String, ByVal StudentName As String, ByVal FatherName As String, ByVal Training As String, ByVal TrainingBatch As String, ByVal BatchTiming As String, ByVal BatchGroup As String, ByVal LectDelievered As String, ByVal LectAttended As String, ByVal UserID As String)
        varIP = Request.ServerVariables("SERVER_NAME").ToString
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()
        Dim Sql As String = "Update AttRecord set LectDelievered=@LectDelievered, LectAttended=@LectAttended where "
        Sql = Sql & "AttDate=@AttDate and Course=@Course and BatchGroup=@BatchGroup and UserID=@UserID " '  and Training=@Training and "
        ' Sql = Sql & "TrainingBatch=@TrainingBatch and BatchTiming=@BatchTiming and BatchGroup=@BatchGroup and UserID=@UserID "
   Dim provider As System.Globalization.CultureInfo = System.Globalization.CultureInfo.InvariantCulture
        Dim cmd As New SqlCommand(Sql, Con)
        Dim varDate As DateTime

        varDate = DateTime.ParseExact(txtdate.Text, "MM/dd/yyyy", provider)
        cmd.Parameters.AddWithValue("@AttDate", Format(varDate, "MM/dd/yyyy"))
        If IDNo = "" Or IsDBNull(IDNo) Then
            cmd.Parameters.AddWithValue("@IDNo", DBNull.Value)
        Else
            cmd.Parameters.AddWithValue("@IDNo", IDNo)
        End If
        'If StudentName = "" Or IsDBNull(StudentName) Then
        '    cmd.Parameters.AddWithValue("@StudentName", DBNull.Value)
        'Else
        '    cmd.Parameters.AddWithValue("@StudentName", StudentName)
        'End If
        'If FatherName = "" Or IsDBNull(FatherName) Then
        '    cmd.Parameters.AddWithValue("@FatherName", DBNull.Value)
        'Else
        '    cmd.Parameters.AddWithValue("@FatherName", FatherName)
        'End If
        If Training = "&nbsp;" Or IsDBNull(Training) Then
            cmd.Parameters.AddWithValue("@Course", DBNull.Value)
        Else
            cmd.Parameters.AddWithValue("@Course", Training)
        End If


        'If TrainingBatch = "&nbsp;" Or IsDBNull(TrainingBatch) Then
        '    cmd.Parameters.AddWithValue("@TrainingBatch", DBNull.Value)
        'Else
        '    cmd.Parameters.AddWithValue("@TrainingBatch", TrainingBatch)
        'End If
        'If BatchTiming = "&nbsp;" Or IsDBNull(BatchTiming) Then
        '    cmd.Parameters.AddWithValue("@BatchTiming", DBNull.Value)
        'Else
        '    cmd.Parameters.AddWithValue("@BatchTiming", BatchTiming)
        'End If
        If BatchGroup = "&nbsp;" Or IsDBNull(BatchGroup) Then
            cmd.Parameters.AddWithValue("@BatchGroup", DBNull.Value)
        Else
            cmd.Parameters.AddWithValue("@BatchGroup", BatchGroup)
        End If
        If LectDelievered = "" Or IsDBNull(LectDelievered) Then
            cmd.Parameters.AddWithValue("@LectDelievered", DBNull.Value)
        Else
            cmd.Parameters.AddWithValue("@LectDelievered", LectDelievered)
        End If
        If LectAttended = "" Or IsDBNull(LectAttended) Then
            cmd.Parameters.AddWithValue("@LectAttended", DBNull.Value)
        Else
            cmd.Parameters.AddWithValue("@LectAttended", LectAttended)
        End If
        If UserID = "" Or IsDBNull(UserID) Then
            cmd.Parameters.AddWithValue("@UserID", DBNull.Value)
        Else
            cmd.Parameters.AddWithValue("@UserID", UserID)
        End If
        cmd.ExecuteNonQuery()
        cmd.Dispose()
        Con.Close()
    End Sub
    Protected Sub cmdSave_Click(ByVal sender As Object, ByVal e As System.EventArgs)

        If txtdate.Text = "" Then
            txtdate.Focus()
            lblMsg.Text = "Please select date"
            Exit Sub
        End If
        Dim varclass As New Class1
        Dim varDate As Date
        varDate = Convert.ToDateTime(txtdate.Text)


        If varclass.checkdate(Format(varDate, "MM/dd/yyyy"), Session("myck"), drpgroup.Text) = True Then
            lblMsg.Text = "Attendance already Saved for Batch : " & drpgroup.Text & " - Date : " & txtdate.Text & " "
            Exit Sub
        End If

        '------------
        'Dim sql1 As String
        'Dim da As SqlDataAdapter
        'Dim ds As New DataSet
        'Dim cmd1 As SqlCommand
        'Dim Con As SqlConnection
        'Con = New SqlConnection(varclass.GetConnectionString(varIP))
        'Con.Open()
        'sql1 = "Select convert(varchar(11),AttDate,101) as ATTDate from thinknext.AttRecord where Attdate=@Attdate and BatchGroup=@BatchGroup and UserID=@UserID "
        'cmd1 = New SqlCommand(sql1, Con)
        ''Dim vardate As DateTime
        ''vardate = Format(DateTime, "MM/dd/yyyy")

        'cmd1.Parameters.AddWithValue("@Attdate", Format(varDate, "MM/dd/yyyy"))
        'cmd1.Parameters.AddWithValue("@UserID", Request.Cookies("Myck").Value)
        'cmd1.Parameters.AddWithValue("@BatchGroup", drpgroup.Text)
        'da = New SqlDataAdapter(cmd1)
        'da.Fill(ds, "AttRecords")
        'If ds.Tables("AttRecords").Rows.Count > 0 Then
        '    Exit Sub

        'Else
        Dim session1 As String = drpCourse.Text
        Dim row As Integer
        While row < gvAttendance.Rows.Count
            Dim UserID, StudentName, FatherName, Training, TrainingBatch, BatchTiming, BatchGroup, EnquiryNo As String
            Dim LectDelievered, LectAttended As New TextBox
            Dim IDNo As New Label

            UserID = Session("myck")
            IDNo = gvAttendance.Rows(row).FindControl("lblIDNo")
            StudentName = gvAttendance.Rows(row).Cells(1).Text
            FatherName = gvAttendance.Rows(row).Cells(2).Text
            Training = gvAttendance.Rows(row).Cells(3).Text
            TrainingBatch = gvAttendance.Rows(row).Cells(4).Text
            BatchTiming = gvAttendance.Rows(row).Cells(5).Text
            BatchGroup = gvAttendance.Rows(row).Cells(6).Text
            EnquiryNo = gvAttendance.Rows(row).Cells(6).Text

            LectDelievered = gvAttendance.Rows(row).FindControl("LectDelivered")
            LectAttended = gvAttendance.Rows(row).FindControl("LectAttended")
            row = row + 1
            addattendence(IDNo.Text, StudentName, FatherName, Training, TrainingBatch, BatchTiming, session1, BatchGroup, LectDelievered.Text, LectAttended.Text, UserID, EnquiryNo)

        End While
        lblMsg.Text = "Attendance added Successfully"
        ' End If
    End Sub
    'Protected Sub chkSunday_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkSunday.CheckedChanged
    '    Dim rowctr As Integer
    '    While rowctr < gvAttendance.Rows.Count
    '        Dim varlectAttended, varlectDelvred As TextBox
    '        varlectAttended = gvAttendance.Rows(rowctr).FindControl("LectAttended")
    '        varlectDelvred = gvAttendance.Rows(rowctr).FindControl("LectDelivered")
    '        varlectAttended.Text = "S"
    '        varlectDelvred.Text = "S"
    '        rowctr = rowctr + 1
    '    End While
    'End Sub

    'Protected Sub chkholiday_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkholiday.CheckedChanged
    '    Dim rowctr As Integer
    '    While rowctr < gvAttendance.Rows.Count
    '        Dim varlectAttended, varlectDelvred As TextBox
    '        varlectAttended = gvAttendance.Rows(rowctr).FindControl("LectAttended")
    '        varlectDelvred = gvAttendance.Rows(rowctr).FindControl("LectDelivered")
    '        varlectAttended.Text = "H"
    '        varlectDelvred.Text = "H"
    '        rowctr = rowctr + 1
    '    End While
    'End Sub


    Protected Sub btnUpdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdate.Click
        If txtdate.Text = "" Then
            txtdate.Focus()
            lblMsg.Text = "Please select date"
            Exit Sub
        End If
        Dim varclass As New Class1
        Dim varDate As Date
        varDate = Convert.ToDateTime(txtdate.Text)


       
        Dim row As Integer
        While row < gvAttendance.Rows.Count
            Dim UserID, StudentName, FatherName, Training, TrainingBatch, BatchTiming, BatchGroup As String
            Dim LectDelievered, LectAttended As New TextBox
            Dim IDNo As New Label

            UserID = Session("myck")
            IDNo = gvAttendance.Rows(row).FindControl("lblIDNo")
            StudentName = gvAttendance.Rows(row).Cells(1).Text
            FatherName = gvAttendance.Rows(row).Cells(2).Text
            Training = gvAttendance.Rows(row).Cells(3).Text
            TrainingBatch = gvAttendance.Rows(row).Cells(4).Text
            BatchTiming = gvAttendance.Rows(row).Cells(5).Text
            BatchGroup = gvAttendance.Rows(row).Cells(6).Text

            LectDelievered = gvAttendance.Rows(row).FindControl("LectDelivered")
            LectAttended = gvAttendance.Rows(row).FindControl("LectAttended")
            row = row + 1
            UpdateAttendence(IDNo.Text, StudentName, FatherName, Training, TrainingBatch, BatchTiming, BatchGroup, LectDelievered.Text, LectAttended.Text, UserID)
            ' UpdateAttendence(
        End While
        lblMsg.Text = "Attendance Updated Successfully"
        ' End If
    End Sub


    Protected Sub cmdSave_Click1(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdSave.Click
        If txtdate.Text = "" Then
            txtdate.Focus()
            lblMsg.Text = "Please select date"
            Exit Sub
        End If
        Dim provider As System.Globalization.CultureInfo = System.Globalization.CultureInfo.InvariantCulture
        Dim varclass As New Class1
        Dim varDate As Date

        varDate = DateTime.ParseExact(txtdate.Text, "MM/dd/yyyy", provider)



        If varclass.checkdate(varDate, Session("myck"), drpgroup.Text) = True Then
            lblMsg.Text = "Attendance already Saved for Batch : " & drpgroup.Text & " - Date : " & txtdate.Text & " "
            Exit Sub
        End If
        Dim Session1 As String = drpCourse.Text
        
        Dim row As Integer
        While row < gvAttendance.Rows.Count
            Dim UserID, StudentName, FatherName, Training, TrainingBatch, BatchTiming, BatchGroup, EnquiryNo As String
            Dim LectDelievered, LectAttended As New TextBox
            Dim IDNo As New Label

            UserID = Session("myck")
            IDNo = gvAttendance.Rows(row).FindControl("lblIDNo")
            StudentName = gvAttendance.Rows(row).Cells(1).Text
            FatherName = gvAttendance.Rows(row).Cells(2).Text
            Training = gvAttendance.Rows(row).Cells(3).Text
            TrainingBatch = gvAttendance.Rows(row).Cells(4).Text
            BatchTiming = gvAttendance.Rows(row).Cells(5).Text
            BatchGroup = gvAttendance.Rows(row).Cells(6).Text
            EnquiryNo = gvAttendance.Rows(row).Cells(7).Text
            LectDelievered = gvAttendance.Rows(row).FindControl("LectDelivered")
            LectAttended = gvAttendance.Rows(row).FindControl("LectAttended")
            row = row + 1
            'addattendence(IDNo.Text, StudentName, FatherName, Training, TrainingBatch, BatchTiming, BatchGroup, LectDelievered.Text, LectAttended.Text, UserID, EnquiryNo)
            addattendence(IDNo.Text, StudentName, FatherName, Training, TrainingBatch, BatchTiming, Session1, BatchGroup, LectDelievered.Text, LectAttended.Text, UserID, EnquiryNo)

        End While
        lblMsg.Text = "Attendance added Successfully"
        ' End If
    End Sub

    
    Protected Sub drpgroup_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles drpgroup.SelectedIndexChanged

    End Sub
    
   

    Protected Sub lbremove_Click(ByVal sender As Object, ByVal e As System.EventArgs)

        Dim row As GridViewRow = CType(CType(sender, Control).Parent.Parent, GridViewRow)
        Dim ab As Int32 = row.RowIndex

        Dim str As Label = CType(row.Cells(0).FindControl("lblIDNo"), Label)
        Dim str1 As String = str.Text

        row.Visible = False
        Dim Sh As Boolean = row.Visible
    End Sub
End Class
