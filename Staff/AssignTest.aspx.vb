Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports System.IO

Partial Class Admin_AssignTest
    Inherits System.Web.UI.Page
    Dim varIP As String


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        If Session("myck") = "" Then
            Response.Redirect("~/default.aspx")
        End If
        If Page.IsPostBack = False Then

            ShowCourse(drpCourse)
        End If
    End Sub
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
        sql = "select Distinct BatchName from MasterBatches where StaffIDNo='" + VAL + "' and Session='" + Course + "' And FranchiseCode='" + txtfranchise.Text + "' And brandname='THINKNEXT TRAINING'"
        Dim cmd As New SqlCommand(sql, Con)
        'cmd.Parameters.AddWithValue("@Course", Course)
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
        ' cmd.Parameters.AddWithValue("@Course", Training)
        'cmd.Parameters.AddWithValue("@BatchGroup", Group)
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

    Protected Sub btnshow_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnshow.Click
        If drpgroup.Text <> "Select" Then
            ShowStudents(drpCourse.Text, drpgroup.Text)
        Else

        End If
    End Sub

    Protected Sub cmdSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdSave.Click
        If drpCourse.SelectedIndex = 0 Then
            lblMessage.Text = "Please Select Program.."
            Return
        End If
        If drpgroup.SelectedIndex = 0 Then
            lblMessage.Text = "Please Select Group.."
            Return
        End If
        If dlltesttype.SelectedIndex = 0 Then
            lblMessage.Text = "Please Select Test type.."
            Return
        End If

        Dim varclass As New Class1
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
            row = row + 1
            AddAssignTest(IDNo.Text, StudentName, FatherName, Training, TrainingBatch, BatchTiming, BatchGroup, UserID, dlltesttype.Text)

        End While
        lblMessage.Visible = False
        lblMsg.Text = "Successfully Assign the Test"

    End Sub
    Sub AddAssignTest(ByVal IDNo As String, ByVal StudentName As String, ByVal FatherName As String, ByVal Training As String, ByVal TrainingBatch As String, ByVal BatchTiming As String, ByVal BatchGroup As String, ByVal UserID As String, ByVal TestType As String)
        varIP = Request.ServerVariables("SERVER_NAME").ToString
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()
        Dim Sql As String = "Insert into AssignTest (IDNo, StudentName, FatherName, Course, TrainingBatch, BatchTiming, BatchGroup,Status ,UserID,TestType,FranchiseCode) "
        Sql = Sql & " values (@IDNo, @StudentName, @FatherName, @Course, @TrainingBatch, @BatchTiming, @BatchGroup,@Status, @UserID,@TestType,@FranchiseCode) "
        Dim cmd As New SqlCommand(Sql, Con)
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
            cmd.Parameters.AddWithValue("@TrainingBatch", DBNull.Value)
        Else
            cmd.Parameters.AddWithValue("@TrainingBatch", TrainingBatch)
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

        cmd.Parameters.AddWithValue("@Status", "Yes")
        cmd.Parameters.AddWithValue("@TestType", TestType)

        If UserID = "" Or IsDBNull(UserID) Then
            cmd.Parameters.AddWithValue("@UserID", DBNull.Value)
        Else
            cmd.Parameters.AddWithValue("@UserID", UserID)
        End If
        cmd.Parameters.AddWithValue("@FranchiseCode", txtfranchise.Text)

        cmd.ExecuteNonQuery()
        cmd.Dispose()
        Con.Close()
    End Sub

    Protected Sub drpCourse_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles drpCourse.SelectedIndexChanged
        If drpCourse.Text <> "Select" Then
            ShowGroup(drpCourse.Text, drpgroup)
        End If
    End Sub

    Protected Sub txtfranchise_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtfranchise.TextChanged

    End Sub

    Sub GetCourse(ByVal ddl As DropDownList, ByVal DDl2 As DropDownList)
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
        da.Fill(ds, "MasterCourses")
        For i = 0 To ds.Tables("MasterCourses").Rows.Count - 1
            If IsDBNull(ds.Tables("MasterCourses").Rows(i).Item("Session")) = False Then
                ddl.Items.Add(ds.Tables("MasterCourses").Rows(i).Item("Session"))
            End If
        Next
        Con.Close()
    End Sub
End Class
