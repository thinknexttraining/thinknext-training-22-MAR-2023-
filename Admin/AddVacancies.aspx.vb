Imports System.Data
Imports System.Data.SqlClient
Partial Class AddVacancies

    Inherits System.Web.UI.Page
    Shared varArticleID1 As Label
    Shared varCollegeName1 As TextBox
    Dim varIP As String
    Dim varNoOfVacancies As TextBox
    Dim varQualification As TextBox
    Dim varSkillsRequired As TextBox
    Dim varPosition As TextBox
    Dim varSalaryPackage As TextBox
    Dim varactive As DropDownList



    Sub clear()
        txtJobTitle.Text = ""
        txtCompanyName.Text = ""
        txtschedule.Text = ""
        txtNoOfVacancies.Text = ""
        txtQualification.Text = ""
        txtsalaryPackage.Text = ""
        txtexperience.Text = ""
        txtvenu.Text = ""
        ddlCategory.Text = "Select"
        ddlSubCategory.Text = "Select"
        txtDescriptions.Text = ""
        txtJobTitle.Focus()
    End Sub
    Protected Sub gdShow_RowEditing(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewEditEventArgs) Handles gdShow.RowEditing
        gdShow.EditIndex = e.NewEditIndex
        ShowPlacements()
        varArticleID1 = gdShow.Rows(e.NewEditIndex).FindControl("lblArticleID")
        varCollegeName1 = gdShow.Rows(e.NewEditIndex).FindControl("txtCollegeName1")
    End Sub

    Protected Sub gdShow_RowUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewUpdateEventArgs) Handles gdShow.RowUpdating
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()
        Dim varJobID As Label
        Dim varCollegeName As String
        Dim varDate As TextBox
        Dim varDateTo As TextBox
        Dim varcompanyname As TextBox
        Dim varJobTitle As TextBox
        Dim varVenue As TextBox
        Dim varOthers As TextBox
        Dim varactive As DropDownList

        Dim i As Integer
        i = e.RowIndex

        varCollegeName = ddlCategory.Text
        varJobID = gdShow.Rows(i).FindControl("lblJobID")
        varDate = gdShow.Rows(i).FindControl("txtDateFrom1")
        varDateTo = gdShow.Rows(i).FindControl("txtDateTo1")
        varactive = gdShow.Rows(i).FindControl("ddlactivegd")
        If varDate.Text = "" Then
            lblMsg.Visible = True
            lblMsg.Text = "Enter  Interview Date From"
            Exit Sub
        End If
        If varDate.Text <> "" Then
            If IsDate(varDate.Text) = False Then
                lblMsg.Visible = True
                lblMsg.Text = "Invalid Interview Date From"
                Exit Sub
            End If
        End If
        If varDateTo.Text = "" Then
            lblMsg.Visible = True
            lblMsg.Text = "Enter  Interview Date To"
            Exit Sub
        End If
        If varDateTo.Text <> "" Then
            If IsDate(varDateTo.Text) = False Then
                lblMsg.Visible = True
                lblMsg.Text = "Invalid  Interview Date To"
                Exit Sub
            End If
        End If
        lblMsg.Visible = False

        If IsDBNull(gdShow.Rows(i).FindControl("txtCompanyName1")) = True Then
            lblMsg.Visible = True
            lblMsg.Text = "Enter Company Name"
            Exit Sub
        Else
            varcompanyname = gdShow.Rows(i).FindControl("txtCompanyName1")
        End If

        If varcompanyname.Text.Contains("'") Then
            lblMsg.Visible = True
            lblMsg.Text = "Invalid Company Name"
            Exit Sub
        End If

        If IsDBNull(gdShow.Rows(i).FindControl("txtJobTitle1")) = True Then
            lblMsg.Visible = True
            lblMsg.Text = "Enter Job Title"
            Exit Sub
        Else
            varJobTitle = gdShow.Rows(i).FindControl("txtJobTitle1")
        End If

        If IsDBNull(gdShow.Rows(i).FindControl("txtVenue1")) = True Then
            lblMsg.Visible = True
            lblMsg.Text = "Enter Venue"
            Exit Sub
        Else
            varVenue = gdShow.Rows(i).FindControl("txtVenue1")
        End If




        Dim cmd As SqlCommand
        Dim sql As String
        Dim varDate1 As Date

        varDate1 = CDate(varDate.Text)

        sql = "update PlacementCell set InterviewDateFrom=@InterviewDateFrom,InterviewDateTo=@InterviewDateTo,CompanyName=@CompanyName,JobTitle=@JobTitle,Venue=@Venue,Others=@Others,NoofVacancies=@NoofVacancies,Qualification=@Qualification,SkillsRequired=@SkillsRequired,position=@position,SalaryPackage=@SalaryPackage,Active=@Active where ID=" & varJobID.Text & " and CollegeName='" & varCollegeName & "' and FranchiseCode='" + txtfranchise.Text + "'"
        cmd = New SqlCommand(sql, Con)

        cmd.Parameters.AddWithValue("@InterviewDateFrom", Format(varDate1, "MM/dd/yyyy"))
        cmd.Parameters.AddWithValue("@InterviewDateTo", Format(CDate(varDateTo.Text), "MM/dd/yyyy"))
        cmd.Parameters.AddWithValue("@CompanyName", varcompanyname.Text)
        cmd.Parameters.AddWithValue("@JobTitle", varJobTitle.Text)
        cmd.Parameters.AddWithValue("@Venue", varVenue.Text)

        If IsDBNull(gdShow.Rows(i).FindControl("txtOthers1")) = True Then
            cmd.Parameters.AddWithValue("@Others", DBNull.Value)
        Else
            varOthers = gdShow.Rows(i).FindControl("txtOthers1")
            cmd.Parameters.AddWithValue("@Others", varOthers.Text)
        End If

        If IsDBNull(gdShow.Rows(i).FindControl("txtNoofVacancies1")) = True Then
            cmd.Parameters.AddWithValue("@NoofVacancies", DBNull.Value)
        Else
            varNoOfVacancies = gdShow.Rows(i).FindControl("txtNoofVacancies1")
            cmd.Parameters.AddWithValue("@NoofVacancies", varNoOfVacancies.Text)
        End If

        If IsDBNull(gdShow.Rows(i).FindControl("txtQualification1")) = True Then
            cmd.Parameters.AddWithValue("@Qualification", DBNull.Value)
        Else
            varQualification = gdShow.Rows(i).FindControl("txtQualification1")
            cmd.Parameters.AddWithValue("@Qualification", varQualification.Text)
        End If

        If IsDBNull(gdShow.Rows(i).FindControl("txtSkillsRequired1")) = True Then
            cmd.Parameters.AddWithValue("@SkillsRequired", DBNull.Value)
        Else
            varSkillsRequired = gdShow.Rows(i).FindControl("txtSkillsRequired1")
            cmd.Parameters.AddWithValue("@SkillsRequired", varSkillsRequired.Text)
        End If
        If IsDBNull(gdShow.Rows(i).FindControl("txtposition1")) = True Then
            cmd.Parameters.AddWithValue("@position", DBNull.Value)
        Else
            varPosition = gdShow.Rows(i).FindControl("txtposition1")
            cmd.Parameters.AddWithValue("@position", varPosition.Text)
        End If

        If IsDBNull(gdShow.Rows(i).FindControl("txtSalaryPackage1")) = True Then
            cmd.Parameters.AddWithValue("@SalaryPackage", DBNull.Value)
        Else
            varSalaryPackage = gdShow.Rows(i).FindControl("txtSalaryPackage1")
            cmd.Parameters.AddWithValue("@SalaryPackage", varSalaryPackage.Text)
        End If
        ' varactive = gdShow.Rows(i).FindControl("ddlactivegd")
        cmd.Parameters.AddWithValue("@Active", varactive.Text)
        cmd.ExecuteNonQuery()
        gdShow.EditIndex = -1
        Con.Close()
        ShowPlacements()
        lblMsg.Text = "Vacancies has been Updated successfully"
        lblMsg.Visible = True
    End Sub

    Protected Sub gdShow_RowCancelingEdit(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCancelEditEventArgs) Handles gdShow.RowCancelingEdit
        gdShow.EditIndex = -1
        ShowPlacements()

    End Sub



    Sub ShowPlacements()
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()
        Dim sql As String
        Dim da As SqlDataAdapter
        Dim ds As DataSet
        lblMsg.Visible = False
        'sql = "select * from PlacementDetails Where FranchiseCode='" + txtfranchise.Text + "' order by SrNo Asc "
        sql = "select * from PlacementDetails Where FranchiseCode='TNK101' order by SrNo Desc "

        da = New SqlDataAdapter(sql, Con)
        ds = New DataSet
        da.Fill(ds, "PlacementDetails")
        If ds.Tables("PlacementDetails").Rows.Count = 0 Then
            lblMsg.Visible = True
            lblMsg.Text = "No records found"
            gdShow.Visible = False
            lblRecords.Text = ""
            Exit Sub
        End If
        lblMsg.Visible = False
        gdShow.Visible = True
        gdShow.DataSource = ds.Tables("PlacementDetails")
        gdShow.DataBind()
        lblRecords.Text = "Total Records : " & gdShow.Rows.Count

        Con.Close()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        'If Session("myck") = "" Then
        '    Response.Redirect("~/default.aspx")
        'End If
        Session.Timeout = 300
        If Session("myck") = "" Then

            Response.Redirect("~/default.aspx")
        End If





        If Page.IsPostBack = False Then
            ShowPlacements()

            Category()
        End If
    End Sub

    Function GenJobID() As Long
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()
        Dim sql As String
        Dim da As SqlDataAdapter
        Dim ds As DataSet
        sql = "Select Max(ID) As JobID from PlacementCell "
        da = New SqlDataAdapter(sql, Con)
        ds = New DataSet()
        da.Fill(ds, "PlacementCell")

        lblMsg.Visible = False
        Dim varJobID As Integer = 1
        If ds.Tables("PlacementCell").Rows.Count > 0 Then
            If IsDBNull(ds.Tables("PlacementCell").Rows(0).Item("JobID")) = False Then
                varJobID = ds.Tables("PlacementCell").Rows(0).Item("JobID")
                varJobID = CInt(varJobID) + 1
            End If
        End If
        Return varJobID
        Con.Close()
    End Function

    Protected Sub btnAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAdd.Click
        lblMsg.Text = ""
        If txtJobTitle.Text = "" Then
            lblMsg.Visible = True
            lblMsg.Text = "Enter Job Title"
            Exit Sub
        End If
        If txtCompanyName.Text = "" Then
            lblMsg.Visible = True
            lblMsg.Text = "Enter Comapny Name"
            Exit Sub
        End If
        If txtQualification.Text = "" Then
            lblMsg.Visible = True
            lblMsg.Text = "Enter Qualification Required"
            Exit Sub
        End If
        If txtexperience.Text = "" Then
            lblMsg.Visible = True
            lblMsg.Text = "Enter Experience Required"
            Exit Sub
        End If

        If txtsalaryPackage.Text = "" Then
            lblMsg.Visible = True
            lblMsg.Text = "Enter Salary Package "
            Exit Sub
        End If

        If txtschedule.Text = "" Then
            lblMsg.Visible = True
            lblMsg.Text = "Enter Interview Date To "
            Exit Sub
        End If

        If txtNoOfVacancies.Text <> "" Then
            If IsNumeric(txtNoOfVacancies.Text) = False Then
                lblMsg.Visible = True
                lblMsg.Text = "Specify No. of Vacancies in Numeric"
                Exit Sub
            End If
        Else
            lblMsg.Visible = True
            lblMsg.Text = "Enter No. Of Vacancies "
            Exit Sub
        End If

        If txtvenu.Text = "" Then
            lblMsg.Visible = True
            lblMsg.Text = "Enter Venues "
            Exit Sub
        End If


        If ddlCategory.Text = "Select" Then
            lblMsg.Visible = True
            lblMsg.Text = "Select Category"
            Exit Sub
        End If
        If ddlSubCategory.Text = "Select" Then
            lblMsg.Visible = True
            lblMsg.Text = "Select Sub Category "
            Exit Sub
        End If

        If txtDescriptions.Text = "" Then
            lblMsg.Visible = True
            lblMsg.Text = "Enter Some Description "
            Exit Sub
        End If
        Addvancancies()
        ShowPlacements()
        

    End Sub

    Sub Addvancancies()
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()
        Dim sql As String
        Dim cmd As SqlCommand
        Dim varjobid As Long
        varjobid = 0
        varjobid = GenJobID()
        sql = " Insert into PlacementDetails  (JobTitle, CompanyName, Qualification, Experience, SalaryPackage, InterviewSchedule, NoOfVacancy, Venues, Category, SubCategory, Description,PostedOn,FranchiseCode,BrandName) values (@JobTitle, @CompanyName, @Qualification, @Experience, @SalaryPackage, @InterviewSchedule, @NoOfVacancy, @Venues, @Category, @SubCategory, @Description,@PostedOn,@FranchiseCode,@BrandName) "

        'sql = " Insert into PlacementCell (CollegeName,ID,CompanyName,JobTitle ,InterviewDateFrom,InterviewDateTo,Venue,Others,UserID,NoOfVacancies,Qualification,SkillsRequired,Position,SalaryPackage,Active,FileName,Category)values(@CollegeName,@ID,@CompanyName,@JobTitle ,@InterviewDateFrom,@InterviewDateTo,@Venue,@Others,@UserID,@NoOfVacancies,@Qualification,@SkillsRequired,@Position,@SalaryPackage,@Active,@FileName,@Category)"
        cmd = New SqlCommand(sql, Con)
        cmd.Parameters.AddWithValue("@FranchiseCode", txtfranchise.Text)
        cmd.Parameters.AddWithValue("@BrandName", "THINKNEXT TRAINING")
        cmd.Parameters.AddWithValue("@JobTitle", txtJobTitle.Text)
        cmd.Parameters.AddWithValue("@CompanyName", txtCompanyName.Text)
        cmd.Parameters.AddWithValue("@Qualification", txtQualification.Text)
        cmd.Parameters.AddWithValue("@Experience", txtexperience.Text)
        cmd.Parameters.AddWithValue("@SalaryPackage", txtsalaryPackage.Text)
        cmd.Parameters.AddWithValue("@InterviewSchedule", txtschedule.Text)
        cmd.Parameters.AddWithValue("@NoOfVacancy", txtNoOfVacancies.Text)
        cmd.Parameters.AddWithValue("@Venues", txtvenu.Text)
        cmd.Parameters.AddWithValue("@Category", ddlCategory.Text)
        cmd.Parameters.AddWithValue("@SubCategory", ddlSubCategory.Text)
        cmd.Parameters.AddWithValue("@Description", txtDescriptions.Text)
        cmd.Parameters.AddWithValue("@PostedOn", System.DateTime.Now.Date)
        cmd.Connection = Con
        cmd.ExecuteNonQuery()
        cmd.Dispose()
        Con.Close()
        'ShowPlacements()
        lblMsg.Visible = True
        lblMsg.Text = "Record has been successfully added."
        clear()
    End Sub

    Protected Sub btnShow_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnShow.Click
        ShowPlacements()
        clear()
    End Sub




    Protected Sub ButtonInsSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles ButtonInsSave.Click

        If TextBoxInsert.Text <> "" Then
            If IsNumeric(TextBoxInsert.Text) = True Then
                lblMsg.Text = "Invalid " & lblinsert.Text
            Else
                If hiddentext.Value = "Enter Category" Then
                    If CheckCategory(TextBoxInsert.Text) = True Then
                        lblMsg.Text = "Category already exists"
                        Exit Sub
                    End If
                    InsertCategory(TextBoxInsert.Text)
                    lblMsg.Text = "Category Saved Successfully"
                    Category()
                ElseIf hiddentext.Value = "Enter Sub Category" Then
                    If ddlcategory.Text = "Select" Then
                        lblMsg.Text = "Select Category for Sub Category"
                        Exit Sub
                    End If
                    If CheckSubCtegory(TextBoxInsert.Text) = True Then
                        lblMsg.Text = "Sub Category already exists"
                        Exit Sub
                    End If
                    InsertSubCategory(ddlcategory.Text, TextBoxInsert.Text)
                    lblMsg.Text = "Sub Category Saved Successfully"
                    SubCtegory(ddlcategory.Text)
                End If
            End If

        End If
    End Sub

    'not used------------------------------------------------------------------
    Function CheckCategory(ByVal Category As String) As Boolean
        Dim Bool As Boolean
        Dim con As New SqlConnection
        Dim varclass1 As New Class1
        con = New SqlConnection(varclass1.GetConnectionString(""))
        con.Open()
        Dim ds As New DataSet
        Dim Sql As String
        Sql = "Select  Category  from MasterPlacementCategory where Category=@Category and FranchiseCode='" + txtfranchise.Text + "'  "
        Dim cmd As New SqlCommand(Sql, con)
        cmd.Parameters.AddWithValue("@Category", Category)
        Dim da = New SqlDataAdapter(cmd)
        da.Fill(ds, "MasterPlacementCategory")
        ddlcategory.Items.Clear()
        ddlcategory.Items.Add("Select")
        If ds.Tables("MasterPlacementCategory").Rows.Count > 0 Then
            Bool = True

        Else
            Bool = False
        End If
        con.Close()
        cmd.Dispose()
        da.Dispose()
        ds.Dispose()
        Return Bool
    End Function


    Function CheckSubCtegory(ByVal SubCategory As String) As Boolean
        Dim bool As Boolean
        Dim con As New SqlConnection
        Dim varclass1 As New Class1
        con = New SqlConnection(varclass1.GetConnectionString(""))
        con.Open()
        Dim ds As New DataSet
        Dim Sql As String
        Sql = "Select  SubCategory from MasterPlacementCategory where  SubCategory=@SubCategory "
        Dim cmd As New SqlCommand(Sql, con)
        cmd.Parameters.AddWithValue("@SubCategory", SubCategory)
        Dim da = New SqlDataAdapter(cmd)
        da.Fill(ds, "MasterPlacementCategory")
        If ds.Tables("MasterPlacementCategory").Rows.Count > 0 Then
            bool = True
        Else
            bool = False
        End If
        con.Close()
        cmd.Dispose()
        da.Dispose()
        ds.Dispose()
        Return bool
    End Function


    Sub InsertCategory(ByVal Category As String)
        Dim con As New SqlConnection
        Dim varclass1 As New Class1
        con = New SqlConnection(varclass1.GetConnectionString(""))
        con.Open()
        Dim ds As New DataSet
        Dim sql As String
        sql = "Insert Into MasterPlacementCategory (Category,FranchiseCode) values (@Category,@FranchiseCode) "
        Dim cmd As New SqlCommand(sql, con)
        cmd.Parameters.AddWithValue("@Category", Category)
        cmd.Parameters.AddWithValue("@FranchiseCode", txtfranchise.Text)
        cmd.ExecuteNonQuery()
        cmd.Dispose()
        con.Close()
    End Sub

    Sub InsertSubCategory(ByVal Category As String, ByVal SubCategory As String)
        Dim con As New SqlConnection
        Dim varclass1 As New Class1
        con = New SqlConnection(varclass1.GetConnectionString(""))
        con.Open()
        Dim ds As New DataSet
        Dim sql As String
        sql = "Insert Into MasterPlacementCategory (Category,SubCategory,FranchiseCode) values (@Category,@SubCategory,@FranchiseCode) "
        Dim cmd As New SqlCommand(sql, con)
        cmd.Parameters.AddWithValue("@Category", Category)
        cmd.Parameters.AddWithValue("@SubCategory", SubCategory)
        cmd.Parameters.AddWithValue("@FranchiseCode", txtfranchise.Text)
        cmd.ExecuteNonQuery()
        cmd.Dispose()
        con.Close()
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
        ddlcategory.Items.Clear()
        ddlcategory.Items.Add("Select")
        If ds.Tables("MasterPlacementCategory").Rows.Count > 0 Then
            For i = 0 To ds.Tables("MasterPlacementCategory").Rows.Count - 1
                ddlCategory.Items.Add(ds.Tables("MasterPlacementCategory").Rows(i).Item("Category").ToString)
            Next

        Else

        End If
        con.Close()
        cmd.Dispose()
        da.Dispose()
        ds.Dispose()

    End Sub

    Sub SubCtegory(ByVal Category As String)
        Dim con As New SqlConnection
        Dim varclass1 As New Class1
        con = New SqlConnection(varclass1.GetConnectionString(""))
        con.Open()
        Dim ds As New DataSet
        Dim Sql As String
        Sql = "Select Distinct SubCategory from MasterPlacementCategory where SubCategory <> '' and SubCategory is Not Null and Category='" & Category & "' and FranchiseCode='" + txtfranchise.Text + "'  "
        Dim cmd As New SqlCommand(Sql, con)
        Dim da = New SqlDataAdapter(cmd)
        da.Fill(ds, "MasterPlacementCategory")
        ddlSubCategory.Items.Clear()
        ddlSubCategory.Items.Add("Select")
        If ds.Tables("MasterPlacementCategory").Rows.Count > 0 Then
            For i = 0 To ds.Tables("MasterPlacementCategory").Rows.Count - 1
                ddlSubCategory.Items.Add(ds.Tables("MasterPlacementCategory").Rows(i).Item("SubCategory").ToString)
            Next
        Else

        End If
        con.Close()
        cmd.Dispose()
        da.Dispose()
        ds.Dispose()

    End Sub


    Protected Sub ddlCategory_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlCategory.SelectedIndexChanged
        If ddlCategory.Text <> "Select" Then
            SubCtegory(ddlCategory.Text)
        End If
    End Sub

    Protected Sub ddlSubCategory_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlSubCategory.SelectedIndexChanged

    End Sub

    Protected Sub txtvenu_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtvenu.TextChanged

    End Sub

    Protected Sub gdShow_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles gdShow.RowDeleting

        Dim lblid As Label = CType(gdShow.Rows(e.RowIndex).FindControl("LBLJobID"), Label)
        Dim con As New SqlConnection
        Dim varclass1 As New Class1
        con = New SqlConnection(varclass1.GetConnectionString(""))
        con.Open()
        Dim Sql As String
        Sql = "Delete From PlacementDetails where SrNo='" + lblid.Text + "'"
        Dim cmd As New SqlCommand(Sql, con)
        cmd.ExecuteNonQuery()
        cmd.Dispose()
        con.Close()
        ShowPlacements()
    End Sub
End Class
