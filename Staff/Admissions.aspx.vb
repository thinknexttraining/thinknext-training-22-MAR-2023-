Imports System.Data.SqlClient
Imports System.Data
Partial Class Admissions
    Inherits System.Web.UI.Page
    Dim varclass As New Class1
    Dim varIP As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        If Session("myck") = "" Then
            Response.Redirect("~/default.aspx")
        End If
        If Page.IsPostBack = False Then
            btnConfirmation.Visible = False
            fillcourses(drpappliedfor)
            bindSession()
            Session12()
            GetallSession()
        End If
    End Sub
    Sub fillcourses(ByVal ddl As DropDownList)
        Dim con As New SqlConnection
        Dim sql As String
        Dim da As SqlDataAdapter
        Dim ds As New DataSet
        Dim rowctr As Integer = 0
        Dim varClass1 As New Class1
        con = New SqlConnection(varClass1.GetConnectionString(varIP))
        con.Open()
        sql = "select Distinct Courses from MasterCourses where FranchiseCode='TNK101' order by Courses "
        da = New SqlDataAdapter(sql, con)
        da.Fill(ds, "Course1")
        ddl.Items.Clear()
        ddl.Items.Add("Select")
        If ds.Tables("Course1").Rows.Count > 0 Then
            While rowctr < ds.Tables("Course1").Rows.Count
                If IsDBNull(ds.Tables("Course1").Rows(rowctr).Item("Courses")) = False Then
                    ddl.Items.Add(ds.Tables("Course1").Rows(rowctr).Item("Courses"))
                End If
                rowctr = rowctr + 1
            End While
        End If
        con.Close()
    End Sub
    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        If txtsearchenq.Text <> "" Then
            'If drpsessionmonth.SelectedIndex = 0 Then
            '    lblmessage.Text = "Please Select the Session Month"
            '    Return
            'End If
            If drpsessionmonth.SelectedIndex = 0 Then
                lblmessage.Text = "Please Select the Session Year"
                Return
                If varclass.ChekIDNo(txtIDNo.Text) = True Then
                    lblmessage.Text = "This ID No Is already Exists"
                    Return
                End If

            End If
            If IsNumeric(txtsearchenq.Text) = True Then
                Upavedata(txtsearchenq.Text)
                If txtFollowupRemarks.Text <> "" Then
                    insertFollowupdata()
                End If
                Clearrec()
                lblmessage.Text = " Student Admitted Successfully "
            Else
                lblmessage.Text = "enquiry no. must be numeric"
            End If
        Else
            lblmessage.Text = "Please enter enquiry No"
        End If
    End Sub
    Sub insertFollowupdata()

        Dim con As SqlConnection
        Dim sql As String
        Dim varClass1 As New Class1
        con = New SqlConnection(varClass1.GetConnectionString(varIP))
        con.Open()
        sql = "insert into FollowupRemarks(DateEntry,EnquiryNo,FollowupRemarks)values(@DateEntry,@EnquiryNo,@FollowupRemarks) "
        Dim cmd As New SqlCommand(sql, con)
        cmd.Parameters.AddWithValue("@DateEntry", System.DateTime.Now.Date)
        cmd.Parameters.AddWithValue("@EnquiryNo", txtEnquiryNo.Text)
        If txtFollowupRemarks.Text <> "" Then
            cmd.Parameters.AddWithValue("@FollowupRemarks", txtFollowupRemarks.Text)
        Else
            cmd.Parameters.AddWithValue("@FollowupRemarks", DBNull.Value)
        End If
        cmd.ExecuteNonQuery()
        cmd.Dispose()
        con.Close()
    End Sub
    Sub Upavedata(ByVal EnquiryNo As String)
        Dim con As SqlConnection
        Dim sql As String
        Dim varClass1 As New Class1
        con = New SqlConnection(varClass1.GetConnectionString(varIP))
        con.Open()
        'ModeOfEnquiry=@ModeOfEnquiry,
        sql = " Update Admissions Set  CollegeName=@CollegeName, Qualification=@Qualification,"
        sql = sql & "  Batch=@Batch, IDNo=@IDNo, UniRollNo=@UniRollNo, AdmissionDate=@AdmissionDate,"
        sql = sql & "  Course=@Course, Duration=@Duration, BatchTiming=@BatchTiming,StudentName=@StudentName, "
        sql = sql & "  FatherName=@FatherName, MotherName=@MotherName, ContactNo=@ContactNo, StudentMobileNo=@StudentMobileNo ,"
        sql = sql & "  FatherMobileNo=@FatherMobileNo, Sex=@Sex, DOB=@DOB, EmailID=@EmailID, CorrespondanceAddress=@CorrespondanceAddress,"
        sql = sql & "  PermanentAddress=@PermanentAddress, ReferenceBy=@ReferenceBy, "
        sql = sql & "  ReferenceDescription=@ReferenceDescription, Active=@Active, StatusCode=@StatusCode,"
        sql = sql & "  City=@City,AdmissionsStatus=@AdmissionsStatus ,"
        sql = sql & "  Session=@Session,"
        sql = sql & "  StudentSnap=@Snap,FranchiseCode=@FranchiseCode,BrandName=@BrandName,ModeOfEnquiry=@ModeOfEnquiry"
        If RdbEnquiryNo.Checked = True Then

            sql = sql & "   where FranchiseCode='TNK101' and BrandName='THINKNEXT TRAINING' and EnquiryNo=isnull(@EnquiryNo,EnquiryNo) "
        Else
            sql = sql & "   where IDNo=@IdNo  and FranchiseCode='TNK101' and BrandName='THINKNEXT TRAINING'"
        End If

        Dim cmd As New SqlCommand(sql, con)
        cmd.Parameters.AddWithValue("@FranchiseCode", txtFranchisecode.Text)
        cmd.Parameters.AddWithValue("@BrandName", txtbrandname.Text)
        cmd.Parameters.AddWithValue("@EnquiryNo", EnquiryNo)
        cmd.Parameters.AddWithValue("@DOB", txtDOB.Text)
        cmd.Parameters.AddWithValue("@AdmissionDate", txtjoiningdate.Text)
        If txtcollegename.Text <> "" Then
            cmd.Parameters.AddWithValue("@CollegeName", txtcollegename.Text)
        Else
            cmd.Parameters.AddWithValue("@CollegeName", DBNull.Value)
        End If

        If txtcourse.Text <> "" Then
            cmd.Parameters.AddWithValue("@Qualification", txtcourse.Text)
        Else
            cmd.Parameters.AddWithValue("@Qualification", DBNull.Value)
        End If

        If txtbatch.Text <> "" Then
            cmd.Parameters.AddWithValue("@Batch", txtbatch.Text)
        Else
            cmd.Parameters.AddWithValue("@Batch", DBNull.Value)
        End If

        If txtIDNo.Text <> "" Then
            cmd.Parameters.AddWithValue("@IDNo", txtIDNo.Text)
        Else
            cmd.Parameters.AddWithValue("@IDNo", DBNull.Value)
        End If

        If txtIUniRollNo.Text <> "" Then
            cmd.Parameters.AddWithValue("@UniRollNo", txtIUniRollNo.Text)
        Else
            cmd.Parameters.AddWithValue("@UniRollNo", DBNull.Value)
        End If

        If drpappliedfor.Text <> "Select" And txtCEnquiry.Visible = False Then
            cmd.Parameters.AddWithValue("@Course", drpappliedfor.Text)

        ElseIf drpappliedfor.Text = "Select" And txtCEnquiry.Visible = True Then
            cmd.Parameters.AddWithValue("@Course", txtCEnquiry.Text)

        Else
            cmd.Parameters.AddWithValue("@Course", DBNull.Value)
        End If

        If drptrainingtype.Text <> "Select" Then
            cmd.Parameters.AddWithValue("@Duration", drptrainingtype.Text)
        Else
            cmd.Parameters.AddWithValue("@Duration", DBNull.Value)
        End If

        If txtbatchtimings.Text <> "" Then
            cmd.Parameters.AddWithValue("@BatchTiming", txtbatchtimings.Text)
        Else
            cmd.Parameters.AddWithValue("@BatchTiming", DBNull.Value)
        End If

        If txtStudentName.Text <> "" Then
            cmd.Parameters.AddWithValue("@StudentName", txtStudentName.Text)
        Else
            cmd.Parameters.AddWithValue("@StudentName", DBNull.Value)
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

        If txtContactNumber.Text <> "" Then
            cmd.Parameters.AddWithValue("@ContactNo", txtContactNumber.Text)
        Else
            cmd.Parameters.AddWithValue("@ContactNo", DBNull.Value)
        End If

        If txtstudentmobNo.Text <> "" Then
            cmd.Parameters.AddWithValue("@StudentMobileNo", txtstudentmobNo.Text)
        Else
            cmd.Parameters.AddWithValue("@StudentMobileNo", DBNull.Value)
        End If

        If txtFathermobNo0.Text <> "" Then
            cmd.Parameters.AddWithValue("@FatherMobileNo", txtFathermobNo0.Text)
        Else
            cmd.Parameters.AddWithValue("@FatherMobileNo", DBNull.Value)
        End If

        If ddlSex.Text <> "Select" Then
            cmd.Parameters.AddWithValue("@Sex", ddlSex.Text)
        Else
            cmd.Parameters.AddWithValue("@Sex", DBNull.Value)
        End If

        If txtEmailID.Text <> "" Then
            cmd.Parameters.AddWithValue("@EmailID", txtEmailID.Text)
        Else
            cmd.Parameters.AddWithValue("@EmailID", DBNull.Value)
        End If

        If txtcorrespondence.Text <> "" Then
            cmd.Parameters.AddWithValue("@CorrespondanceAddress", txtcorrespondence.Text)
        Else
            cmd.Parameters.AddWithValue("@CorrespondanceAddress", DBNull.Value)
        End If
        If txtpermanentaddress.Text <> "" Then
            cmd.Parameters.AddWithValue("@PermanentAddress", txtpermanentaddress.Text)
        Else
            cmd.Parameters.AddWithValue("@PermanentAddress", DBNull.Value)
        End If

        If txtreferenceby.Text <> "" Then
            cmd.Parameters.AddWithValue("@ReferenceBy", txtreferenceby.Text)
        Else
            cmd.Parameters.AddWithValue("@ReferenceBy", DBNull.Value)
        End If

        If txtrefdescription.Text <> "" Then
            cmd.Parameters.AddWithValue("@ReferenceDescription", txtrefdescription.Text)
        Else
            cmd.Parameters.AddWithValue("@ReferenceDescription", DBNull.Value)
        End If
        If txttowncity.Text <> "" Then
            cmd.Parameters.AddWithValue("@City", txttowncity.Text)
        Else
            cmd.Parameters.AddWithValue("@City", DBNull.Value)
        End If

        If txtAdmissionsStatus.Text <> "" Then
            cmd.Parameters.AddWithValue("@AdmissionsStatus", "Admitted")
        Else
            cmd.Parameters.AddWithValue("@AdmissionsStatus", DBNull.Value)
        End If
        cmd.Parameters.AddWithValue("@Session", drpsessionmonth.Text)
        'cmd.Parameters.AddWithValue("@SessionYear", drpsessionyear.Text)
        cmd.Parameters.AddWithValue("@StatusCode", "Admission")
        cmd.Parameters.AddWithValue("@Snap", FileUpload1.FileName)
        cmd.Parameters.AddWithValue("@ModeOfEnquiry", "Admission")
        If FileUpload1.HasFile Then
            'Dim filename As String = "ftp://202.143.99.95/httpdocs/Admin/Images/"
            'Dim ptp As String
            'ptp = filename + FileUpload1.FileName
            'varClass1.UploadImageFTP(ptp, FileUpload1)
            ' Else
            Dim FolderPath As String
            FolderPath = Server.MapPath("images/" & FileUpload1.FileName)
            FileUpload1.SaveAs(FolderPath)

        End If
        cmd.Parameters.AddWithValue("@Active", 1)
        cmd.ExecuteNonQuery()
        cmd.Dispose()
        con.Close()
        txtCEnquiry.Visible = False
    End Sub
    Sub Clearrec()
        txtEnquiryNo.Text = ""
        txtsearchenq.Text = ""
        txtsearchenq.Focus()
        txtbatchtimings.Text = ""
        drpappliedfor.SelectedIndex = -1
        drptrainingtype.SelectedIndex = -1
        ddlSex.SelectedIndex = -1
        txtcollegename.Text = ""
        txtcourse.Text = ""
        txtbatch.Text = ""
        txtIDNo.Text = ""
        txtIUniRollNo.Text = ""
        txtDOB.Text = Format("MM/dd/yyyy", System.DateTime.Now.Date)
        txtjoiningdate.Text = Format("MM/dd/yyyy", System.DateTime.Now.Date)
        txtStudentName.Text = ""
        txtFatherName.Text = ""
        txtMotherName.Text = ""
        txtContactNumber.Text = ""
        txtstudentmobNo.Text = ""
        txtFathermobNo0.Text = ""
        txtEmailID.Text = ""
        txtcorrespondence.Text = ""
        txtpermanentaddress.Text = ""
        txtreferenceby.Text = ""
        txtrefdescription.Text = ""
        txtbatchtimings.Text = ""
        txtFollowupRemarks.Text = ""
        txtAdmissionsStatus.Text = ""
        FileUpload1.ID = ""
    End Sub
    Function GenEnquirytNo() As String
        Dim con As SqlConnection
        Dim sql As String
        Dim EnquiryNo As Integer
        Dim varClass1 As New Class1
        con = New SqlConnection(varClass1.GetConnectionString(varIP))
        con.Open()
        sql = "SELECT MAX(IDNo) AS IDNo FROM  Admissions "
        Dim cmd As New SqlCommand(sql, con)
        Dim adp As New SqlDataAdapter(cmd)
        Dim ds As New DataSet
        adp.Fill(ds, "Admissions")
        If ds.Tables("Admissions").Rows.Count > 0 Then
            If IsDBNull(ds.Tables("Admissions").Rows(0).Item("IDNo")) = False Then
                EnquiryNo = Convert.ToInt32(ds.Tables("Admissions").Rows(0).Item("IDNo"))
                EnquiryNo = EnquiryNo + 1
            Else
                EnquiryNo = 100001
            End If
        End If
        Return EnquiryNo
    End Function
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsearch.Click
        If txtsearchenq.Text <> "" Then
            

            If IsNumeric(txtsearchenq.Text) = True Then
                Displaydata(txtsearchenq.Text)
                GetFollowupRemarks(txtsearchenq.Text)
            Else
                lblmessage.Text = "enquiry no. must be numeric"
            End If
        Else
            lblmessage.Text = "Please enter enquiry No"
        End If
    End Sub
    Sub GetFollowupRemarks(ByVal EnquiryNo As String)
        Dim con As SqlConnection
        Dim sql As String
        Dim varClass1 As New Class1
        con = New SqlConnection(varClass1.GetConnectionString(varIP))
        con.Open()
        sql = " Select Convert(varchar,DateEntry,101) As DateEntry,FollowupRemarks From FollowupRemarks"
        sql = sql & " Where EnquiryNo ='" & EnquiryNo & "' "
        Dim cmd As New SqlCommand(sql, con)
        Dim da As New SqlDataAdapter(sql, con)
        Dim ds As New DataSet
        da.Fill(ds, "FollowupRemarks")
        If ds.Tables("FollowupRemarks").Rows.Count > 0 Then
            gvFollowup.Visible = True
            gvFollowup.DataSource = ds.Tables("FollowupRemarks")
            gvFollowup.DataBind()
        Else
            gvFollowup.DataSource = Nothing
            gvFollowup.DataBind()
        End If
        con.Close()
    End Sub
    Sub Displaydata(ByVal EnquiryNo As String)
        drpappliedfor.Text = "Select"
        Dim con As SqlConnection
        Dim sql As String
        Dim varClass1 As New Class1
        con = New SqlConnection(varClass1.GetConnectionString(varIP))
        con.Open()
        If RdbEnquiryNo.Checked = True Then
            sql = " Select FranchiseCode,BrandName,EnquiryNo, ModeOfEnquiry, CollegeName, Qualification, Batch, IDNo, UniRollNo, convert(varchar, AdmissionDate, 101) As AdmissionDate, Course, Duration, "
            sql = sql & "  StudentName, FatherName, MotherName, ContactNo, StudentMobileNo, FatherMobileNo, Sex, convert(varchar, DOB, 101) As DOB , EmailID, CorrespondanceAddress, PermanentAddress, "
            sql = sql & "   ReferenceBy, ReferenceDescription, Active, StatusCode,AdmissionsStatus,Session,StudentSnap from Admissions where EnquiryNo ='" & EnquiryNo & "' and FranchiseCode='TNK101' and BrandName='THINKNEXT TRAINING' "
        Else
            sql = " Select FranchiseCode,BrandName,EnquiryNo, ModeOfEnquiry, CollegeName, Qualification, Batch, IDNo, UniRollNo, convert(varchar, AdmissionDate, 101) As AdmissionDate, Course, Duration, "
            sql = sql & "  StudentName, FatherName, MotherName, ContactNo, StudentMobileNo, FatherMobileNo, Sex, convert(varchar, DOB, 101) As DOB , EmailID, CorrespondanceAddress, PermanentAddress, "
            sql = sql & "   ReferenceBy, ReferenceDescription, Active, StatusCode,AdmissionsStatus,Session,StudentSnap from Admissions where IDNo ='" & EnquiryNo & "' and FranchiseCode='TNK101' and BrandName='THINKNEXT TRAINING' "
        End If
        Dim cmd As New SqlCommand(sql, con)
        Dim da As New SqlDataAdapter(sql, con)
        Dim ds As New DataSet
        da.Fill(ds, "Admissions")
        If ds.Tables("Admissions").Rows.Count > 0 Then
            lblmessage.Text = ""


            drpsessionmonth.SelectedIndex = drpsessionmonth.Items.IndexOf(drpsessionmonth.Items.FindByText(ds.Tables("Admissions").Rows(0).Item("Session").ToString))
            ' drpsessionyear.SelectedIndex = drpsessionyear.Items.IndexOf(drpsessionyear.Items.FindByText(ds.Tables("Admissions").Rows(0).Item("SessionYear").ToString))


            txtFranchisecode.Text = ds.Tables("Admissions").Rows(0).Item("FranchiseCode").ToString
            txtbrandname.Text = ds.Tables("Admissions").Rows(0).Item("BrandName").ToString
            txtEnquiryNo.Text = ds.Tables("Admissions").Rows(0).Item("EnquiryNo").ToString

            '===============Mode Of Enquiry==modeofenquiry===================
            Dim b() As String = ds.Tables("Admissions").Rows(0).Item("Course").ToString.Split(",")
            txtCEnquiry.Visible = False
            drpappliedfor.Visible = False
            Dim CSR As String = ds.Tables("Admissions").Rows(0).Item("Course").ToString
            Dim Value As String = varclass.ChekCourse(CSR)
            If Value = "False" Then
                drpappliedfor.Visible = False
                'Dim BtnCourse As System.Web.UI.HtmlControls.HtmlButton = CType(Page.FindControl("btnMultipleCourse"), System.Web.UI.HtmlControls.HtmlButton)
                'BtnCourse.Visible = True
                'Dim mydiv As Control = FindControl("btnMultipleCourse")
                btnMultipleCourse.Visible = True
                
                txtCEnquiry.Visible = True
                txtCEnquiry.Text = ds.Tables("Admissions").Rows(0).Item("Course").ToString

            Else

                drpappliedfor.Visible = True
                If ds.Tables("Admissions").Rows(0).Item("Course").ToString = "" Then
                    drpappliedfor.Text = "Select"
                Else
                    If b.Length > 2 Then
                        txtCEnquiry.Visible = True
                        drptrainingtype.Text = "Select"

                        txtCEnquiry.Text = ds.Tables("Admissions").Rows(0).Item("Course").ToString
                    Else

                        drpappliedfor.Visible = True
                        drpappliedfor.Text = ds.Tables("Admissions").Rows(0).Item("Course").ToString
                    End If



                End If
            End If
            If ds.Tables("Admissions").Rows(0).Item("Duration").ToString = "" Then
                drptrainingtype.Text = "Select"
            Else
                drptrainingtype.Text = ds.Tables("Admissions").Rows(0).Item("Duration").ToString

            End If
            'txtbatchtimings.Text = ds.Tables("Admissions").Rows(0).Item("BatchTiming").ToString
            If ds.Tables("Admissions").Rows(0).Item("Sex").ToString = "" Then
                drptrainingtype.Text = "Select"
            Else
                ddlSex.Text = ds.Tables("Admissions").Rows(0).Item("Sex").ToString
            End If
            'ddlSex.Text = ds.Tables("Admissions").Rows(0).Item("Sex").ToString
            txtcollegename.Text = ds.Tables("Admissions").Rows(0).Item("CollegeName").ToString
            txtcourse.Text = ds.Tables("Admissions").Rows(0).Item("Qualification").ToString
            txtbatch.Text = ds.Tables("Admissions").Rows(0).Item("Batch").ToString
            txtIDNo.Text = ds.Tables("Admissions").Rows(0).Item("IDNo").ToString
            If txtIDNo.Text = "" Then
                txtIDNo.Style.Add("Background-color", "SkyBlue")
                txtIDNo.Text = GenEnquirytNo()
            Else
                txtIDNo.Style.Add("Background-color", "White")
            End If
            txtIUniRollNo.Text = ds.Tables("Admissions").Rows(0).Item("UniRollNo").ToString
            txtDOB.Text = ds.Tables("Admissions").Rows(0).Item("DOB").ToString
            txtjoiningdate.Text = ds.Tables("Admissions").Rows(0).Item("AdmissionDate").ToString
            txtStudentName.Text = ds.Tables("Admissions").Rows(0).Item("StudentName").ToString
            txtFatherName.Text = ds.Tables("Admissions").Rows(0).Item("FatherName").ToString
            txtMotherName.Text = ds.Tables("Admissions").Rows(0).Item("MotherName").ToString
            txtContactNumber.Text = ds.Tables("Admissions").Rows(0).Item("ContactNo").ToString
            txtstudentmobNo.Text = ds.Tables("Admissions").Rows(0).Item("StudentMobileNo").ToString
            txtFathermobNo0.Text = ds.Tables("Admissions").Rows(0).Item("FatherMobileNo").ToString
            txtEmailID.Text = ds.Tables("Admissions").Rows(0).Item("EmailID").ToString
            txtcorrespondence.Text = ds.Tables("Admissions").Rows(0).Item("CorrespondanceAddress").ToString
            txtpermanentaddress.Text = ds.Tables("Admissions").Rows(0).Item("PermanentAddress").ToString
            txtreferenceby.Text = ds.Tables("Admissions").Rows(0).Item("ReferenceBy").ToString
            txtrefdescription.Text = ds.Tables("Admissions").Rows(0).Item("ReferenceDescription").ToString
            txtAdmissionsStatus.Text = ds.Tables("Admissions").Rows(0).Item("AdmissionsStatus").ToString
            'Image1.ImageUrl = "ftp://202.143.99.95/httpdocs/Admin/Images/" + ds.Tables("Admissions").Rows(0).Item("StudentSnap").ToString
            Image1.ImageUrl = "Images/" + ds.Tables("Admissions").Rows(0).Item("StudentSnap").ToString
            'If ds.Tables("Admissions").Rows(0).Item("SessionMonth").ToString = "" Then
            '    DropDownList1.Text = "Select"
            'Else
            '    DropDownList1.Text = ds.Tables("Admissions").Rows(0).Item("SessionMonth").ToString

            'End If
            'DropDownList1.Items.Add(ds.Tables("Admissions").Rows(0).Item("SessionMonth").ToString)
            If ds.Tables("Admissions").Rows(0).Item("Session").ToString = "" Then
                drpsession.Items(0).Text = "Select"
            Else
                drpsession.Items(0).Text = ds.Tables("Admissions").Rows(0).Item("Session").ToString

            End If
            'drpsession.Items.Add(ds.Tables("Admissions").Rows(0).Item("SessionYear").ToString)
            btnConfirmation.Visible = False
        Else
            Clearrec()
            lblmessage.Text = "Sorry ! no record found"
            txtsearchenq.Focus()
            btnConfirmation.Visible = False
        End If

        con.Close()
    End Sub
    Protected Sub btnConfirmation_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnConfirmation.Click
        If txtIDNo.Text <> "" Then
            Session("myck") = txtIDNo.Text
            Response.Redirect("~/Reports/printConfirmationLetter.aspx")
        Else
            lblmessage.Text = "Please enter Enquiry No."
        End If
    End Sub
    Protected Sub Button1_Click1(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Response.Redirect("~/Admin/AllAdmissions.aspx")
    End Sub
    Protected Sub drpsession_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles drpsession.SelectedIndexChanged
    End Sub
    Protected Sub drpappliedfor_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles drpappliedfor.SelectedIndexChanged
    End Sub
    Sub Session12()
        Dim con As SqlConnection
        Dim sql As String
        Dim varClass1 As New Class1
        con = New SqlConnection(varClass1.GetConnectionString(varIP))
        con.Open()
        sql = "select Session from MasterSession"
        Dim cmd As New SqlCommand(sql, con)
        Dim da As New SqlDataAdapter(cmd)
        Dim ds As New DataSet
        da.Fill(ds, "MasterSession")
        drpsession.DataSource = ds
        drpsession.DataTextField = "Session"
        drpsession.DataValueField = "Session"
        drpsession.DataBind()
        drpsession.Items.Insert(0, New ListItem("--Select--", "0"))
    End Sub
    Protected Sub RdbUserId_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles RdbUserId.CheckedChanged
        lbltext.Text = "User Id"
        txtsearchenq.Text = String.Empty
        lbltext.Visible = True
        txtsearchenq.Visible = True
        btnsearch.Visible = True
    End Sub
    Protected Sub RdbEnquiryNo_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles RdbEnquiryNo.CheckedChanged
        lbltext.Text = "Enquiry No"
        txtsearchenq.Text = String.Empty
        lbltext.Visible = True
        txtsearchenq.Visible = True
        btnsearch.Visible = True
    End Sub
    Public Sub GetallSession()
        Dim con As SqlConnection

        Dim varClass1 As New Class1
        con = New SqlConnection(varClass1.GetConnectionString(varIP))
        con.Open()

        Dim query As String = "select Distinct Session from masterSession where BrandName='THINKNEXT TRAINING' and FranchiseCode='TNK101'"
        Dim cmd As New SqlCommand(query, con)
        Dim da As New SqlDataAdapter(cmd)
        Dim ds As New DataSet()
        da.Fill(ds, "masterSession ")
        drpsessionmonth.Items.Insert(0, "Select")
        If ds.Tables("masterSession ").Rows.Count > 0 Then
            For i As Integer = 0 To ds.Tables("masterSession ").Rows.Count - 1

                drpsessionmonth.Items.Add(ds.Tables("masterSession ").Rows(i)("Session").ToString())

            Next
        Else
        End If
        cmd.Dispose()
        da.Dispose()
        ds.Dispose()
    End Sub


    Protected Sub ButtonInsSave_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        If ChkliCourse.SelectedIndex >= 0 Then
            txtCEnquiry.Text = ""
            For Each item As ListItem In ChkliCourse.Items


                If item.Selected = True Then

                    txtCEnquiry.Text = txtCEnquiry.Text + item.Text + ","

                    'TextBoxInsert.Text.Substring(TextBoxInsert.Text)
                End If
            Next
            Dim val As String = ""


            val = txtCEnquiry.Text.TrimEnd(",")
            txtCEnquiry.Text = val
        End If
    End Sub


    Public Sub bindSession()
        Dim con As SqlConnection


        Dim varclass1 As New Class1
        con = New SqlConnection(varclass1.GetConnectionString(varIP))
        Dim sql As String = "select Distinct courses from mastercourses order by courses asc"
        Dim cmd As New SqlCommand(sql, con)
        Dim da As New SqlDataAdapter(cmd)
        Dim ds As New DataSet()
        da.Fill(ds, "masterCourses")

        ChkliCourse.DataTextField = "courses"
        ChkliCourse.DataSource = ds.Tables(0)
        ChkliCourse.DataBind()
        'If ds.Tables("masterCourses").Rows.Count > 0 Then
        '    For i As Integer = 0 To ds.Tables("masterCourses").Rows.Count - 1

        '        ChkliCourse.Items.Add(ds.Tables("masterCourses").Rows(i)("courses").ToString())

        '    Next

        'Else
        'End If
        cmd.Dispose()
        da.Dispose()
        ds.Dispose()

    End Sub



End Class
