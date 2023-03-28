Imports System.Data
Imports System.Data.SqlClient
Imports System.IO

Partial Class AddClassNotes
    Inherits System.Web.UI.Page
    Dim varclass As New Class1
    Dim varIP As String

    Protected Sub btnUpload_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpload.Click
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()

        If txtTopic.Text = "" Then
            lblmessage.Text = "Please Enter Topic..."
            Exit Sub
        End If
        If drpappliedfor.SelectedIndex = 0 Then
            lblmessage.Text = "Please Select Course for Class Note"
            Exit Sub
        End If
       

        If UploadFile.HasFile Then
            If CheckFileType(UploadFile.FileName) Then
                Dim filename As String = UploadFile.PostedFile.FileName
                ' UploadFile.PostedFile.Conten()
                Dim PTPpath As String = "ftp://202.143.99.95/httpdocs/ClassNotes/"
                varclass.UploadImageFTP(PTPpath + filename, UploadFile)
                'lblMsg.Text = UploadFile.FileName

                ScriptManager.RegisterStartupScript(Me, Me.[GetType](), "alertmessage", "javascript:alert('Your file uploaded succesfully.')", True)
            Else


                ScriptManager.RegisterStartupScript(Me, Me.[GetType](), "alertmessage", "javascript:alert(' Invalod File Format.')", True)
            End If
        End If
        
        Dim sql As String
        Dim provider1 As System.Globalization.CultureInfo = System.Globalization.CultureInfo.InvariantCulture

        Dim cmd As SqlCommand
        sql = "Insert into ClassNotes (NotesDate, Topic,Course ,FileName,UserID,FranchiseCode) values (@NotesDate, @Topic, @Course ,@FileName ,@UserID,@FranchiseCode)"
        cmd = New SqlCommand(sql, Con)
        'Dim ds1 As DateTime = DateTime.ParseExact(DateTime.Now.ToString(), "MM/dd/yyyy", provider1)

        cmd.Parameters.AddWithValue("@NotesDate", DateTime.Now)
        cmd.Parameters.AddWithValue("@Topic", txtTopic.Text)
        cmd.Parameters.AddWithValue("@Course", drpappliedfor.Text)
        cmd.Parameters.AddWithValue("@FileName", UploadFile.FileName)
        cmd.Parameters.AddWithValue("@UserID", Session("myck").ToString())
        cmd.Parameters.AddWithValue("@FranchiseCode", "TNK101")
        cmd.ExecuteNonQuery()
        lblmessage.Visible = True
        lblmessage.Text = "File Uploaded Successfully  FileName:" & UploadFile.FileName
        ShowNotes()
        Con.Close()
        Exit Sub
        'Else

        '    lblmessage.Visible = True
        '    lblmessage.Text = "Please browse file"
        '    showclassnotes()
        '    Con.Close()
        '    Exit Sub
        'End If
        Con.Close()
    End Sub

    'Sub showclassnotes()
    '    Dim Con As SqlConnection
    '    Dim varClass1 As New Class1
    '    Con = New SqlConnection(varClass1.GetConnectionString(varIP))
    '    Con.Open()
    '    Dim sql As String
    '    Dim da As SqlDataAdapter
    '    Dim ds As DataSet
    '    Dim varClass2 As New Class1
    '    sql = "Select *  from ClassNotes where FranchiseCode='" + txtfranchiseCode.Text + "' "
    '    da = New SqlDataAdapter(sql, Con)
    '    ds = New DataSet
    '    da.Fill(ds, "ClassNotes")
    '    If ds.Tables("ClassNotes").Rows.Count > 0 Then
    '        GridView1.DataSource = ds.Tables("ClassNotes")
    '        GridView1.DataBind()
    '    Else
    '        lblmessage.Text = "! Sorry no record found"
    '        GridView1.DataSource = Nothing
    '        GridView1.DataBind()
    '    End If

    '    Con.Close()
    'End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("myck") = "" Then
            Response.Redirect("~/default.aspx")
        End If

        If Session("myck").ToString() <> "" Then
            If (Page.IsPostBack = False) Then
                'showclassnotes()
                fillcourses(drpappliedfor)
            End If
        Else
            Response.Redirect("~/default.aspx")
        End If
    End Sub

    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand
        'lblnoticeID
        If e.CommandName = "Select" Then
            Dim Con As SqlConnection
            Dim varClass1 As New Class1
            Con = New SqlConnection(varClass1.GetConnectionString(varIP))
            Con.Open()
            Dim varCurRow As Integer
            varCurRow = (e.CommandArgument)
            'Dim varNotesID As Label
            'varNotesID = GridView1.Rows(varCurRow).FindControl("lblnoticeID")
            'Session("NotesID") = varNotesID.Text
            'Response.Redirect("~/documentviewer.aspx")
        End If
    End Sub

    Sub fillcourses(ByVal ddl As DropDownList)
        Dim con As New SqlConnection
        Dim sql As String
        Dim da As SqlDataAdapter
        Dim ds As New DataSet
        Dim rowctr As Integer = 0
        Dim varClass1 As New Class1
        con = New SqlConnection(varClass1.GetConnectionString(varIP))
        con.Open()
        sql = "select Distinct Courses from MasterCourses where FranchiseCode='" + txtfranchiseCode.Text + "' order by Courses "
        da = New SqlDataAdapter(sql, con)
        da.Fill(ds, "MasterCourses")
        ddl.Items.Clear()
        ddl.Items.Add("Select")
        If ds.Tables("MasterCourses").Rows.Count > 0 Then
            While rowctr < ds.Tables("MasterCourses").Rows.Count
                If IsDBNull(ds.Tables("MasterCourses").Rows(rowctr).Item("Courses")) = False Then
                    ddl.Items.Add(ds.Tables("MasterCourses").Rows(rowctr).Item("Courses"))
                End If
                rowctr = rowctr + 1
            End While
        End If
        con.Close()
    End Sub

    Protected Sub drpappliedfor_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles drpappliedfor.SelectedIndexChanged

    End Sub

    Public Function CheckFileType(ByVal FileName As String) As Boolean
        Dim Ext As String = Path.GetExtension(FileName)
        Select Case Ext.ToLower()
            Case ".doc"
                Return True

            Case ".docx"
                Return True
            Case ".pdf"
                Return True
            Case ".txt"
                Return True
            Case Else



                Return False

        End Select

    End Function


    Protected Sub btnShow_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnShow.Click
        ShowNotes()
    End Sub

    Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView1.RowDeleting
        Dim lblCname As Label = DirectCast(GridView1.Rows(e.RowIndex).FindControl("lblnoticeID"), Label)
        'lblnoticeID
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()
        Dim sql As String
        Dim varClass2 As New Class1

        sql = "Delete from classnotes where course like '%" + drpappliedfor.Text + "%' and NotesID='" + lblCname.Text + "'"
        Dim cmd As New SqlCommand(sql, Con)

        cmd.ExecuteNonQuery()
        Con.Close()
        cmd.Dispose()
        ShowNotes()
    End Sub


    Sub ShowNotes()
        If drpappliedfor.Text = "Select" Then
            lblmessage.Text = "Please Select Class Notes for first....!!"
            Return
        End If
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()
        Dim sql As String
        Dim da As SqlDataAdapter
        Dim ds As DataSet
        Dim varClass2 As New Class1
        sql = "Select notesID,convert(varchar(10),NotesDate,101) as NotesDate,Course,Topic,FileName from ClassNotes where Course like '%" + drpappliedfor.Text + "%' and  FranchiseCode='" + txtfranchiseCode.Text + "' "
        da = New SqlDataAdapter(sql, Con)
        ds = New DataSet
        da.Fill(ds, "ClassNotes")
        If ds.Tables("ClassNotes").Rows.Count > 0 Then
            GridView1.DataSource = ds.Tables("ClassNotes")
            GridView1.DataBind()
        Else
            lblmessage.Text = "! Sorry no record found"
            GridView1.DataSource = Nothing
            GridView1.DataBind()
        End If

        Con.Close()
    End Sub


