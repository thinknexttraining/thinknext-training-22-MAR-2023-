Imports System.Data
Imports System.Data.SqlClient

Partial Class ClassNotes
    Inherits System.Web.UI.Page

    Dim varIP As String


    Sub showclassnotes(ByVal IDNo As String)
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()
        Dim sql As String
        Dim Course As String
        Course = varClass1.TrainingCourse(IDNo)
        Dim da As SqlDataAdapter
        Dim ds As DataSet
        Dim varClass2 As New Class1
        sql = "Select * from ClassNotes where Course='" & Course & "' "
        da = New SqlDataAdapter(sql, Con)
        ds = New DataSet
        da.Fill(ds, "ClassNotes")
        If ds.Tables("ClassNotes").Rows.Count > 0 Then
            GridView1.DataSource = ds.Tables("ClassNotes")
            GridView1.DataBind()
        Else
            lblmsg.Text = "! Sorry no record found"
            GridView1.DataSource = Nothing
            GridView1.DataBind()
        End If

        Con.Close()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("myck") = "" Then
            Response.Redirect("~/default.aspx")
        End If
        If Session("myck").ToString() <> "" Then
            If (Page.IsPostBack = False) Then
                showclassnotes(Session("myck"))
            End If
        Else
            Response.Redirect("~/default.aspx")
        End If
    End Sub

    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand
        If e.CommandName = "Select" Then
            Dim Con As SqlConnection
            Dim varClass1 As New Class1
            Con = New SqlConnection(varClass1.GetConnectionString(varIP))
            Con.Open()
            Dim sql As String
            Dim da As SqlDataAdapter
            Dim ds As DataSet
            Dim varFileName As String = ""
            Dim varCurRow As Integer
            varCurRow = (e.CommandArgument)
            Dim varSerialNo As Label
            varSerialNo = GridView1.Rows(varCurRow).FindControl("lblnoticeID")
            sql = "Select FileName from ClassNotes where NotesID=" & varSerialNo.Text & " "
            da = New SqlDataAdapter(sql, Con)
            ds = New DataSet
            da.Fill(ds, "ClassNotes")
            If ds.Tables("ClassNotes").Rows.Count > 0 Then
                If IsDBNull(ds.Tables("ClassNotes").Rows(0).Item("FileName")) = False Then
                    varFileName = ds.Tables("ClassNotes").Rows(0).Item("FileName")
                Else
                    varFileName = ""
                End If
            End If
            Dim Path As String
            Path = Server.MapPath("~\ClassNotes\")
            Dim varFullPath As String
            varFullPath = Path & varFileName
            Dim file As System.IO.FileInfo
            file = New System.IO.FileInfo(varFullPath) '-- if the file exists on the server 
            If file.Exists Then
                Response.Clear()
                Response.AddHeader("Content-Disposition", "attachment; filename=" + HttpUtility.UrlEncode(file.Name))
                Response.WriteFile(varFullPath)
                Response.End() 'if file does not exist 
            Else
                lblmsg.Text = "This file does not exist."
                Con.Close()
                Exit Sub
            End If
        End If
    End Sub

End Class
