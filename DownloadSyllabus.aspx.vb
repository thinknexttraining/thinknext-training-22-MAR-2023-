Imports System.Data.SqlClient
Imports System.Web
Imports System.IO
Imports System.Data
Imports System.Net
Imports System.Data.Sql
Imports System.Text
Imports System.Net.Mime
Imports System.Net.Mail
Imports System.Net.Mail.Attachment
Imports System.Globalization
Imports System.Threading
Partial Class BroucherDownload
    Inherits System.Web.UI.Page
    Dim varIP As String
    Dim sess As String

    Protected Sub btnadd_Click1(sender As Object, e As EventArgs) Handles btnadd.Click


        If (Emailid.Text = "") Then
            msg.Visible = True
            msg.Text = "Please Enter Valid Email Id"


        ElseIf (Phoneno.Text = "") Then
            msg.Visible = True
            msg.Text = "Please Enter Valid  Mobile No."

            Exit Sub
        Else
            msg.Visible = False
            msg.Text = ""
            System.Threading.Thread.Sleep(0)
            insert()


        End If
        'Dim pageName As String = Path.GetFileName(Request.Path)
        'lblresult.Text = Convert.ToString("Current Page Name is: ") & pageName

    End Sub
    Public Sub insert()

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
                sql = ("insert into Admissions (EnquiryNo,EmailID,ContactNo,FileName,ModeOfEnquiry,StatusCode,Session,FranchiseCode,BrandName,Admissiondate) values ('" + enquiryno + "','" + Emailid.Text + "','" + Phoneno.Text + "','" + "Thinknext Brochure" + "','" + Label1.Text + "','" + "Enquiry" + "','" + ses + "','" + "TNK101" + "','" + "THINKNEXT TRAINING" + "',@Admissiondate)")
                Dim cmd As New SqlCommand(sql, con)
                cmd.Parameters.AddWithValue("@Admissiondate", Format(Now, "MM/dd/yyyy"))
                cmd.ExecuteNonQuery()
                cmd.Dispose()
                con.Close()
                'varclass.SendSMSBytePaper(Phoneno.Text, "Not Found", Emailid.Text, Label1.Text)
                varclass.SendLeads4(Phoneno.Text, "Student", Emailid.Text, "None", "Download Syllabus", "https://www.thinknexttraining.com/")

                ' SendEmailbroucher()
                ' Dim SMS2nd As String

                ' SMS2nd = "Thanks for registration for Scholarship Test for FREE 6 Months Industrial Training. Exam Date:  Timings: 11:00 AM to 4:00 PM Duration: 30 Minutes Venue: ThinkNEXT Technologies Pvt. Ltd., SCF 113, Sector-65, Phase-XI, Mohali (Chandigarh) Call 0172-4656197, 7837401000, 7837402000."
                ' varclass.SendSMS(Phoneno.Text, SMS2nd, "Route9")

                If Label1.Text = "Brochure" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=ThinkNEXT-Brouchure.pdf")
                    Response.TransmitFile(Server.MapPath("~/images/ThinkNEXT-Brochure.pdf"))

                    Response.End()


                ElseIf Label1.Text = "SAP Broucher" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=SAP.pdf")
                    Response.TransmitFile(Server.MapPath("~/Broucher/SAP.pdf"))
                    Response.End()

                ElseIf Label1.Text = "DotNet Broucher" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=Dotnet.pdf")
                    Response.TransmitFile(Server.MapPath("~/Broucher/Dotnet.pdf"))
                    Response.End()

                ElseIf Label1.Text = "Java Broucher" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=Java.pdf")
                    Response.TransmitFile(Server.MapPath("~/Broucher/Java.pdf"))
                    Response.End()

                ElseIf Label1.Text = "Android Broucher" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=Android Training Chandigarh Mohali .pdf") 'need android pdf 
                    Response.TransmitFile(Server.MapPath("~/Broucher/Android Training Chandigarh Mohali .pdf")) 'thinknext brouchure has provided temporarily
                    Response.End()

                ElseIf Label1.Text = "iPhone Broucher" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=iphone.pdf")
                    Response.TransmitFile(Server.MapPath("~/Broucher/iphone.pdf"))
                    Response.End()

                ElseIf Label1.Text = "PHP Broucher" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=PHP training in Chandigarh Mohali.pdf")
                    Response.TransmitFile(Server.MapPath("~/Broucher/PHP training in Chandigarh Mohali.pdf"))
                    Response.End()
                    'Response.Redirect("~/images/Updated Thinknext Brochure.pdf")
                    'Response.Redirect("~/images/Aarushi.jpg") 
                ElseIf Label1.Text = "Web Designing Broucher" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=Web Designing.pdf")
                    Response.TransmitFile(Server.MapPath("~/Broucher/Webdesigning.pdf"))
                    Response.End()
                ElseIf Label1.Text = "Software Testing Broucher" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=softwaretesting.pdf")
                    Response.TransmitFile(Server.MapPath("~/Broucher/softwaretesting.pdf"))
                    Response.End()
                ElseIf Label1.Text = "Hardware and Networking Broucher" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=NetworkingTraining.pdf") 'need android pdf 
                    Response.TransmitFile(Server.MapPath("~/images/Updated Thinknext Brochure.pdf")) 'thinknext brouchure has provided temporarily
                    Response.End()
                ElseIf Label1.Text = "CCNA Broucher" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=ccna.pdf")
                    Response.TransmitFile(Server.MapPath("~/Broucher/ccna.pdf"))
                    Response.End()
                ElseIf Label1.Text = "CCNP Broucher" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=Ccnp.pdf") 'need android pdf 
                    Response.TransmitFile(Server.MapPath("~/images/Updated Thinknext Brochure.pdf")) 'thinknext brouchure has provided temporarily
                    Response.End()
                ElseIf Label1.Text = "MCITP Broucher" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=mcitp.pdf")
                    Response.TransmitFile(Server.MapPath("~/Broucher/mcitp.pdf"))
                    Response.End()
                ElseIf Label1.Text = "SEO Broucher" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=SEO.pdf")
                    Response.TransmitFile(Server.MapPath("~/Broucher/SEO.pdf"))
                    Response.End()
                ElseIf Label1.Text = "C Plus Broucher" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=cc.pdf")
                    Response.TransmitFile(Server.MapPath("~/Broucher/cc.pdf"))
                    Response.End()
                ElseIf Label1.Text = "Online Bidding Broucher" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=Onlinebidding.pdf") 'need android pdf 
                    Response.TransmitFile(Server.MapPath("~/images/Updated Thinknext Brochure.pdf")) 'thinknext brouchure has provided temporarily
                    Response.End()
                ElseIf Label1.Text = "Animation and Multimedia Broucher" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=AnimationandMultimedia.pdf") 'need android pdf 
                    Response.TransmitFile(Server.MapPath("~/images/Updated Thinknext Brochure.pdf")) 'thinknext brouchure has provided temporarily
                    Response.End()
                ElseIf Label1.Text = "MATLAB Broucher" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=matlab.pdf")
                    Response.TransmitFile(Server.MapPath("~/Broucher/matlab.pdf"))
                    Response.End()
                ElseIf Label1.Text = "Big Data Broucher" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=bigdatahadoop.pdf") 'need android pdf 
                    Response.TransmitFile(Server.MapPath("~/images/Updated Thinknext Brochure.pdf")) 'thinknext brouchure has provided temporarily
                    Response.End()
                ElseIf Label1.Text = "Digital Marketing Broucher" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=digitalmarketing.pdf") 'need android pdf 
                    Response.TransmitFile(Server.MapPath("~/images/Updated Thinknext Brochure.pdf")) 'thinknext brouchure has provided temporarily
                    Response.End()
                ElseIf Label1.Text = "Embedded System Brochure" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=EmbeddedSystem.pdf")
                    Response.TransmitFile(Server.MapPath("~/Broucher/EmbeddedSystem.pdf"))
                    Response.End()
                ElseIf Label1.Text = "PLC SCADA Brochure" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=plcscada.pdf")
                    Response.TransmitFile(Server.MapPath("~/Broucher/plcscada.pdf"))
                    Response.End()
                ElseIf Label1.Text = "VLSI Brochure" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename= vlsi.pdf")
                    Response.TransmitFile(Server.MapPath("~/Broucher/vlsi.pdf"))
                    Response.End()
                ElseIf Label1.Text = "PDMS Brochure" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=digitalmarketing.pdf") 'need android pdf 
                    Response.TransmitFile(Server.MapPath("~/images/Updated Thinknext Brochure.pdf")) 'thinknext brouchure has provided temporarily
                    Response.End()
                ElseIf Label1.Text = "Autocad Brochure" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=autocad.pdf")
                    Response.TransmitFile(Server.MapPath("~/Broucher/autocad.pdf"))
                    Response.End()
                ElseIf Label1.Text = "Solid Brochure" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=autocad.pdf")
                    Response.TransmitFile(Server.MapPath("~/Broucher/solid.pdf"))
                    Response.End()
                ElseIf Label1.Text = "Pro Brochure" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=digitalmarketing.pdf") 'need android pdf 
                    Response.TransmitFile(Server.MapPath("~/images/Updated Thinknext Brochure.pdf")) 'thinknext brouchure has provided temporarily
                    Response.End()
                ElseIf Label1.Text = "Catia Brochure" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=catiapdf.pdf")
                    Response.TransmitFile(Server.MapPath("~/Broucher/catiapdf.pdf"))
                    Response.End()
                ElseIf Label1.Text = "STAADpro Brochure" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=STAADpro.pdf")
                    Response.TransmitFile(Server.MapPath("~/Broucher/STAADpro.pdf"))
                    Response.End()
                ElseIf Label1.Text = "Revit Broucher" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=RevitCourses.pdf")
                    Response.TransmitFile(Server.MapPath("~/Broucher/RevitCourses.pdf"))
                    Response.End()
                ElseIf Label1.Text = "3dsmax Broucher" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=3dsmax.pdf") 'need android pdf 
                    Response.TransmitFile(Server.MapPath("~/images/Updated Thinknext Brochure.pdf")) 'thinknext brouchure has provided temporarily
                    Response.End()
                ElseIf Label1.Text = "Primavera Broucher" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=Primavera.pdf") 'need android pdf 
                    Response.TransmitFile(Server.MapPath("~/images/Updated Thinknext Brochure.pdf")) 'thinknext brouchure has provided temporarily
                    Response.End()
                ElseIf Label1.Text = "CNC Broucher" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=Primavera.pdf")
                    Response.TransmitFile(Server.MapPath("~/Broucher/CNC.pdf"))
                    Response.End()
                ElseIf Label1.Text = "Google Sketchup Broucher" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=GoogleSketchup.pdf") 'need android pdf 
                    Response.TransmitFile(Server.MapPath("~/images/Updated Thinknext Brochure.pdf")) 'thinknext brouchure has provided temporarily
                    Response.End()
                ElseIf Label1.Text = "Etabs Broucher" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=Etabs.pdf") 'need android pdf 
                    Response.TransmitFile(Server.MapPath("~/images/Updated Thinknext Brochure.pdf")) 'thinknext brouchure has provided temporarily
                    Response.End()
                ElseIf Label1.Text = "CSE Broucher" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=CSE.pdf") 'need android pdf 
                    Response.TransmitFile(Server.MapPath("~/images/Updated Thinknext Brochure.pdf")) 'thinknext brouchure has provided temporarily
                    Response.End()
                ElseIf Label1.Text = "ECE Broucher" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=CSE.pdf") 'need android pdf 
                    Response.TransmitFile(Server.MapPath("~/images/Updated Thinknext Brochure.pdf")) 'thinknext brouchure has provided temporarily
                    Response.End()
                ElseIf Label1.Text = "Mechanical Broucher" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=Mechanical.pdf") 'need android pdf 
                    Response.TransmitFile(Server.MapPath("~/images/Updated Thinknext Brochure.pdf")) 'thinknext brouchure has provided temporarily
                    Response.End()
                ElseIf Label1.Text = "Civil Broucher" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=Mechanical.pdf") 'need android pdf 
                    Response.TransmitFile(Server.MapPath("~/images/Updated Thinknext Brochure.pdf")) 'thinknext brouchure has provided temporarily
                    Response.End()
                ElseIf Label1.Text = "Electrical Broucher" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=Mechanical.pdf") 'need android pdf 
                    Response.TransmitFile(Server.MapPath("~/images/Updated Thinknext Brochure.pdf")) 'thinknext brouchure has provided temporarily
                    Response.End()
                ElseIf Label1.Text = "Management Internship Brochure" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=Management-Internship.pdf") 'need android pdf 
                    Response.TransmitFile(Server.MapPath("~/Broucher/Management-Internship.pdf")) 'thinknext brouchure has provided temporarily
                    Response.End()
                ElseIf Label1.Text = "Management Internship Brochure With Syllabus" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=Management-Course-Syllabus.pdf") 'need android pdf 
                    Response.TransmitFile(Server.MapPath("~/Broucher/Management-Course-Syllabus.pdf")) 'thinknext brouchure has provided temporarily
                    Response.End()
                ElseIf Label1.Text = "ThinkNEXT IELTS" Then
                    Response.ContentType = "application/pdf"
                    Response.AppendHeader("Content-Disposition", "attachment; filename=thinknext-ielts.pdf") 'need android pdf 
                    Response.TransmitFile(Server.MapPath("~/images/thinknext-ielts.pdf")) 'thinknext brouchure has provided temporarily
                    Response.End()
                Else


                End If
            Else
                'Label4.Visible = True
                'Label4.ForeColor = System.Drawing.Color.Green
                'Label4.Text = "Please Enter Mobile No. "

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
        If Not IsPostBack Then
            Dim script As String = "$(document).ready(function () { $('[id*=btnadd]').click1(); });"
            ClientScript.RegisterStartupScript(Me.GetType, "load", script, True)
        End If
        Dim dowbload As String

        Label1.Visible = False
        If Label1.Text = "" Then
            dowbload = Request.QueryString("data").ToString()
            Label1.Text = dowbload
        End If

    End Sub
End Class
