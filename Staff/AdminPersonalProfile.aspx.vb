Imports System.Data
Imports System.Data.SqlClient
Imports System.Runtime.InteropServices.ComTypes
Imports System.IO
Imports System.Web
Imports System.Drawing
Partial Class AdminPersonalProfile
    Inherits System.Web.UI.Page
    Dim varIP As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
       
        If Page.IsPostBack = False Then
            If Session("myck") = "" Then
                Response.Redirect("~/default.aspx")
            End If

            'Session.Timeout = "200"
            If Session("myck") IsNot Nothing Then
                Dim Idno As String
                Idno = Session("myck").ToString()
                varIP = Request.ServerVariables("SERVER_NAME").ToString
                PersonalDetail()

            Else
            End If
        End If





    End Sub
    Sub PersonalDetail()
        Image1.ImageUrl = "~/Image.aspx?ImageID=" & Session("myck").ToString() & ""
        Dim sql As String
        Dim da As SqlDataAdapter
        Dim ds As DataSet
        varIP = Request.ServerVariables("SERVER_NAME").ToString
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()
        If Session("myck").ToString() <> "" Then
            sql = " select *  from Staff where IDNo=" & Session("myck").ToString() & " and FranchiseCode='TNK101' and BrandName='THINKNEXT TRAINING'"
            da = New SqlDataAdapter(sql, Con)
            ds = New DataSet
            da.Fill(ds, "Staff")
            If ds.Tables("Staff").Rows.Count = 0 Then
                lblMsg.Visible = True
                lblMsg.Text = "No records found"
                Exit Sub
            End If
            lblMsg.Visible = False
            txtIDNo.Text = Session("myck").ToString()
            If IsDBNull(ds.Tables("Staff").Rows(0).Item("ContactNo")) = False Then
                txtContactNo.Text = ds.Tables("Staff").Rows(0).Item("ContactNo")
            Else
                txtContactNo.Text = ""
            End If
            If IsDBNull(ds.Tables("Staff").Rows(0).Item("CorrespondanceAddress")) = False Then
                txtCorrspondanceAddress.Text = ds.Tables("Staff").Rows(0).Item("CorrespondanceAddress")
            Else
                txtCorrspondanceAddress.Text = ""
            End If
            If IsDBNull(ds.Tables("Staff").Rows(0).Item("Designation")) = False Then
                txtDesignation.Text = ds.Tables("Staff").Rows(0).Item("Designation")
            Else
                txtDesignation.Text = ""
            End If
            If IsDBNull(ds.Tables("Staff").Rows(0).Item("EMailID")) = False Then
                txtEMailID.Text = ds.Tables("Staff").Rows(0).Item("EMailID")
            Else
                txtEMailID.Text = ""
            End If
            If IsDBNull(ds.Tables("Staff").Rows(0).Item("FatherName")) = False Then
                txtFatherName.Text = ds.Tables("Staff").Rows(0).Item("FatherName")
            Else
                txtFatherName.Text = ""
            End If
            If IsDBNull(ds.Tables("Staff").Rows(0).Item("Gender")) = False Then
                txtGender.Text = ds.Tables("Staff").Rows(0).Item("Gender")
            Else
                txtGender.Text = ""
            End If
            'If IsDBNull(ds.Tables("Staff").Rows(0).Item("Locked")) = False Then
            '    txtLocked.Text = ds.Tables("Staff").Rows(0).Item("Locked")
            'Else
            '    txtLocked.Text = ""
            'End If
            If IsDBNull(ds.Tables("Staff").Rows(0).Item("MobileNo")) = False Then
                txtMobileNo.Text = ds.Tables("Staff").Rows(0).Item("MobileNo")
            Else
                txtMobileNo.Text = ""
            End If
            If IsDBNull(ds.Tables("Staff").Rows(0).Item("Name")) = False Then
                txtName.Text = ds.Tables("Staff").Rows(0).Item("Name")
            Else
                txtName.Text = ""
            End If
            If IsDBNull(ds.Tables("Staff").Rows(0).Item("MotherName")) = False Then
                txtMotherName.Text = ds.Tables("Staff").Rows(0).Item("MotherName")
            Else
                txtMotherName.Text = ""
            End If
            If IsDBNull(ds.Tables("Staff").Rows(0).Item("PermanentAddress")) = False Then
                txtPermanentAddress.Text = ds.Tables("Staff").Rows(0).Item("PermanentAddress")
            Else
                txtPermanentAddress.Text = ""
            End If
            If IsDBNull(ds.Tables("Staff").Rows(0).Item("PreviousExperience")) = False Then
                txtPreviousExperience.Text = ds.Tables("Staff").Rows(0).Item("PreviousExperience")
            Else
                txtPreviousExperience.Text = ""
            End If
            If IsDBNull(ds.Tables("Staff").Rows(0).Item("Qualification")) = False Then
                txtQualification.Text = ds.Tables("Staff").Rows(0).Item("Qualification")
            Else
                txtQualification.Text = ""
            End If
            If IsDBNull(ds.Tables("Staff").Rows(0).Item("Type")) = False Then
                txtType.Text = ds.Tables("Staff").Rows(0).Item("Type")
            Else
                txtType.Text = ""
            End If
            If IsDBNull(ds.Tables("Staff").Rows(0).Item("BloodGroup")) = False Then
                txtBloodGroup1.Text = ds.Tables("Staff").Rows(0).Item("BloodGroup")
            Else
                txtBloodGroup1.Text = ""
            End If
            If IsDBNull(ds.Tables("Staff").Rows(0).Item("SalaryAtPresent")) = False Then
                txtSalaryAtPresent.Text = ds.Tables("Staff").Rows(0).Item("SalaryAtPresent")
            Else
                txtSalaryAtPresent.Text = ""
            End If
            If IsDBNull(ds.Tables("Staff").Rows(0).Item("DateOfBirth")) = False Then
                txtdob.Text = ds.Tables("Staff").Rows(0).Item("DateOfBirth")
            Else
                txtdob.Text = ""
            End If
        Else
            Response.Redirect("Home.aspx")
        End If
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
            Dim cmd As New SqlCommand("update Staff set Snap=@Snap where IDNo=" & Session("myck").ToString() & "and FranchiseCode='TNK101' and BrandName='THINKNEXT TRAINING'", connection)
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
        Response.Redirect("~/Staff/CreateProfile.aspx")
    End Sub

    Protected Sub txtDesignation_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtDesignation.TextChanged

    End Sub

    Protected Sub txtType_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtType.TextChanged

    End Sub

    Protected Sub txtSalaryAtPresent_TextChanged(sender As Object, e As EventArgs) Handles txtSalaryAtPresent.TextChanged

    End Sub
End Class
