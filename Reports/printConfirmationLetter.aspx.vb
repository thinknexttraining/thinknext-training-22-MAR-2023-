'Imports CrystalDecisions.CrystalReports.Engine
'Imports CrystalDecisions.ReportSource
'Imports CrystalDecisions.Shared
Imports System.Data.SqlClient
Imports System.Data

Partial Class Reports_printConfirmationLetter
    Inherits System.Web.UI.Page
    Public DBUser As String = "thinknext"
    Public DBPassword As String = "b3yrt98159"


    'Sub printreport(ByVal IDNO As String)
    '    Dim rpt As New ReportDocument
    '    rpt.Load(Server.MapPath("~/Reports/rptConfirmationLetter.rpt"))
    '    Dim varclass As New Class1
    '    rpt.SetDatabaseLogon(DBUser, DBPassword)
    '    Dim con As New SqlConnection
    '    Dim sql As String
    '    Dim varClass1 As New Class1
    '    con = New SqlConnection(varClass1.GetConnectionString(""))
    '    con.Open()
    '    sql = " Select EnquiryNo, ModeOfEnquiry, CollegeName, Course, Batch, IDNo, UniRollNo, convert(varchar, AdmissionDate, 101) As AdmissionDate, Training, TrainingBatch, BatchTiming, "
    '    sql = sql & "  StudentName, FatherName, MotherName, ContactNo, StudentMobileNo, FatherMobileNo, Sex, convert(varchar, DOB, 101) As DOB , EmailID, CorrespondanceAddress, PermanentAddress, "
    '    sql = sql & "   ReferenceBy, ReferenceDescription, Active, StatusCode from Admissions where IDNo =" & IDNO
    '    Dim cmd As New SqlCommand(sql, con)
    '    Dim da As New SqlDataAdapter(sql, con)
    '    Dim ds As New DataSet
    '    da.Fill(ds, "Admissions")
    '    If ds.Tables("Admissions").Rows.Count > 0 Then
    '        rpt.SetDataSource(ds.Tables(0))
    '        ' Dim Collg As TextObject
    '        ' Collg = (TextObject)rpt.ReportDefinition.Section(2).ReportObject("")

    '        'Dim Sex As String = ds.Tables("Admissions").Rows(0).Item("Sex").ToString
    '        'Dim MRS As CrystalDecisions.CrystalReports.Engine.TextObject = rpt.ReportDefinition.Sections(2).ReportObjects("txtMRMS")
    '        'If Sex = "Male" Then
    '        '    MRS.Text = "Mr."
    '        'ElseIf Sex = "Female" Then
    '        '    MRS.Text = "Mrs."
    '        'End If

    '        'Dim StudentName As CrystalDecisions.CrystalReports.Engine.TextObject = rpt.ReportDefinition.Sections(2).ReportObjects("StudentName1")
    '        'StudentName.Text = ds.Tables("Admissions").Rows(0).Item("StudentName").ToString

    '        'Dim SODO As CrystalDecisions.CrystalReports.Engine.TextObject = rpt.ReportDefinition.Sections(2).ReportObjects("txtSex")
    '        'If Sex = "Male" Then
    '        '    SODO.Text = "S/o"
    '        'ElseIf Sex = "Female" Then
    '        '    SODO.Text = "D/o"
    '        'End If

    '        'Dim FatherName1 As CrystalDecisions.CrystalReports.Engine.TextObject = rpt.ReportDefinition.Sections(2).ReportObjects("FatherName1")
    '        'FatherName1.Text = ds.Tables("Admissions").Rows(0).Item("FatherName").ToString

    '        'Dim UniRollNo1 As CrystalDecisions.CrystalReports.Engine.TextObject = rpt.ReportDefinition.Sections(2).ReportObjects("UniRollNo1")
    '        'UniRollNo1.Text = ds.Tables("Admissions").Rows(0).Item("UniRollNo").ToString

    '        'Dim Course1 As CrystalDecisions.CrystalReports.Engine.TextObject = rpt.ReportDefinition.Sections(2).ReportObjects("Course1")
    '        'Course1.Text = ds.Tables("Admissions").Rows(0).Item("Course").ToString

    '        'Dim TrainingBatch1 As CrystalDecisions.CrystalReports.Engine.TextObject = rpt.ReportDefinition.Sections(2).ReportObjects("TrainingBatch1")
    '        'TrainingBatch1.Text = ds.Tables("Admissions").Rows(0).Item("TrainingBatch").ToString

    '        'Dim Training1 As CrystalDecisions.CrystalReports.Engine.TextObject = rpt.ReportDefinition.Sections(2).ReportObjects("Training1")
    '        'Training1.Text = ds.Tables("Admissions").Rows(0).Item("Training").ToString
    '        CrystalReportViewer1.ReportSource = rpt
    '    End If


    'End Sub


   
End Class
