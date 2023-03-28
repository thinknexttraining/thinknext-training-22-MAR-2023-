Imports System.Data.SqlClient
Imports System.Data

Partial Class ShowJobsDetail
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("myck") = "" Then
            Response.Redirect("~/default.aspx")
        End If

        If Not Request.QueryString("sinct") Is Nothing Then
            Dim SingleCategory As String
            SingleCategory = Request.QueryString("sinct").ToString
            DispByCategory(SingleCategory)
        Else
            If Not Request.QueryString("sct") Is Nothing Then
                Dim SubCategory As String
                Dim Category As String
                Category = (Request.QueryString("ct").ToString())
                SubCategory = (Request.QueryString("sct").ToString())
                DisplayByBoth(SubCategory, Category)
            Else
                ShowDefault()
            End If
        End If


    End Sub

    'Show All Product
    Sub ShowDefault()
        lblrecord.Text = ""
        Dim con As New SqlConnection
        Dim varclass1 As New Class1
        con = New SqlConnection(varclass1.GetConnectionString(""))
        con.Open()
        Dim ds As New DataSet
        Dim Sql As String
        Sql = "Select * from PlacementDetails where FranchiseCode='" + txtfranchise.Text + "' order by JobTitle  "
        Dim cmd As New SqlCommand(Sql, con)
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(ds, "PlacementDetail")
        If ds.Tables("PlacementDetail").Rows.Count > 0 Then
            GridView1.DataSource = ds.Tables("PlacementDetail")
            GridView1.DataBind()
        End If
        con.Close()
        cmd.Dispose()
        da.Dispose()
        ds.Dispose()

    End Sub

    'Show  category and subcategory wise
    Sub DisplayByBoth(ByVal SubCategory As String, ByVal Category As String)
        lblrecord.Text = ""
        Dim con As New SqlConnection
        Dim varclass1 As New Class1
        con = New SqlConnection(varclass1.GetConnectionString(""))
        con.Open()
        Dim ds As New DataSet
        Dim Sql As String
        Sql = "Select * from PlacementDetails Where SubCategory like '%" & SubCategory & "%' and Category Like '%" & Category & "%' and FranchiseCode='" + txtfranchise.Text + "'"
        Dim cmd As New SqlCommand(Sql, con)
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(ds, "PlacementDetail")
        If ds.Tables("PlacementDetail").Rows.Count > 0 Then
            lblrecord.Text = " Total : " & ds.Tables("PlacementDetail").Rows.Count & " record(s) found ....  "
            GridView1.DataSource = ds.Tables("PlacementDetail")
            GridView1.DataBind()
        Else
            lblrecord.Text = " No  record(s) found for: " & SubCategory
            'ShowDefault()
        End If
        con.Close()
        cmd.Dispose()
        da.Dispose()
        ds.Dispose()

    End Sub

    'Show  only by category
    Sub DispByCategory(ByVal Category As String)
        lblrecord.Text = ""
        Dim con As New SqlConnection
        Dim varclass1 As New Class1
        con = New SqlConnection(varclass1.GetConnectionString(""))
        con.Open()
        Dim ds As New DataSet
        Dim Sql As String
        Sql = "Select * from PlacementDetails Where FranchiseCode='" + txtfranchise.Text + "'  and Category like @Category order by PostedOn desc "
        Dim cmd As New SqlCommand(Sql, con)
        cmd.Parameters.AddWithValue("@Category", "%" & Category & "%")
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(ds, "PlacementDetail")
        If ds.Tables("PlacementDetail").Rows.Count > 0 Then
            lblrecord.Text = "Total :" & ds.Tables("PlacementDetail").Rows.Count & " record found(s) for ' " & Category & " ' "
            GridView1.DataSource = ds.Tables("PlacementDetail")
            GridView1.DataBind()
        Else

        End If
        con.Close()
        cmd.Dispose()
        da.Dispose()
        ds.Dispose()

    End Sub





End Class
