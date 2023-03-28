Imports System.Data.SqlClient
Imports System.Data
Imports System.Net
Imports System.IO
Imports System.Data.Sql
Imports System.Text
Imports System.Net.Mime
Imports System.Net.Mail
Imports System.Net.Mail.Attachment
Imports System.Globalization
Imports System.Threading
Imports System.Web.UI
Imports System.Web.UI.WebControls
Partial Class BroucherDownload
    Inherits System.Web.UI.UserControl
    Dim varIP As String
    Dim sess As String

    Protected Sub btnadd_Click1(sender As Object, e As EventArgs) Handles btnadd.Click
        insert(Label1.Text)
    End Sub
   





    Public Sub insert(ByVal course As String)

        Dim varclass As Class1
        Dim con As SqlConnection
        '  Dim lnk As New LinkButton
        con = New SqlConnection()
        varclass = New Class1()
        con.ConnectionString = varclass.GetConnectionString("constr")
        Dim ses As String
        Dim sql As String
        ses = varclass.Session12(sess)
        Dim enquiryno As String
        enquiryno = GenEnquirytNo()
        If con.State = ConnectionState.Closed Then
            con.Open()
        End If
        If Emailid.Text <> "" Then
            If Phoneno.Text <> "" Then
                sql = ("insert into Admissions (EnquiryNo,EmailID,ContactNo,FileName,ModeOfEnquiry,StatusCode,Session,FranchiseCode,BrandName,Admissiondate) values('" + enquiryno + "','" + Emailid.Text + "','" + Phoneno.Text + "','" + "Thinknext Brochure" + "','" + "Lead" + "','" + "Lead" + "','" + ses + "','" + "TNK101" + "','" + "THINKNEXT TRAINING" + "',@Admissiondate)")
                Dim cmd As New SqlCommand(sql, con)
                cmd.ExecuteNonQuery()
                cmd.Dispose()
                con.Close()
                ' SendEmailbroucher()
                ' Dim SMS2nd As String

                ' SMS2nd = "Thanks for registration for Scholarship Test for FREE 6 Months Industrial Training. Exam Date:  Timings: 11:00 AM to 4:00 PM Duration: 30 Minutes Venue: ThinkNEXT Technologies Pvt. Ltd., SCF 113, Sector-65, Phase-XI, Mohali (Chandigarh) Call 0172-4656197, 7837401000, 7837402000."
                ' varclass.SendSMS(Phoneno.Text, SMS2nd, "Route9")
                Label1.Text = course
                If Label1.Text = "Brochure" Then

                    Response.Redirect("~/images/Updated Thinknext Brochure.pdf")
                ElseIf Label1.Text = "java" Then

                    Response.Redirect("~/images/Aarushi.jpg")


                End If

                Response.Redirect("~/images/Updated Thinknext Brochure.pdf")
            Else
                'Label4.Visible = True
                'Label4.ForeColor = System.Drawing.Color.Green
                'Label4.Text = "Please Enter Mobile No."

            End If

        Else
            'Label4.Visible = True
            'Label4.ForeColor = System.Drawing.Color.Green
            'Label4.Text = "Please Enter Email ID."


        End If
    End Sub
    Function GenEnquirytNo() As String
        Dim con As SqlConnection
        Dim sql As String
        Dim EnquiryNo As Integer
        Dim varClass1 As New Class1
        con = New SqlConnection(varClass1.GetConnectionString(varIP))
        con.Open()
        sql = "SELECT MAX(EnquiryNo) AS EnquiryNo FROM  Admissions where FranchiseCode='TNK101' AND BrandName='THINKNEXT TRAINING' "
        Dim cmd As New SqlCommand(sql, con)
        Dim adp As New SqlDataAdapter(cmd)
        Dim ds As New DataSet
        adp.Fill(ds, "Admissions")
        If ds.Tables("Admissions").Rows.Count > 0 Then
            If IsDBNull(ds.Tables("Admissions").Rows(0).Item("EnquiryNo")) = False Then
                EnquiryNo = Convert.ToInt32(ds.Tables("Admissions").Rows(0).Item("EnquiryNo"))
                EnquiryNo = EnquiryNo + 1
            Else
                EnquiryNo = 1
            End If
        End If
        Return EnquiryNo

    End Function
    Sub SendEmailbroucher()
        ' Dim con As SqlConnection
        Dim var As New Class1()
        Dim msg As New MailMessage()
        msg.From = New MailAddress("thinknextsmart@gmail.com", "ThinkNext Technologies Pvt. Ltd")
        'msg.From = New MailAddress("support@thinknext.co.in", "ThinkNext Technologies Pvt. Ltd")
        msg.To.Add(New MailAddress(Emailid.Text))
        Dim reader As New StreamReader(Server.MapPath("~/Email8.html"))

        Dim readFile As String = reader.ReadToEnd()

        Dim StrContent As String = ""

        StrContent = readFile
        'StrContent = StrContent.Replace("[MyName]", txtNameR.Text)
        'StrContent = StrContent.Replace("[ENO]", Session("admin").ToString())
        'StrContent = StrContent.Replace("[msg]", lblnewssss.Text)


        Dim altView As AlternateView = AlternateView.CreateAlternateViewFromString(StrContent, Nothing, MediaTypeNames.Text.Html)
        Dim yourPictureRes As New LinkedResource(Server.MapPath(".") + "//Staff//attachmentemail//ThinknextTraining.png")
        yourPictureRes.ContentId = "InlineImageID"
        altView.LinkedResources.Add(yourPictureRes)
        StrContent = StrContent.Replace("{Url}", altView.ToString())


        Dim Pictures As New LinkedResource(Server.MapPath(".") + "//images//WHATSAPP+.png")
        Pictures.ContentId = "ID"
        altView.LinkedResources.Add(Pictures)
        StrContent = StrContent.Replace("{IMG}", altView.ToString())




        msg.Subject = "6 Months Free Industrial Training"
        msg.Body = StrContent.ToString()
        msg.IsBodyHtml = True
        'Dim fname As String = ""
        Dim fname1 As String = ""
        Dim fname2 As String = ""
        fname1 = Server.MapPath("~/Staff/attachmentemail/thinknext brochure.pdf")
        fname2 = Server.MapPath("~/Staff/attachmentemail/Thinknext pamphlet.pdf")
        msg.Attachments.Add(New Attachment(fname1))
        msg.Attachments.Add(New Attachment(fname2))
        msg.AlternateViews.Add(altView)
        Dim obj As New SmtpClient()
        'obj.Host = "smtp-mail.outlook.com"
        obj.Host = "smtp.gmail.com"
        obj.Port = "587"
        obj.DeliveryMethod = SmtpDeliveryMethod.Network
        msg.Priority = MailPriority.High
        obj.UseDefaultCredentials = False
        obj.Credentials = New NetworkCredential("thinknextsmart@gmail.com", "smartthink")
        'obj.Credentials = New NetworkCredential("support@thinknext.co.in", "smartbss?")
        obj.EnableSsl = True
        obj.Timeout = 9999999
        Try
            obj.Send(msg)
            'lblmsg.Visible = True
            'lblmsg.Text = "Dear " + txtNameR.Text + "You have been registered successfully." + " Your Enquiry No is " & Session("admin").ToString()
            '  ClientScript.RegisterStartupScript(Me.GetType, "alert", "alert('Dear " & txtNameR.Text & " You have been registered successfully ');", True)
            Return
        Catch ex As Exception
            Response.Write(ex.Message)
        End Try

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Label1.Visible = False

    End Sub
End Class
