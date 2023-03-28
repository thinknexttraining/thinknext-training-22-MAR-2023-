Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports System.IO
Imports System.Diagnostics
Partial Class _Default
    Inherits System.Web.UI.Page
    'Declare variables
    Dim postedfilename As String
    Dim SavePath As String
    Dim Filenamewithpath As String
    Dim inputfile As String
    Dim outputfile As String
    Dim filargs As String
    Dim withoutext As String
    Dim videopath As String
    Dim varip As String

    Protected Sub btnupld_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupld.Click
        If (System.Text.RegularExpressions.Regex.IsMatch(txttit.Text, "^[a-zA-Z0-9.\-&!%, ]+$")) = False Then
            lblmsg.Visible = True
            lblmsg.Text = "Invalid Title"
            Exit Sub
        End If
        If (System.Text.RegularExpressions.Regex.IsMatch(txtdesc.Text, "^[a-zA-Z0-9.\-&!%, ]+$")) = False Then
            lblmsg.Visible = True
            lblmsg.Text = "Invalid Description"
            Exit Sub
        End If
        If fileupload.HasFile = True Then
            postedfilename = fileupload.PostedFile.FileName
            Dim NewFName As String = postedfilename
            NewFName = NewFName.Substring(NewFName.LastIndexOf("\") + 1, NewFName.Length - NewFName.LastIndexOf(".")) & "." & NewFName.Substring(NewFName.LastIndexOf(".") + 1)
            Dim videopath As String
            Dim rename As String
            Dim rename1 As String
            Dim varFile2() As String
            Dim folderName2 As String = ""
            If NewFName.Contains(".flv") = True Then
                SavePath = Server.MapPath("../video/")
                Filenamewithpath = SavePath & NewFName
                fileupload.PostedFile.SaveAs(Filenamewithpath)
                varFile2 = NewFName.Split(".")
                For i = 0 To LBound(varFile2)
                    folderName2 = varFile2(i)
                Next
                videopath = "video/flv/" & folderName2 & ".flv"
                rename1 = Server.MapPath(videopath)
                rename = Dir(rename1)


                withoutext = Path.GetFileNameWithoutExtension(Filenamewithpath)
                'Input file path of uploaded image
                If withoutext.Contains(" ") Then
                    withoutext = Trim(withoutext) '.Replace(" ", "")
                End If

                inputfile = SavePath & NewFName
                outputfile = SavePath & "flv/" & withoutext & ".flv"

                If rename <> "" Then
                    Dim i As String
                    i = GetRandomnumber(5)
                    outputfile = SavePath & "flv/" & withoutext & i & ".flv"
                End If
                'Start Converting
                filargs = "-i """ & inputfile & """ -deinterlace -ab 32 -r 15 -ar 22050 -ac 1 """ & outputfile & """"
                Dim spath As String
                spath = Server.MapPath(".")
                Dim proc As Process
                proc = New Process()
                proc.StartInfo.FileName = Server.MapPath("ffmpeg\ffmpeg.exe")
                proc.StartInfo.Arguments = filargs
                proc.StartInfo.UseShellExecute = False
                proc.StartInfo.CreateNoWindow = True
                proc.StartInfo.RedirectStandardOutput = False
                Try
                    proc.Start()
                Catch ex As Exception
                    Response.Write(ex.Message)
                End Try
                'proc.WaitForExit()
                'proc.Close()
            Else
                SavePath = Server.MapPath("video/flv/")
                Dim name As String
                name = fileupload.PostedFile.FileName

                Filenamewithpath = SavePath & name
                varFile2 = NewFName.Split(".")
                For i = 0 To LBound(varFile2)
                    folderName2 = varFile2(i)
                Next

                videopath = "video/flv/" & folderName2 & ".flv"
                rename1 = Server.MapPath(videopath)
                rename = Dir(rename1)
                If rename <> "" Then
                    Dim j As String
                    j = GetRandomnumber(5)
                    videopath = "video/flv/" & folderName2 & ".flv"
                End If
                fileupload.PostedFile.SaveAs(Server.MapPath(videopath))
                inputfile = SavePath & name
                videopath = "../video/flv/" & name
            End If



            'Create........... Thumbs
            Dim thumbpath As String, thumbname As String
            Dim thumbargs As String
            thumbpath = Server.MapPath("Video/Thumb/")
            'Get the file name without Extension
            withoutext = Path.GetFileNameWithoutExtension(Filenamewithpath)
            thumbname = thumbpath & withoutext & "%d" & ".jpg"
            thumbargs = "-i """ & inputfile & """ -f image2 -vframes 1 -ss 3 -s 138x100 """ & thumbname & """"
            Dim thumbproc As New Process()
            thumbproc = New Process()
            thumbproc.StartInfo.FileName = Server.MapPath("ffmpeg\ffmpeg.exe")
            thumbproc.StartInfo.Arguments = thumbargs
            thumbproc.StartInfo.UseShellExecute = False
            thumbproc.StartInfo.CreateNoWindow = True
            thumbproc.StartInfo.RedirectStandardOutput = False
            Try
                thumbproc.Start()

            Catch ex As Exception
                Response.Write(ex.Message)
            End Try
            thumbproc.WaitForExit()
            thumbproc.Close()
            'save   file.............           
            Dim tempjpg As String
            tempjpg = fileupload.PostedFile.FileName
            Dim varfile() As String
            varfile = tempjpg.Split("\")
            Dim foldername As String = ""
            For i = 0 To UBound(varfile)
                foldername = varfile(i)
            Next
            Dim varFile1() As String
            varFile1 = foldername.Split(".")
            Dim folderName1 As String = ""
            For i = 0 To LBound(varFile1)
                folderName1 = varFile1(i)
            Next
            Dim thumbnailpath As String
            thumbnailpath = "Video/Thumb/" & withoutext & "1.jpg"
            Dim con As New SqlConnection
            Dim varclass1 As New Class1
            con = New SqlConnection(varclass1.GetConnectionString(varip))
            con.Open()
            Dim strQuery As String = "insert VideoGallery (ID,Title,Description,VideoPath,ImagePath,UploadedDate,FranchiseCode)" & "values (@ID,@Title,@Description,@VideoPath,@ImagePath,@UploadedDate,@FranchiseCode)"
            Dim cmd As New SqlCommand(strQuery)
            cmd.CommandType = CommandType.Text
            cmd.Connection = con
            Dim id As Integer
            id = videoid()
            cmd.Parameters.AddWithValue("@ID", SqlDbType.VarChar).Value = id
            cmd.Parameters.AddWithValue("@Title", SqlDbType.VarChar).Value = txttit.Text
            cmd.Parameters.AddWithValue("FranchiseCode", txtfranchise.Text)
            cmd.Parameters.AddWithValue("@Description", SqlDbType.VarChar).Value = txtdesc.Text
            'cmd.Parameters.AddWithValue("@VideoPath", videopath)
            '"player.swf?url=data/video/rikshaw_alfaaz_yo_yo_honey_singh_brand_new_punjabi_songs_hd_-_youtube.flv"
            cmd.Parameters.AddWithValue("@VideoPath", "../player.swf?url=" & videopath)
            cmd.Parameters.AddWithValue("@ImagePath", "../" & thumbnailpath)
            cmd.Parameters.AddWithValue("@UploadedDate", SqlDbType.DateTime).Value = System.DateTime.Now
            cmd.ExecuteNonQuery()
            cmd.Dispose()
            con.Close()
            txtdesc.Text = ""
            txttit.Text = ""
            txttit.Focus()
            'delete the input file
            If NewFName.Contains(".flv") = False Then
                File.Delete(Filenamewithpath)
            End If
            lblmsg.Text = "File Uploaded Successfully"
            showdata()
        Else
            lblmsg.Text = "Please browse a file"
        End If

    End Sub

    Function videoid() As Integer
        Dim con As New SqlConnection
        Dim varclass1 As New Class1
        con = New SqlConnection(varclass1.GetConnectionString(varip))
        con.Open()
        Dim VId As Integer = 1
        Dim da As New SqlDataAdapter("Select Max(ID) as id from VideoGallery where FranchiseCode='" + txtfranchise.Text + "'", con)
        Dim ds As New DataSet
        da.Fill(ds, "VideoGallery")
        If ds.Tables("VideoGallery").Rows.Count > 0 Then
            If IsDBNull(ds.Tables("VideoGallery").Rows(0).Item("id")) = False Then
                VId = CInt(ds.Tables("VideoGallery").Rows(0).Item("id")) + 1
            Else
                VId = 1
            End If
        End If
        videoid = VId
    End Function
    Sub showdata()
        Dim con As New SqlConnection
        Dim varclass1 As New Class1
        con = New SqlConnection(varclass1.GetConnectionString(varip))
        con.Open()
        Dim da As New SqlDataAdapter("select ID,( '<B>'+ Title+'</B></br>'+Description+'</br>'+convert(varchar,UploadedDate, 102 )) As Title,ImagePath,VideoPath from VideoGallery where FranchiseCode='" + txtfranchise.Text + "' ORDER BY UploadedDate Desc ", con)
        Dim ds As New DataSet
        da.Fill(ds, "VideoGallery")
        If ds.Tables("VideoGallery").Rows.Count > 0 Then
            DataList1.DataSource = ds.Tables("VideoGallery")
            DataList1.DataBind()
        End If

    End Sub
    'Sub playvideo(ByVal videoID As Integer)
    '    Dim con As New SqlConnection
    '    Dim varclass1 As New Class1
    '    con = New SqlConnection(varclass1.GetConnectionString(varip))
    '    con.Open()
    '    Dim da As New SqlDataAdapter("select * from VideoGallery where ID = " & videoID & "", con)
    '    Dim ds As New DataSet
    '    da.Fill(ds, "VideoGallery")
    '    If ds.Tables("VideoGallery").Rows.Count > 0 Then
    '        div1.InnerHtml = "<object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000' id='single1'width='100%' height='100%' name='single1'><param name='movie' value='player.swf'><param name='allowfullscreen' value='true'><param name='allowscriptaccess' value='always'> <param name='wmode' value='transparent'><param name='flashvars' value='file=" & ds.Tables("VideoGallery").Rows(0).Item("VideoPath") & " &image=" & ds.Tables("VideoGallery").Rows(0).Item("ImagePath") & " &backcolor=000000&frontcolor=FFFFFF&screencolor=000000&volume=50&controlbar=over&autostart=true&stretching=fill'><embed type='application/x-shockwave-flash' id='single2' name='single2' src='player.swf' width='100%' height='100%' bgcolor='undefined' allowscriptaccess='always' allowfullscreen='true' wmode='transparent' flashvars='file=" & ds.Tables("VideoGallery").Rows(0).Item("VideoPath") & " &image=" & ds.Tables("VideoGallery").Rows(0).Item("ImagePath") & "&backcolor=000000&frontcolor=FFFFFF&screencolor=000000&volume=100&controlbar=over&autostart=true&stretching=fill'/></object>"
    '    End If
    'End Sub
    'Protected Sub DataList1_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataListCommandEventArgs) Handles DataList1.ItemCommand
    '    Dim ID As New Label
    '    ID = CType(e.Item.FindControl("Label2"), Label)
    '    If ID.Text <> "" Then
    '        playvideo(CInt(ID.Text))
    '        lblmsg.Text = ""
    '    End If
    'End Sub
    Function GetRandomnumber(ByVal length As Integer) As String
        'Get the GUID
        Dim guidResult As String = System.Guid.NewGuid().ToString()

        'Remove the hyphens
        guidResult = guidResult.Replace("-", String.Empty)

        'Make sure length is valid
        If length <= 0 OrElse length > guidResult.Length Then
            Throw New ArgumentException("Length must be between 1 and " & guidResult.Length)
        End If
        'Return the first length bytes
        Return guidResult.Substring(0, length)
    End Function


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("myck") = "" Then
            Response.Redirect("~/default.aspx")
        End If

        If Page.IsPostBack = False Then
            varip = Request.ServerVariables("SERVER_NAME").ToString
            showdata()
        End If
        If (Session("Logged_IN") = "No") Then
            Response.Redirect("Home.aspx")
        End If
    End Sub

    

    Protected Sub DataList1_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataListCommandEventArgs) Handles DataList1.ItemCommand
        If e.CommandName = "Delete" Then
            Dim delcmd As New SqlCommand
            Dim Con As SqlConnection
            Dim varClass1 As New Class1
            Con = New SqlConnection(varClass1.GetConnectionString(varip))
            Con.Open()
            Dim lblID As Label = e.Item.FindControl("lblId")
            delcmd = New SqlCommand("delete from VideoGallery where ID='" & lblID.Text & "'", Con)
            delcmd.ExecuteNonQuery()
            delcmd.Dispose()
            Con.Close()
        End If
    End Sub
End Class
