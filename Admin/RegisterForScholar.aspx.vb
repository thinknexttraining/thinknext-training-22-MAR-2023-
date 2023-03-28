Imports System.Data
Imports System.Data.SqlClient
Imports CrystalDecisions.Shared
Imports CrystalDecisions.ReportSource
Imports CrystalDecisions.CrystalReports.Engine
Imports System.Collections.Specialized
Imports System.Drawing
Imports System.IO
Imports System.Web.UI
Imports System.Runtime.InteropServices.Marshal
Imports Microsoft.Office.Interop
Imports System.Drawing.Printing

Partial Class RegisterForScholar
    Inherits System.Web.UI.Page

    Function GetDiscountConnection1() As String
        Dim constr As String
        'constr = " Data Source=dbthinknextcard.db.11478413.hostedresource.com;Initial Catalog=dbthinknextcard;Persist Security Info=True;User ID=dbthinknextcard;Password=smartBSS123!@#;"
        constr = " Data Source=103.21.58.193;Initial Catalog=dbthinknex;Persist Security Info=True;User ID=thinknex;Password=techsmart?; Max Pool Size=10000;"
        'constr = "Data Source=" & varIP & "; Initial Catalog=DBSmartCampusSviet; Persist Security Info=True; User ID=sa; Password=b2y3rt98159(*!%(; Max Pool Size=10000;"
        'constr = "Data Source=" & "208.91.198.196" & "; Initial Catalog=admin_thinknextcard; Persist Security Info=True; User ID=thinknext; Password=b3yrt98159; Max Pool Size=10000;"
        'constr = "Data Source=" & "202.164.47.215" & "; Initial Catalog=DBSmartCampusBIS;Persist Security Info=True;User ID=sa;Password=wkqlzrbv1234!@#$; Max Pool Size=5000; pooling=False;"
        'constr = "Data Source=" & "220.227.40.123" & "; Initial Catalog=DBSmartCampusSUS; Persist Security Info=True; User ID=sa; Password=b2y3rt98159(*!%(; Max Pool Size=10000;"
        ' constr = "Data Source=" & "192.168.1.2" & "; Initial Catalog=DBSmartCampusSviet; Persist Security Info=True; User ID=sa; Password=b2y3rt78374&*#&$; Max Pool Size=10000;"
        'constr = "Data Source=" & "220.227.40.123" & "; Initial Catalog=DBSmartCampusSUS; Persist Security Info=True; User ID=sa; Password=b2y3rt98159(*!%(; Max Pool Size=10000;"
        'constr = "Data Source=" & "111.93.48.163" & "; Initial Catalog=DBSmartCampus;Persist Security Info=True;User ID=sa;Password=b1y3rt78374&*#&$; Max Pool Size=10000;"
        'constr = "Data Source=" & "192.168.0.2" & "; Initial Catalog=DBSmartCampusSviettest; Persist Security Info=True; User ID=sa; Password=b2y3rt78374&*#&$; Max Pool Size=10000;"
        Return constr
    End Function




    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        If txtDateFrom.Text = "" Then
            lblMsg.Text = "Select Date From"
            txtDateFrom.Focus()
            Exit Sub
        End If
        If txtDateTo.Text = "" Then
            lblMsg.Text = "Select Date To"
            txtDateTo.Focus()
            Exit Sub
        End If


        lblMsg.Text = ""
        Dim con As New SqlConnection(GetDiscountConnection1)
        Dim cmd As New SqlCommand
        Dim ds As New DataSet
        Dim da As SqlDataAdapter
        con.Open()
        Dim str As String = "Select Comment,convert(varchar(10), AdmissionDate,101)as AdmissionDate,Course, Duration,StudentName,StudentMobileNo,EmailID,WhatsAppNo,CollegeName  from Admissions where Comment='Register For Scholarship' And AdmissionDate Between '" & txtDateFrom.Text & "' and '" & txtDateTo.Text & "'"

        'Dim str As String = "Select ModeOfEnquiry,convert(varchar(10), AdmissionDate,101)as AdmissionDate,Course, Duration,StudentName,StudentMobileNo,EmailID,CollegeName  from Admissions where Comment='Online' And AdmissionDate Between '" & txtDateFrom.Text & "' and '" & txtDateTo.Text & "'"
        cmd.CommandText = str
        'cmd.Parameters.AddWithValue("@DateFrom", Format(CDate(txtDateFrom.Text), "MM/dd/yyyy"))
        'cmd.Parameters.AddWithValue("@DateTo", Format(CDate(txtDateTo.Text), "MM/dd/yyyy"))

        cmd.Connection = con
        da = New SqlDataAdapter(cmd)
        da.Fill(ds, "Data")
        If ds.Tables("Data").Rows.Count > 0 Then
            lblRec.Text = "Record Found : " & ds.Tables("Data").Rows.Count
            GridView1.DataSource = ds.Tables("Data")
            GridView1.DataBind()
        Else
            lblRec.Text = "Record Found : 0"
            GridView1.DataSource = Nothing
            GridView1.DataBind()

        End If
        con.Close()
        cmd.Dispose()
        ds.Dispose()
    End Sub

    Protected Sub btnExcel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnExcel.Click
        If GridView1.Rows.Count > 0 Then
            lblMsg.Text = ""
            Response.Clear()
            Response.AddHeader("content-disposition", "attachment;filename=FileName.xls")
            Response.Charset = ""
            Response.ContentType = "application/vnd.xls"
            Dim stringWrite As System.IO.StringWriter
            stringWrite = New System.IO.StringWriter()
            ''System.IO.StringWriter(stringWrite)
            Dim htmlWrite As System.Web.UI.HtmlTextWriter
            htmlWrite = New System.Web.UI.HtmlTextWriter(stringWrite)
            'System.Web.UI.HtmlTextWriter(htmlWrite = New HtmlTextWriter(stringWrite))

            GridView1.RenderControl(htmlWrite)

            Response.Write(stringWrite.ToString())

            Response.End()
        Else
            lblMsg.Text = "No Record found to print."
        End If
    End Sub
    Public Overrides Sub VerifyRenderingInServerForm(ByVal control As System.Web.UI.Control)
        ' MyBase.VerifyRenderingInServerForm(control)
    End Sub
End Class
