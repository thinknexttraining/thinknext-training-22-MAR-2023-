﻿Imports System.IO
Imports System.Net
Imports System.Net.Mail
Partial Class testing
    Inherits System.Web.UI.Page
    Protected Sub SendEmail(sender As Object, e As EventArgs)
        Using mm As New MailMessage("  info@thinknexttraining.com", txtTo.Text)
            mm.Subject = txtSubject.Text
            mm.Body = txtBody.Text
            If fuAttachment.HasFile Then
                Dim FileName As String = Path.GetFileName(fuAttachment.PostedFile.FileName)
                mm.Attachments.Add(New Attachment(fuAttachment.PostedFile.InputStream, FileName))
            End If
            mm.IsBodyHtml = False
            Dim smtp As New SmtpClient()
            smtp.Host = "smtp.gmail.com"
            smtp.EnableSsl = True
            Dim NetworkCred As New NetworkCredential("info@thinknexttraining.com", "Hello456$%^")
            smtp.UseDefaultCredentials = True
            smtp.Credentials = NetworkCred
            smtp.Port = 587
            smtp.Send(mm)
            ClientScript.RegisterStartupScript(Me.GetType, "alert", "alert('Email sent.');", True)
        End Using
    End Sub
End Class
