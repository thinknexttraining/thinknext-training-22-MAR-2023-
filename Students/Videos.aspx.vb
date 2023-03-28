Imports System.Data
Imports System.Data.SqlClient
Partial Class Default2
    Inherits System.Web.UI.Page
    Dim varip As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            varip = Request.ServerVariables("SERVER_NAME").ToString
            showdata()
        End If
        If (Session("Logged_IN") = "No") Then
            Response.Redirect("Home.aspx")
        End If
    End Sub
    Sub showdata()
        Dim con As New SqlConnection
        Dim varclass1 As New Class1
        con = New SqlConnection(varclass1.GetConnectionString(varip))
        con.Open()
        Dim da As New SqlDataAdapter("select ID,( '<B>'+ Title+'</B></br>'+Description+'</br>'+convert(varchar,UploadedDate, 102 )) As Title,ImagePath,VideoPath from VideoGallery where FranchiseCode='" + txtfranchiseCode.Text + "' ORDER BY UploadedDate Desc ", con)
        Dim ds As New DataSet
        da.Fill(ds, "VideoGallery")
        If ds.Tables("VideoGallery").Rows.Count > 0 Then
            DataList1.DataSource = ds.Tables("VideoGallery")
            DataList1.DataBind()

        End If

    End Sub
    Sub playvideo(ByVal videoID As Integer)
        Dim con As New SqlConnection
        Dim varclass1 As New Class1
        con = New SqlConnection(varclass1.GetConnectionString(varip))
        con.Open()
        Dim da As New SqlDataAdapter("select * from VideoGallery where ID = " & videoID & " and FranchiseCode='" + txtfranchiseCode.Text + "'", con)
        Dim ds As New DataSet
        da.Fill(ds, "VideoGallery")
        If ds.Tables("VideoGallery").Rows.Count > 0 Then
            'div1.InnerHtml = "<object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000' id='single1'width='100%' height='100%' name='single1'><param name='movie' value='player.swf'><param name='allowfullscreen' value='true'><param name='allowscriptaccess' value='always'> <param name='wmode' value='transparent'><param name='flashvars' value='file=" & ds.Tables("VideoGallery").Rows(0).Item("VideoPath") & " &image=" & ds.Tables("VideoGallery").Rows(0).Item("ImagePath") & " &backcolor=000000&frontcolor=FFFFFF&screencolor=000000&volume=50&controlbar=over&autostart=true&stretching=fill'><embed type='application/x-shockwave-flash' id='single2' name='single2' src='player.swf' width='100%' height='100%' bgcolor='undefined' allowscriptaccess='always' allowfullscreen='true' wmode='transparent' flashvars='file=" & ds.Tables("VideoGallery").Rows(0).Item("VideoPath") & " &image=" & ds.Tables("VideoGallery").Rows(0).Item("ImagePath") & "&backcolor=000000&frontcolor=FFFFFF&screencolor=000000&volume=100&controlbar=over&autostart=true&stretching=fill'/></object>"

        End If
    End Sub
    Protected Sub DataList1_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataListCommandEventArgs) Handles DataList1.ItemCommand
        Dim ID As New Label
        ID = CType(e.Item.FindControl("Label2"), Label)
        If ID.Text <> "" Then
            playvideo(CInt(ID.Text))
        End If
    End Sub
End Class
