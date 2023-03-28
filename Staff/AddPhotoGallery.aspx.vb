Imports System.Data
Imports System.Data.SqlClient
Imports System.IO
Partial Class AddPhotoGallery
    Inherits System.Web.UI.Page
    Dim varIP As String
    Dim status As Integer

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        If Session("myck") = "" Then
            Response.Redirect("~/default.aspx")
        End If
        If Page.IsPostBack = False Then
            varIP = Request.ServerVariables("SERVER_NAME").ToString
            txtDate.Text = System.DateTime.Today
            FillCategory()
            display()
            Panel16.Enabled = False
        End If
        If Session("Logged_IN") = "No" Then
            Response.Redirect("Home.aspx")
        End If
    End Sub

    Protected Sub btnUpload_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpload.Click
        status = 0
        If FileUpload1.HasFile Then
            FileUpload(FileUpload1, txtTitle1.Text, txtImgDsc1.Text)
        End If
        If FileUpload2.HasFile Then
            FileUpload(FileUpload2, txtTitle2.Text, txtImgDsc2.Text)
        End If
        If FileUpload3.HasFile Then
            FileUpload(FileUpload3, txtTitle3.Text, txtImgDsc3.Text)
        End If
        If FileUpload4.HasFile Then
            FileUpload(FileUpload4, txtTitle4.Text, txtImgDsc4.Text)
        End If
        If FileUpload5.HasFile Then
            FileUpload(FileUpload5, txtTitle5.Text, txtImgDsc5.Text)
        End If
        txtImgDsc1.Text = ""
        txtImgDsc2.Text = ""
        txtImgDsc3.Text = ""
        txtImgDsc4.Text = ""
        txtImgDsc5.Text = ""
        display()
        If status = 1 Then
            lblmsg.Text = "Images has been successfully uploaded"
        Else
            lblmsg.Text = "No Image found to be upload"
        End If
    End Sub

  
    'Sub SaveImageFile(ByVal varTitle As String, ByVal vardsc As String, ByVal CompletePath As String)
    '    Dim con As SqlConnection
    '    Dim varclass1 As New Class1
    '    con = New SqlConnection(varclass1.GetConnectionString(varIP))
    '    con.Open()
    '    Dim cmdupd As SqlCommand
    '    cmdupd = New SqlCommand("insert into Photogallery (ID,DateEntry,Snap,Title,Description,Category) values(@ID,@DateEntry,@Snap,@Title,@Description,@Category)", con)
    '    Dim varid As Integer
    '    varid = GenID()
    '    Dim vardate As Date
    '    vardate = CDate(txtDate.Text)
    '    cmdupd.Parameters.AddWithValue("@ID", varid)
    '    cmdupd.Parameters.AddWithValue("@DateEntry", Format(vardate, "MM/dd/yyyy"))
    '    cmdupd.Parameters.AddWithValue("@Snap", CompletePath)
    '    If varTitle <> "" Then
    '        cmdupd.Parameters.AddWithValue("@Title", varTitle)
    '    Else
    '        cmdupd.Parameters.AddWithValue("@Title", DBNull.Value)
    '    End If
    '    If vardsc <> "" Then
    '        cmdupd.Parameters.AddWithValue("@Description", vardsc)
    '    Else
    '        cmdupd.Parameters.AddWithValue("@Description", DBNull.Value)
    '    End If
    '    If ddlCategory.Text <> "Select" Then
    '        cmdupd.Parameters.AddWithValue("@Category", ddlCategory.Text)
    '    Else
    '        cmdupd.Parameters.AddWithValue("@Category", DBNull.Value)
    '    End If

    '    cmdupd.Connection = con
    '    cmdupd.ExecuteNonQuery()
    '    cmdupd.Dispose()
    '    con.Close()
    '    status = 1
    'End Sub
    Sub FileUpload(ByVal varfileuploader As FileUpload, ByVal varTitle As String, ByVal vardsc As String)

        'Dim upd As SqlCommand
        Dim con As SqlConnection
        Dim varclass1 As New Class1
        con = New SqlConnection(varclass1.GetConnectionString(varIP))
        con.Open()

        If txtDate.Text = "" Then
            lblmsg.Text = "Specify Date"
            Exit Sub
        End If
        If txtDate.Text = "" Then
            lblmsg.Text = "Specify Date"
            Exit Sub
        End If
        If ddlCategory.Text = "Select" Then
            lblmsg.Text = "Specify Category"
            Exit Sub
        End If
        Dim tempjpg As String
        Dim ss As String
        Dim strPath As String = Server.MapPath("~/PhotoGallery/")
        tempjpg = ""
        ss = ""
        Dim folderName As String = ""

        If varfileuploader.HasFile Then

            tempjpg = varfileuploader.PostedFile.FileName
            Dim varFile() As String
            varFile = tempjpg.Split("/")


            For i = 0 To UBound(varFile)
                folderName = varFile(i)
            Next

            Dim varFile1() As String
            varFile1 = folderName.Split(".")
            Dim folderName1 As String = ""

            For i = 0 To UBound(varFile1)
                folderName1 = varFile1(i)
            Next

            If folderName1 <> "jpg" And folderName1 <> "jpeg" And folderName1 <> "JPG" And folderName1 <> "JPEG" Then
                lblmsg.Text = "Invalid file extension"
                Exit Sub
            End If


            'tempjpg = txtIDNo1.Text & ".Jpg"
            varfileuploader.SaveAs(strPath + folderName)
        Else
            lblmsg.Text = "Please browse Image"
            con.Close()
            Exit Sub
        End If

        If tempjpg = "" Then
            lblmsg.Text = "Please browse image"
            con.Close()
            Exit Sub
        End If

        'tempjpg = Server.MapPath("Images\fullscreen\" & tempjpg)

        'ss = Dir(tempjpg)
        ' Dim fs As FileStream
        'Dim br As BinaryReader

        'If ss <> "" Then
        '    fs = New FileStream(tempjpg, FileMode.Open)
        'End If
        'br = New BinaryReader(fs)
        'Dim imgbyte As Byte() = New Byte(fs.Length) {}
        'imgbyte = br.ReadBytes(Convert.ToInt32((fs.Length)))
        tempjpg = "PhotoGallery/" & folderName
        Dim cmdupd As SqlCommand
        'If Len(txtIDNo1.Text) = 6 Then
        cmdupd = New SqlCommand("insert into Photogallery (ID,DateEntry,Snap,Title,Description,Category,FranchiseCode) values(@ID,@DateEntry,@Snap,@Title,@Description,@Category,@FranchiseCode)", con)
        Dim varid As Integer
        varid = GenID()
        Dim vardate As Date
        vardate = CDate(txtDate.Text)
        cmdupd.Parameters.AddWithValue("@ID", varid)
        cmdupd.Parameters.AddWithValue("@DateEntry", Format(vardate, "MM/dd/yyyy"))
        cmdupd.Parameters.AddWithValue("@Snap", tempjpg)
        If varTitle <> "" Then
            cmdupd.Parameters.AddWithValue("@Title", varTitle)
        Else
            cmdupd.Parameters.AddWithValue("@Title", DBNull.Value)
        End If
        If vardsc <> "" Then
            cmdupd.Parameters.AddWithValue("@Description", vardsc)
        Else
            cmdupd.Parameters.AddWithValue("@Description", DBNull.Value)
        End If
        If ddlCategory.Text <> "Select" Then
            cmdupd.Parameters.AddWithValue("@Category", ddlCategory.Text)
        Else
            cmdupd.Parameters.AddWithValue("@Category", DBNull.Value)
        End If
        cmdupd.Parameters.AddWithValue("@FranchiseCode", txtfranchise.Text)

        cmdupd.Connection = con
        cmdupd.ExecuteNonQuery()
        cmdupd.Dispose()
        con.Close()
        status = 1
        'br.Close()
        'fs.Close()
    End Sub



    Function GenID() As Integer
        Dim da As SqlDataAdapter
        Dim ds As New DataSet
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()
        Dim varserialNo As Integer = 1
        da = New SqlDataAdapter("Select Max(ID) as ID1 from Photogallery", Con)
        da.Fill(ds, "SerialNo")
        If ds.Tables("SerialNo").Rows.Count > 0 Then
            If IsDBNull(ds.Tables("SerialNo").Rows(0).Item("ID1")) = False Then
                varserialNo = CInt(ds.Tables("SerialNo").Rows(0).Item("ID1")) + 1
            End If
        End If
        Con.Close()
        Return varserialNo
    End Function

    Protected Sub galleryDataList_CancelCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataListCommandEventArgs) Handles galleryDataList.CancelCommand
        If e.CommandName = "Cancel" Then
            galleryDataList.EditItemIndex = -1
            display()
        End If
    End Sub

    Protected Sub galleryDataList_DeleteCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataListCommandEventArgs) Handles galleryDataList.DeleteCommand
        If e.CommandName = "Delete" Then
            Dim varID As Label = CType(e.Item.FindControl("lblID"), Label)
            Dim updcmd As SqlCommand
            Dim con As SqlConnection
            Dim varclass1 As New Class1
            con = New SqlConnection(varclass1.GetConnectionString(varIP))
            con.Open()
            updcmd = New SqlCommand("delete from Photogallery where ID=@ID", con)
            updcmd.Parameters.AddWithValue("@ID", varID.Text)
            updcmd.ExecuteNonQuery()
            updcmd.Dispose()
            display()
            con.Close()
            lblmsg.Text = "Image has been successfully deleted."
        End If
    End Sub

    Protected Sub galleryDataList_EditCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataListCommandEventArgs) Handles galleryDataList.EditCommand
        If e.CommandName = "Edit" Then
            galleryDataList.EditItemIndex = e.Item.ItemIndex
            display()
        End If
    End Sub

    Sub FillCategory()
        Dim da As SqlDataAdapter
        Dim ds As New DataSet
        Dim con As SqlConnection
        Dim varclass1 As New Class1
        con = New SqlConnection(varclass1.GetConnectionString(varIP))
        con.Open()
        da = New SqlDataAdapter("select Distinct Category from MasterGalleryCategory where FranchiseCode='"+txtfranchise.Text+"'", con)
        da.Fill(ds, "Category")
        ddlCategory.Items.Clear()
        ddlCategory.Items.Add("Select")
        If ds.Tables("Category").Rows.Count > 0 Then
            For i = 0 To ds.Tables("Category").Rows.Count - 1
                If IsDBNull(ds.Tables("Category").Rows(i).Item("Category")) = False Then
                    ddlCategory.Items.Add(ds.Tables("Category").Rows(i).Item("Category"))
                End If
            Next
        End If
        con.Close()
    End Sub

    Sub display()
        Dim myImageDir As New DirectoryInfo(MapPath("~/Photogallery/"))
        Try
            Dim sql As String
            Dim da As SqlDataAdapter
            Dim ds As New DataSet
            Dim con As SqlConnection
            Dim varclass1 As New Class1
            con = New SqlConnection(varclass1.GetConnectionString(varIP))
            con.Open()

            sql = "select * from Photogallery  where FranchiseCode='" + txtfranchise.Text+"'"

            sql = sql & " order by DateEntry Desc, ID Desc "
            da = New SqlDataAdapter(sql, con)
            da.Fill(ds, "Snap")
            If ds.Tables("Snap").Rows.Count > 0 Then
                galleryDataList.DataSource = ds.Tables("Snap")
                galleryDataList.DataBind()
                con.Close()
            Else
                con.Close()
                lblmsg.Text = "No Record Found"
                Exit Sub
            End If
        Catch generatedExceptionName As System.IO.DirectoryNotFoundException
            Response.Write("<script language =Javascript> alert('Error!');</script>")
        End Try
    End Sub

    Protected Sub galleryDataList_UpdateCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataListCommandEventArgs) Handles galleryDataList.UpdateCommand
        If e.CommandName = "Update" Then
            Dim varTitle As TextBox = CType(e.Item.FindControl("txtTitle1"), TextBox)
            Dim varCategory As TextBox = CType(e.Item.FindControl("txtCategory"), TextBox)
            Dim Vardescription As TextBox = CType(e.Item.FindControl("txtDescription1"), TextBox)
            Dim varID As Label = CType(e.Item.FindControl("lblid1"), Label)
            Dim updcmd As SqlCommand
            Dim con As SqlConnection
            Dim varclass1 As New Class1
            con = New SqlConnection(varclass1.GetConnectionString(varIP))
            con.Open()

            updcmd = New SqlCommand("Update Photogallery set Title=@Title,Description=@Description, Category=@Category where ID=@ID", con)
            updcmd.Parameters.AddWithValue("@Title", varTitle.Text)
            updcmd.Parameters.AddWithValue("@Category", varCategory.Text)
            updcmd.Parameters.AddWithValue("@Description", Vardescription.Text)
            updcmd.Parameters.AddWithValue("@ID", varID.Text)
            updcmd.ExecuteNonQuery()
            updcmd.Dispose()

            galleryDataList.EditItemIndex = -1
            display()
            con.Close()

        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Panel16.Enabled = True
        Panel16.Visible = True
    End Sub

    Protected Sub btnADDNew_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnADDNew.Click
        Dim da As SqlDataAdapter
        Dim ds As New DataSet
        Dim con As SqlConnection
        Dim varclass1 As New Class1
        con = New SqlConnection(varclass1.GetConnectionString(varIP))
        con.Open()
        Dim cmd As SqlCommand
        cmd = New SqlCommand("select Category from MasterGalleryCategory where Category=@Category AND FranchiseCode=@FranchiseCode", con)
        cmd.Parameters.AddWithValue("@Category", txtADDNew.Text)
        cmd.Parameters.AddWithValue("@FranchiseCode", txtfranchise.Text)
        da = New SqlDataAdapter(cmd)
        da.Fill(ds, "Category")
        If ds.Tables("Category").Rows.Count > 0 Then
            lblmsg.Text = "Entry already exist"
            con.Close()
            Exit Sub
        End If
        Dim cmd1 As SqlCommand
        cmd1 = New SqlCommand("insert into MasterGalleryCategory (Category,FranchiseCode)values(@Category,@FranchiseCode) ", con)
        cmd1.Parameters.AddWithValue("@Category", txtADDNew.Text)
        cmd1.Parameters.AddWithValue("@FranchiseCode", txtfranchise.Text)
        cmd1.ExecuteNonQuery()
        cmd1.Dispose()
        ddlCategory.Items.Add(txtADDNew.Text)
        con.Close()
        lblmsg.Text = "Category has been successfully added"
        Panel16.Visible = False
    End Sub

End Class
