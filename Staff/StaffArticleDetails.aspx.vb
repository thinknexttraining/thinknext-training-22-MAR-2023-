Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.UI
Imports AjaxControlToolkit.HTMLEditor

Partial Class StaffArticleDetails

    Inherits System.Web.UI.Page
    Dim varIP As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("myck") = "" Then
            Response.Redirect("~/default.aspx")
        End If



        If Page.IsPostBack = False Then

            Dim sql As String
            Dim da As SqlDataAdapter
            Dim ds As DataSet
            varIP = Request.ServerVariables("SERVER_NAME").ToString
            Dim Con As SqlConnection
            Dim varClass1 As New Class1
            Con = New SqlConnection(varClass1.GetConnectionString(varIP))
            Con.Open()
            ' Session("ArticleID"), Session("Subject")
            sql = "Select Subject,Date,Article,PublishedBy from Articles where ArticleID= '" & Session("ArticleID") & "' and Subject= '" & Session("Subject") & "' and FranchiseCode='" + txtfranchise.Text + "' "
            da = New SqlDataAdapter(sql, Con)
            ds = New DataSet
            da.Fill(ds, "Articles")
            If ds.Tables("Articles").Rows.Count = 0 Then
                lblMsg.Text = ("No records found")
                Exit Sub
            End If
            lblMsg.Text = ""
            If IsDBNull(ds.Tables("Articles").Rows(0).Item("Subject")) = False Then
                lblSubject.Text = ds.Tables("Articles").Rows(0).Item("Subject")
            Else
                lblSubject.Text = ""
            End If
            If IsDBNull(ds.Tables("Articles").Rows(0).Item("PublishedBy")) = False Then
                lblPublishedBy.Text = "Published By : " & ds.Tables("Articles").Rows(0).Item("publishedBy")
            Else
                lblPublishedBy.Text = ""
            End If
            If IsDBNull(ds.Tables("Articles").Rows(0).Item("Date")) = False Then
                lblDate.Text = ds.Tables("Articles").Rows(0).Item("Date")
            Else
                lblDate.Text = ""
            End If
            If IsDBNull(ds.Tables("Articles").Rows(0).Item("Article")) = False Then
                'customeditor1.Content = ds.Tables("News").Rows(0).Item("Article")
                Editor1.Content = ds.Tables("Articles").Rows(0).Item("Article")

            Else
                Editor1.Content = ""
                ' customeditor1.Content = ""

            End If
            Con.Close()
            da.Dispose()
            ds.Dispose()
        End If

       
    End Sub

    Protected Sub btnBack_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnBack.Click
        If Session("ArticlePage").ToString = "Admin" Then
            Session("ArticlePage") = Nothing
            Response.Redirect("~/Admin/PlacementArticles.aspx")
        ElseIf Session("ArticlePage").ToString = "Student" Then
            Response.Redirect("ArticlesStaff.aspx")
            Session("ArticlePage") = Nothing
        End If
    End Sub
End Class
