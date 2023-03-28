Imports System.Data.SqlClient
Imports System.Data

Partial Class PhotoGallery
    Inherits System.Web.UI.Page

    Dim varIP As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("myck") = "" Then
            Response.Redirect("~/default.aspx")
        End If
        If Not IsPostBack Then
            varIP = Request.ServerVariables("SERVER_NAME").ToString
            txtDateFrom.Text = System.DateTime.Today
            txtDateTo.Text = System.DateTime.Today
            displayAll()
            FillCategory()
            txtDateFrom.Enabled = False
            txtDateTo.Enabled = False
        End If
    End Sub

    Sub FillCategory()
        Dim da As SqlDataAdapter
        Dim ds As New DataSet
        Dim con As SqlConnection
        Dim varclass1 As New Class1
        con = New SqlConnection(varclass1.GetConnectionString(varIP))
        con.Open()
        da = New SqlDataAdapter("select Distinct Category from PhotoGallery where FranchiseCode='" + txtfranchiseCode.Text + "'", con)
        da.Fill(ds, "PhotoGallery")
        ddlCategory.Items.Clear()
        ddlCategory.Items.Add("Select")
        If ds.Tables("PhotoGallery").Rows.Count > 0 Then
            For i = 0 To ds.Tables("PhotoGallery").Rows.Count - 1
                If IsDBNull(ds.Tables("PhotoGallery").Rows(i).Item("Category")) = False Then
                    ddlCategory.Items.Add(ds.Tables("PhotoGallery").Rows(i).Item("Category"))
                End If
            Next
        End If
        con.Close()
    End Sub

 

    Sub display()
        Try
            Dim sql As String
            Dim da As SqlDataAdapter
            Dim ds As New DataSet
            Dim con As SqlConnection
            Dim varclass1 As New Class1
            con = New SqlConnection(varclass1.GetConnectionString(varIP))
            con.Open()
            lblMsg.Text = ""
            sql = "select ID,snap,DateEntry,Title,Description from Photogallery where Snap is NOt NULL and FranchiseCode='" + txtfranchiseCode.Text + "'"
            If ChkDate.Checked = True Then
                If txtDateFrom.Text <> "" And txtDateTo.Text <> "" Then
                    If IsDate(txtDateFrom.Text) = False Then
                        lblMsg.Text = "Invalid Date From"
                        con.Close()
                        Exit Sub
                    End If
                    If IsDate(txtDateTo.Text) = False Then
                        lblMsg.Text = "Invalid Date To"
                        con.Close()
                        Exit Sub
                    End If
                    Dim vardateFrom As Date
                    vardateFrom = CDate(txtDateFrom.Text)
                    Dim vardateTo As Date
                    vardateTo = CDate(txtDateTo.Text)
                    sql = sql & " and DateEntry Between '" & Format(vardateFrom, "MM/dd/yyyy") & "' And '" & Format(vardateTo, "MM/dd/yyyy") & "'"
                End If
            End If
            If ddlCategory.Text <> "Select" Then
                sql = sql & " And Category='" & ddlCategory.Text & "'"
            End If
            sql = sql & " Order by DateEntry Desc,ID Desc"
            da = New SqlDataAdapter(sql, con)
            da.Fill(ds, "Snap")
            If ds.Tables("Snap").Rows.Count > 0 Then
                galleryDataList.DataSource = ds.Tables("Snap")
                galleryDataList.DataBind()
                galleryDataList.Visible = True
                con.Close()
            Else
                con.Close()
                lblMsg.Text = "No Record Found"
                galleryDataList.Visible = False
                Exit Sub
            End If
        Catch generatedExceptionName As System.IO.DirectoryNotFoundException
            Response.Write("<script language =Javascript> alert('Error!');</script>")
        End Try

    End Sub

    Protected Sub btnDisplay_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnDisplay.Click
        display()
    End Sub

    Protected Sub btnDisplayAll_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnDisplayAll.Click
        ddlCategory.SelectedIndex = -1
        ChkDate.Checked = False
        txtDateFrom.Enabled = False
        txtDateTo.Enabled = False
        displayAll()
    End Sub

    Sub displayAll()
        Try
            Dim sql As String
            Dim da As SqlDataAdapter
            Dim ds As New DataSet
            Dim con As SqlConnection
            Dim varclass1 As New Class1
            con = New SqlConnection(varclass1.GetConnectionString(varIP))
            con.Open()
            lblMsg.Text = ""
            sql = "select ID,snap,DateEntry,Title,Description from Photogallery where Snap is Not NULL and FranchiseCode='" + txtfranchiseCode.Text + "'"
            da = New SqlDataAdapter(sql, con)
            da.Fill(ds, "Photogallery")
            If ds.Tables("Photogallery").Rows.Count > 0 Then
                galleryDataList.DataSource = ds.Tables("Photogallery")
                galleryDataList.DataBind()
                galleryDataList.Visible = True
                con.Close()
            Else
                con.Close()
                lblMsg.Text = "No Record Found"
                galleryDataList.Visible = False
                Exit Sub
            End If
        Catch generatedExceptionName As System.IO.DirectoryNotFoundException
            Response.Write("<script language =Javascript> alert('Error!');</script>")
        End Try

    End Sub

    Protected Sub ChkDate_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ChkDate.CheckedChanged
        If ChkDate.Checked = True Then
            txtDateFrom.Enabled = True
            txtDateTo.Enabled = True
        Else
            txtDateFrom.Enabled = False
            txtDateTo.Enabled = False
        End If
    End Sub

    
End Class
