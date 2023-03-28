Imports System.Data
Imports System.Data.SqlClient
Imports System.IO
Imports System.Net
'Imports System.Web.Mail
Imports System.Net.Mail
Imports System.Web.Security
Imports System.Web
Imports System.Configuration
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
'Imports System.Data.SqlClient
Imports System.Net.NetworkInformation
Imports System.Collections
Partial Class AttendanceDetail
    Inherits System.Web.UI.Page
    Dim strBody As String
    Dim mail As MailMessage
    Dim varIP As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("myck") = "" Then
            Response.Redirect("~/default.aspx")
        End If
        If Page.IsPostBack = False Then
            varIP = Request.ServerVariables("SERVER_NAME").ToString
            Display()
        End If

       
    End Sub
 
    Sub Display()
        lblMsg.Text = ""
        Dim con As SqlConnection
        Dim varClass1 As New Class1
        con = New SqlConnection(varClass1.GetConnectionString(varIP))
        con.Open()
        Dim da1 As SqlDataAdapter
        Dim ds1 As New DataSet
        Dim sql1 As String
        Dim rowctr As Integer = 0
        sql1 = "select distinct IDNo,Studentname,fathername,Course,BatchGroup,(select SUM(CAST(lectDelievered as int)) from AttRecord as attre where attre.IDNo=AttRecord.IDNo )as Totaldeliverlecture,"
        sql1 = sql1 + "(select sum(cast(LectAttended as int)) from AttRecord as attlect where attlect.IDNo=AttRecord.IDNo )as totalattendlecture, "
        sql1 = sql1 + "cast(((select sum(cast(LectAttended as int))from AttRecord as attlect where attlect.IDNo=AttRecord.IDNo )*100/(select SUM(CAST(lectDelievered as int))from AttRecord as attre where attre.IDNo=AttRecord.IDNo )) as varchar)+'%' as precentage "
        sql1 = sql1 + "from AttRecord where idno='" + Session("myck").ToString() + "';"

        da1 = New SqlDataAdapter(sql1, con)
        da1.Fill(ds1, "Date")
        If ds1.Tables("Date").Rows.Count > 0 Then
            gvDisplay.DataSource = ds1.Tables("Date")
            gvDisplay.DataBind()
            
        Else
            gvDisplay.DataSource = Nothing
            lblMsg.Visible = True
            lblMsg.Text = "Sorry! No Record Found."
        End If
        con.Close()
    End Sub
    Protected Sub btnexport_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnexport.Click

        If GridView1.Rows.Count > 0 Then
            If GridView1.Visible = True Then
                Response.ClearContent()
                Response.AddHeader("content-disposition", "attachment; filename=MyExcelFile.xls")
                Response.ContentType = "application/excel"

                Dim sw As New StringWriter()
                Dim htw As New HtmlTextWriter(sw)

                GridView1.RenderControl(htw)
                Response.Write(sw.ToString())
                Response.End()
            Else
                lblMsg.Visible = True
                lblMsg.Text = "No record found"
                Exit Sub
            End If
        Else
            lblMsg.Visible = True
            lblMsg.Text = "No record found"
            Exit Sub
        End If
        lblMsg.Visible = False
    End Sub
    Public Overrides Sub VerifyRenderingInServerForm(ByVal control As System.Web.UI.Control)
        'MyBase.VerifyRenderingInServerForm(control)
    End Sub

    Protected Sub gvDisplay_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gvDisplay.RowCommand

        If e.CommandName = "Detail" Then
            Dim ctrl As Control = TryCast(e.CommandSource, Control)
            If ctrl IsNot Nothing Then
                Dim row As GridViewRow = TryCast(ctrl.Parent.NamingContainer, GridViewRow)

                Dim lblIDNO As Label = DirectCast(row.FindControl("lblIDNo"), Label)
                Dim name As Label = DirectCast(row.FindControl("lblStudentname"), Label)

                Dim con As New SqlConnection()
                Dim obj As New Class1()
                con.ConnectionString = obj.GetConnectionString("constr")
                con.Open()

                Dim str As String = "select convert(varchar(10),AttDate,101) as AttDate,LectDelievered,lectAttended from attrecord where idno='" + lblIDNO.Text + "'"

                Dim da As New SqlDataAdapter(str, con)
                Dim ds As New DataSet()
                da.Fill(ds)
                If ds.Tables(0).Rows.Count > 0 Then

                    GridView1.DataSource = ds
                    GridView1.DataBind()
                    lblMsg.Visible = True

                    lblMsg.Text = "Total Record : " & ds.Tables(0).Rows.Count
                    btnexport.Visible = True

                    ScriptManager.RegisterStartupScript(Me, [GetType](), "togglSession", "togglSession();", True)
                End If

            End If
        End If
    End Sub

   
End Class
