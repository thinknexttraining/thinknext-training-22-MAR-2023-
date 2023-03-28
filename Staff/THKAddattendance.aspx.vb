Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports System.IO
Partial Class Staff_THKAddattendance
    Inherits System.Web.UI.Page
    Shared objTable As New DataTable
    Dim RowCtr As Integer
    Dim IDNo1 As String
    Dim Sql As String
    Dim ClassRollNo1 As Label
    Dim Name1 As Label
    Dim FatherName1 As Label
    Dim txtDate1 As Date
    Dim LectDelivered As TextBox
    Dim LectAttended As TextBox
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
        Con.Close()
    End Sub

    Protected Sub btnshow_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnshow.Click
        varIP = Request.ServerVariables("SERVER_NAME").ToString
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()
        Dim da As SqlDataAdapter
        Dim ds As New DataSet
        Dim Sql As String
        Sql = "select B.IDNo,A.StudentName,A.FatherName,A.Duration,A.Course,M.BatchTimings,B.BatchName,A.EnquiryNo from Admissions as A inner join BatchMembers as B on A.IDNo=B.IDNo inner join MasterBatches as M on B.BatchName=M.BatchName where B.BatchName='" + drpgroup.Text + "' and M.Session='" + drpSession.Text + "' and M.BrandName='THINKNEXT TRAINING' and M.Franchisecode='TNK101' order by B.IDNo ASC"
        da = New SqlDataAdapter(Sql, Con)
        da.Fill(ds, "AttRecords1")

        If ds.Tables("AttRecords1").Rows.Count = 0 Then
            lblMsg.Visible = True
            lblMsg.Text = "No record found"
            Con.Close()
            Exit Sub

        End If
        ViewState("AttAdedUserID") = ""
        objTable = ds.Tables("AttRecords1")
        objTable.Columns.Add("LecturesDelivered")
        objTable.Columns.Add("LecturesAttended")

        Dim Sql1 As String
        Dim da1 As SqlDataAdapter
        Dim ds1 As New DataSet
        RowCtr = 0
        Dim cmd As SqlCommand
        Dim varsubjectgroup1 As String
        Dim varAttend As TextBox
        Dim varChk As CheckBox
        While RowCtr < objTable.Rows.Count
            If IsDBNull(objTable.Rows(RowCtr).Item("IDNo")) = False Then
                IDNo1 = objTable.Rows(RowCtr).Item("IDNo")
            End If
            Sql1 = "Select LectDelievered, LectAttended,UserID from AttRecord "

            Sql1 = Sql1 & " where session='" & drpSession.Text & "' and batchGroup='" & drpgroup.Text & "' and attdate=@AttDate and FranchiseCode='TNK101' and BrandName='THINKNEXT TRAINING'"
            Sql1 = Sql1 & " and IDNo='" & IDNo1 & "' "

            cmd = New SqlCommand(Sql1, Con)
            txtDate1 = Convert.ToDateTime(txtdate.Text)
            cmd.Parameters.AddWithValue("@AttDate", Format(txtDate1, "MM/dd/yyyy"))
            'End If
            da1 = New SqlDataAdapter(cmd)
            da1.Fill(ds1, "AttRecords2")
            If ds1.Tables("AttRecords2").Rows.Count > 0 Then
                ViewState("AttAdedUserID") = ds1.Tables("AttRecords2").Rows(0).Item("UserID").ToString
                objTable.Rows(RowCtr).Item("LecturesDelivered") = ds1.Tables("AttRecords2").Rows(0).Item("LectDelievered")
                objTable.Rows(RowCtr).Item("LecturesAttended") = ds1.Tables("AttRecords2").Rows(0).Item("LectAttended")
                
            Else

            End If
            ds1.Tables("AttRecords2").Rows.Clear()
            RowCtr = RowCtr + 1
        End While
        gvAttendance.Visible = True
        gvAttendance.DataSource = objTable
        gvAttendance.DataBind()
        gvAttendance.Width = 900
        RowCtr = 0
        While RowCtr < gvAttendance.Rows.Count
            varAttend = gvAttendance.Rows(RowCtr).FindControl("txtLectAttended")
            varAttend.Text = objTable.Rows(RowCtr).Item("LecturesAttended").ToString()
            varChk = gvAttendance.Rows(RowCtr).FindControl("chklecture")
            If varAttend.Text <> "" Then
                If varAttend.Text <> "0" Then
                    varChk.Checked = True
                Else
                    varChk.Checked = False
                End If
                'End If
            End If
            RowCtr = RowCtr + 1
        End While
        If gvAttendance.Rows.Count = 0 Then
            lblMsg.Visible = True
            lblMsg.ForeColor = Drawing.Color.Red
            lblMsg.Text = "No Record Found"
            gvAttendance.DataSource = Nothing
            gvAttendance.DataBind()
            lbltotalrecords.Text = ""
            Exit Sub
        End If
        lblMsg.Visible = False
        lbltotalrecords.Visible = True
        lbltotalrecords.Text = "Total Records : " & gvAttendance.Rows.Count
        Con.Close()
    End Sub
    Function CheckGridMaxDeliveredLecValue() As Boolean
        Dim varMax As Integer
        varIP = Request.ServerVariables("SERVER_NAME").ToString
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()
        'sql = "Select MaxLectDelivered from MasterLectDelivered"
        'Dim cmd As New SqlCommand(sql, Con)
        'Dim dr As SqlDataReader
        'dr = cmd.ExecuteReader()
        'If dr.Read() Then
        '    varMax = CInt(dr.GetValue(0).ToString)
        'End If
        varMax = 1
        For i = 0 To gvAttendance.Rows.Count - 1
            Dim objLecDelivered As TextBox = DirectCast(gvAttendance.Rows(i).FindControl("txtLectDelivered"), TextBox)
            Dim objLecAttended As TextBox = DirectCast(gvAttendance.Rows(i).FindControl("txtLectAttended"), TextBox)
            Dim objIdNO As Label = DirectCast(gvAttendance.Rows(i).FindControl("lblIDNo"), Label)
            If objLecDelivered.Text <> "" Then
                If IsNumeric(objLecDelivered.Text) = False Then
                    lblTotalLectures.Visible = True
                    lblTotalLectures.Text = "Only Fill Integer Value."
                    Return True
                End If
                If IsNumeric(objLecAttended.Text) = False Then
                    lblTotalLectures.Visible = True
                    lblTotalLectures.Text = "Only Fill Integer Value."
                    Return True

                End If
                If CInt(objLecDelivered.Text) > CInt(varMax) Then
                    lblMsg.Visible = True
                    lblMsg.Text = "You Can't Set Lecture Delivered More Than " & varMax & "  ."
                    Return True
                End If
            Else
                lblMsg.Text = "You Can't Set Lecture Delivered Empty."
                Return True
            End If
            If IsNumeric(objLecAttended.Text) = True Then
                If CInt(objLecAttended.Text) > CInt(varMax) Then
                    lblMsg.Visible = True
                    lblMsg.Text = "You Can't Set Lecture Attended More Than " & varMax & " ."
                    Return True
                End If
            End If
        Next
        Return False
    End Function
    Protected Sub cmdSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdSave.Click
        If CheckGridMaxDeliveredLecValue() = True Then
            Exit Sub
        End If
        Save()
    End Sub

    Sub Save()
        varIP = Request.ServerVariables("SERVER_NAME").ToString
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))

        Dim RowCtr As Integer = 0
        Dim txtDate1 As Date
        Dim labelIDNo As New Label
        lblMsg.Text = ""
        Dim inscmd As New SqlCommand
        Dim txtLectDelivered1 As New TextBox
        Dim txtLectAttended1 As New TextBox
        Dim varSystem As New DropDownList
        Dim varDuration As New Label
        Dim varIDNo As New Label
        Dim varBatchTiming As New Label
        Dim varBatchGroup As New Label
        Dim varCourse As New Label
        Dim varFatherName As New Label
        Dim varEnquiryNo As New Label
        Dim varlectdelivered As New TextBox
        Dim varlectattended As New TextBox
        RowCtr = 0
        If txtdate.Text = "" Then
            lblMsg.Visible = True
            lblMsg.Text = "Please specify Date"
            gvAttendance.DataSource = Nothing
            gvAttendance.DataBind()
            lbltotalrecords.Text = ""
            Exit Sub
        End If
        If IsDate(txtdate.Text) = False Then
            lblMsg.Visible = True
            lblMsg.Text = "Invalid Date"
            gvAttendance.DataSource = Nothing
            gvAttendance.DataBind()
            lbltotalrecords.Text = ""
            Exit Sub
        End If
        txtDate1 = Convert.ToDateTime(txtdate.Text)
        ' End If
        If txtDate1 > Format(System.DateTime.Now.Date, "MM/dd/yyyy") Then
            lblMsg.Visible = True
            lblMsg.Text = "Date not greater than Today Date"
            gvAttendance.DataSource = Nothing
            gvAttendance.DataBind()
            lbltotalrecords.Text = ""
            Exit Sub
        End If
        If textBoxLectDelivered.Text = "" Then
            lblMsg.Visible = True
            lblMsg.Text = "Please Set Lecture Delivered"
            Exit Sub
        End If
        lblMsg.Visible = False
        Con.Open()
        inscmd.Connection = Con
        Dim ctr As Integer
        Dim vartotPresent As Integer = 0
        Dim vartotAbsent As Integer = 0
        Dim vartotLeave As Integer = 0
        While RowCtr < gvAttendance.Rows.Count

            If IsDBNull(gvAttendance.Rows(RowCtr).FindControl("txtLectDelivered")) = True Then
                varlectdelivered.Text = ""
            Else
                varlectdelivered = gvAttendance.Rows(RowCtr).FindControl("txtLectDelivered")
            End If
            If IsDBNull(gvAttendance.Rows(RowCtr).FindControl("txtLectAttended")) = True Then
                varlectattended.Text = ""
            Else
                varlectattended = gvAttendance.Rows(RowCtr).FindControl("txtLectAttended")
            End If
            If varlectdelivered.Text = "" Then
                lblMsg.Visible = True
                lblMsg.Text = "Please specify Lectures Delivered"
                Exit Sub
            End If
            If IsNumeric(varlectdelivered.Text) = True Then
                If varlectdelivered.Text < 0 Then
                    lblMsg.Visible = True
                    lblMsg.Text = "Lectures Delivered can not have Negative value."
                    Exit Sub
                End If
            End If
            If varlectattended.Text = "" Then
                lblMsg.Visible = True
                lblMsg.Text = "Please specify Lectures Attended"
                Exit Sub
            End If
            If IsNumeric(varlectattended.Text) = False Then
                If varlectattended.Text <> "L" And varlectattended.Text <> "L" Then
                    lblMsg.Visible = True
                    lblMsg.Visible = True
                    lblMsg.Text = "Please specify 'L' for Leave in Lectures Attended"
                    Exit Sub
                End If
            End If
            If IsNumeric(varlectattended.Text) = True Then
                If CInt(varlectattended.Text) > CInt(varlectdelivered.Text) Then
                    lblMsg.Visible = True
                    lblMsg.Text = "Lectures Attended can not higher value than delivered."
                    Exit Sub
                End If
            End If
            RowCtr = RowCtr + 1
        End While
        RowCtr = 0

        Dim delcmd As SqlCommand
        Dim sqldel As String
        sqldel = "delete from AttRecord where BatchGroup='" & drpgroup.Text & "' and  AttDate=@AttDate and Session='" & drpSession.Text & "' And BrandName='THINKNEXT TRAINING' and Franchisecode='TNK101'  "
        delcmd = New SqlCommand(sqldel, Con)
        delcmd.Parameters.AddWithValue("@AttDate", Format(txtDate1, "MM/dd/yyyy"))
        'End If
        delcmd.Connection = Con
        delcmd.ExecuteNonQuery()
        delcmd.Dispose()
        '---Insert-----
        lblMsg.Visible = False
        RowCtr = 0
        Dim varStudentName As New Label
        Dim vargroupName As New Label
        Dim tmp As String = ""
        Dim UserID As String
        UserID = Session("myck")
        RowCtr = 0
        vartotLeave = 0
        vartotAbsent = 0
        vartotPresent = 0
        While RowCtr < gvAttendance.Rows.Count
            If IsDBNull(gvAttendance.Rows(RowCtr).FindControl("lblStudentName")) = True Then
                varStudentName.Text = ""
            Else
                varStudentName = gvAttendance.Rows(RowCtr).FindControl("lblStudentName")
            End If
            If IsDBNull(gvAttendance.Rows(RowCtr).FindControl("lblFatherName")) = True Then
                varFatherName.Text = ""
            Else
                varFatherName = gvAttendance.Rows(RowCtr).FindControl("lblFatherName")
            End If

            If IsDBNull(gvAttendance.Rows(RowCtr).FindControl("lblCourse")) = True Then
                varCourse.Text = ""
            Else
                varCourse = gvAttendance.Rows(RowCtr).FindControl("lblCourse")
            End If
            varIDNo = gvAttendance.Rows(RowCtr).FindControl("lblIDNo")
            varDuration = gvAttendance.Rows(RowCtr).FindControl("lblDuration")
            varBatchTiming = gvAttendance.Rows(RowCtr).FindControl("lblBatchTiming")
            varBatchGroup = gvAttendance.Rows(RowCtr).FindControl("lblBatchGroup")
            varEnquiryNo = gvAttendance.Rows(RowCtr).FindControl("lblEnquiryNo")
            If IsDBNull(gvAttendance.Rows(RowCtr).FindControl("txtLectDelivered")) = True Then
                varlectdelivered.Text = ""
            Else
                varlectdelivered = gvAttendance.Rows(RowCtr).FindControl("txtLectDelivered")
            End If
            If IsDBNull(gvAttendance.Rows(RowCtr).FindControl("txtLectAttended")) = True Then
                varlectattended.Text = ""
            Else
                varlectattended = gvAttendance.Rows(RowCtr).FindControl("txtLectAttended")
            End If

            lblMsg.Visible = False
            inscmd = New SqlCommand("Insert into AttRecord (AttDate, IDNo, StudentName, FatherName, Course, Duration, BatchTiming, Session,BatchGroup, LectDelievered, LectAttended, UserID,FranchiseCode,BrandName)values ( @AttDate, @IDNo, @StudentName, @FatherName, @Course, @Duration, @BatchTiming,@Session, @BatchGroup, @LectDelievered, @LectAttended, @UserID,@FranchiseCode,@BrandName)", Con)
            inscmd.Parameters.AddWithValue("@AttDate", Format(txtDate1, "MM/dd/yyyy"))
            inscmd.Parameters.AddWithValue("@IDNo", varIDNo.Text)
            inscmd.Parameters.AddWithValue("@StudentName", varStudentName.Text)
            inscmd.Parameters.AddWithValue("@FatherName", varFatherName.Text)
            inscmd.Parameters.AddWithValue("@Course", varCourse.Text)
            inscmd.Parameters.AddWithValue("@Duration", varDuration.Text)
            inscmd.Parameters.AddWithValue("@BatchTiming", varBatchTiming.Text)
            inscmd.Parameters.AddWithValue("@Session", drpSession.Text)
            inscmd.Parameters.AddWithValue("@UserID", UserID)
            inscmd.Parameters.AddWithValue("@BatchGroup", drpgroup.Text)
            inscmd.Parameters.AddWithValue("@FranchiseCode", "TNK101")
            inscmd.Parameters.AddWithValue("@BrandName", "THINKNEXT TRAINING")
            If varlectdelivered.Text = "" Then
                inscmd.Parameters.AddWithValue("@LectDelievered", DBNull.Value)
            Else
                inscmd.Parameters.AddWithValue("@LectDelievered", varlectdelivered.Text)
            End If
            If varlectattended.Text = "" Then
                inscmd.Parameters.AddWithValue("@LectAttended", DBNull.Value)
            Else
                inscmd.Parameters.AddWithValue("@LectAttended", varlectattended.Text)
                If varlectattended.Text = "L" Then
                    vartotLeave = vartotLeave + 1
                ElseIf varlectattended.Text = "0" Then
                    vartotAbsent = vartotAbsent + 1
                Else
                    vartotPresent = vartotPresent + 1
                End If
            End If
            inscmd.ExecuteNonQuery()
            inscmd.Dispose()
            RowCtr = RowCtr + 1
        End While
        ctr = ctr + 1
        lblTotalLectures.Text = "Total Students:- " & gvAttendance.Rows.Count & "  Present:- " & vartotPresent & "  Absent:- " & vartotAbsent & " "
        lblMsg.ForeColor = Drawing.Color.Blue
        lblMsg.Visible = True
        lblMsg.Text = "Record has been saved successfully"
        Con.Close()
    End Sub

    Protected Sub btnLecturesAttended_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLecturesAttended.Click
        Dim rowctr As Integer = 0
        Dim varlectAttended As TextBox
        If textBoxLectAttended.Text = "" Then
            lblMsg.Visible = True
            lblMsg.Text = "Please specify Lectures Attended"
            Exit Sub
        End If
        If IsNumeric(textBoxLectAttended.Text) = False Then
            If textBoxLectAttended.Text <> "L" Then
                lblMsg.Visible = True
                lblMsg.Text = "Please specify 'L' for Leave in Lectures Attended"
                Exit Sub
            End If
        End If
        If IsNumeric(textBoxLectAttended.Text) = True Then
            If textBoxLectAttended.Text < 0 Then
                lblMsg.Visible = True
                lblMsg.Text = "Lectures Attended can not have Negative value."
                Exit Sub
            End If
        End If
        If (System.Text.RegularExpressions.Regex.IsMatch(textBoxLectAttended.Text, "^[L0-9]+$")) = False Then
            lblMsg.Visible = True
            lblMsg.Text = "Invalid Lectures Attended"
            Exit Sub
        End If
        If GetMaxLectDelivered(textBoxLectAttended) <> 420 Then
            lblMsg.Visible = True
            lblMsg.Text = "You Can't Set Lecture Attended More Than " & MaxLimit
            Exit Sub
        End If
        While rowctr < gvAttendance.Rows.Count
            varlectAttended = gvAttendance.Rows(rowctr).FindControl("txtLectAttended")
            varlectAttended.Text = textBoxLectAttended.Text
            rowctr = rowctr + 1
        End While
        lblMsg.Visible = False
    End Sub
    Dim MaxLimit As Integer
    Function GetMaxLectDelivered(ByVal txtSetlectDelivered As TextBox) As Integer
        Dim varClass1 As New Class1
        Dim sql As String
        Dim Con As SqlConnection
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()
        MaxLimit = 1
        If CInt(txtSetlectDelivered.Text) <= CInt(MaxLimit) Then
            Return 420
        Else
            Return MaxLimit
        End If
        Con.Close()
    End Function

    Private Sub DisableControls(ByVal gvAttendance As Control)
        Dim lb As LinkButton = New LinkButton
        Dim l As Literal = New Literal
        Dim ddl As New DropDownList

        Dim name As String = String.Empty
        Dim i As Integer = 0
        Do While (i < gvAttendance.Controls.Count)
            If (gvAttendance.Controls(i).GetType Is GetType(DropDownList)) Then
                ddl = CType(gvAttendance.Controls(i), DropDownList)
                l.Text = ddl.Text
                gvAttendance.Controls.Remove(gvAttendance.Controls(i))
                gvAttendance.Controls.AddAt(i, l)
            ElseIf (gvAttendance.Controls(i).GetType Is GetType(CheckBox)) Then
                l.Text = CType(gvAttendance.Controls(i), CheckBox).Checked
                gvAttendance.Controls.Remove(gvAttendance.Controls(i))
                gvAttendance.Controls.AddAt(i, l)
            ElseIf (gvAttendance.Controls(i).GetType Is GetType(TextBox)) Then
                l.Text = CType(gvAttendance.Controls(i), TextBox).Text
                gvAttendance.Controls.Remove(gvAttendance.Controls(i))
                gvAttendance.Controls.AddAt(i, l)
            End If

            If gvAttendance.Controls(i).HasControls Then
                DisableControls(gvAttendance.Controls(i))
            End If
            i = (i + 1)
        Loop
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
    Private Sub PrepareGridViewForExport(ByVal gvAttendance As GridView)
        Dim l As New Literal()

        'Dim myLiteralControl As LiteralControl = New LiteralControl("ChildControl1")
        'myButton.Controls.Add(myLiteralControl)
        'myButton.Controls.AddAt(1, New LiteralControl("ChildControl2"))

        Dim name As String = [String].Empty
        Dim cmb As DropDownList
        Dim chk As CheckBox
        Dim j As Integer = 0
        For i As Integer = 0 To gvAttendance.Rows.Count - 1
            ' If gvAttendance.Rows(i).FindControl("ddlCategory") Is GetType(DropDownList) Then
            cmb = gvAttendance.Rows(i).FindControl("ddlCategory")

            l.Text = cmb.Text

            gvAttendance.Controls.Remove(cmb)

            j += 1
            chk = gvAttendance.Rows(i).FindControl("chkLecture")


            l.Text = If(chk.Checked, "True", "False")

            gvAttendance.Controls.Remove(chk)
            j += 1

        Next

    End Sub

    Public Overrides Sub VerifyRenderingInServerForm(ByVal control As System.Web.UI.Control)
        'MyBase.VerifyRenderingInServerForm(control)
    End Sub

    Protected Sub btnExport_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnExport.Click
        If gvAttendance.Rows.Count > 0 Then
            If gvAttendance.Visible = True Then
                DisableControls(gvAttendance)

                Response.ClearContent()
                Response.AddHeader("content-disposition", "attachment; filename=MyExcelFile.xls")
                Response.ContentType = "application/excel"

                Dim sw As New StringWriter()
                Dim htw As New HtmlTextWriter(sw)

                gvAttendance.RenderControl(htw)
                Response.Write(sw.ToString())
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

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("myck") = "" Then
            Response.Redirect("~/default.aspx")
        End If

        If Page.IsPostBack = False Then
            txtdate.Text = Format(System.DateTime.Now.Date, "MM/dd/yyyy")
            ShowCourse(drpSession)
        End If

    End Sub

    Protected Sub drpSession_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles drpSession.SelectedIndexChanged
        If drpSession.Text <> "Select" Then
            ShowGroup(drpSession.Text, drpgroup)
        End If
    End Sub
End Class
