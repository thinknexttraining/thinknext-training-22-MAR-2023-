Imports System.Data.SqlClient
Imports System.Data

Partial Class MasterPageStudent
    Inherits System.Web.UI.MasterPage

    Dim varname As String
    Dim varclass As New Class1
    Dim varIP As String
    Protected Sub ImageButton4_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton4.Click


        Session.Abandon()
        
        Response.Redirect("~/default.aspx")

    End Sub
    Protected Sub ImageButton3_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton3.Click
        Response.Redirect("~/Students/PersonalProfile.aspx")
    End Sub
    Protected Sub ImageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        '.........
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("myck") = "" Then
            Response.Redirect("~/default.aspx")
        End If
        'Session.Timeout = 1440
        If Page.IsPostBack = False Then
            PersonalDetail()
        End If
    End Sub
    Sub PersonalDetail()
        Dim sql As String
        Dim da As SqlDataAdapter
        Dim ds As DataSet
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()
        If Session("myck") <> "" Then
            sql = " select *  from Admissions where IDNo=" & Session("myck").ToString()
            da = New SqlDataAdapter(sql, Con)
            ds = New DataSet
            da.Fill(ds, "Admissions")
            If ds.Tables("Admissions").Rows.Count = 0 Then
                lblmsg.Visible = True
                lblmsg.Text = "No records found"
                Exit Sub
            End If
            lblmsg.Visible = True
            lblmsg.Text = "Welcome : " & ds.Tables("Admissions").Rows(0).Item("StudentName") & " - " & Session("myck").ToString() & " "
        End If
    End Sub
End Class

