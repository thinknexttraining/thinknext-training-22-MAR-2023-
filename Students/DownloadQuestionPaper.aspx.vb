Imports System.Data
Imports System.Data.SqlClient

Partial Class DownloadQuestionPaper
    Inherits System.Web.UI.Page
    Dim varIP As String

    Sub DownloadQuestionPaper()
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()
        Dim sql As String
        'Dim Course As String
        'Course = varClass1.TrainingCourse(IDNo)
        Dim da As SqlDataAdapter
        Dim ds As DataSet
        Dim varClass2 As New Class1
        sql = "Select Course, Batch,Session,FileName from QuestionPaper where Course='" + ddlCourse.Text + "' and FranchieCode='" + txtfranchiseCode.Text + "' "
        da = New SqlDataAdapter(sql, Con)
        ds = New DataSet
        da.Fill(ds, "QuestionPaper")
        If ds.Tables("QuestionPaper").Rows.Count > 0 Then
            grdview.DataSource = ds.Tables("QuestionPaper")
            grdview.DataBind()
            lblTotalRecords.Text = "Total Record : " & ds.Tables("QuestionPaper").Rows.Count
        Else
            lblTotalRecords.Visible = True
            lblTotalRecords.Text = "! Sorry no record found"
            grdview.DataSource = Nothing
            grdview.DataBind()
        End If

        Con.Close()
    End Sub
    Dim Con As SqlConnection
    Dim varClass1 As New Class1

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        lblTotalRecords.Visible = False
        If Session("myck") = "" Then
            Response.Redirect("~/default.aspx")
        End If

        If Session("myck").ToString() <> "" Then
            Con = New SqlConnection(varClass1.GetConnectionString(varIP))

            If (Page.IsPostBack = False) Then
                'Ebooks()
                varClass1.fillcourses(ddlCourse)

            End If
        Else
            Response.Redirect("~/default.aspx")
        End If
    End Sub

    Protected Sub ddlCourse_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlCourse.SelectedIndexChanged

        DownloadQuestionPaper()
    End Sub

    Protected Sub grdview_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles grdview.RowCommand
        If e.CommandName = "Download" Then
            'Dim varTitle1 As String
            'Dim varClass As New Class1
            'varTitle1 = varClass.SetTitle
            'Page.Header.Title = varTitle1
            Dim Con As SqlConnection
            Dim varClass1 As New Class1
            Con = New SqlConnection(varClass1.GetConnectionString(varIP))
            Con.Open()
            Dim sql As String
            Dim da As SqlDataAdapter
            Dim ds As DataSet
            Dim varFileName As String
            Dim varCurRow As Integer
            varCurRow = (e.CommandArgument)
            Dim varSerialNo As Label
            varSerialNo = grdview.Rows(varCurRow).FindControl("QuestionPaperID")
            sql = "Select Filename from QuestionPaper where FranchieCode='" + txtfranchiseCode.Text + "' "
            da = New SqlDataAdapter(sql, Con)
            ds = New DataSet
            da.Fill(ds, "QuestionPaper")
            varFileName = ds.Tables("QuestionPaper").Rows(0).Item("Filename")
            Dim Path As String
            Path = Server.MapPath("~/AddQuestionPaper/")
            Dim varFullPath As String
            varFullPath = Path & varFileName
            Dim file As System.IO.FileInfo
            file = New System.IO.FileInfo(varFullPath) '-- if the file exists on the server 

            If file.Exists Then
                lblmsg.Visible = False
                Response.Clear()
                Response.AddHeader("Content-Disposition", "attachment; filename=" + HttpUtility.UrlEncode(file.Name))
                Response.WriteFile(varFullPath)

                Response.End() 'if file does not exist 
            Else
                lblmsg.Visible = True
                lblmsg.Text = ("This file does not exist.")
                Exit Sub
            End If
            Con.Close()
            lblmsg.Visible = False
        End If
    End Sub
End Class

