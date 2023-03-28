Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports System.IO

Partial Class Admin_ShowMarks
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
        'sql = "select Distinct Courses from MasterCourses  where FranchiseCode='" + txtfranchise.Text + "' order by Courses "

        sql = "select Distinct Session from mastersession  where FranchiseCode='" + txtfranchise.Text + "' and BrandName='THINKNEXT TRAINING'"

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

        sql = "select Distinct BatchName from MasterBatches where StaffIDNo='" + VAL + "' and Session='" + Course + "' And FranchiseCode='" + txtfranchise.Text + "' And brandname='THINKNEXT TRAINING'"


        'sql = "select Distinct BatchGroup from Admissions where Course=@Course and FranchiseCode=@FranchiseCode"
        Dim cmd As New SqlCommand(sql, Con)
        cmd.Parameters.AddWithValue("@Course", Course)
        cmd.Parameters.AddWithValue("@FranchiseCode", txtfranchise.Text)
        da = New SqlDataAdapter(cmd)
        ds = New DataSet
        da.Fill(ds, "Admissions")
        For i = 0 To ds.Tables("Admissions").Rows.Count - 1
            If IsDBNull(ds.Tables("Admissions").Rows(i).Item("BatchName")) = False Then
                ddl.Items.Add(ds.Tables("Admissions").Rows(i).Item("BatchName"))
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
        sql = "  SELECT   CONVERT(varchar, AttMarksDate, 106) AS AttMarksDate, IDNo, StudentName, Course, Duration, BatchGroup, TotalMarks, ObtainMarks "
        sql = sql & " FROM AttMarks where Session=@Session and BatchGroup=@BatchGroup and UserID=@UserID and FranchiseCode=@FranchiseCode "
        If CheckBox1.Checked = True Then
            sql = sql & " and AttMarksDate = @AttMarksDate "
        End If

        Dim cmd As New SqlCommand(sql, Con)
        cmd.Parameters.AddWithValue("@Session", Training)
        cmd.Parameters.AddWithValue("@BatchGroup", Group)
        cmd.Parameters.AddWithValue("@UserID", Session("myck").ToString())
        cmd.Parameters.AddWithValue("@FranchiseCode", txtfranchise.Text)
        If CheckBox1.Checked = True Then
            Dim varDate As DateTime
            varDate = CDate(drpdate.Text)
            cmd.Parameters.AddWithValue("@AttMarksDate", varDate)
        End If
        da = New SqlDataAdapter(cmd)
        ds = New DataSet
        da.Fill(ds, "Admissions")
        If ds.Tables("Admissions").Rows.Count > 0 Then
            gvAttendance.DataSource = ds.Tables("Admissions")
            gvAttendance.DataBind()
        Else
            lblMessage.Visible = True
            lblMessage.Text = "Sorry ! No Record Found."
            gvAttendance.DataSource = Nothing
            gvAttendance.DataBind()
        End If
        Con.Close()
    End Sub
    Sub filldate(ByVal ddl As DropDownList)
        Dim con As New SqlConnection
        Dim sql As String
        Dim da As SqlDataAdapter
        Dim ds As New DataSet
        Dim rowctr As Integer = 0
        Dim varClass1 As New Class1
        con = New SqlConnection(varClass1.GetConnectionString(varIP))
        con.Open()
        sql = "SELECT DISTINCT CONVERT(varchar, AttMarksDate, 106) AS AttMarksDate FROM AttMarks where FranchiseCode='" + txtfranchise.Text + "' ORDER BY AttMarksDate "
        da = New SqlDataAdapter(sql, con)
        da.Fill(ds, "AttMarks")
        ddl.Items.Clear()
        ddl.Items.Add("Select")
        If ds.Tables("AttMarks").Rows.Count > 0 Then
            While rowctr < ds.Tables("AttMarks").Rows.Count
                If IsDBNull(ds.Tables("AttMarks").Rows(rowctr).Item("AttMarksDate")) = False Then
                    ddl.Items.Add(ds.Tables("AttMarks").Rows(rowctr).Item("AttMarksDate"))
                End If
                rowctr = rowctr + 1
            End While
        End If
        con.Close()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        If Session("myck") = "" Then
            Response.Redirect("~/default.aspx")
        End If

        If Page.IsPostBack = False Then
            txtdate.Text = Format(System.DateTime.Now.Date, "MM/dd/yyyy")

            ShowCourse(drpCourse)
            filldate(drpdate)
        End If
    End Sub

    Protected Sub drpCourse_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles drpCourse.SelectedIndexChanged
        If drpCourse.Text <> "Select" Then
            ShowGroup(drpCourse.Text, drpgroup)
        End If
    End Sub

    Protected Sub btnshow_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnshow.Click
        Session("Sesst") = drpCourse.Text
        If drpCourse.Text = "Select" Then
            lblMessage.Text = "Please Select Program  "
            Exit Sub
        End If
        If drpgroup.Text = "Select" Then
            lblMessage.Text = "Please Select Group  "
            Exit Sub
        End If

        If drpgroup.Text <> "Select" Then
            ShowStudents(drpCourse.Text, drpgroup.Text)
        End If
    End Sub

    Protected Sub btnAddLectDelivered_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAddLectDelivered.Click
        If IsNumeric(textBoxLectDelivered.Text) = False Then
            lblMessage.Text = "Lecture Delivered should be Numeric"
            Exit Sub
        End If
        If textBoxLectDelivered.Text = "" Then
            lblMessage.Text = "Fill the Marks"
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
            lblMessage.Text = "Lecture Attended should be Numeric"
            Exit Sub
        End If
        If textBoxLectAttended.Text = "" Then
            lblMessage.Text = "Fill the Marks"
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
    Sub UpdateAttendence(ByVal IDNo As String, ByVal StudentName As String, ByVal Training As String, ByVal TrainingBatch As String, ByVal sesst As String, ByVal BatchGroup As String, ByVal LectDelievered As String, ByVal LectAttended As String, ByVal UserID As String)
        varIP = Request.ServerVariables("SERVER_NAME").ToString
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()
        Dim Sql As String = "Update AttMarks set TotalMarks=@TotalMarks, ObtainMarks=@ObtainMarks where "
        Sql = Sql & "AttMarksDate=@AttMarksDate and Course=@Course and BatchGroup=@BatchGroup and Course=@Course and "
        Sql = Sql & "Duration=@Duration and session=@Session  and BatchGroup=@BatchGroup and UserID=@UserID and IDNo=@IDNo and FranchiseCode=@FranchiseCode"

        Dim cmd As New SqlCommand(Sql, Con)
        Dim provider As System.Globalization.CultureInfo = System.Globalization.CultureInfo.InvariantCulture
        Dim varDate As DateTime

        varDate = DateTime.ParseExact(txtdate.Text, "MM/dd/yyyy", provider)
        cmd.Parameters.AddWithValue("@AttMarksDate", Format(varDate, "MM/dd/yyyy"))
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



        If sesst = "&nbsp;" Or IsDBNull(sesst) Then
            cmd.Parameters.AddWithValue("@Session", DBNull.Value)
        Else
            cmd.Parameters.AddWithValue("@Session", sesst)
        End If






        If LectDelievered = "" Or IsDBNull(LectDelievered) Then
            cmd.Parameters.AddWithValue("@TotalMarks", DBNull.Value)
        Else
            cmd.Parameters.AddWithValue("@TotalMarks", LectDelievered)
        End If
        If LectAttended = "" Or IsDBNull(LectAttended) Then
            cmd.Parameters.AddWithValue("@ObtainMarks", DBNull.Value)
        Else
            cmd.Parameters.AddWithValue("@ObtainMarks", LectAttended)
        End If
        If UserID = "" Or IsDBNull(UserID) Then
            cmd.Parameters.AddWithValue("@UserID", DBNull.Value)
        Else
            cmd.Parameters.AddWithValue("@UserID", UserID)
        End If
        cmd.Parameters.AddWithValue("@FranchiseCode", txtfranchise.Text)
        cmd.ExecuteNonQuery()
        cmd.Dispose()
        Con.Close()
        lblMsg.Visible = True
        lblMsg.Text = "Data Successfully Updated"

    End Sub

    Protected Sub cmdSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdSave.Click
        If drpCourse.SelectedIndex = 0 Then
            lblMessage.Text = "Please Select Preogram.."
            Return
        End If
        If drpgroup.SelectedIndex = 0 Then
            lblMessage.Text = "please Select Group.."
            Return
        End If
        If textBoxLectDelivered.Text = "" Then
            lblMessage.Text = "Please Enter Delivered Lecture.."
            Return
        End If
        Dim sesst As String = Session("Sesst")
        Dim row As Integer
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
            UpdateAttendence(IDNo.Text, StudentName, Training, TrainingBatch, sesst, BatchGroup, LectDelievered.Text, LectAttended.Text, UserID)
        End While
        lblMsg.Text = "Update Marks Successfully"
    End Sub

    Protected Sub CheckBox1_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles CheckBox1.CheckedChanged
        If CheckBox1.Checked = True Then
            drpdate.Enabled = True
        Else
            drpdate.Enabled = False
        End If
    End Sub

    
    Protected Sub txtfranchise_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtfranchise.TextChanged

    End Sub

    Protected Sub btnExport_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnExport.Click
        If gvAttendance.Rows.Count > 0 Then
            If gvAttendance.Visible = True Then
                'Response.ClearContent()
                Response.Clear()
                Response.AddHeader("content-disposition", "attachment;filename=FileName.xls")
                Response.Charset = ""
                Response.ContentType = "application/vnd.xls"


                Dim stringWrite As System.IO.StringWriter
                stringWrite = New System.IO.StringWriter()

                Dim htmlWrite As System.Web.UI.HtmlTextWriter
                htmlWrite = New System.Web.UI.HtmlTextWriter(stringWrite)


                gvAttendance.RenderControl(htmlWrite)

                Response.Write(stringWrite.ToString())



                'Dim sw As New StringWriter()
                'Dim htw As New HtmlTextWriter(sw)

                'gvAttendance.RenderControl(htw)
                'Response.Write(sw.ToString())
                Response.End()
            Else
                lblMessage.Visible = True
                lblMessage.Text = "No record found"
                Exit Sub
            End If
        Else
            lblMessage.Visible = True
            lblMessage.Text = "No record found"
            Exit Sub
        End If
        lblMsg.Visible = False

    End Sub
    Public Overrides Sub VerifyRenderingInServerForm(ByVal control As System.Web.UI.Control)
        ' MyBase.VerifyRenderingInServerForm(control)
    End Sub
End Class
