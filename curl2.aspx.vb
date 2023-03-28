
Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Data
Imports System
Imports System.Web.UI.WebControls
Imports System.Net
Imports System.IO
Imports System.Net.WebPermission
Imports System.Xml
Imports System.Text
Imports System.Security.Cryptography
Imports System.Net.Mail
Imports System.Threading
Imports System.Net.Mail.Attachment
Imports System.Globalization
Imports System.Web
Imports System.Net.Mime
Partial Class curl2
    Inherits System.Web.UI.Page


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim url As String
        Dim baseurl As String
        Dim rowCounter As Integer = 0
        Dim UserName As String
        ' UserName = SMSUserName()
        Dim Password As String
        ' Password = SMSUserPassword()
        Dim GetSenderName As String
        ' GetSenderName = SenderName()
        'Using System.Net
        ServicePointManager.Expect100Continue = True
        ServicePointManager.SecurityProtocol = CType(3072, SecurityProtocolType)
        'ServicePointManager.SecurityProtocol = SecurityProtocolType.Ssl3
        ' Use SecurityProtocolType.Ssl3 if needed for compatibility reasons
        Dim oWeb As New System.Net.WebClient()
        oWeb.Headers.Add("Content-Type", "application/x-www-form-urlencoded")
        Dim bytRetData As Byte()
        ' If Route = "whatsappmsg" Then
        Dim client As New WebClient()
        baseurl = "https://connect.pabbly.com/workflow/sendwebhookdata/IjcxMDE3Ig_3D_3D?Name=Higanta Kalita&MobileNo=7696160535&Email=abc@gmail.com&Course=PHP&Comments=Arrange a Call Back&PageURL=https://www.thinknexttraining.com/"
        Dim data As Stream = client.OpenRead(baseurl)
            Dim reader As New StreamReader(data)
            Dim s As String = reader.ReadToEnd()
            data.Close()
        reader.Close()
        Response.Write(s)

        ' Return s
        'End If
    End Sub
End Class
