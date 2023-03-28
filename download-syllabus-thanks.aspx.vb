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

        ElseIf Label1.Text = "java-course" Then
            Response.ContentType = "application/pdf"
            Response.AppendHeader("Content-Disposition", "attachment; filename=Java-course-syllabus.pdf")
            Response.TransmitFile(Server.MapPath("~/images/Java-course-syllabus.pdf"))
            Response.End()

        ElseIf Label1.Text = "full-stack-developer" Then
            Response.ContentType = "application/pdf"
            Response.AppendHeader("Content-Disposition", "attachment; filename=Full-Stack-Developer-Syllabus.pdf")
            Response.TransmitFile(Server.MapPath("~/images/Full-Stack-Developer-Syllabus.pdf"))
            Response.End()

        ElseIf Label1.Text = "android-training" Then
            Response.ContentType = "application/pdf"
            Response.AppendHeader("Content-Disposition", "attachment; filename=android-course-syllabus.pdf") 'need android pdf 
            Response.TransmitFile(Server.MapPath("~/images/android-course-syllabus.pdf")) 'thinknext brouchure has provided temporarily
            Response.End()

        ElseIf Label1.Text = "iPhone Broucher" Then
            Response.ContentType = "application/pdf"
            Response.AppendHeader("Content-Disposition", "attachment; filename=iphone.pdf")
            Response.TransmitFile(Server.MapPath("~/Broucher/iphone.pdf"))
            Response.End()

        ElseIf Label1.Text = "php-course" Then
            Response.ContentType = "application/pdf"
            Response.AppendHeader("Content-Disposition", "attachment; filename=php-course-syllabus.pdf")
            Response.TransmitFile(Server.MapPath("~/images/php-course-syllabus.pdf"))
            Response.End()
            'Response.Redirect("~/images/Updated Thinknext Brochure.pdf")
            'Response.Redirect("~/images/Aarushi.jpg") 
        ElseIf Label1.Text = "Web-Designing" Then
            Response.ContentType = "application/pdf"
            Response.AppendHeader("Content-Disposition", "attachment; filename=web-designing-course-syllabus.pdf")
            Response.TransmitFile(Server.MapPath("~/images/web-designing-course-syllabus.pdf"))
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
