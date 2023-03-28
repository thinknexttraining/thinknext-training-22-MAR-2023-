Imports System.Data.SqlClient
Imports System.Data

Partial Class Admin_CreateProfile
    Inherits System.Web.UI.Page
    Dim varIP As String
    Sub CheckUserProfile()
        Dim sql As String
        Dim da As SqlDataAdapter
        Dim ds As DataSet
        varIP = Request.ServerVariables("SERVER_NAME").ToString
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()
        If Session("myck").ToString() <> "" Then
            sql = " select *  from Staff where IDNo=" & Session("myck").ToString()
            da = New SqlDataAdapter(sql, Con)
            ds = New DataSet
            da.Fill(ds, "Staff")

            If ds.Tables("Staff").Rows.Count = 0 Then
                btnAddProfile.Visible = True
            Else
                btnSaveUpdate.Visible = True

            End If

        End If


    End Sub

    Sub saveprofile()
        Dim con As SqlConnection
        Dim sql As String
        Dim cmd As SqlCommand
        Dim varClass1 As New Class1
        con = New SqlConnection(varClass1.GetConnectionString(varIP))
        con.Open()
        If txtName.Text.Contains("'") Then
            lblMsg.Visible = True
            lblMsg.Text = "Enter Name in Correct Format"
            Exit Sub
        End If
        If txtFatherName.Text = "" Then
            lblMsg.Visible = True
            lblMsg.Text = "Enter Father Name"
            Exit Sub
        End If
        If txtpermanentaddress.Text = "" Then
            lblMsg.Visible = True
            lblMsg.Text = "Enter Permanent Address"
            Exit Sub
        End If
        If txtMotherName.Text.Contains("'") Then
            lblMsg.Visible = True
            lblMsg.Text = "Enter Mother Name in Correct Format"
            Exit Sub
        End If
        If txtFatherName.Text.Contains("'") Then
            lblMsg.Visible = True
            lblMsg.Text = "Enter Father Name in Correct Format"
            Exit Sub
        End If
        If txtmobileno.Text = "" Then
            lblMsg.Visible = True
            lblMsg.Text = "Specify mobile no."
            Exit Sub
        Else
            If (System.Text.RegularExpressions.Regex.IsMatch(txtmobileno.Text, "^[0-9-,]+$")) = False Then
                lblMsg.Visible = True
                lblMsg.Text = "Specify mobile no. in correct format"
                Exit Sub
            End If
        End If

        If txtemailid.Text <> "" Then
            If (System.Text.RegularExpressions.Regex.IsMatch(txtemailid.Text, "^[a-zA-Z0-9.@\-_]+$")) = False Then
                lblMsg.Visible = True
                lblMsg.Text = "Specify email id in correct format"
                Exit Sub
            End If
        End If
        sql = "Insert into Staff (IDNo,Name,FatherName,MotherName,Designation,Type,Gender,CorrespondanceAddress,PermanentAddress,ContactNo,MobileNo,EmailID,DateOfBirth,BloodGroup,SalaryAtPresent,Qualification,PreviousExperience,FranchiseCode,BrandName) values (@IDNo1,@Name,@FatherName,@MotherName,@Designation,@Type,@Gender,@CorrespondanceAddress,@PermanentAddress,@ContactNo,@MobileNo,@EmailID,@DateOfBirth,@BloodGroup,@SalaryAtPresent,@Qualification,@PreviousExperience,@FranchiseCode,@BrandName)"
        cmd = New SqlCommand(sql, con)

        cmd.Parameters.AddWithValue("@FranchiseCode", "TNK101")

        cmd.Parameters.AddWithValue("@BrandName", "THINKNEXT TRAINING")

        cmd.Parameters.AddWithValue("@IDNo1", txtIDNo.Text)
        If txtName.Text <> "" Then
            cmd.Parameters.AddWithValue("@Name", txtName.Text)
        Else
            cmd.Parameters.AddWithValue("@Name", DBNull.Value)
        End If
        If txtFatherName.Text <> "" Then
            cmd.Parameters.AddWithValue("@FatherName", txtFatherName.Text)
        Else
            cmd.Parameters.AddWithValue("@FatherName", DBNull.Value)
        End If
        If txtMotherName.Text <> "" Then
            cmd.Parameters.AddWithValue("@MotherName", txtMotherName.Text)
        Else
            cmd.Parameters.AddWithValue("@MotherName", DBNull.Value)
        End If
        If txtDesignation.Text <> "" Then
            cmd.Parameters.AddWithValue("@Designation", txtDesignation.Text)
        Else
            cmd.Parameters.AddWithValue("@Designation", DBNull.Value)
        End If
        If txttype.Text <> "" Then
            cmd.Parameters.AddWithValue("@Type", txttype.Text)
        Else
            cmd.Parameters.AddWithValue("@Type", DBNull.Value)
        End If
        If txtContactNo.Text <> "" Then
            cmd.Parameters.AddWithValue("@ContactNo", txtContactNo.Text)
        Else
            cmd.Parameters.AddWithValue("@ContactNo", DBNull.Value)
        End If
        If txtmobileno.Text <> "" Then
            cmd.Parameters.AddWithValue("@MobileNo", txtmobileno.Text)
        Else
            cmd.Parameters.AddWithValue("@MobileNo", DBNull.Value)
        End If
        If txtemailid.Text <> "" Then
            cmd.Parameters.AddWithValue("@EmailID", txtemailid.Text)
        Else
            cmd.Parameters.AddWithValue("@EmailID", DBNull.Value)
        End If
        If txtdob.Text <> "" Then
            If IsDate(txtdob.Text) = False Then
                lblMsg.Visible = True
                lblMsg.Text = "Invalid Date"
                Exit Sub
            End If
            lblMsg.Visible = False
            Dim varDOB As Date
            varDOB = CDate(txtdob.Text)
            cmd.Parameters.AddWithValue("@DateOfBirth", Format(varDOB, "MM/dd/yyyy"))
        Else
            cmd.Parameters.AddWithValue("@DateOfBirth", DBNull.Value)
        End If
        If ddlBloodGroup.Text <> "" Then
            cmd.Parameters.AddWithValue("@BloodGroup", ddlBloodGroup.Text)
        Else
            cmd.Parameters.AddWithValue("@BloodGroup", DBNull.Value)
        End If
        If ddlgender.Text <> "" Then
            cmd.Parameters.AddWithValue("@Gender", ddlgender.Text)
        Else
            cmd.Parameters.AddWithValue("@Gender", DBNull.Value)
        End If
        If txtSalaryAtPresent.Text <> "" Then
            cmd.Parameters.AddWithValue("@SalaryAtPresent", txtSalaryAtPresent.Text)
        Else
            cmd.Parameters.AddWithValue("@SalaryAtPresent", DBNull.Value)
        End If
        If txtqualification.Text <> "" Then
            cmd.Parameters.AddWithValue("@Qualification", txtqualification.Text)
        Else
            cmd.Parameters.AddWithValue("@Qualification", DBNull.Value)
        End If
        If txtexperience.Text <> "" Then
            cmd.Parameters.AddWithValue("@PreviousExperience", txtexperience.Text)
        Else
            cmd.Parameters.AddWithValue("@PreviousExperience", DBNull.Value)
        End If
        If txtCorrspondanceAddress.Text <> "" Then
            cmd.Parameters.AddWithValue("@CorrespondanceAddress", txtCorrspondanceAddress.Text)
        Else
            cmd.Parameters.AddWithValue("@CorrespondanceAddress", DBNull.Value)
        End If
        If txtpermanentaddress.Text <> "" Then
            cmd.Parameters.AddWithValue("@PermanentAddress", txtpermanentaddress.Text)
        Else
            cmd.Parameters.AddWithValue("@PermanentAddress", DBNull.Value)
        End If


        cmd.Connection = con
        cmd.ExecuteNonQuery()
        lblMsg.Visible = True
        lblMsg.Text = "Data added successfully"
        con.Close()
    End Sub

    
    Sub PersonalDetail()
        Dim sql As String
        Dim da As SqlDataAdapter
        Dim ds As DataSet
        varIP = Request.ServerVariables("SERVER_NAME").ToString
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()
        If Session("myck").ToString() <> "" Then
            sql = " select *  from Staff where IDNo=" & Session("myck").ToString()
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
            If IsDBNull(ds.Tables("Staff").Rows(0).Item("MotherName")) = False Then

                txtMotherName.Text = ds.Tables("Staff").Rows(0).Item("MotherName")
            Else
                txtMotherName.Text = ""
            End If
            If IsDBNull(ds.Tables("Staff").Rows(0).Item("SalaryAtPresent")) = False Then
                txtSalaryAtPresent.Text = ds.Tables("Staff").Rows(0).Item("SalaryAtPresent")
            Else
                txtSalaryAtPresent.Text = ""
            End If

            If IsDBNull(ds.Tables("Staff").Rows(0).Item("EMailID")) = False Then
                txtemailid.Text = ds.Tables("Staff").Rows(0).Item("EMailID")
            Else
                txtemailid.Text = ""
            End If
            If IsDBNull(ds.Tables("Staff").Rows(0).Item("FatherName")) = False Then
                txtFatherName.Text = ds.Tables("Staff").Rows(0).Item("FatherName")
            Else
                txtFatherName.Text = ""
            End If
            If IsDBNull(ds.Tables("Staff").Rows(0).Item("Gender")) = False Then
                ddlgender.Text = ds.Tables("Staff").Rows(0).Item("Gender")
            Else
                ddlgender.SelectedIndex = -1
            End If
            If IsDBNull(ds.Tables("Staff").Rows(0).Item("MobileNo")) = False Then
                txtmobileno.Text = ds.Tables("Staff").Rows(0).Item("MobileNo")
            Else
                txtmobileno.Text = ""
            End If

            If IsDBNull(ds.Tables("Staff").Rows(0).Item("Name")) = False Then
                txtName.Text = ds.Tables("Staff").Rows(0).Item("Name")
            Else
                txtName.Text = ""
            End If

            If IsDBNull(ds.Tables("Staff").Rows(0).Item("PermanentAddress")) = False Then
                txtpermanentaddress.Text = ds.Tables("Staff").Rows(0).Item("PermanentAddress")
            Else

                txtpermanentaddress.Text = ""
            End If
            If IsDBNull(ds.Tables("Staff").Rows(0).Item("PreviousExperience")) = False Then
                txtexperience.Text = ds.Tables("Staff").Rows(0).Item("PreviousExperience")
            Else
                txtexperience.Text = ""
            End If

            If IsDBNull(ds.Tables("Staff").Rows(0).Item("Qualification")) = False Then
                txtqualification.Text = ds.Tables("Staff").Rows(0).Item("Qualification")
            Else
                txtqualification.Text = ""
            End If
            If IsDBNull(ds.Tables("Staff").Rows(0).Item("Type")) = False Then
                txttype.Text = ds.Tables("Staff").Rows(0).Item("Type")
            Else
                txttype.Text = ""
            End If

            If IsDBNull(ds.Tables("Staff").Rows(0).Item("BloodGroup")) = False Then
                ddlBloodGroup.Text = ds.Tables("Staff").Rows(0).Item("BloodGroup")
            Else
                ddlBloodGroup.SelectedIndex = -1
            End If

            If IsDBNull(ds.Tables("Staff").Rows(0).Item("DateOfBirth")) = False Then
                txtdob.Text = ds.Tables("Staff").Rows(0).Item("DateOfBirth")
            Else
                txtdob.Text = ""
            End If
        Else
            Response.Redirect("Home.aspx")
        End If
        'If Page.IsPostBack = False Then
        Con.Close()
        'If Request.Cookies("Myck").Value <> "" Then
        '    Session("StudentID") = Request.Cookies("Myck").Value.ToString
        '    Image1.ImageUrl = "~/Image.aspx?ImageID=" & Session("StudentID").ToString
        'End If
    End Sub



    Sub Updateprofile()
        Dim con As SqlConnection
        Dim sql As String
        Dim cmd As SqlCommand
        Dim varClass1 As New Class1
        con = New SqlConnection(varClass1.GetConnectionString(varIP))
        con.Open()
        If txtName.Text.Contains("'") Then
            lblMsg.Visible = True
            lblMsg.Text = "Enter Name in Correct Format"
            Exit Sub
        End If
        If txtFatherName.Text = "" Then
            lblMsg.Visible = True
            lblMsg.Text = "Enter Father Name"
            Exit Sub
        End If
        If txtpermanentaddress.Text = "" Then
            lblMsg.Visible = True
            lblMsg.Text = "Enter Permanent Address"
            Exit Sub
        End If
        If txtMotherName.Text.Contains("'") Then
            lblMsg.Visible = True
            lblMsg.Text = "Enter Mother Name in Correct Format"
            Exit Sub
        End If
        If txtFatherName.Text.Contains("'") Then
            lblMsg.Visible = True
            lblMsg.Text = "Enter Father Name in Correct Format"
            Exit Sub
        End If
        If txtmobileno.Text = "" Then
            lblMsg.Visible = True
            lblMsg.Text = "Specify mobile no."
            Exit Sub
        Else
            If (System.Text.RegularExpressions.Regex.IsMatch(txtmobileno.Text, "^[0-9-,]+$")) = False Then
                lblMsg.Visible = True
                lblMsg.Text = "Specify mobile no. in correct format"
                Exit Sub
            End If
        End If

        If txtemailid.Text <> "" Then
            If (System.Text.RegularExpressions.Regex.IsMatch(txtemailid.Text, "^[a-zA-Z0-9.@\-_]+$")) = False Then
                lblMsg.Visible = True
                lblMsg.Text = "Specify email id in correct format"
                Exit Sub
            End If
        End If
        sql = "Update Staff set Name=@Name,FatherName=@FatherName,MotherName=@MotherName,Designation=@Designation,Type=@Type,ContactNo=@ContactNo,MobileNo=@MobileNo,EmailID=@EmailID,DateOfBirth=@DateOfBirth,BloodGroup=@BloodGroup,Gender=@Gender,SalaryAtPresent=@SalaryAtPresent,Qualification=@Qualification,PreviousExperience=@PreviousExperience,CorrespondanceAddress=@CorrespondanceAddress,PermanentAddress=@PermanentAddress ,FranchiseCode='" + txtfranchise.Text + "',BrandName='" + txtbrand.Text + "' where IDNo=@IDNo1"
        cmd = New SqlCommand(sql, con)
        cmd.Parameters.AddWithValue("@IDNo1", txtIDNo.Text)
        If txtName.Text <> "" Then
            cmd.Parameters.AddWithValue("@Name", txtName.Text)
        Else
            cmd.Parameters.AddWithValue("@Name", DBNull.Value)
        End If
        If txtFatherName.Text <> "" Then
            cmd.Parameters.AddWithValue("@FatherName", txtFatherName.Text)
        Else
            cmd.Parameters.AddWithValue("@FatherName", DBNull.Value)
        End If
        If txtMotherName.Text <> "" Then
            cmd.Parameters.AddWithValue("@MotherName", txtMotherName.Text)
        Else
            cmd.Parameters.AddWithValue("@MotherName", DBNull.Value)
        End If
        If txtDesignation.Text <> "" Then
            cmd.Parameters.AddWithValue("@Designation", txtDesignation.Text)
        Else
            cmd.Parameters.AddWithValue("@Designation", DBNull.Value)
        End If
        If txttype.Text <> "" Then
            cmd.Parameters.AddWithValue("@Type", txttype.Text)
        Else
            cmd.Parameters.AddWithValue("@Type", DBNull.Value)
        End If
        If txtContactNo.Text <> "" Then
            cmd.Parameters.AddWithValue("@ContactNo", txtContactNo.Text)
        Else
            cmd.Parameters.AddWithValue("@ContactNo", DBNull.Value)
        End If
        If txtmobileno.Text <> "" Then
            cmd.Parameters.AddWithValue("@MobileNo", txtmobileno.Text)
        Else
            cmd.Parameters.AddWithValue("@MobileNo", DBNull.Value)
        End If
        If txtemailid.Text <> "" Then
            cmd.Parameters.AddWithValue("@EmailID", txtemailid.Text)
        Else
            cmd.Parameters.AddWithValue("@EmailID", DBNull.Value)
        End If
        If txtdob.Text <> "" Then
            If IsDate(txtdob.Text) = False Then
                lblMsg.Visible = True
                lblMsg.Text = "Invalid Date"
                Exit Sub
            End If
            lblMsg.Visible = False
            Dim varDOB As Date
            varDOB = CDate(txtdob.Text)
            cmd.Parameters.AddWithValue("@DateOfBirth", Format(varDOB, "MM/dd/yyyy"))
        Else
            cmd.Parameters.AddWithValue("@DateOfBirth", DBNull.Value)
        End If
        If ddlBloodGroup.Text <> "" Then
            cmd.Parameters.AddWithValue("@BloodGroup", ddlBloodGroup.Text)
        Else
            cmd.Parameters.AddWithValue("@BloodGroup", DBNull.Value)
        End If
        If ddlgender.Text <> "" Then
            cmd.Parameters.AddWithValue("@Gender", ddlgender.Text)
        Else
            cmd.Parameters.AddWithValue("@Gender", DBNull.Value)
        End If
        If txtSalaryAtPresent.Text <> "" Then
            cmd.Parameters.AddWithValue("@SalaryAtPresent", txtSalaryAtPresent.Text)
        Else
            cmd.Parameters.AddWithValue("@SalaryAtPresent", DBNull.Value)
        End If
        If txtqualification.Text <> "" Then
            cmd.Parameters.AddWithValue("@Qualification", txtqualification.Text)
        Else
            cmd.Parameters.AddWithValue("@Qualification", DBNull.Value)
        End If
        If txtexperience.Text <> "" Then
            cmd.Parameters.AddWithValue("@PreviousExperience", txtexperience.Text)
        Else
            cmd.Parameters.AddWithValue("@PreviousExperience", DBNull.Value)
        End If
        If txtCorrspondanceAddress.Text <> "" Then
            cmd.Parameters.AddWithValue("@CorrespondanceAddress", txtCorrspondanceAddress.Text)
        Else
            cmd.Parameters.AddWithValue("@CorrespondanceAddress", DBNull.Value)
        End If
        If txtpermanentaddress.Text <> "" Then
            cmd.Parameters.AddWithValue("@PermanentAddress", txtpermanentaddress.Text)
        Else
            cmd.Parameters.AddWithValue("@PermanentAddress", DBNull.Value)
        End If
        cmd.Connection = con
        cmd.ExecuteNonQuery()
        lblMsg.Visible = True
        lblMsg.Text = "Data updated successfully"
        con.Close()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
 
        'If Page.IsPostBack = False Then
        '    If Request.Cookies("Myck").Value Is Nothing Or Request.Cookies("Myck").Value = "" Then
        '        Response.Redirect("~/default.aspx")
        '    End If
        '    varIP = Request.ServerVariables("SERVER_NAME").ToString
        '    PersonalDetail()
        'End If
        'If Session("Update") <> "" Then
        '    btnSaveUpdate.Text = "Update Profile"
        '    txtIDNo.Text = Request.Cookies("Myck").Value
        '    txtIDNo.ReadOnly = True
        '    lblprofile.Text = " Update Profile"
        'ElseIf Session("Update") <> "" Then
        '    btnSaveUpdate.Text = "Save Profile"
        '    'txtIDNo.Text = Request.Cookies("Myck").Value
        '    txtIDNo.ReadOnly = False
        '    lblprofile.Text = "Save Profile"

        'End If
        Dim a As String = "dsfsd"
        If Page.IsPostBack = False Then
            If Session("myck") Is Nothing Or Session("myck") = "" Then
                Response.Redirect("~/default.aspx")
            End If
            varIP = Request.ServerVariables("SERVER_NAME").ToString
            CheckUserProfile()
            PersonalDetail()
        End If
        If Session("Update") <> "" Then
            btnSaveUpdate.Text = "Update Profile"
            txtIDNo.Text = Session("myck")
            txtIDNo.ReadOnly = True
            lblprofile.Text = " Update Profile"
        ElseIf Session("Update") <> "" Then
            btnSaveUpdate.Text = "Save Profile"
            'txtIDNo.Text = Request.Cookies("Myck").Value
            txtIDNo.ReadOnly = False
            lblprofile.Text = "Save Profile"

        End If

    End Sub

    Protected Sub btnSaveUpdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSaveUpdate.Click
       
        Updateprofile()

    End Sub

    Protected Sub btnAddProfile_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAddProfile.Click
        saveprofile()
    End Sub
End Class
