Imports System.Data
Imports System.Data.SqlClient
Imports System.Drawing
Imports System.Linq




Partial Class MasterAdmin
    Inherits System.Web.UI.MasterPage

    Dim varip As Integer
    Dim varname As String
    Dim varclass As New Class1

    Public Function Backgroundimage(ByVal Usename As String) As String
        Dim con As SqlConnection
        'Dim varclass As New Class1
        Dim imagepath As String
        con = New SqlConnection(varclass.GetConnectionString(varip))
        'Dim qry As String = "Select mb.imagepath,mub.Username from Masterbackgrounds mb INNER JOIN  masteruserbackground mub ON Masterbackgrounds.imageid=masteruserbackground.imageid where Usename=" & Usename & " "
        Dim qry As String
        qry = "SELECT        MasterBackgrounds.ImagePath "
        qry = qry & "  FROM  MasterBackgrounds INNER JOIN"
        qry = qry & "  MasterUserBackground ON MasterBackgrounds.ImageId = MasterUserBackground.ImageId"
        qry = qry & "  WHERE(MasterUserBackground.UserName = " & Usename & ")"
        Dim adp As New SqlDataAdapter(qry, con)
        Dim ds As New DataSet()
        adp.Fill(ds, "tbimage")
        If ds.Tables("tbimage").Rows.Count > 0 Then
            imagepath = ds.Tables("tbimage").Rows(0)("imagepath").ToString()
        Else
            imagepath = ""
        End If

        Return imagepath

    End Function


    Protected Sub ImageButton4_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton4.Click

        Session.Abandon()
       
        Response.Redirect("~/default.aspx")
    End Sub

    Protected Sub ImageButton3_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton3.Click
        Response.Redirect("~/Staff/CreateProfile.aspx")
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

            ' End If

            'If Request.Cookies("Myck").Value.ToString() <> "" Then
            'sql = " select *  from Staff where IDNo=" & Request.Cookies("Myck").Value.ToString()
            sql = " select *  from Staff where IDNo=" & Session("myck").ToString()

            ds = New DataSet
            Dim cmd As New SqlCommand(sql, Con)
            cmd.CommandTimeout = 0
            da = New SqlDataAdapter(cmd)

            da.Fill(ds, "Staff")
            If ds.Tables("Staff").Rows.Count = 0 Then
                lblmsg.Visible = True
                lblmsg.Text = "No records found"
                Exit Sub
            End If
            lblmsg.Visible = True
            lblmsg.Text = "Welcome : " & ds.Tables("Staff").Rows(0).Item("Name") & " " & Session("myck").ToString() & " "

        End If
    End Sub


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'If Not Request.Cookies("userName") Is Nothing Then
        If Session("myck") = "" Then
            Response.Redirect("~/default.aspx")
        End If
        'Session.Timeout = 1440
        If Page.IsPostBack = False Then
            PersonalDetail()
        End If


        'men()
    End Sub

    Protected Sub ImageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        Response.Redirect("~/Staff/AdminPersonalProfile.aspx")
    End Sub
End Class

