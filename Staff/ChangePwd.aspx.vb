Imports System.Data.SqlClient

Partial Class ChangePwd
    Inherits System.Web.UI.Page
    Dim varclass As New Class1


    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        If varclass.Checkuser(Session("myck")) = True Then
            varclass.UPdatePassword(Session("myck"), txtpwd2.Text, "Staff")
            Dim Message, pwd As String
            pwd = varclass.getuserpassworduser(Session("myck"))
            Message = "Welcome to ThinkNext Technologies Pvt. Ltd. Your password is changed, your password is now: " & pwd & " "
            varclass.SendSMS(txtmobno.Text, Message, "Route9")
            lblmessage.Text = "Password has been updated successfully"
            txtmobno.Text = ""

        Else

        End If
    End Sub




    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("myck") = "" Then
            Response.Redirect("~/default.aspx")
        End If
        If Session("myck").ToString() <> "" Then

        Else
            Response.Redirect("~/default.aspx")
        End If
    End Sub
End Class
