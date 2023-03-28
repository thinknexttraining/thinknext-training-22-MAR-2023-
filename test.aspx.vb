Imports System.Data
Imports System.Data.SqlClient
Imports System.IO
Partial Class test
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            '  bindGrid1()
            GetFilesAndFolders(drpDwnPageUrl) 'find all aspx pages in project except already assigned
        End If
    End Sub
    Public Sub GetFilesAndFolders(ByVal drpDwnPageUrl As DropDownList)
        Dim dirInfo As New DirectoryInfo(Server.MapPath("~/"))
        Dim fileInfo As FileInfo() = dirInfo.GetFiles("*.aspx", SearchOption.AllDirectories)

        Dim listf As System.Collections.Generic.List(Of String) = New List(Of String)()


        For Each Name In fileInfo
            listf.Add(Name.ToString)
        Next

        'Dim dss As DataSet = SqlHelper.ExecuteDataset(DLL.cnn, CommandType.Text, "select distinct MasterMenu.WebPage from MasterMenu where MasterMenu.WebPage is not null and  MasterMenu.WebPage<>''")

        Dim list As System.Collections.Generic.List(Of String) = New List(Of String)()
        'For Each row As DataRow In dss.Tables(0).Rows
        '    list.Add(row(0).ToString)
        'Next
        ' drpDwnPageUrl.DataSource = listf.Except(list)
        drpDwnPageUrl.DataSource = listf

        drpDwnPageUrl.DataBind()

        'lblSuccess.Text = fileInfo(1).Name.ToString()

    End Sub

End Class
