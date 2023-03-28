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
Imports iTextSharp.text
Imports iTextSharp.text.pdf
Imports iTextSharp.text.html.simpleparser
Imports System.Configuration

Partial Class ShowAttendance

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
        sql = "select Distinct Session from mastersession  where FranchiseCode='" + txtfranchiseCode.Text + "' and BrandName='THINKNEXT TRAINING'"
        da = New SqlDataAdapter(sql, Con)
        ds = New DataSet
        da.Fill(ds, "MasterCourses")
        For i = 0 To ds.Tables("MasterCourses").Rows.Count - 1
            If IsDBNull(ds.Tables("MasterCourses").Rows(i).Item("Session")) = False Then
                ddl.Items.Add(ds.Tables("MasterCourses").Rows(i).Item("Session"))
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
        sql = "select Distinct BatchName from MasterBatches where StaffIDNo='" + VAL + "' and Session='" + Course + "' And FranchiseCode='" + txtfranchiseCode.Text + "' And brandname='THINKNEXT TRAINING'"
        Dim cmd As New SqlCommand(sql, Con)
        'cmd.Parameters.AddWithValue("@Course", Course)
        da = New SqlDataAdapter(cmd)
        ds = New DataSet
        da.Fill(ds, "MasterBatches")
        For i = 0 To ds.Tables("MasterBatches").Rows.Count - 1
            If IsDBNull(ds.Tables("MasterBatches").Rows(i).Item("BatchName")) = False Then
                ddl.Items.Add(ds.Tables("MasterBatches").Rows(i).Item("BatchName"))
            End If
        Next
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
        'Dim EnquiryNo As String = ""
        'Dim sql1 As String = "select FranchiseCode from Admissions where EnquiryNo=" + EnquiryNo
        'Dim adp1 As SqlDataAdapter

        'adp1 = New SqlDataAdapter(sql1, Con)

        'Dim ds1 As New DataSet()

        'adp1.Fill(ds1)
        'Dim FC As String = ds1.Tables(0).Rows(0)(0).ToString()

        sql = "  SELECT   CONVERT(varchar, AttDate, 106) AS AttDate, IDNo, StudentName, Course, Duration, BatchGroup, LectDelievered, LectAttended "
        sql = sql & " FROM  AttRecord where Session='" + Training + "' and BatchGroup='" + Group + "'  and UserID='" + Session("myck").ToString() + "'   "           '  and FranchiseCode=@FranchiseCode







        If CheckBox1.Checked = True Then
            sql = sql & " and ATTDate = @AttDate order by IDNo ASC "
        End If
        Dim a As String
        a = Session("myck")



        Dim cmd As New SqlCommand(sql, Con)
        'cmd.Parameters.AddWithValue("@Course", Training)
        'cmd.Parameters.AddWithValue("@BatchGroup", Group)
        'cmd.Parameters.AddWithValue("@UserID", Session("myck").ToString())
        'cmd.Parameters.AddWithValue("@FranchiseCode", txtfranchiseCode.Text)
        Dim provider1 As System.Globalization.CultureInfo = System.Globalization.CultureInfo.InvariantCulture
        If CheckBox1.Checked = True Then
            Dim varDate As DateTime = DateTime.ParseExact(txtattdate.Text, "MM/dd/yyyy", provider1)

            'varDate = CDate(txtattdate.Text)
            cmd.Parameters.AddWithValue("@AttDate", varDate)
        End If
        da = New SqlDataAdapter(cmd)
        ds = New DataSet
        da.Fill(ds, "Admissions")
        If ds.Tables("Admissions").Rows.Count > 0 Then
            gvAttendance.DataSource = ds.Tables("Admissions")
            gvAttendance.DataBind()
            lbltotalrecords.Visible = True
            lbltotalrecords.Text = "Total Records:" + ds.Tables("Admissions").Rows.Count.ToString() + ""
        Else
            lblMsg.Visible = True
            lblMsg.Text = "Sorry ! No Record Found."
            gvAttendance.DataSource = Nothing
            gvAttendance.DataBind()
        End If
        Con.Close()
    End Sub


    'Sub filldate(ByVal ddl As TextBox)
    '    Dim con As New SqlConnection
    '    Dim sql As String
    '    Dim da As SqlDataAdapter
    '    Dim ds As New DataSet
    '    Dim rowctr As Integer = 0
    '    Dim varClass1 As New Class1
    '    con = New SqlConnection(varClass1.GetConnectionString(varIP))
    '    con.Open()
    '    sql = "SELECT DISTINCT CONVERT(varchar, AttDate, 106) AS AttDate FROM AttRecord ORDER BY AttDate "
    '    da = New SqlDataAdapter(sql, con)
    '    da.Fill(ds, "Course1")
    '    'ddl.Items.Clear()
    '    'ddl.Items.Add("Select")
    '    If ds.Tables("Course1").Rows.Count > 0 Then
    '        While rowctr < ds.Tables("Course1").Rows.Count
    '            If IsDBNull(ds.Tables("Course1").Rows(rowctr).Item("AttDate")) = False Then
    '                ddl.Items.Add(ds.Tables("Course1").Rows(rowctr).Item("AttDate"))
    '            End If
    '            rowctr = rowctr + 1
    '        End While
    '    End If
    '    con.Close()
    'End Sub


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
        lblMsg.Visible = False
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
    'Public Overrides Sub VerifyRenderingInServerForm(ByVal control As Control)


    'End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        If Session("myck") = "" Then
            Response.Redirect("~/default.aspx")
        End If
        lblMsg.Visible = False
        If Page.IsPostBack = False Then
            txtdate.Text = Format(System.DateTime.Now.Date, "MM/dd/yyyy")
            gvAttendance.Visible = True
            lblMsg.Visible = False
            ShowCourse(drpCourse)
            ' filldate(txtattdate)
        End If
    End Sub

    Protected Sub drpCourse_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles drpCourse.SelectedIndexChanged
        If drpCourse.Text <> "Select" Then
            ShowGroup(drpCourse.Text, drpgroup)
        End If
    End Sub

    Protected Sub btnshow_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnshow.Click

        Session("Sess") = drpCourse.Text
        If drpCourse.Text = "Select" Then
            lblMsg.Text = "Please Select Program  "
            Exit Sub
        End If
        If drpgroup.Text = "Select" Then
            lblMsg.Text = "Please Select Group  "
            Exit Sub
        End If

        If drpgroup.Text <> "Select" Then
            ShowStudents(drpCourse.Text, drpgroup.Text)
        End If
        gvAttendance.Visible = True
        drpCourse.Items(drpCourse.SelectedIndex).Selected = False
        drpgroup.Items(drpgroup.SelectedIndex).Selected = False
    End Sub


    Protected Sub btnAddLectDelivered_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAddLectDelivered.Click

        If IsNumeric(textBoxLectDelivered.Text) = False Then
            lblMsg.Text = "Lecture Delivered should be Numeric"
            Exit Sub
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
        If IsNumeric(textBoxLectAttended.Text) = False Then
            lblMsg.Text = "Lecture Attended should be Numeric"
            Exit Sub
        End If


        Dim rowctr As Integer = 0
        While rowctr < gvAttendance.Rows.Count
            Dim varlectAttended As TextBox
            varlectAttended = gvAttendance.Rows(rowctr).FindControl("LectAttended")
            varlectAttended.Text = textBoxLectAttended.Text
            rowctr = rowctr + 1
        End While
    End Sub



    ''Sub addattendence(ByVal IDNo As String, ByVal StudentName As String, ByVal FatherName As String, ByVal Training As String, ByVal TrainingBatch As String, ByVal BatchTiming As String, ByVal BatchGroup As String, ByVal LectDelievered As String, ByVal LectAttended As String, ByVal UserID As String)



    ''    varIP = Request.ServerVariables("SERVER_NAME").ToString
    ''    Dim Con As SqlConnection
    ''    Dim varClass1 As New Class1
    ''    Con = New SqlConnection(varClass1.GetConnectionString(varIP))
    ''    Con.Open()



    ''    Dim Sql As String = "Insert into thinknext.AttRecord (AttDate, IDNo, StudentName, FatherName, Training, TrainingBatch, BatchTiming, BatchGroup, LectDelievered, LectAttended, UserID,FranchiseCode) "
    ''    Sql = Sql & " values ( @AttDate, @IDNo, @StudentName, @FatherName, @Training, @TrainingBatch, @BatchTiming, @BatchGroup, @LectDelievered, @LectAttended, @UserID,@FranchiseCode) "
    ''    Dim cmd As New SqlCommand(Sql, Con)
    ''    cmd.Parameters.AddWithValue("AttDate", Format("MM/dd/yyyy", System.DateTime.Now.Date.ToString))
    ''    If IDNo = "" Or IsDBNull(IDNo) Then
    ''        cmd.Parameters.AddWithValue("@IDNo", DBNull.Value)
    ''    Else
    ''        cmd.Parameters.AddWithValue("@IDNo", IDNo)
    ''    End If
    ''    If StudentName = "" Or IsDBNull(StudentName) Then
    ''        cmd.Parameters.AddWithValue("@StudentName", DBNull.Value)
    ''    Else
    ''        cmd.Parameters.AddWithValue("@StudentName", StudentName)
    ''    End If
    ''    If FatherName = "" Or IsDBNull(FatherName) Then
    ''        cmd.Parameters.AddWithValue("@FatherName", DBNull.Value)
    ''    Else
    ''        cmd.Parameters.AddWithValue("@FatherName", FatherName)
    ''    End If
    ''    If Training = "&nbsp;" Or IsDBNull(Training) Then
    ''        cmd.Parameters.AddWithValue("@Training", DBNull.Value)
    ''    Else
    ''        cmd.Parameters.AddWithValue("@Training", Training)
    ''    End If


    ''    If TrainingBatch = "&nbsp;" Or IsDBNull(TrainingBatch) Then
    ''        cmd.Parameters.AddWithValue("@TrainingBatch", DBNull.Value)
    ''    Else
    ''        cmd.Parameters.AddWithValue("@TrainingBatch", TrainingBatch)
    ''    End If
    ''    If BatchTiming = "&nbsp;" Or IsDBNull(BatchTiming) Then
    ''        cmd.Parameters.AddWithValue("@BatchTiming", DBNull.Value)
    ''    Else
    ''        cmd.Parameters.AddWithValue("@BatchTiming", BatchTiming)
    ''    End If
    ''    If BatchGroup = "&nbsp;" Or IsDBNull(BatchGroup) Then
    ''        cmd.Parameters.AddWithValue("@BatchGroup", DBNull.Value)
    ''    Else
    ''        cmd.Parameters.AddWithValue("@BatchGroup", BatchGroup)
    ''    End If
    ''    If LectDelievered = "" Or IsDBNull(LectDelievered) Then
    ''        cmd.Parameters.AddWithValue("@LectDelievered", DBNull.Value)
    ''    Else
    ''        cmd.Parameters.AddWithValue("@LectDelievered", LectDelievered)
    ''    End If
    ''    If LectAttended = "" Or IsDBNull(LectAttended) Then
    ''        cmd.Parameters.AddWithValue("@LectAttended", DBNull.Value)
    ''    Else
    ''        cmd.Parameters.AddWithValue("@LectAttended", LectAttended)
    ''    End If
    ''    If UserID = "" Or IsDBNull(UserID) Then
    ''        cmd.Parameters.AddWithValue("@UserID", DBNull.Value)
    ''    Else
    ''        cmd.Parameters.AddWithValue("@UserID", UserID)
    ''    End If
    ''    cmd.Parameters.AddWithValue("@FranchiseCode", txtfranchiseCode.Text)
    ''    cmd.ExecuteNonQuery()
    ''    cmd.Dispose()
    ''    Con.Close()
    ''End Sub

    Sub UpdateAttendence(ByVal IDNo As String, ByVal StudentName As String, ByVal Training As String, ByVal TrainingBatch As String, ByVal Sessions As String, ByVal BatchGroup As String, ByVal LectDelievered As String, ByVal LectAttended As String, ByVal UserID As String)
        varIP = Request.ServerVariables("SERVER_NAME").ToString
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()
        Dim Sql As String = "Update AttRecord set LectDelievered=@LectDelievered, LectAttended=@LectAttended where "
        Sql = Sql & "AttDate=@AttDate and Session=@Session and BatchGroup=@BatchGroup and Course=@Course and "
        Sql = Sql & "Duration=@Duration  and BatchGroup=@BatchGroup and UserID=@UserID and IDNo=@IDNo and FranchiseCode=@FranchiseCode and BrandName='THINKNEXT TRAINING'"
        Dim provider As System.Globalization.CultureInfo = System.Globalization.CultureInfo.InvariantCulture
        Dim cmd As New SqlCommand(Sql, Con)
        Dim varDate As DateTime

        varDate = DateTime.ParseExact(txtdate.Text, "MM/dd/yyyy", provider)
        cmd.Parameters.AddWithValue("@AttDate", varDate)
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


        If TrainingBatch = "&nbsp;" Or IsDBNull(TrainingBatch) Then
            cmd.Parameters.AddWithValue("@Duration", DBNull.Value)
        Else
            cmd.Parameters.AddWithValue("@Duration", TrainingBatch)
        End If
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


        '-------Session Start--------

        If Sessions = "&nbsp;" Or IsDBNull(Sessions) Then
            cmd.Parameters.AddWithValue("@Session", DBNull.Value)
        Else
            cmd.Parameters.AddWithValue("@Session", Sessions)
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
        cmd.Parameters.AddWithValue("@FranchiseCode", txtfranchiseCode.Text)
        cmd.Parameters.AddWithValue("@BrandName", "THINKNEXT TRAINING")
        cmd.ExecuteNonQuery()
        cmd.Dispose()
        Con.Close()
        lblMsg.Visible = True
        textBoxLectAttended.Text = ""
        textBoxLectDelivered.Text = ""
        gvAttendance.Visible = False


        lblMsg.Text = "Data Successfully Updated"


    End Sub

    Protected Sub cmdSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdSave.Click
        Dim row As Integer
        Dim Sessions As String = Session("Sess")
        While row < gvAttendance.Rows.Count
            Dim UserID, StudentName, Training, TrainingBatch, BatchGroup As String
            Dim LectDelievered, LectAttended As New TextBox
            Dim IDNo As New Label

            UserID = Session("myck")
            IDNo = gvAttendance.Rows(row).FindControl("lblIDNo")
            StudentName = gvAttendance.Rows(row).Cells(2).Text
            '  FatherName = gvAttendance.Rows(row).Cells(2).Text
            Training = gvAttendance.Rows(row).Cells(3).Text
            TrainingBatch = gvAttendance.Rows(row).Cells(4).Text
            ' BatchTiming = gvAttendance.Rows(row).Cells(5).Text
            BatchGroup = gvAttendance.Rows(row).Cells(5).Text

            LectDelievered = gvAttendance.Rows(row).FindControl("LectDelivered")
            LectAttended = gvAttendance.Rows(row).FindControl("LectAttended")
            row = row + 1
            UpdateAttendence(IDNo.Text, StudentName, Training, TrainingBatch, Sessions, BatchGroup, LectDelievered.Text, LectAttended.Text, UserID)
        End While



    End Sub

    Protected Sub CheckBox1_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles CheckBox1.CheckedChanged
        If CheckBox1.Checked = True Then
            txtattdate.Enabled = True
        Else
            txtattdate.Enabled = False
        End If
    End Sub

    
    'Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
    '    If drpCourse.Text = "Select" Then
    '        lblMsg.Text = "Please Select Program  "
    '        Exit Sub
    '    End If
    '    If drpgroup.Text = "Select" Then
    '        lblMsg.Text = "Please Select Group  "
    '        Exit Sub
    '    End If

    '    If drpgroup.Text <> "Select" Then
    '        ShowStudents(drpCourse.Text, drpgroup.Text)
    '    End If

    '    drpCourse.Items(drpCourse.SelectedIndex).Selected = False
    '    drpgroup.Items(drpgroup.SelectedIndex).Selected = False
    'End Sub

    Protected Sub drpgroup_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles drpgroup.SelectedIndexChanged

    End Sub
End Class
