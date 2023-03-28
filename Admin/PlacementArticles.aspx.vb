Imports System.Data
Imports System.Data.SqlClient
Partial Class PlacementArticles
    Inherits System.Web.UI.Page
    Dim varIP As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("myck") = "" Then
            Response.Redirect("~/default.aspx")
        End If
        If (Page.IsPostBack = False) Then
            varIP = Request.ServerVariables("SERVER_NAME").ToString
            Display()
        End If
    End Sub

    Sub Display()
      
        varIP = Request.ServerVariables("SERVER_NAME").ToString
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()
        Dim sql As String
        Dim da As SqlDataAdapter
        Dim ds As DataSet
        sql = "Select ArticleID,Date,Time,Subject,Article,PublishedBy from Articles where FranchiseCode='" + txtfranchise.Text + "' order by Date DESC"
        da = New SqlDataAdapter(sql, Con)
        ds = New DataSet
        da.Fill(ds, "Article")
        If ds.Tables("Article").Rows.Count = 0 Then
            gdShow.Visible = False
            lblMsg.Text = ("No records found")
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
                ds.Tables("Article").Rows(i).Item("Article") = Mid(varArticle, 1, 97) & " ..."
            End If
        Next
        gdShow.Visible = True
        lblMsg.Text = ""
        gdShow.DataSource = ds.Tables("Article")
        gdShow.DataBind()
        Dim Rowctr As Integer
        Rowctr = 0
        Dim varSubject As LinkButton
        While Rowctr < gdShow.Rows.Count

            varSubject = gdShow.Rows(Rowctr).FindControl("lnkbtnSubject")
            If IsDBNull(ds.Tables("Article").Rows(Rowctr).Item("Subject")) = False Then
                varSubject.Text = ds.Tables("Article").Rows(Rowctr).Item("Subject")
            Else
                varSubject.Text = ""
            End If

            Rowctr = Rowctr + 1
        End While
        Con.Close()

    End Sub
  
  
    Protected Sub gdShow_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles gdShow.PageIndexChanging
        gdShow.PageIndex = e.NewPageIndex
        'gdbind()
        Display()
    End Sub
    Sub gdbind()
        'Dim varTitle1 As String
        'Dim varClass As New Class1
        'varTitle1 = varClass.SetTitle
        'Page.Header.Title = varTitle1
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()
        Dim sql1 As String
        Dim ds1 As DataSet
        Dim da1 As SqlDataAdapter
        sql1 = "Select CollegeName from Admissions where FranchiseCode='" + txtfranchise.Text + "' and IDNo=" & Session("myck").ToString()
        da1 = New SqlDataAdapter(sql1, Con)
        ds1 = New DataSet
        da1.Fill(ds1, "Admissions")
        If ds1.Tables("Admissions").Rows.Count = 0 Then
            lblMsg.Visible = True
            lblMsg.Text = "No records found"
        End If
        lblMsg.Visible = False
        Dim varCollege1 As String
        varCollege1 = ds1.Tables("Admissions").Rows(0).Item("CollegeName")
        Dim ds As DataSet
        Dim da As SqlDataAdapter
        Dim sql As String
        sql = "Select ArticleID,Date,Time,Subject,Article,PublishedBy from Articles where FranchiseCode='" + txtfranchise.Text + "' and CollegeName='" & varCollege1 & "' and Category='Placement'  order by " & ViewState("sortField1").ToString() & " " & ViewState("sortDirection1").ToString()
        ds = New DataSet
        da = New SqlDataAdapter(sql, Con)
        ds = New DataSet
        da.Fill(ds, "Article")
        If ds.Tables("Article").Rows.Count = 0 Then
            lblMsg.Visible = True
            lblMsg.Text = ("No records found")
            gdShow.Visible = False
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
                ds.Tables("Article").Rows(i).Item("Article") = Mid(varArticle, 1, 97) & " ..."
            End If
        Next
        lblMsg.Visible = False
        gdShow.DataSource = ds.Tables("Article")
        gdShow.DataBind()
        gdShow.Visible = True
        Con.Close()

    End Sub
    Protected Sub gdShow_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gdShow.RowCommand

        If e.CommandName = "Subject" Then
            Dim varSubject1 As LinkButton = CType(e.CommandSource, LinkButton)
            Dim gvRow As GridViewRow
            gvRow = varSubject1.BindingContainer
            varSubject1 = gdShow.Rows(gvRow.RowIndex).FindControl("lnkbtnSubject")
            Dim vararticleID As New Label
            vararticleID = gdShow.Rows(gvRow.RowIndex).FindControl("lblArticleID")
            Session("ArticleID") = vararticleID.Text
            Session("Subject") = varSubject1.Text
            Session("ArticlePage") = "Admin"
            Response.Redirect("~/Admin/StaffArticleDetails.aspx")
        End If

    End Sub
End Class