End Class
'If UploadFile.HasFile Then
'    varFileName = UploadFile.FileName
'    Dim varFullPath As String
'    varFullPath = varPath & varFileName
'    Dim varFile() As String
'    varFile = varFullPath.Split("\")

'    Dim folderName As String = ""
'    For i = 0 To UBound(varFile)
'        folderName = varFile(i)
'    Next
'    Dim varFile1() As String
'    varFile1 = folderName.Split(".")

'    Dim folderName1 As String = ""
'    For i = 0 To UBound(varFile1)
'        folderName1 = varFile1(i)
'    Next
'    If varClass1.CheckFileExtension(folderName1) = "False" Then
'        lblmessage.Visible = True
'        lblmessage.Text = "Invalid file extension"
'        Exit Sub
'    End If
'    If txtTopic.Text = "" Then
'        lblmessage.Text = "Please Enter Topic..."
'        Exit Sub
'    End If
'    If drpappliedfor.SelectedIndex = 0 Then
'        lblmessage.Text = "Please Select Course for Class Note"
'        Exit Sub
'    End If

'    If varClass1.chkFileExist(varFileName, "ClassNotes") = True Then
'        lblmessage.Visible = True
'        lblmessage.Text = "File already exist. Give another name"
'        Exit Sub
'    End If

'    UploadFile.SaveAs(varPath & varFileName)
'    lblmessage.Visible = True