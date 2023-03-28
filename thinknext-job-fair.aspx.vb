Imports System.Linq
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.HtmlControls
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Xml.Linq
Imports System.Data.SqlClient
Imports System.Net.Mail
Imports System.IO
Imports System.Net.Mime
Imports System.Net
Imports System.Data
Imports System.Threading
Imports System.Net.Mail.Attachment
Imports System.Globalization
Partial Class thinknext_job_fair
    Inherits System.Web.UI.Page
    Dim varIP As String
    Dim sess As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
        System.Threading.Thread.Sleep(0)
        Dim con As SqlConnection
        Dim varclass As New Class1
        con = New SqlConnection(varclass.GetConnectionString(varIP))
        con.Open()
        Dim email As String = ""
        If txtEmailR.Text <> email Then


            ' SendEmailReg()
            'Dim con As SqlConnection
            ' con = New SqlConnection(varclass.GetConnectionString(varIP))
            'con.Open()
            Dim sql As String




            sql = "insert into tb_jobfair (Name,EmailID,MobileNo,Qualification,Registration_date) values(@Name,@EmailID,@MobileNo,@Qualification, convert(date, Getdate()))"
            Dim cmd As New SqlCommand(sql, con)
            Dim daa As SqlDataAdapter = New SqlDataAdapter(sql, con)
            cmd.Parameters.AddWithValue("@Name", txtNameR.Text)
            cmd.Parameters.AddWithValue("@EmailID", txtEmailR.Text)
            cmd.Parameters.AddWithValue("@MobileNo", txtContectR.Text)
            cmd.Parameters.AddWithValue("@Qualification", txtqualificationR.Text)

            cmd.ExecuteNonQuery()
            cmd.Dispose()
            con.Close()
            lblmsg.Visible = True
            lblmsg.Text = "You are Registered Successfully"
            lblmsg.Focus()
            Dim SMS2nd As String
            SMS2nd = "Dear " & txtNameR.Text & ",Thanks for registration in ThinkNEXT-10th Mega Job Fair (Monthly). Date: 24-02-2018  Timings: 10:00 AM to 2:00 PM Venue: SCF 113, Sector 65, Phase-XI, Mohali (Chandigarh) Call 7837401000, 7837402000, 7837403000"
            'SMS2nd = "Dear " & txtNameR.Text & ", Thanks for registration for Online Industrial Training Test for Industrial Training. Exam Date: " & lblnewssss.Text & " Timings: 11:00 AM to 4:00 PM Duration: 30 Minutes Venue: ThinkNEXT Technologies Pvt. Ltd., SCF 113, Sector-65, Phase-XI, Mohali (Chandigarh) Call 0172-4656197, 7837401000, 7837402000."
            'SMS2nd = SMS2nd & " Venue : ThinkNEXT Technologies Pvt. Ltd., SCF 113, Sector-65, Phase-XI, Mohali (Chandigarh) Call: 0172-4656197, 7837401000, 7837402000. "

            ' varclass.SendSMS(txtContectR.Text, Message, "Route11")
            varclass.SendSMS(txtContectR.Text, SMS2nd, "Route9")
            txtContectR.Text = ""
            txtEmailR.Text = ""
            txtNameR.Text = ""
            txtqualificationR.Text = ""
        End If
    End Sub
    Sub SendEmailReg()
        ' Dim con As SqlConnection
        Dim var As New Class1()
        Dim msg As New MailMessage()
        msg.From = New MailAddress("info@thinknext.online", "ThinkNext Technologies Pvt. Ltd")
        'msg.From = New MailAddress("support@thinknext.co.in", "ThinkNext Technologies Pvt. Ltd")
        msg.To.Add(New MailAddress(txtEmailR.Text))

        Dim StrContent As String = ""


        StrContent = StrContent.Replace("[MyName]", txtNameR.Text)
        StrContent = StrContent.Replace("[ENO]", Session("admin").ToString())
        ' StrContent = StrContent.Replace("[msg]", lblnewssss.Text)


        Dim altView As AlternateView = AlternateView.CreateAlternateViewFromString(StrContent, Nothing, MediaTypeNames.Text.Html)
        'Dim yourPictureRes As New LinkedResource(Server.MapPath(".") + "//Staff//attachmentemail//ThinknextTraining.png")
        'yourPictureRes.ContentId = "InlineImageID"
        'altView.LinkedResources.Add(yourPictureRes)
        'StrContent = StrContent.Replace("{Url}", altView.ToString())


        'Dim Pictures As New LinkedResource(Server.MapPath(".") + "//images//WHATSAPP+.png")
        'Pictures.ContentId = "ID"
        'altView.LinkedResources.Add(Pictures)
        'StrContent = StrContent.Replace("{IMG}", altView.ToString())




        msg.Subject = "ThinkNEXT Job Fair"
        msg.Body = "Dear " & txtNameR.Text & ",Thanks For registration In ThinkNEXT jobfair. Fair will held On 24-02-2018 ."
        msg.IsBodyHtml = True
        'Dim fname As String = ""
        'Dim fname1 As String = ""
        'Dim fname2 As String = ""
        'fname1 = Server.MapPath("~/Staff/attachmentemail/thinknext brochure.pdf")
        'fname2 = Server.MapPath("~/Staff/attachmentemail/Thinknext pamphlet.pdf")
        'msg.Attachments.Add(New Attachment(fname1))
        'msg.Attachments.Add(New Attachment(fname2))
        msg.AlternateViews.Add(altView)
        Dim obj As New SmtpClient()
        'obj.Host = "smtp-mail.outlook.com"
        obj.Host = "relay-hosting.secureserver.net"
        'obj.Port = "587"
        obj.DeliveryMethod = SmtpDeliveryMethod.Network
        msg.Priority = MailPriority.High
        obj.UseDefaultCredentials = False
        obj.Credentials = New NetworkCredential("info@thinknext.online", "Yahoo456$%^")
        'obj.Credentials = New NetworkCredential("support@thinknext.co.In", "smartbss?")
        'obj.EnableSsl = True
        obj.Timeout = 9999999
        Try
            obj.Send(msg)
            'lblmsg.Visible = True
            'lblmsg.Text = "Dear " + txtNameR.Text + "You have been registered successfully." + " Your Enquiry No Is " & Session("admin").ToString()
            '  ClientScript.RegisterStartupScript(Me.GetType, "alert", "alert('Dear " & txtNameR.Text & " You have been registered successfully ');", True)
            Return
        Catch ex As Exception
            Response.Write(ex.Message)
        End Try

    End Sub
End Class
