Imports System.Data
Imports System.Data.SqlClient
Imports System.IO

Partial Class AddEBooks
    Inherits System.Web.UI.Page

    Dim objtable As DataTable
    Dim varclass1 As Class1
    Shared lblcollege As New Label
    Shared lblEBookID As New Label
    Dim varIP As String

    Sub clear()
        txtAuthor.Text = ""
        txtDateEntry.Text = System.DateTime.Today
        txtEdition.Text = ""
        txtTitle.Text = ""
        ddlCategory.Text = ""
        ddlPublisher.Text = ""
        ddlSource.Text = ""
        ddlCourse.Text = "Select"
    End Sub



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("myck") = "" Then
            Response.Redirect("~/default.aspx")
        End If

        If Session("myck").ToString() <> "" Then
            If (Page.IsPostBack = False) Then
                txtDateEntry.Text = System.DateTime.Today
                ViewState("SortField") = "EBookID"
                ViewState("SortDirection") = "DESC"
                'PanelADD.Enabled = False
                'Dim varClass1 As New Class1
                'varClass1.fillcourses(ddlCourse)
                fillcourses(ddlCourse)
            End If
        Else
            Response.Redirect("Default.aspx")
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
        sql = "select Distinct Courses from MasterCourses  where FranchiseCode='" + txtfranchise.Text + "' order by Courses  "
        da = New SqlDataAdapter(sql, con)
        da.Fill(ds, "Course1")
        ddl.Items.Clear()
        ddl.Items.Add("Select")
        If ds.Tables("Course1").Rows.Count > 0 Then
            While rowctr < ds.Tables("Course1").Rows.Count
                If IsDBNull(ds.Tables("Course1").Rows(rowctr).Item("Courses")) = False Then
                    ddl.Items.Add(ds.Tables("Course1").Rows(rowctr).Item("Courses"))
                End If
                rowctr = rowctr + 1
            End While
        End If
        con.Close()
    End Sub

    Protected Sub btnShow_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnShow.Click
        Show()
    End Sub

    Sub Show()
        lblmsg1.Text = ""
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()
        Dim sql As String
        Dim da As SqlDataAdapter
        Dim ds As DataSet
        objtable = New DataTable
        If ddlCourse.Text <> "Select" Then
            sql = "Select Course,DateEntry,EBookID,Title,Author,Edition,Publisher,Source,Category,FileName,UserID from EBooks where Course='" & ddlCourse.Text & "'AND FranchiseCode='" + txtfranchise.Text+"' order by " & ViewState("SortField") & " " & ViewState("SortDirection")
            da = New SqlDataAdapter(sql, Con)
            ds = New DataSet
            da.Fill(ds, "EBooks")
            If ds.Tables("EBooks").Rows.Count = 0 Then
                lblMsg.Text = ("No records found")
                gdShow.Visible = False
                lblRecords.Text = ""
                Exit Sub
            End If
            lblMsg.Text = ""
            gdShow.Visible = True
            gdShow.DataSource = ds.Tables("EBooks")
            gdShow.DataBind()
            Dim rowctr As Integer = 0
            Dim vardate As New Label
            Dim vardateentry As Date

            While rowctr < gdShow.Rows.Count
                vardate = gdShow.Rows(rowctr).FindControl("lblDateEntry")
                vardateentry = CDate(vardate.Text)
                rowctr = rowctr + 1
            End While

            objtable = ds.Tables("EBooks")
            lblRecords.Text = "Total records : " & gdShow.Rows.Count
        End If
        Con.Close()
    End Sub


    Sub ShowPublisher()
        Dim sql As String
        Dim da As SqlDataAdapter
        Dim ds As DataSet
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()
        If ddlCourse.Text <> "Select" Then
            sql = "Select Distinct Publisher from EBooks where Course='" & ddlCourse.Text & "' AND FranchiseCode='" + txtfranchise.Text + "'"
            da = New SqlDataAdapter(sql, Con)
            ds = New DataSet
            da.Fill(ds, "Publisher")
            If ds.Tables("Publisher").Rows.Count > 0 Then
                'ddlPublisher.Items.Clear()
                'ddlPublisher.Items.Add("Select")
                For i = 0 To ds.Tables("Publisher").Rows.Count - 1
                    If IsDBNull(ds.Tables("Publisher").Rows(i).Item("Publisher")) = False Then
                        ' ddlPublisher.Items.Add(ds.Tables("Publisher").Rows(i).Item("Publisher"))
                    End If
                Next
            End If
        End If
        Con.Close()
    End Sub

    Sub ShowSource()
        Dim sql As String
        Dim da As SqlDataAdapter
        Dim ds As DataSet
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()
        If ddlCourse.Text <> "Select" Then
            sql = "Select Distinct Source from EBooks where Course='" & ddlCourse.Text & "' "
            da = New SqlDataAdapter(sql, Con)
            ds = New DataSet
            da.Fill(ds, "Source")
            If ds.Tables("Source").Rows.Count > 0 Then
                'ddlSource.Items.Clear()
                'ddlSource.Items.Add("Select")
                For i = 0 To ds.Tables("Source").Rows.Count - 1
                    If IsDBNull(ds.Tables("Source").Rows(i).Item("Source")) = False Then
                        'ddlSource.Items.Add(ds.Tables("Source").Rows(i).Item("Source"))
                    End If
                Next

            End If
        End If
        Con.Close()
    End Sub

    Sub ShowCategory()
        Dim sql As String
        Dim da As SqlDataAdapter
        Dim ds As DataSet
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()
        If ddlCourse.Text <> "Select" Then
            sql = "Select Distinct Category from EBooks where Course='" & ddlCourse.Text & "'"
            da = New SqlDataAdapter(sql, Con)
            ds = New DataSet
            da.Fill(ds, "Category")
            If ds.Tables("Category").Rows.Count > 0 Then
                ' ddlCategory.Items.Clear()
                'ddlCategory.Items.Add("Select")
                For i = 0 To ds.Tables("Category").Rows.Count - 1
                    If IsDBNull(ds.Tables("Category").Rows(i).Item("Category")) = False Then
                        'ddlCategory.Items.Add(ds.Tables("Category").Rows(i).Item("Category"))
                    End If
                Next

            End If
        End If
        Con.Close()
    End Sub

    Protected Sub gdShow_RowCancelingEdit(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCancelEditEventArgs) Handles gdShow.RowCancelingEdit
        gdShow.EditIndex = -1
        Show()
    End Sub

    Protected Sub gdShow_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles gdShow.RowDeleting
        lblmsg1.Text = ""
        If ddlCourse.Text = "Select" Then
            lblMsg.Visible = True
            lblMsg.Text = "Select Course"
            Exit Sub
        End If
        lblMsg.Text = ""

        Dim delcmd As New SqlCommand
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()
        Dim varebookid As New Label
        varebookid = gdShow.Rows(e.RowIndex).FindControl("lblEBookID")

        delcmd = New SqlCommand("delete from EBooks where Course='" & ddlCourse.Text & "' And EBookID=" & varebookid.Text & "", Con)
        delcmd.ExecuteNonQuery()
        delcmd.Dispose()
        Con.Close()

        Show()
        lblMsg.Visible = True
        lblMsg.Text = "Ebook has been deleted successfully"
    End Sub

    Protected Sub gdShow_RowEditing(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewEditEventArgs) Handles gdShow.RowEditing
        gdShow.EditIndex = e.NewEditIndex
        Show()
        lblEBookID = gdShow.Rows(e.NewEditIndex).FindControl("lblEBookID")
    End Sub

    Protected Sub gdShow_RowUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewUpdateEventArgs) Handles gdShow.RowUpdating
        lblmsg1.Text = ""
        If ddlCourse.Text = "Select" Then
            lblMsg.Visible = True
            lblMsg.Text = "Select Course"
            Exit Sub
        End If
        lblMsg.Visible = False

        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()

        Dim updcmd As New SqlCommand
        Dim vartitle As New TextBox
        Dim varAuthor As New TextBox
        Dim varedition As New TextBox
        Dim varprice As New TextBox
        Dim varsource As New TextBox
        Dim varpublisher As New TextBox
        Dim varcategory As New TextBox
        Dim varfilename As New TextBox

        updcmd = New SqlCommand("update EBooks set Title=@Title,Author=@Author,Edition=@Edition,Publisher=@Publisher,Source=@Source,Category=@Category where Course='" & ddlCourse.Text & "' And EBookID=" & lblEBookID.Text & "", Con)
        updcmd.Connection = Con
        If IsDBNull(gdShow.Rows(e.RowIndex).FindControl("txtTitle0")) = False Then
            vartitle = gdShow.Rows(e.RowIndex).FindControl("txtTitle0")
            updcmd.Parameters.AddWithValue("@Title", vartitle.Text)
        Else
            updcmd.Parameters.AddWithValue("@Title", DBNull.Value)
        End If

        If IsDBNull(gdShow.Rows(e.RowIndex).FindControl("txtAuthor0")) = False Then
            varAuthor = gdShow.Rows(e.RowIndex).FindControl("txtAuthor0")
            updcmd.Parameters.AddWithValue("@Author", varAuthor.Text)
        Else
            updcmd.Parameters.AddWithValue("@Author", DBNull.Value)
        End If

        If IsDBNull(gdShow.Rows(e.RowIndex).FindControl("txtEdition0")) = False Then
            varedition = gdShow.Rows(e.RowIndex).FindControl("txtEdition0")
            updcmd.Parameters.AddWithValue("@Edition", varedition.Text)
        Else
            updcmd.Parameters.AddWithValue("@Edition", DBNull.Value)
        End If


        If IsDBNull(gdShow.Rows(e.RowIndex).FindControl("txtPublisher")) = False Then
            varpublisher = gdShow.Rows(e.RowIndex).FindControl("txtPublisher")
            updcmd.Parameters.AddWithValue("@Publisher", varpublisher.Text)
        Else
            updcmd.Parameters.AddWithValue("@Publisher", DBNull.Value)
        End If
        If IsDBNull(gdShow.Rows(e.RowIndex).FindControl("txtSource")) = False Then
            varsource = gdShow.Rows(e.RowIndex).FindControl("txtSource")
            updcmd.Parameters.AddWithValue("@Source", varsource.Text)
        Else
            updcmd.Parameters.AddWithValue("@Source", DBNull.Value)
        End If
        If IsDBNull(gdShow.Rows(e.RowIndex).FindControl("txtCategory")) = False Then
            varcategory = gdShow.Rows(e.RowIndex).FindControl("txtCategory")
            updcmd.Parameters.AddWithValue("@Category", varcategory.Text)
        Else
            updcmd.Parameters.AddWithValue("@Category", DBNull.Value)
        End If
        updcmd.ExecuteNonQuery()
        updcmd.Dispose()

        Con.Close()
        gdShow.EditIndex = -1
        Show()
        lblMsg.Visible = True
        lblMsg.Text = "Data updated successfully"
    End Sub


    'Protected Sub btnPublisher_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnPublisher.Click
    '    lblAddNew.Text = "Publisher"
    '    lblmsg1.Text = ""
    '    PanelADD.Enabled = True
    'End Sub
    'Protected Sub btnCategory_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCategory.Click
    '    lblAddNew.Text = "Category"
    '    lblmsg1.Text = ""
    '    PanelADD.Enabled = True
    'End Sub
    'Protected Sub btnSource_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSource.Click
    '    lblAddNew.Text = "Source"
    '    lblmsg1.Text = ""
    '    PanelADD.Enabled = True
    'End Sub
    'Protected Sub btnADDNew_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnADDNew.Click
    'lblmsg1.Text = ""
    'If txtADDNew.Text = "" Then
    '    lblmsg1.Text = "Please Enter " & lblAddNew.Text & ""
    '    lblmsg1.Visible = True
    '    Exit Sub
    'End If
    'If lblAddNew.Text = "Category" Then
    '    If ddlCategory.Items.FindByText(txtADDNew.Text) Is Nothing Then
    '        ddlCategory.Items.Add(txtADDNew.Text)
    '    Else
    '        txtADDNew.Text = ""
    '        lblmsg1.Visible = True
    '        lblmsg1.Text = "Entry already Exist."
    '        Exit Sub
    '    End If
    'ElseIf lblAddNew.Text = "Publisher" Then
    '    If ddlPublisher.Items.FindByText(txtADDNew.Text) Is Nothing Then
    '        'ddlPublisher.Items.Add(txtADDNew.Text)
    '    Else
    '        txtADDNew.Text = ""
    '        lblmsg1.Visible = True
    '        lblmsg1.Text = "Entry already Exist."
    '        Exit Sub
    '    End If
    'ElseIf lblAddNew.Text = "Source" Then
    '    If ddlSource.Items.FindByText(txtADDNew.Text) Is Nothing Then
    '        ddlSource.Items.Add(txtADDNew.Text)
    '    Else
    '        txtADDNew.Text = ""
    '        lblmsg1.Visible = True
    '        lblmsg1.Text = "Entry already Exist."
    '        Exit Sub
    '    End If
    'End If
    'txtADDNew.Text = ""
    'lblmsg1.Visible = True
    'lblmsg1.Text = "Entry has been successfully added."
    'PanelADD.Enabled = False
    'End Sub

    Protected Sub btnupload_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupload.Click
        'UploadEbboks()
        'Exit Sub
        Dim varclass As New Class1

        lblmsg1.Text = ""
        Dim vardate As Date
        If ddlCourse.Text = "Select" Then
            lblMsg.Visible = True
            lblMsg.Text = "Select Course"
            Exit Sub
        End If

        If Trim(txtDateEntry.Text) = "" Then
            lblMsg.Visible = True
            lblMsg.Text = "Invalid Date Entry"
            Exit Sub
        Else
            If txtDateEntry.Text <> "" Then
                If IsDate(txtDateEntry.Text) = False Then
                    lblMsg.Visible = True
                    lblMsg.Text = "Invalid Date"
                    Exit Sub
                End If
            End If
            vardate = CDate(txtDateEntry.Text)
        End If
        If txtTitle.Text = "" Then
            lblMsg.Visible = True
            lblMsg.Text = "Invalid Title"
            Exit Sub
        End If
        If Trim(txtAuthor.Text) = "" Then
            lblMsg.Visible = True
            lblMsg.Text = "Invalid Author"
            Exit Sub
        End If
        If txtEdition.Text = "" Then
            lblMsg.Visible = True
            lblMsg.Text = "Invalid Edition"
            Exit Sub
        End If
        If ddlPublisher.Text = "Select" Then
            lblMsg.Visible = True
            lblMsg.Text = "Invalid Publisher"
            Exit Sub
        End If
        If ddlSource.Text = "Select" Then
            lblMsg.Visible = True
            lblMsg.Text = "Invalid Source"
            Exit Sub
        End If
        If ddlCategory.Text = "Select" Then
            lblMsg.Visible = True
            lblMsg.Text = "Invalid Category"
            Exit Sub
        End If
        If (System.Text.RegularExpressions.Regex.IsMatch(txtEdition.Text, "^[a-zA-Z0-9 ]+$")) = False Then
            lblMsg.Visible = True
            lblMsg.Text = "Invalid Edition"
            Exit Sub
        End If
        lblMsg.Visible = False

        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()




        If UploadFile.HasFile Then
            If CheckFileType(UploadFile.FileName) Then
                Dim filename As String = UploadFile.PostedFile.FileName
                ' UploadFile.PostedFile.Conten()
                Dim PTPpath As String = "ftp://202.143.99.95/httpdocs/Ebooks/"
                varclass.UploadImageFTP(PTPpath + filename, UploadFile)
                lblMsg.Text = UploadFile.FileName

                ScriptManager.RegisterStartupScript(Me, Me.[GetType](), "alertmessage", "javascript:alert('Your file uploaded succesfully.')", True)
            Else


                ScriptManager.RegisterStartupScript(Me, Me.[GetType](), "alertmessage", "javascript:alert(' Invalid File Format.')", True)
            End If
        End If


        Dim sql As String
        Dim cmd As SqlCommand
        lblMsg.Visible = False
        sql = "Insert into EBooks(Course,DateEntry,Title,Author,Edition,Publisher,Source,Category,FileName,UserID,FranchiseCode,BrandName)values(@Course,@DateEntry,@Title,@Author,@Edition,@Publisher,@Source,@Category,@FileName,@UserID,@FranchiseCode,@BrandName)"
        cmd = New SqlCommand(sql, Con)
        cmd.Parameters.AddWithValue("@Course", ddlCourse.SelectedItem.Text)
        cmd.Parameters.AddWithValue("@DateEntry", vardate)
        cmd.Parameters.AddWithValue("@Title", txtTitle.Text)
        cmd.Parameters.AddWithValue("@Author", txtAuthor.Text)
        cmd.Parameters.AddWithValue("@Edition", txtEdition.Text)
        cmd.Parameters.AddWithValue("@Publisher", ddlPublisher.Text)
        cmd.Parameters.AddWithValue("@Source", ddlSource.Text)
        cmd.Parameters.AddWithValue("@Category", ddlCategory.Text)
        cmd.Parameters.AddWithValue("@FileName", UploadFile.FileName)
        cmd.Parameters.AddWithValue("@UserID", Session("myck").ToString())
        cmd.Parameters.AddWithValue("@FranchiseCode", txtfranchise.Text)
        cmd.Parameters.AddWithValue("@BrandName", "THINKNEXT TRAINING")
        cmd.Connection = Con
        cmd.ExecuteNonQuery()
        cmd.Dispose()
        Con.Close()
        Show()
        lblMsg.Visible = True
        lblMsg.Text = "Data uploaded successfully"
        'Else
        'Con.Close()
        'lblMsg.Visible = True
        'lblMsg.Text = "Please browse file"
        'Exit Sub
        'End If
        clear()
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
            Case ".ppts"
                Return True
            Case ".pptx"
                Return True
            Case ".txt"
                Return True
            Case ".xls"
                Return True
            Case Else
            


                Return False

        End Select

    End Function


    'Sub UploadEbboks()
    '    lblmsg1.Text = ""
    '    Dim vardate As Date
    '    If ddlCourse.Text = "Select" Then
    '        lblMsg.Visible = True
    '        lblMsg.Text = "Select Course"
    '        Exit Sub
    '    End If

    '    If Trim(txtDateEntry.Text) = "" Then
    '        lblMsg.Visible = True
    '        lblMsg.Text = "Invalid Date Entry"
    '        Exit Sub
    '    Else
    '        If txtDateEntry.Text <> "" Then
    '            If IsDate(txtDateEntry.Text) = False Then
    '                lblMsg.Visible = True
    '                lblMsg.Text = "Invalid Date"
    '                Exit Sub
    '            End If
    '        End If
    '        vardate = CDate(txtDateEntry.Text)
    '    End If
    '    If txtTitle.Text = "" Then
    '        lblMsg.Visible = True
    '        lblMsg.Text = "Invalid Title"
    '        Exit Sub
    '    End If
    '    If Trim(txtAuthor.Text) = "" Then
    '        lblMsg.Visible = True
    '        lblMsg.Text = "Invalid Author"
    '        Exit Sub
    '    End If
    '    If txtEdition.Text = "" Then
    '        lblMsg.Visible = True
    '        lblMsg.Text = "Invalid Edition"
    '        Exit Sub
    '    End If
    '    If ddlPublisher.Text = "Select" Then
    '        lblMsg.Visible = True
    '        lblMsg.Text = "Invalid Publisher"
    '        Exit Sub
    '    End If
    '    If ddlSource.Text = "Select" Then
    '        lblMsg.Visible = True
    '        lblMsg.Text = "Invalid Source"
    '        Exit Sub
    '    End If
    '    If ddlCategory.Text = "Select" Then
    '        lblMsg.Visible = True
    '        lblMsg.Text = "Invalid Category"
    '        Exit Sub
    '    End If
    '    If (System.Text.RegularExpressions.Regex.IsMatch(txtEdition.Text, "^[a-zA-Z0-9 ]+$")) = False Then
    '        lblMsg.Visible = True
    '        lblMsg.Text = "Invalid Edition"
    '        Exit Sub
    '    End If
    '    lblMsg.Visible = False

    '    Dim Con As SqlConnection
    '    Dim varClass1 As New Class1
    '    Con = New SqlConnection(varClass1.GetConnectionString(varIP))
    '    Con.Open()
    '    Dim varPath As String
    '    varPath = Server.MapPath("~/EBooks")
    '    Dim varFileName As String
    '    If UploadFile.HasFile Then
    '        varFileName = UploadFile.FileName
    '        Dim varFullPath As String
    '        varFullPath = varPath & varFileName
    '        Dim varFile() As String
    '        varFile = varFullPath.Split("\")

    '        Dim fileName1 As String = ""
    '        For i = 0 To UBound(varFile)
    '            fileName1 = varFile(i)
    '        Next

    '        Dim varFile1() As String
    '        varFile1 = fileName1.Split(".")
    '        Dim folderName1 As String = ""

    '        For i = 0 To UBound(varFile1)
    '            folderName1 = varFile1(i)
    '        Next

    '        If varClass1.CheckFileExtension(folderName1) = "False" Then
    '            lblMsg.Visible = True
    '            lblMsg.Text = "Invalid file extension"
    '            Exit Sub
    '        End If

    '        UploadFile.SaveAs(varPath & varFileName)
    '        lblMsg.Visible = True
    '        lblMsg.Text = "File Uploaded ! FileName:" & varFileName

    '        Dim sql As String
    '        Dim cmd As SqlCommand
    '        lblMsg.Visible = False
    '        sql = "Insert into EBooks(Course,DateEntry,Title,Author,Edition,Publisher,Source,Category,FileName,UserID,FranchiseCode,BrandName)values(@Course,@DateEntry,@Title,@Author,@Edition,@Publisher,@Source,@Category,@FileName,@UserID,@FranchiseCode,@BrandName)"
    '        cmd = New SqlCommand(sql, Con)
    '        cmd.Parameters.AddWithValue("@Course", ddlCourse.SelectedItem.Text)
    '        cmd.Parameters.AddWithValue("@DateEntry", vardate)
    '        cmd.Parameters.AddWithValue("@Title", txtTitle.Text)
    '        cmd.Parameters.AddWithValue("@Author", txtAuthor.Text)
    '        cmd.Parameters.AddWithValue("@Edition", txtEdition.Text)
    '        cmd.Parameters.AddWithValue("@Publisher", ddlPublisher.Text)
    '        cmd.Parameters.AddWithValue("@Source", ddlSource.Text)
    '        cmd.Parameters.AddWithValue("@Category", ddlCategory.Text)
    '        cmd.Parameters.AddWithValue("@FileName", UploadFile.FileName)
    '        cmd.Parameters.AddWithValue("@UserID", Request.Cookies("Myck").Value.ToString())
    '        cmd.Parameters.AddWithValue("@FranchiseCode", txtfranchise.Text)
    '        cmd.Parameters.AddWithValue("@BrandName", "THINKNEXT TRAINING")
    '        cmd.Connection = Con
    '        cmd.ExecuteNonQuery()
    '        cmd.Dispose()
    '        Con.Close()
    '        Show()
    '        lblMsg.Visible = True
    '        lblMsg.Text = "Data uploaded successfully"

    '    Else
    '        Con.Close()
    '        lblMsg.Visible = True
    '        lblMsg.Text = "Please browse file"
    '        Exit Sub
    '    End If
    '    clear()
    'End Sub


    Protected Sub ddlCourse_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlCourse.SelectedIndexChanged

    End Sub
End Class
