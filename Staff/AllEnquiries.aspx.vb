Imports System.Data.SqlClient
Imports System.Data
Imports System.IO

Partial Class AllEnquiries
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        If Session("myck") = "" Then
            Response.Redirect("~/default.aspx")
        End If

        If Page.IsPostBack = False Then
            showdata()
        End If
    End Sub
    Sub showdata()
        GridView1.DataSource = Nothing
        GridView1.DataBind()
        Dim con As New SqlConnection
        Dim varclass1 As New Class1
        con = New SqlConnection(varclass1.GetConnectionString(""))
        con.Open()
        Dim da As New SqlDataAdapter("select * from Admissions where StatusCode='Enquiry'and FranchiseCode='" + txtfranchise.Text + "' and BrandName='THINKNEXT TRAINING' order by EnquiryNo desc ", con)
        Dim ds As New DataSet
        da.Fill(ds, "Admissions")
        If ds.Tables("Admissions").Rows.Count > 0 Then
            GridView1.DataSource = ds.Tables("Admissions")
            lblmsg.Visible = True
            lblmsg.Text = "Total Records : " + ds.Tables("Admissions").Rows.Count.ToString()
            GridView1.DataBind()
        End If

    End Sub
    Sub Studentregistration()
        GridView1.DataSource = Nothing
        GridView1.DataBind()
        Dim con As New SqlConnection
        Dim varclass1 As New Class1
        con = New SqlConnection(varclass1.GetConnectionString(""))
        con.Open()
        Dim da As New SqlDataAdapter("select SrNo,EnquiryNo,ModeOfEnquiry ,convert(varchar(10), AdmissionDate,103) as AdmissionDate,StudentName,StudentMobileNo,EmailID,Batch,Course,Comment from Admissions where ModeOfEnquiry ='Online' AND FranchiseCode='TNK101' and BrandName='THINKNEXT TRAINING' order by  EnquiryNo desc", con)
        Dim ds As New DataSet
        da.Fill(ds, "Admissions")
        If ds.Tables("Admissions").Rows.Count > 0 Then
            GridView1.DataSource = ds.Tables("Admissions")
            GridView1.DataBind()
            lblmsg.Visible = True
            lblmsg.Text = "Total Records : " + ds.Tables("Admissions").Rows.Count.ToString()
        End If

    End Sub
    Sub showInternship()
        GridView1.DataSource = Nothing
        GridView1.DataBind()
        Dim con As New SqlConnection
        Dim varclass1 As New Class1
        con = New SqlConnection(varclass1.GetConnectionString(""))
        con.Open()
        Dim da As New SqlDataAdapter("SELECT CONVERT(varchar(10), DateEntry, 103) AS DateEntry1, CollegeName, StudentName, Qualification, EmailID, StudentMobileNo, Address FROM Internship where FranchiseCode='TNK101' and BrandName='THINKNEXT TRAINING' ORDER BY DateEntry1 DESC", con)
        Dim ds As New DataSet
        da.Fill(ds, "Admissions")
        If ds.Tables("Admissions").Rows.Count > 0 Then
            GridView1.DataSource = ds.Tables("Admissions")
            GridView1.DataBind()
            lblmsg.Visible = True
            lblmsg.Text = "Total Records : " + ds.Tables("Admissions").Rows.Count.ToString()
        End If

    End Sub
    Protected Sub rdbintern_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rdbintern.CheckedChanged
        showInternship()
    End Sub
    Protected Sub rdbonline_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rdbonline.CheckedChanged
        Studentregistration()
    End Sub
    Protected Sub rdbStudent_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rdbStudent.CheckedChanged
        showdata()
    End Sub
    Protected Sub btnExport_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnExport.Click
        If rdbStudent.Checked = True Then
            Response.Clear()
            Response.Buffer = True
            Response.AddHeader("content-disposition", "attachment;filename=Student Registration.xls")
            Response.Charset = ""
            Response.ContentType = "application/vnd.ms-excel"
            Dim sWriter As New StringWriter()
            Dim hWriter As New HtmlTextWriter(sWriter)
            GridView1.RenderControl(hWriter)
            Response.Output.Write(sWriter.ToString())
            Response.Flush()
            Response.[End]()
        End If
        If rdbonline.Checked = True Then
            Response.Clear()
            Response.Buffer = True
            Response.AddHeader("content-disposition", "attachment;filename=Online Registration.xls")
            Response.Charset = ""
            Response.ContentType = "application/vnd.ms-excel"
            Dim sWriter As New StringWriter()
            Dim hWriter As New HtmlTextWriter(sWriter)
            GridView1.RenderControl(hWriter)
            Response.Output.Write(sWriter.ToString())
            Response.Flush()
            Response.[End]()
        End If
        If rdbintern.Checked = True Then
            Response.Clear()
            Response.Buffer = True
            Response.AddHeader("content-disposition", "attachment;filename=Intership.xls")
            Response.Charset = ""
            Response.ContentType = "application/vnd.ms-excel"
            Dim sWriter As New StringWriter()
            Dim hWriter As New HtmlTextWriter(sWriter)
            GridView1.RenderControl(hWriter)
            Response.Output.Write(sWriter.ToString())
            Response.Flush()
            Response.[End]()
        End If
    End Sub
    'Public Overrides Sub VerifyRenderingInServerForm(ByVal control As Control)
    '    'base.VerifyRenderingInServerForm(control);
    'End Sub
    Public Overrides Sub VerifyRenderingInServerForm(ByVal control As System.Web.UI.Control)
        'MyBase.VerifyRenderingInServerForm(control)
    End Sub

    Protected Sub btnShow_Click(sender As Object, e As EventArgs) Handles btnShow.Click
        Dim con As New SqlConnection
        Dim varclass1 As New Class1
        con = New SqlConnection(varclass1.GetConnectionString(""))
        con.Open()
        If rdbStudent.Checked = True Then
            If chkbetweendate.Checked = True Then
                Dim adp As New SqlDataAdapter("select *  from Admissions where AdmissionDate Between convert(varchar (50),'" + txtdatefrom.Text + "',120) and convert(varchar (50),'" + txtdateto.Text + "',120) order by SrNo desc", con)
                Dim ds As New DataSet()

                adp.Fill(ds)


                If ds.Tables(0).Rows.Count > 0 Then
                    '  btnexcel.Visible = True
                    GridView1.DataSource = ds.Tables(0)
                    lblmsg.Visible = True
                    lblmsg.Text = "Total Records : " + ds.Tables(0).Rows.Count.ToString()

                    'lblmsg.Text = "Total Records: " + ds.Tables(1).Rows(0).ToString()
                    GridView1.DataBind()
                Else
                    lblmsg.Visible = True
                    lblmsg.Text = "No Record"
                End If

            End If
        End If

        If rdbonline.Checked = True Then
            If chkbetweendate.Checked = True Then
                Dim da As New SqlDataAdapter("select SrNo,EnquiryNo,ModeOfEnquiry ,convert(varchar(10), AdmissionDate,103) as AdmissionDate,StudentName,StudentMobileNo,EmailID,Batch,Course,Comment from Admissions where  AdmissionDate Between convert(varchar (50),'" + txtdatefrom.Text + "',120) and convert(varchar (50),'" + txtdateto.Text + "',120) and ModeOfEnquiry ='Online' AND FranchiseCode='TNK101'and BrandName='THINKNEXT TRAINING' order by  EnquiryNo desc", con)
                Dim ds As New DataSet
                da.Fill(ds, "Admissions")
                If ds.Tables("Admissions").Rows.Count > 0 Then
                    GridView1.DataSource = ds.Tables("Admissions")
                    GridView1.DataBind()
                    lblmsg.Visible = True
                    lblmsg.Text = "Total Records : " + ds.Tables("Admissions").Rows.Count.ToString()
                Else
                    lblmsg.Visible = True
                    lblmsg.Text = "No Record"
                End If
            End If
        End If
        If rdbintern.Checked = True Then
            If chkbetweendate.Checked = True Then
                Dim da As New SqlDataAdapter("SELECT CONVERT(varchar(10), DateEntry, 103) AS DateEntry1, CollegeName, StudentName, Qualification, EmailID, StudentMobileNo, Address FROM Internship where DateEntry Between convert(varchar (50),'" + txtdatefrom.Text + "',120) and convert(varchar (50),'" + txtdateto.Text + "',120) and FranchiseCode='TNK101'and BrandName='THINKNEXT TRAINING' ORDER BY DateEntry1 DESC", con)
                Dim ds As New DataSet
                da.Fill(ds, "Admissions")
                If ds.Tables("Admissions").Rows.Count > 0 Then
                    GridView1.DataSource = ds.Tables("Admissions")
                    GridView1.DataBind()
                    lblmsg.Visible = True
                    lblmsg.Text = "Total Records : " + ds.Tables("Admissions").Rows.Count.ToString()
                Else
                    lblmsg.Visible = True
                    lblmsg.Text = "No Record"
                End If
            End If
        End If
    End Sub

    Protected Sub chkbetweendate_CheckedChanged(sender As Object, e As EventArgs) Handles chkbetweendate.CheckedChanged
       If chkbetweendate.Checked = True Then
            txtdatefrom.Enabled = True
            txtdateto.Enabled = True
        Else
            txtdatefrom.Enabled = False
            txtdateto.Enabled = False
        End If
    End Sub
End Class
