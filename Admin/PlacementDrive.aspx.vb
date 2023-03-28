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
Partial Class Admin_PlacementDrive
    Inherits System.Web.UI.Page
    Dim varIP As String

    Protected Sub btnsubmit_Click(sender As Object, e As EventArgs) Handles btnsubmit.Click
        Dim con As SqlConnection
        Dim varclass As New Class1
        con = New SqlConnection(varclass.GetConnectionString(varIP))
        con.Open()
        Dim adp As New SqlDataAdapter("select  *  from PlacementDrive where Name='" + TextBox1.Text + "' or EmailID='" + TextBox1.Text + "' or Batch='" + TextBox1.Text + "' or EnquiryNo='" + TextBox1.Text + "' or MobileNo='" + TextBox1.Text + "' or CollegeName='" + TextBox1.Text + "' or Qualification='" + TextBox1.Text + "' or Description='" + TextBox1.Text + "' or Session='" + TextBox1.Text + "' order by SrId desc", con)
        Dim ds As New DataSet()

        adp.Fill(ds)

        If ds.Tables(0).Rows.Count > 0 Then

            GridView1.Visible = True
            lblmsg.Visible = True
            GridView1.DataSource = ds.Tables(0)
            ' Label1.Text = "Total Records: " + ds.Tables[1].Rows[0][0].ToString();
            GridView1.DataBind()

        Else
            lblmsg.Visible = True
            lblmsg.Text = "No Record"
        End If
    End Sub

    Protected Sub btnexcel_Click(sender As Object, e As EventArgs) Handles btnexcel.Click
        Response.Clear()
        Response.Buffer = True
        Response.AddHeader("content-disposition", "attachment;filename=Placement Drive.xls")
        Response.Charset = ""
        Response.ContentType = "application/vnd.ms-excel"
        Dim sWriter As New StringWriter()
        Dim hWriter As New HtmlTextWriter(sWriter)
        GridView1.DataBind()
        GridView1.Style.Add("text-transform", "Capitalize")
        GridView1.RenderControl(hWriter)
        Response.Output.Write(sWriter.ToString())
        Response.Flush()
        Response.[End]()
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim con As SqlConnection
        Dim varclass As New Class1
        con = New SqlConnection(varclass.GetConnectionString(varIP))
        con.Open()
        Display()
    End Sub
    Private Sub Display()
        Dim con As SqlConnection
        Dim varclass As New Class1
        con = New SqlConnection(varclass.GetConnectionString(varIP))
        con.Open()
        Dim adp As New SqlDataAdapter("select *  from PlacementDrive order by SrId desc", con)
        Dim ds As New DataSet()

        adp.Fill(ds)

        If ds.Tables(0).Rows.Count > 0 Then

            GridView1.Visible = True
            lblmsg.Visible = True
            GridView1.DataSource = ds.Tables(0)
            ' Label1.Text = "Total Records: " + ds.Tables[1].Rows[0][0].ToString();
            GridView1.DataBind()
        Else
            lblmsg.Visible = True
            lblmsg.Text = "No Record"
        End If
    End Sub
    Public Overrides Sub VerifyRenderingInServerForm(control As Control)
        ' Confirms that an HtmlForm control is rendered for the specified ASP.NET
        '     server control at run time. 

    End Sub
End Class
