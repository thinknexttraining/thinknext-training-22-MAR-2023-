Imports System.Data.SqlClient
Imports System.Data

Partial Class ShowVacancies

    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("myck") = "" Then
            Response.Redirect("~/default.aspx")
        End If

        If Page.IsPostBack = False Then
            Category()


        End If
    End Sub

    Sub Category()
        Dim con As New SqlConnection
        Dim varclass1 As New Class1
        con = New SqlConnection(varclass1.GetConnectionString(""))
        con.Open()
        Dim ds As New DataSet
        Dim Sql As String
        Sql = "Select Distinct Category  from MasterPlacementCategory where FranchiseCode='" + txtfranchise.Text + "' "
        Dim cmd As New SqlCommand(Sql, con)
        Dim da = New SqlDataAdapter(cmd)
        da.Fill(ds, "MasterPlacementCategory")
        If ds.Tables("MasterPlacementCategory").Rows.Count > 0 Then
            DataList1.DataSource = ds.Tables("MasterPlacementCategory")
            DataList1.DataBind()
        Else

        End If
        con.Close()
        cmd.Dispose()
        da.Dispose()
        ds.Dispose()

    End Sub

    Function SubCtegory(ByVal Category As String) As DataSet
        Dim TBSCAt As New DataSet
        Dim con As New SqlConnection
        Dim varclass1 As New Class1
        con = New SqlConnection(varclass1.GetConnectionString(""))
        con.Open()
        Dim ds As New DataSet
        Dim Sql As String
        Sql = "Select Distinct SubCategory,Category from MasterPlacementCategory where SubCategory <> '' and SubCategory is Not Null and Category='" & Category & "' and FranchiseCode='" + txtfranchise.Text + "' "
        Dim cmd As New SqlCommand(Sql, con)
        Dim da = New SqlDataAdapter(cmd)
        da.Fill(ds, "MasterPlacementCategory")
        TBSCAt = ds
        con.Close()
        cmd.Dispose()
        da.Dispose()
        ds.Dispose()
        Return TBSCAt
    End Function


    Protected Sub DataList1_ItemDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DataListItemEventArgs) Handles DataList1.ItemDataBound
        ' If (e.Item.ItemType = ListItemType.Item) Then
        'Dim drv As DataRowView = TryCast(e.Item.DataItem, DataRowView)
        Dim Category As LinkButton = TryCast(e.Item.FindControl("linkcategory"), LinkButton)
        Dim innerDataList As DataList = TryCast(e.Item.FindControl("DataListSub"), DataList)
        innerDataList.DataSource = SubCtegory(Category.Text)
        innerDataList.DataBind()
        ' End If

    End Sub

    Protected Sub DataListSub_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataListCommandEventArgs)
        If e.CommandName = "Select" Then
            Dim SubCategory As LinkButton = e.Item.FindControl("lnkSubCategory")
            Session("SubCategory") = SubCategory.Text
            Response.Redirect("ProductDescription.aspx")
        End If
    End Sub
End Class
