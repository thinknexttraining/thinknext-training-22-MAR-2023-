Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports System.Drawing.Printing
Imports System.Runtime.InteropServices.Marshal
Imports System.IO

Partial Class Admin_AddMarks
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
        sql = "select Distinct Session from masterSession where BrandName='THINKNEXT TRAINING' and FranchiseCode='TNK101'"
        da = New SqlDataAdapter(sql, Con)
        ds = New DataSet
        da.Fill(ds, "Admissions")
        For i = 0 To ds.Tables("Admissions").Rows.Count - 1
            If IsDBNull(ds.Tables("Admissions").Rows(i).Item("Session")) = False Then
                ddl.Items.Add(ds.Tables("Admissions").Rows(i).Item("Session"))
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

        'sql = "select Distinct BatchGroup from Admissions where Course=@Course AND FranchiseCode=@FranchiseCode "
        Dim cmd As New SqlCommand(sql, Con)
        'cmd.Parameters.AddWithValue("@Course", Course)
        ' cmd.Parameters.AddWithValue("@FranchiseCode", txtfranchise.Text)
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
        sql = "select B.IDNo,A.StudentName,A.FatherName,A.Duration,A.Course,M.BatchTimings,B.BatchName,A.EnquiryNo from Admissions as A inner join BatchMembers as B on A.IDNo=B.IDNo inner join MasterBatches as M on B.BatchName=M.BatchName where B.BatchName='" + Group + "' and M.Session='" + Training + "' and M.BrandName='THINKNEXT TRAINING' and M.Franchisecode='TNK101'"
        Dim cmd As New SqlCommand(sql, Con)
        'cmd.Parameters.AddWithValue("@Course", Training)
        'cmd.Parameters.AddWithValue("@BatchGroup", Group)
        'cmd.Parameters.AddWithValue("@FranchiseCode",txtfranchise.Text)
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
        Con.Close()
    End Sub


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("myck") = "" Then
            Response.Redirect("~/default.aspx")
        End If

        If Page.IsPostBack = False Then
            txtdate.Text = Format(System.DateTime.Now.Date, "MM/dd/yyyy")
            ShowCourse(drpCourse)
        End If
    End Sub

    Protected Sub btnExport_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnExport.Click
        If gvAttendance.Rows.Count > 0 Then
            If gvAttendance.Visible = True Then
                'Response.ClearContent()
                Response.Clear()
                Response.AddHeader("content-disposition", "attachment;filename=FileName.xls")
                Response.Charset = ""
                Response.ContentType = "application/excel"


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
                lblMsg.Text = "Obtained Mark and Total Marks Should be same"
                Exit Sub
            End If
        Else
            If Val(textBoxLectAttended.Text) > Val(textBoxLectDelivered.Text) Then
                lblMsg.Text = "Obtained Mark should Not be greater Then Total Marks"
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
    Sub addattendence(ByVal IDNo As String, ByVal StudentName As String, ByVal FatherName As String, ByVal Training As String, ByVal TrainingBatch As String, ByVal BatchTiming As String, ByVal Sess As String, ByVal BatchGroup As String, ByVal LectDelievered As String, ByVal LectAttended As String, ByVal UserID As String)
        varIP = Request.ServerVariables("SERVER_NAME").ToString
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()
        Dim Sql As String = "Insert into AttMarks (AttMarksDate, IDNo, StudentName, FatherName, Course, Duration, BatchTiming,Session, BatchGroup, TotalMarks, ObtainMarks, UserID,FranchiseCode,BrandName) "
        Sql = Sql & " values ( @AttMarksDate, @IDNo, @StudentName, @FatherName, @Course, @Duration, @BatchTiming,@Session, @BatchGroup, @TotalMarks, @ObtainMarks, @UserID,@FranchiseCode,@BrandName) "
        Dim cmd As New SqlCommand(Sql, Con)
        Dim varDate As DateTime
        Dim provider As System.Globalization.CultureInfo = System.Globalization.CultureInfo.InvariantCulture

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
        If Sess = "&nbsp;" Or IsDBNull(BatchGroup) Then
            cmd.Parameters.AddWithValue("@BatchGroup", DBNull.Value)
        Else
            cmd.Parameters.AddWithValue("@BatchGroup", Sess)
        End If

        'Session Insert---

        If BatchGroup = "&nbsp;" Or IsDBNull(Sess) Then
            cmd.Parameters.AddWithValue("@Session", DBNull.Value)
        Else
            cmd.Parameters.AddWithValue("@Session", BatchGroup)
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
        cmd.Parameters.AddWithValue("@BrandName", "THINKNEXT TRAINING")

        cmd.ExecuteNonQuery()
        cmd.Dispose()
        Con.Close()
    End Sub

    Protected Sub cmdSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdSave.Click
        If txtdate.Text = "" Then
            txtdate.Focus()
            lblMsg.Text = "Please select date"
            Exit Sub
        End If
        If drpCourse.SelectedIndex = 0 Then
            lblMessages.Text = "Please select program.."
            Exit Sub
        End If
        If drpgroup.SelectedIndex = 0 Then
            lblMessages.Text = "Plese select Grup.."
            Exit Sub
        End If
        If textBoxLectDelivered.Text = "" Then
            lblMessages.Text = "Please Enter Total Marks"
            Exit Sub

        End If
        If textBoxLectAttended.Text = "" Then
            lblMessages.Text = "Please Enter Obtain Marks"
            Exit Sub
        End If
        Dim provider As System.Globalization.CultureInfo = System.Globalization.CultureInfo.InvariantCulture
        Dim varclass As New Class1
        Dim varDate As Date
        varDate = DateTime.ParseExact(txtdate.Text, "MM/dd/yyyy", provider)
        'varDate = Convert.ToDateTime(txtdate.Text)

        Dim Sess As String = drpCourse.Text
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
            addattendence(IDNo.Text, StudentName, FatherName, Training, TrainingBatch, BatchTiming, BatchGroup, Sess, LectDelievered.Text, LectAttended.Text, UserID)

        End While
        lblMsg.Text = "Marks added Successfully"
        ' End If
    End Sub

   
End Class
