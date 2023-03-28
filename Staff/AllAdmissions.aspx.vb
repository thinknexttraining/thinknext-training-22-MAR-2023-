
Imports System.Collections
Imports System.Configuration
Imports System.Data
Imports System.Linq
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.HtmlControls
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Xml.Linq
Imports System.Data.SqlClient
Imports System.IO
Imports System.Text
Imports System.Net
Imports System.Net.Mail
Imports System.Globalization
Imports System.Text.RegularExpressions
Imports iTextSharp.text
Imports iTextSharp.text.pdf
Imports iTextSharp.text.html.simpleparser

Partial Class AllAdmissions

    Inherits System.Web.UI.Page
    Dim varclass As New Class1


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        If Session("myck") = "" Then
            Response.Redirect("~/default.aspx")
        End If
        If Page.IsPostBack = False Then
            showdata()
            varclass.fillcourses(drpappliedfor)
        End If
    End Sub


    Sub showdata()
        Dim con As New SqlConnection
        Dim varclass1 As New Class1
        con = New SqlConnection(varclass1.GetConnectionString(""))
        con.Open()
        Dim da As New SqlDataAdapter("select * from Admissions where StatusCode='Admission' AND FranchiseCode='" + txtfranchise.Text + "'", con)
        Dim ds As New DataSet
        da.Fill(ds, "Admissions")
        If ds.Tables("Admissions").Rows.Count > 0 Then
            GridView1.DataSource = ds.Tables("Admissions")
            GridView1.DataBind()
            lblmessage.Text = "Total : " & ds.Tables("Admissions").Rows.Count & " found"
        Else
            GridView1.DataSource = Nothing
            GridView1.DataBind()
            lblmessage.Text = "Sorry ! No record found"
        End If

    End Sub


    Sub Selectedcoursedata(ByVal Course As String)
        GridView1.DataSource = Nothing
        GridView1.DataBind()
        Dim con As New SqlConnection
        Dim varclass1 As New Class1
        con = New SqlConnection(varclass1.GetConnectionString(""))
        con.Open()
        Dim da As New SqlDataAdapter("select * from Admissions where Course='" & Course & "'  And StatusCode='Admission'  and FranchiseCode='" + txtfranchise.Text + "'", con)
        Dim ds As New DataSet
        da.Fill(ds, "Admissions")
        If ds.Tables("Admissions").Rows.Count > 0 Then
            GridView1.DataSource = ds.Tables("Admissions")
            GridView1.DataBind()
            lblmessage.Text = "Total : " & ds.Tables("Admissions").Rows.Count & " found"

        Else
            GridView1.DataSource = Nothing
            GridView1.DataBind()
            lblmessage.Text = "Sorry ! No record found"
        End If

    End Sub

    Protected Sub drpappliedfor_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles drpappliedfor.SelectedIndexChanged
        If drpappliedfor.Text <> "Select" Then
            Selectedcoursedata(drpappliedfor.Text)
        End If
    End Sub

    Protected Sub btnexcel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnexcel.Click

        Response.Clear()
        Response.Buffer = True
        Response.AddHeader("content-disposition", "attachment;filename=StudentAttendance.xls")
        Response.Charset = ""
        Response.ContentType = "application/vnd.ms-excel"
        Dim sWriter As New StringWriter()
        Dim hWriter As New HtmlTextWriter(sWriter)
        GridView1.Style.Add("text-transform", "Capitalize")
        GridView1.RenderControl(hWriter)
        Response.Output.Write(sWriter.ToString())
        Response.Flush()
        Response.[End]()
    End Sub

    Public Overrides Sub VerifyRenderingInServerForm(ByVal control As Control)
        ' MyBase.VerifyRenderingInServerForm(control);
    End Sub

End Class
