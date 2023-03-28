Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.UI
Imports AjaxControlToolkit.HTMLEditor


Partial Class AddArticles
    Inherits System.Web.UI.Page
    Shared varArticleID1 As Label
    Shared varCollegeName1 As TextBox
    Dim varIP As String

    'Protected Sub gdShow_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gdShow.RowCommand
    '    If e.CommandName = "Subject" Then
    '        Dim varSubject1 As LinkButton = CType(e.CommandSource, LinkButton)
    '        Dim gvRow As GridViewRow
    '        Dim varcollegename As New Label
    '        gvRow = varSubject1.BindingContainer
    '        varSubject1 = gdShow.Rows(gvRow.RowIndex).FindControl("lnkbtnSubject")
    '        varcollegename = gdShow.Rows(gvRow.RowIndex).FindControl("lblCollegeName")
    '        Session("Subject") = varSubject1.Text
    '        Dim vararticleid As New Label
    '        vararticleid = gdShow.Rows(gvRow.RowIndex).FindControl("lblArticleID")
    '        Session("ArticleID") = vararticleid.Text
    '        Session("StaffPage") = "Add Articles"
    '        Response.Redirect("StaffArticleDetails.aspx")
    '    End If
    'End Sub

    'Protected Sub gdShow_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles gdShow.RowDeleting
    '    varIP = Request.ServerVariables("SERVER_NAME").ToString
    '    Dim Con As SqlConnection
    '    Dim varClass1 As New Class1
    '    Con = New SqlConnection(varClass1.GetConnectionString(varIP))
    '    Con.Open()
    '    Dim sql1 As String
    '    Dim i As Integer
    '    i = e.RowIndex
    '    Dim row1 As GridViewRow
    '    row1 = gdShow.Rows(i)
    '    Dim varArticleID As Label
    '    varArticleID = gdShow.Rows(i).FindControl("lblArticleID")
    '    Dim varCollegeName As Label
    '    varCollegeName = gdShow.Rows(i).FindControl("lblCollegeName")
    '    Dim cmd As SqlCommand
    '    sql1 = "delete from Articles where ArticleID=@ArticleID And Collegename=@CollegeName"
    '    cmd = New SqlCommand(sql1, Con)
    '    cmd.Parameters.AddWithValue("@ArticleID", varArticleID.Text)
    '    cmd.Parameters.AddWithValue("@CollegeName", varCollegeName.Text)
    '    cmd.ExecuteNonQuery()
    '    gdShow.EditIndex = -1
    '    Con.Close()
    '    Show()
    '    lblMsg.Text = "Article has been deleted successfully"
    '    lblMsg.Visible = True
    'End Sub

    'Protected Sub gdShow_RowEditing(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewEditEventArgs) Handles gdShow.RowEditing

    '    gdShow.EditIndex = e.NewEditIndex
    '    Dim varSubject1 As LinkButton
    '    Dim gvRow As GridViewRow
    '    varSubject1 = gdShow.Rows(e.NewEditIndex).FindControl("lnkbtnSubject")
    '    Dim vararticleid As New Label
    '    vararticleid = gdShow.Rows(e.NewEditIndex).FindControl("lblArticleID")
    '    Session("ArticleID") = vararticleid.Text
    '    Session("Subject") = varSubject1.Text
    '    Session("CollegeName") = ddlCollegeName.Text
    '    Response.Redirect("EditArticleDetail.aspx")
    '    ''gdShow.EditIndex = e.NewEditIndex
    '    ''Show()
    '    ''varArticleID1 = gdShow.Rows(e.NewEditIndex).FindControl("lblArticleID")
    '    'varCollegeName1 = gdShow.Rows(e.NewEditIndex).FindControl("txtCollegeName1")
    'End Sub

    'Protected Sub gdShow_RowUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewUpdateEventArgs) Handles gdShow.RowUpdating

    '    Dim Con As SqlConnection
    '    Dim varClass1 As New Class1
    '    Con = New SqlConnection(varClass1.GetConnectionString(varIP))
    '    Con.Open()
    '    Dim varArticleID As Label
    '    Dim varCollegeName As Label
    '    Dim varDate As TextBox
    '    Dim varTime As TextBox
    '    Dim varSubject As TextBox
    '    Dim varPublishedBy As TextBox
    '    Dim varArticle As New MyControls.CustomEditor

    '    Dim varactive As DropDownList

    '    Dim i As Integer
    '    i = e.RowIndex
    '    varCollegeName = gdShow.Rows(i).FindControl("lblCollegeName")
    '    varArticleID = gdShow.Rows(i).FindControl("lblArticleID")
    '    varDate = gdShow.Rows(i).FindControl("txtDate1")
    '    If varDate.Text <> "" Then
    '        If IsDate(varDate.Text) = False Then
    '            lblMsg.Visible = True
    '            lblMsg.Text = "Invalid  date"
    '            Exit Sub
    '        End If
    '    End If
    '    lblMsg.Visible = False
    '    varTime = gdShow.Rows(i).FindControl("txtTime1")
    '    If varTime.Text <> "" Then
    '        If IsDate(varTime.Text) = False Then
    '            lblMsg.Visible = True
    '            lblMsg.Text = "Invalid  Time"
    '            Exit Sub
    '        End If
    '    End If
    '    varSubject = gdShow.Rows(i).FindControl("txtSubject1")
    '    varPublishedBy = gdShow.Rows(i).FindControl("txtPublishedBy1")
    '    varArticle = gdShow.Rows(i).FindControl("customeditor2")
    '    ' varactive = gdShow.Rows(i).FindControl("ddlActive")
    '    Dim cmd As SqlCommand
    '    Dim sql As String
    '    Dim varTime1 As Date
    '    Dim varDate1 As Date
    '    varTime1 = CDate(varTime.Text)
    '    varDate1 = CDate(varDate.Text)

    '    sql = "update Articles set ArticleID=@ArticleID,Date=@Date,Time=@Time,Subject=@Subject,Article=@Article,PublishedBy=@PublishedBy where ArticleID=" & varArticleID1.Text & " and CollegeName='" & varCollegeName.Text & "'"
    '    'MsgBox(sql)
    '    cmd = New SqlCommand(sql, Con)

    '    cmd.Parameters.AddWithValue("@ArticleID", varArticleID.Text)
    '    cmd.Parameters.AddWithValue("@Date", Format(varDate1, "MM/dd/yyyy"))
    '    cmd.Parameters.AddWithValue("@Time", Format(varTime1, "HH:mm:ss tt"))
    '    cmd.Parameters.AddWithValue("@Subject", varSubject.Text)
    '    cmd.Parameters.AddWithValue("@Article", varArticle.Content)
    '    cmd.Parameters.AddWithValue("@PublishedBy", varPublishedBy.Text)
    '    ' cmd.Parameters.AddWithValue("@Active", varactive.Text)
    '    cmd.ExecuteNonQuery()
    '    gdShow.EditIndex = -1
    '    Con.Close()
    '    Show()
    '    lblMsg.Text = "Article has been Updated successfully"
    '    lblMsg.Visible = True
    'End Sub

    'Protected Sub gdShow_RowCancelingEdit(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCancelEditEventArgs) Handles gdShow.RowCancelingEdit
    '    gdShow.EditIndex = -1
    '    Show()
    'End Sub

    Sub Category()
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()
        Dim sql As String
        Dim da As SqlDataAdapter
        Dim ds As DataSet
        ddlcategory.Items.Clear()
        ddlcategory.Items.Add("Select")
        lblMsg.Visible = False
        sql = "select distinct Category from MasterArticleCategory"
        da = New SqlDataAdapter(sql, Con)
        ds = New DataSet
        da.Fill(ds, "Article")
        If ds.Tables("Article").Rows.Count > 0 Then
            For i = 0 To ds.Tables("Article").Rows.Count - 1
                If IsDBNull(ds.Tables("Article").Rows(i).Item("Category")) = False Then
                    ddlcategory.Items.Add(ds.Tables("Article").Rows(i).Item("Category"))
                End If
            Next
        End If
        Con.Close()
    End Sub

    Sub Show()

        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()
        Dim sql As String
        Dim da As SqlDataAdapter
        Dim ds As DataSet
     
        lblMsg.Visible = False
        sql = "select CollegeName,ArticleID,Date,Time,Subject,Category,Article,PublishedBy,Active from Articles"
        da = New SqlDataAdapter(sql, Con)
        ds = New DataSet
        da.Fill(ds, "Article")
        If ds.Tables("Article").Rows.Count = 0 Then
            lblMsg.Visible = True
            lblMsg.Text = ("No records found")
            gdShow.Visible = False
            lblRecords.Text = ""
            Exit Sub
        End If
        Dim varArticle As String
        For i = 0 To ds.Tables("Article").Rows.Count - 1
            If IsDBNull(ds.Tables("Article").Rows(i).Item("Article")) = False Then
                varArticle = ds.Tables("Article").Rows(i).Item("Article")
                ' varArticle = HTMLToText(varArticle)
                If varArticle <> "" Then
                    varArticle = varClass1.StripHTML(varArticle)
                End If
                ds.Tables("Article").Rows(i).Item("Article") = Mid(varArticle, 1, 160) & " ..."
            End If
        Next
        lblMsg.Visible = False
        gdShow.Visible = True
        gdShow.DataSource = ds.Tables("Article")
        gdShow.DataBind()
       
        lblRecords.Text = "Total Records : " & gdShow.Rows.Count
        Con.Close()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("myck") = "" Then
            Response.Redirect("~/default.aspx")
        End If

        If Page.IsPostBack = False Then
            varIP = Request.ServerVariables("SERVER_NAME").ToString
            txtDate.Text = Date.Now.ToShortDateString
            txtTime.Text = Date.Now.ToShortTimeString
            Category()

        End If
        
    End Sub

    Function GenArticleID() As Long
        Dim varArticleID As Long
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()
        Dim sql As String
        Dim da As SqlDataAdapter
        Dim ds As DataSet
        sql = "Select Max(ArticleID) As ArticleID from Articles "
        da = New SqlDataAdapter(sql, Con)
        ds = New DataSet()
        da.Fill(ds, "Article")
        If ds.Tables("Article").Rows.Count = 0 Then
            lblMsg.Visible = True
            lblMsg.Text = "No records found"
            Exit Function
        End If
        lblMsg.Visible = False
        If ds.Tables("Article").Rows.Count > 0 Then
            If IsDBNull(ds.Tables("Article").Rows(0).Item("ArticleID")) = False Then
                varArticleID = ds.Tables("Article").Rows(0).Item("ArticleID")
                varArticleID = CInt(varArticleID) + 1
            Else
                varArticleID = 1
            End If
        Else
            varArticleID = 1
        End If

        Con.Close()
        Return varArticleID

    End Function

    Protected Sub btnAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAdd.Click
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()
        Dim sql As String
        Dim cmd As SqlCommand
        lblMsg.Visible = False
        If ddlcategory.Text = "Select" Then
            lblMsg.Visible = True
            lblMsg.Text = "Select Category"
            Exit Sub
        End If
        If txtPublishedBy.Text = "" Then
            lblMsg.Visible = True
            lblMsg.Text = "Invalid Published By"
            Exit Sub
        End If

        If txtDate.Text = "" Then
            lblMsg.Visible = True
            lblMsg.Text = "Invalid Date"
            Exit Sub
        End If
        If Editor1.Content = "" Then
            lblMsg.Visible = True
            lblMsg.Text = "Invalid Article"
            Exit Sub
        End If
       
        If txtSubject.Text = "" Then
            lblMsg.Visible = True
            lblMsg.Text = "Invalid Subject"
            Exit Sub
        End If
        If txtDate.Text <> "" Then
            If IsDate(txtDate.Text) = False Then
                lblMsg.Visible = True
                lblMsg.Text = "Invalid  date"
                Exit Sub
            End If
        End If
        If IsDate(txtTime.Text) = False Then
            lblMsg.Visible = True
            lblMsg.Text = "Invalid  Time"
            Exit Sub
        End If
        If (System.Text.RegularExpressions.Regex.IsMatch(txtPublishedBy.Text, "^[a-zA-Z0-9.,&\\-_!?() ]+$")) = False Then
            lblMsg.Visible = True
            lblMsg.Text = "Authority can have characters only."
            Exit Sub
        End If
       
        If (System.Text.RegularExpressions.Regex.IsMatch(txtSubject.Text, "^[a-zA-Z0-9.,&\\-_!?() ]+$")) = False Then
            lblMsg.Visible = True
            lblMsg.Text = "Please enter Subject in correct Format"
            Exit Sub
        End If

        lblMsg.Visible = False

        Dim varcollege As String = ""
        sql = " Insert into Articles (Collegename,ArticleID,Date,Time,Subject,Article,PublishedBy,Active,Category,FranchiseCode,BrandName)values(@Collegename,@ArticleID,@Date,@Time,@Subject,@Article,@PublishedBy,@Active,@Category,@FranchiseCode,@BrandName)"
        cmd = New SqlCommand(sql, Con)

        cmd.Parameters.AddWithValue("@CollegeName", "ThinkNextTechnologies")
        cmd.Parameters.AddWithValue("@ArticleID", txtArticleID.Text)
        cmd.Parameters.AddWithValue("@Active", "Yes")
        cmd.Parameters.AddWithValue("@FranchiseCode", txtfranchise.Text)
        cmd.Parameters.AddWithValue("@BrandName", "ThinkNext Trining")
        If txtDate.Text <> "" Then
            Dim varDate As Date
            varDate = CDate(txtDate.Text)
            cmd.Parameters.AddWithValue("@Date", Format(varDate, "MM/dd/yyyy"))
        Else
            cmd.Parameters.AddWithValue("@Date", DBNull.Value)
        End If
        If txtTime.Text <> "" Then
            Dim varTime As Date
            varTime = CDate(txtTime.Text)
            cmd.Parameters.AddWithValue("@Time", Format(varTime, "HH:mm tt"))
        Else
            cmd.Parameters.AddWithValue("@Time", DBNull.Value)
        End If
        If txtSubject.Text <> "" Then
            cmd.Parameters.AddWithValue("@Subject", txtSubject.Text)
        Else
            cmd.Parameters.AddWithValue("@Subject", DBNull.Value)
        End If
        If Editor1.Content <> "" Then
            cmd.Parameters.AddWithValue("@Article", Editor1.Content)
        Else
            cmd.Parameters.AddWithValue("@Article", DBNull.Value)
        End If
        If txtPublishedBy.Text <> "" Then
            cmd.Parameters.AddWithValue("@PublishedBy", txtPublishedBy.Text)
        Else
            cmd.Parameters.AddWithValue("@PublishedBy", DBNull.Value)
        End If
        cmd.Parameters.AddWithValue("@Category", ddlcategory.Text)
        cmd.Connection = Con
        cmd.ExecuteNonQuery()
        cmd.Dispose()
        txtPublishedBy.Text = ""
        Editor1.Content = ""
        txtSubject.Text = ""
        Con.Close()
        Show()
        lblMsg.Visible = True
        lblMsg.Text = "Article has been successfully added."
    End Sub

    Protected Sub btnShow_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnShow.Click
        Show()
    End Sub

   

    Protected Sub btnCategory_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCategory.Click
        PanelADD.Visible = True
    End Sub

    Protected Sub btnADDNew_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnADDNew.Click

        Dim da As SqlDataAdapter
        Dim ds As New DataSet
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        lblMsg.Visible = False
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()
        Dim sql As String
        lblMsg1.Visible = False

        sql = "Select Category from MasterArticleCategory where Category = '" & txtADDNew.Text & "'"
        da = New SqlDataAdapter(sql, Con)
        da.Fill(ds, "Master")
        If ds.Tables("Master").Rows.Count > 0 Then
            lblMsg1.Visible = True
            lblMsg1.Text = "Entry Already Exist."
            Con.Close()
            txtADDNew.Text = ""
            Exit Sub
        End If

        Dim sql1 As String
        Dim inscmd As SqlCommand
        sql1 = "insert into MasterArticleCategory (Category) values (@NewValue)"
        inscmd = New SqlCommand(sql1, Con)
        inscmd.Parameters.AddWithValue("@NewVAlue", txtADDNew.Text)
        inscmd.ExecuteNonQuery()
        inscmd.Dispose()


        ddlcategory.Items.Add(txtADDNew.Text)
        txtADDNew.Text = ""
        lblMsg1.Visible = True
        lblMsg1.Text = "Entry has been added successfully."
        Con.Close()
    End Sub

 

    Protected Sub ddlcategory_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlcategory.SelectedIndexChanged
        txtArticleID.Text = GenArticleID()
    End Sub

    Protected Sub gdShow_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gdShow.RowCommand
        If e.CommandName = "Subject" Then
            Dim varSubject1 As LinkButton = CType(e.CommandSource, LinkButton)
            Dim gvRow As GridViewRow
            Dim varcollegename As New Label
            gvRow = varSubject1.BindingContainer
            varSubject1 = gdShow.Rows(gvRow.RowIndex).FindControl("lnkbtnSubject")
            varcollegename = gdShow.Rows(gvRow.RowIndex).FindControl("lblCollegeName")
            Session("Subject") = varSubject1.Text
            Dim vararticleid As New Label
            vararticleid = gdShow.Rows(gvRow.RowIndex).FindControl("lblArticleID")
            Session("ArticleID") = vararticleid.Text
            Session("StaffPage") = "Add Articles"
            Response.Redirect("~/Staff/StaffArticleDetails.aspx")
        End If
    End Sub
End Class
