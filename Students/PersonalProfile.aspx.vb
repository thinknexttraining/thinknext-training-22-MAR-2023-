Imports System.Data
Imports System.Data.SqlClient
Imports System.Runtime.InteropServices.ComTypes
Imports System.IO
Imports System.Web
Imports System.Drawing

Partial Class PersonalProfile
    Inherits System.Web.UI.Page
    Dim varIP As String
  

    Sub PersonalDetail()
        Image1.ImageUrl = "~/Image.aspx?ImageID=" & Session("myck").ToString() & ""
        If Session("myck").ToString = "" Then
            Response.Redirect("~/default.aspx")
        End If

        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()
        Dim da As SqlDataAdapter
        Dim ds As DataSet
        Dim sql As String
        If Session("myck").ToString() <> "" Then
            sql = "Select * from Admissions where FranchiseCode='" + txtfranchiseCode.Text + "' and IDNo= " & Session("myck").ToString()
            da = New SqlDataAdapter(sql, Con)
            ds = New DataSet
            da.Fill(ds, "Admissions")
            If ds.Tables("Admissions").Rows.Count = 0 Then
                lblMsg.Visible = True
                lblMsg.Text = "Sorry! No Record Found"
                Exit Sub
            End If

            If IsDBNull(ds.Tables("Admissions").Rows(0).Item("Course")) = False Then
                lbltraining.Text = ds.Tables("Admissions").Rows(0).Item("Course")
                Session("vacancies") = lbltraining.Text
            Else
                lbltraining.Text = ""
            End If
            If IsDBNull(ds.Tables("Admissions").Rows(0).Item("Duration")) = False Then
                lbltrainingtype.Text = ds.Tables("Admissions").Rows(0).Item("Duration")
            Else
                lbltrainingtype.Text = ""
            End If
            'If IsDBNull(ds.Tables("Admissions").Rows(0).Item("BatchTiming")) = False Then
            '    lblbatchtiming.Text = ds.Tables("Admissions").Rows(0).Item("BatchTiming")
            'Else
            '    lblbatchtiming.Text = ""
            'End If
            If IsDBNull(ds.Tables("Admissions").Rows(0).Item("CollegeName")) = False Then
                txtCollegeName.Text = ds.Tables("Admissions").Rows(0).Item("CollegeName")
            Else
                txtCollegeName.Text = ""
            End If
            If IsDBNull(ds.Tables("Admissions").Rows(0).Item("Course")) = False Then
                txtCourse.Text = ds.Tables("Admissions").Rows(0).Item("Course")
            Else
                txtCourse.Text = ""
            End If

            If IsDBNull(ds.Tables("Admissions").Rows(0).Item("Batch")) = False Then
                txtBatch.Text = ds.Tables("Admissions").Rows(0).Item("Batch")
            Else
                txtBatch.Text = ""
            End If
            If IsDBNull(ds.Tables("Admissions").Rows(0).Item("AdmissionDate")) = False Then
                labeladmDate.Text = ds.Tables("Admissions").Rows(0).Item("AdmissionDate")
            Else
                labeladmDate.Text = ""
            End If
            If IsDBNull(ds.Tables("Admissions").Rows(0).Item("UniRollNo")) = False Then
                txtUniRollNo.Text = ds.Tables("Admissions").Rows(0).Item("UniRollNo")
            Else
                txtUniRollNo.Text = ""
            End If

            If IsDBNull(ds.Tables("Admissions").Rows(0).Item("IDNo")) = False Then
                LABELIDNo.Text = ds.Tables("Admissions").Rows(0).Item("IDNo")
            Else
                LABELIDNo.Text = ""
            End If
            If IsDBNull(ds.Tables("Admissions").Rows(0).Item("StudentName")) = False Then
                txtName.Text = ds.Tables("Admissions").Rows(0).Item("StudentName")
            Else
                txtName.Text = ""
            End If
            If IsDBNull(ds.Tables("Admissions").Rows(0).Item("Sex")) = False Then
                txtSex.Text = ds.Tables("Admissions").Rows(0).Item("Sex")
            Else
                txtSex.Text = ""
            End If
            If IsDBNull(ds.Tables("Admissions").Rows(0).Item("FatherName")) = False Then
                txtFatherName.Text = ds.Tables("Admissions").Rows(0).Item("FatherName")
            Else
                txtFatherName.Text = ""
            End If
            If IsDBNull(ds.Tables("Admissions").Rows(0).Item("Mothername")) = False Then
                txtMotherName.Text = ds.Tables("Admissions").Rows(0).Item("Mothername")
            Else
                txtMotherName.Text = ""
            End If
            If IsDBNull(ds.Tables("Admissions").Rows(0).Item("DOB")) = False Then
                txtDOB.Text = ds.Tables("Admissions").Rows(0).Item("DOB")
            Else
                txtDOB.Text = ""
            End If
            If IsDBNull(ds.Tables("Admissions").Rows(0).Item("CorrespondanceAddress")) = False Then
                txtCorrspondanceAddress.Text = ds.Tables("Admissions").Rows(0).Item("CorrespondanceAddress")
            Else
                txtCorrspondanceAddress.Text = ""
            End If
            If IsDBNull(ds.Tables("Admissions").Rows(0).Item("PermanentAddress")) = False Then
                txtPermanentAddress.Text = ds.Tables("Admissions").Rows(0).Item("PermanentAddress")
            Else
                txtPermanentAddress.Text = ""
            End If
            If IsDBNull(ds.Tables("Admissions").Rows(0).Item("EmailID")) = False Then
                txtEMailID.Text = ds.Tables("Admissions").Rows(0).Item("EmailID")
            Else
                txtEMailID.Text = ""
            End If
            If IsDBNull(ds.Tables("Admissions").Rows(0).Item("ContactNo")) = False Then
                txtPhoneNo.Text = ds.Tables("Admissions").Rows(0).Item("ContactNo")
            Else
                txtPhoneNo.Text = ""
            End If
            If IsDBNull(ds.Tables("Admissions").Rows(0).Item("StudentMobileNo")) = False Then
                txtMobileNo.Text = ds.Tables("Admissions").Rows(0).Item("StudentMobileNo")
            Else
                txtMobileNo.Text = ""
            End If
            If IsDBNull(ds.Tables("Admissions").Rows(0).Item("FatherMobileNo")) = False Then
                txtFatherMobileNo.Text = ds.Tables("Admissions").Rows(0).Item("FatherMobileNo")
            Else
                txtFatherMobileNo.Text = ""
            End If
            If IsDBNull(ds.Tables("Admissions").Rows(0).Item("FatherOccupation")) = False Then
                txtOccupation.Text = ds.Tables("Admissions").Rows(0).Item("FatherOccupation")
            Else
                txtOccupation.Text = ""
            End If
            'Image1.ImageUrl = "~/AdmissionImages/" + ds.Tables("Admissions").Rows(0).Item("StudentSnap")

        End If
        Con.Close()
    End Sub

   

    'Protected Sub btnUpload_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpload.Click
    '    '  selectemails.Style.Add("display", "block")
    '    If imguploder.HasFile Then
    '        'getting length of uploaded file
    '        Dim length As Integer = imguploder.PostedFile.ContentLength
    '        'create a byte array to store the binary image data
    '        Dim imgbyte As Byte() = New Byte(length - 1) {}
    '        'store the currently selected file in memeory
    '        Dim img As HttpPostedFile = imguploder.PostedFile
    '        'set the binary data
    '        img.InputStream.Read(imgbyte, 0, length)
    '        'use the web.config to store the connection string
    '        Dim connection As New SqlConnection("Data Source=dbthinknextcard.db.11478413.hostedresource.com;Initial Catalog=dbthinknextcard;Persist Security Info=True;User ID=dbthinknextcard;Password=smartBSS123!@#")
    '        connection.Open()
    '        Dim cmd As New SqlCommand("update Admissions set Snap=@Snap where IDNo=" & Request.Cookies("Myck").Value & "", connection)
    '        cmd.Parameters.AddWithValue("@Snap", imgbyte)
    '        Dim count As Integer = cmd.ExecuteNonQuery()
    '        connection.Close()
    '        If count = 1 Then
    '            lblMsg.Text = "Image has been uploaded successfully"
    '            '   Image1.ImageUrl = "~/Image.aspx?ImID=" & Request.Cookies("Myck").Value & ""
    '            '  selectemails.Style.Add("display", "none")
    '        End If

    '    End If
    'End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'If Request.Cookies("Myck").Value = "" Or Request.Cookies("Myck").Value = Nothing Then
        '    Response.Redirect("~/default.aspx")
        'End If
        If Session("myck") = "" Then
            Response.Redirect("~/default.aspx")
        End If


        If Page.IsPostBack = False Then
            If Request.QueryString("stidno") IsNot Nothing Then
                Dim Idno As String
                ' Idno = Request.QueryString("stidno").ToString
                Idno = Session("myck").ToString()
                'Request.Cookies("Myck").Value = Idno
            End If
            ClientScript.RegisterStartupScript(Page.GetType(), "Onload", "readonlyTrue();", True)
            PersonalDetail()
            ' Image1.ImageUrl = "~/Image.aspx?ImageID=" & Request.Cookies("Myck").Value.ToString() & ""

        End If
    End Sub

    Protected Sub btnCancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCancel.Click
        PersonalDetail()
    End Sub

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        UpdatedateProfile()
    End Sub

    Sub UpdatedateProfile()
        Dim da As New SqlDataAdapter
        Dim ds As New DataSet
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()
        Dim sql As String = ""
        sql = "update  Admissions Set  CollegeName=@CollegeName, StudentName=@StudentName, UniRollNo=@UniRollNo, Course=@Course, Batch=@Batch, DOB=@DOB,"
        sql = sql & " Sex=@Sex, EmailID=@EmailID, StudentMobileNo=@StudentMobileNo, ContactNo=@ContactNo, FatherName=@FatherName, MotherName=@MotherName, "
        sql = sql & " FatherMobileNo=@FatherMobileNo, FatherOccupation=@FatherOccupation, PermanentAddress=@PermanentAddress, CorrespondanceAddress=@CorrespondanceAddress"
        Dim cmd As New SqlCommand(sql, Con)
        If txtCollegeName.Text <> "" Then
            cmd.Parameters.AddWithValue("@CollegeName", txtCollegeName.Text)
        Else
            cmd.Parameters.AddWithValue("@CollegeName", DBNull.Value)
        End If

        If txtName.Text <> "" Then
            cmd.Parameters.AddWithValue("@StudentName", txtName.Text)
        Else
            cmd.Parameters.AddWithValue("@StudentName", DBNull.Value)
        End If
        If txtUniRollNo.Text <> "" Then
            cmd.Parameters.AddWithValue("@UniRollNo", txtUniRollNo.Text)
        Else
            cmd.Parameters.AddWithValue("@UniRollNo", DBNull.Value)
        End If


        If txtFatherName.Text <> "" Then
            cmd.Parameters.AddWithValue("@FatherName", txtFatherName.Text)
        Else
            cmd.Parameters.AddWithValue("@FatherName", DBNull.Value)
        End If


        If txtPhoneNo.Text <> "" Then
            cmd.Parameters.AddWithValue("@ContactNo", txtPhoneNo.Text)
        Else
            cmd.Parameters.AddWithValue("@ContactNo", DBNull.Value)
        End If



        If txtMobileNo.Text <> "" Then
            cmd.Parameters.AddWithValue("@StudentMobileNo", txtMobileNo.Text)
        Else
            cmd.Parameters.AddWithValue("@StudentMobileNo", DBNull.Value)
        End If



        If txtEMailID.Text <> "" Then
            cmd.Parameters.AddWithValue("@EmailID", txtEMailID.Text)
        Else
            cmd.Parameters.AddWithValue("@EmailID", DBNull.Value)
        End If

        If txtSex.Text <> "" Then
            cmd.Parameters.AddWithValue("@Sex", txtSex.Text)
        Else
            cmd.Parameters.AddWithValue("@Sex", DBNull.Value)
        End If


        If txtDOB.Text <> "" Then
            cmd.Parameters.AddWithValue("@DOB", txtDOB.Text)
        Else
            cmd.Parameters.AddWithValue("@DOB", DBNull.Value)
        End If

        If txtBatch.Text <> "" Then
            cmd.Parameters.AddWithValue("@Batch", txtBatch.Text)
        Else
            cmd.Parameters.AddWithValue("@Batch", DBNull.Value)
        End If

        If txtCourse.Text <> "" Then
            cmd.Parameters.AddWithValue("@Course", txtCourse.Text)
            'Session("Course") = txtCourse.Text
        Else
            cmd.Parameters.AddWithValue("@Course", DBNull.Value)
        End If

        If txtMotherName.Text <> "" Then
            cmd.Parameters.AddWithValue("@MotherName", txtMotherName.Text)
        Else
            cmd.Parameters.AddWithValue("@MotherName", DBNull.Value)
        End If

        If txtFatherMobileNo.Text <> "" Then
            cmd.Parameters.AddWithValue("@FatherMobileNo", txtFatherMobileNo.Text)
        Else
            cmd.Parameters.AddWithValue("@FatherMobileNo", DBNull.Value)
        End If
        If txtOccupation.Text <> "" Then
            cmd.Parameters.AddWithValue("@FatherOccupation", txtOccupation.Text)
        Else
            cmd.Parameters.AddWithValue("@FatherOccupation", DBNull.Value)
        End If

        If txtPermanentAddress.Text <> "" Then
            cmd.Parameters.AddWithValue("@PermanentAddress", txtPermanentAddress.Text)
        Else
            cmd.Parameters.AddWithValue("@PermanentAddress", DBNull.Value)
        End If

        If txtCorrspondanceAddress.Text <> "" Then
            cmd.Parameters.AddWithValue("@CorrespondanceAddress", txtCorrspondanceAddress.Text)
        Else
            cmd.Parameters.AddWithValue("@CorrespondanceAddress", DBNull.Value)
        End If

        cmd.ExecuteNonQuery()
        cmd.Dispose()
        Con.Close()

    End Sub
    Protected Sub btnUpload_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpload.Click
        selectemails.Style.Add("display", "block")
        If imguploder.HasFile Then
            Dim length As Integer = imguploder.PostedFile.ContentLength
            Dim imgbyte As Byte() = New Byte(length - 1) {}
            Dim img As HttpPostedFile = imguploder.PostedFile
            img.InputStream.Read(imgbyte, 0, length)
            'Dim connection As New SqlConnection("Data Source=dbthinknextcard.db.11478413.hostedresource.com;Initial Catalog=dbthinknextcard;Persist Security Info=True;User ID=dbthinknextcard;Password=smartBSS123!@#")
            Dim connection As New SqlConnection("Data Source=103.21.58.193;Initial Catalog=dbthinknex;Persist Security Info=True;User ID=thinknex;Password=techsmart?;")

            connection.Open()
            Dim cmd As New SqlCommand("update admissions set Snap=@Snap where IDNo=" & Session("myck").ToString() & "and FranchiseCode='TNK101' and BrandName='THINKNEXT TRAINING'", connection)
            cmd.Parameters.AddWithValue("@Snap", imgbyte)
            Dim count As Integer = cmd.ExecuteNonQuery()
            connection.Close()
            If count = 1 Then
                lblMsg.Text = "Image has been uploaded successfully"
                selectemails.Style.Add("display", "none")
                PersonalDetail()
            End If
        End If
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Session("Update") = "Yes"
        Response.Redirect("~/Students/UpdateProfile.aspx")
    End Sub

    
End Class
