Imports System.Data
Imports System.Data.SqlClient

Partial Class EBooks
    Inherits System.Web.UI.Page
    Dim varIP As String

    Sub Ebooks()
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
        sql = "Select EBookID, Title, Author,Publisher, Course,FileName	 from Ebooks where Course='" + ddlCourse.Text + "' and FranchiseCode='" + txtfranchiseCode.Text + "' "
        da = New SqlDataAdapter(sql, Con)
        ds = New DataSet
        da.Fill(ds, "Ebooks")
        If ds.Tables("Ebooks").Rows.Count > 0 Then
            GridView1.DataSource = ds.Tables("Ebooks")
            GridView1.DataBind()
            lblTotalRecords.Text = "Total Record : " & ds.Tables("Ebooks").Rows.Count
        Else
            lblTotalRecords.Visible = True
            lblTotalRecords.Text = "! Sorry no record found"
            GridView1.DataSource = Nothing
            GridView1.DataBind()
        End If

        Con.Close()
    End Sub
    Dim Con As SqlConnection
    Dim varClass1 As New Class1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
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

  
    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand
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
            varSerialNo = GridView1.Rows(varCurRow).FindControl("lblebookid")
            sql = "Select Filename from Ebooks where EbookID= " & varSerialNo.Text & " and FranchiseCode='" + txtfranchiseCode.Text + "' "
            da = New SqlDataAdapter(sql, Con)
            ds = New DataSet
            da.Fill(ds, "Ebooks")
            varFileName = ds.Tables("Ebooks").Rows(0).Item("Filename")
            Dim Path As String
            Path = Server.MapPath("~/Ebooks/")
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

    Protected Sub ddlCourse_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlCourse.SelectedIndexChanged
        Ebooks()
    End Sub
End Class
