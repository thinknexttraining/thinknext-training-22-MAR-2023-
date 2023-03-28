Imports System.Data
Imports System.Data.SqlClient
Imports System.IO
Imports System.Net
'Imports System.Web.Mail
Imports System.Net.Mail
Imports System.Web.Security
Imports System.Web
Imports System.Configuration
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
'Imports System.Data.SqlClient
Imports System.Net.NetworkInformation
Imports System.Collections

Partial Class Students_ShowMarks
    Inherits System.Web.UI.Page
    Dim strBody As String
    Dim mail As MailMessage
    Dim varIP As String


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("myck") = "" Then
            Response.Redirect("~/default.aspx")
        End If
        If Page.IsPostBack = False Then
            varIP = Request.ServerVariables("SERVER_NAME").ToString
            Display()
        End If

    End Sub
    Sub Display()
        lblMsg.Text = ""
        Dim con As SqlConnection
        Dim varClass1 As New Class1
        con = New SqlConnection(varClass1.GetConnectionString(varIP))
        con.Open()
        Dim da1 As SqlDataAdapter
        Dim ds1 As New DataSet
        Dim sql1 As String
        Dim rowctr As Integer = 0
        sql1 = "select * from AttMarks where FranchiseCode='" + txtfranchiseCode.Text + "' and IDNo=" & Session("myck").ToString() & ""
        sql1 = sql1 & "order by AttMarksDate Desc"
        da1 = New SqlDataAdapter(sql1, con)
        da1.Fill(ds1, "AttMarks")
        If ds1.Tables("AttMarks").Rows.Count > 0 Then
            gvSubjectDetail.DataSource = ds1.Tables("thinknext.AttMarks")
            gvSubjectDetail.DataBind()
            lblMsg.Visible = True
            lblMsg.Text = "Total Record : " & ds1.Tables("AttMarks").Rows.Count
        Else
            gvSubjectDetail.DataSource = Nothing
            lblMsg.Visible = True
            lblMsg.Text = "Sorry! No Record Found."
        End If
        con.Close()
    End Sub
End Class
