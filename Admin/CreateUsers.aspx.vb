Imports System.Data.SqlClient
Imports System.Data

Partial Class CreateUsers

    Inherits System.Web.UI.Page

    Protected Sub drplogintype_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles drplogintype.SelectedIndexChanged
        ShowData()
    End Sub

    Sub ShowData()
        Dim varclass As New Class1
        Dim con As SqlConnection
        con = New SqlConnection(varclass.GetConnectionString(""))
        con.Open()
        Dim sql As String
        Dim da As SqlDataAdapter
        Dim ds As New DataSet
        If drplogintype.Text = "Admin" Then
            'If ddlCourses.Text <> "Select" Then
            '    lblmessage.Text = "Please Select course"
            '    Return
            ' End If
            sql = " select   distinct IDNo,Name,FatherName,Designation,userlogin.Password FROM  Staff Left JOIN   userlogin ON Staff.IDNo = userlogin.UserName where IDNo not in(select UserName from userlogin where logintype='Staff' or Logintype='Admin')"

        ElseIf drplogintype.Text = "Student" Then
            'If ddlCourses.Text <> "Select" Then
            '    lblmessage.Text = "Please Select course"
            '    Return
            ' End If
            'sql = "select distinct IDNo,Collegename,StudentName,FatherName,Password   FROM   Admissions Left JOIN userlogin ON Admissions.IDNo = userlogin.UserName where SessionYear between '2014' and '2015' and IDNo is not null and Training='" & ddlCourses.Text & "'and StatusCode ='Admission'"
            sql = "select distinct IDNo,Collegename,StudentName,FatherName,Password   FROM   Admissions Left JOIN userlogin ON Admissions.IDNo = userlogin.UserName where IDNo not in(select UserName from userlogin where logintype='Student') and Course='" & ddlCourses.Text & "' and IDNo is not null"

        Else
            lblmessage.Text = "Please select Logintype"
            Exit Sub
        End If
        Dim cmd1 As New SqlCommand(sql, con)
        da = New SqlDataAdapter(cmd1)
        da.Fill(ds, "LoginDetail")
        If ds.Tables("LoginDetail").Rows.Count > 0 Then
            Dim total As String = ds.Tables("LoginDetail").Rows.Count
            lblmessage.Text = "Total _" & total & "_ found"
            GridView1.DataSource = ds.Tables("LoginDetail")
            GridView1.DataBind()
            GridView1.Width = 800
            Session("SD") = ds.Tables("LoginDetail")
        Else
            lblmessage.Text = "No record found"
        End If
    End Sub

  
    Protected Sub btngeneratepassword_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btngeneratepassword.Click
        Dim varclass As New Class1
        For i = 0 To GridView1.Rows.Count - 1
            Dim IDNo, CollegeName, password As String
            IDNo = GridView1.Rows(i).Cells(0).Text
            'CollegeName = GridView1.Rows(i).Cells(1).Text
            password = IDNo
            If userexist(IDNo) = False Then

                'If Len(IDNo) = 5 Then
                If drplogintype.Text = "Admin" Then
                    InsertUserData(IDNo, password, "Staff")
                ElseIf IsNumeric(IDNo) = True Then
                    ' InsertUserData(IDNo, password, "Student")
                    'Dim varclass As New Class1
                    Dim con As SqlConnection
                    con = New SqlConnection(varclass.GetConnectionString(""))
                    con.Open()
                    Dim sql As String
                    sql = "insert into UserLogin (UserName, Password, LoginType,FranchiseCode,BrandName) "
                    sql = sql & " values (@UserName, @Password, @LoginType,@FranchiseCode,@BrandName) "
                    Dim cmd1 As New SqlCommand(sql, con)
                    cmd1.Parameters.AddWithValue("@UserName", IDNo)
                    cmd1.Parameters.AddWithValue("@Password", password)
                    cmd1.Parameters.AddWithValue("@LoginType", "Student")
                    cmd1.Parameters.AddWithValue("@FranchiseCode", "TNK101")
                    cmd1.Parameters.AddWithValue("@BrandName", "THINKNEXT TRAINING")
                    cmd1.ExecuteNonQuery()
                    cmd1.Dispose()
                    con.Close()
                End If
            End If
        Next
        ShowData()
        lblmessage.Text = "Password Generated Successfully"
    End Sub

    Function userexist(ByVal UserName As String) As Boolean
        Dim varclass As New Class1
        Dim con As SqlConnection
        con = New SqlConnection(varclass.GetConnectionString(""))
        con.Open()
        Dim sql As String
        Dim Exist As Boolean = False
        Dim da As SqlDataAdapter
        Dim ds As New DataSet
        sql = "SELECT * from UserLogin where UserName=@UserName"
        Dim cmd1 As New SqlCommand(sql, con)
        cmd1.Parameters.AddWithValue("@UserName", UserName)
        da = New SqlDataAdapter(cmd1)
        da.Fill(ds, "UserMaster")
        If ds.Tables("UserMaster").Rows.Count > 0 Then
            Exist = True
        Else
            Exist = False
        End If
        Return Exist
        cmd1.Dispose()
        con.Close()

    End Function

    Sub InsertUserData(ByVal username As String, ByVal Password As String, ByVal LoginType As String)
        Dim varclass As New Class1
        Dim con As SqlConnection
        con = New SqlConnection(varclass.GetConnectionString(""))
        con.Open()
        Dim sql As String
        sql = "insert into UserLogin (UserName, Password, LoginType,FranchiseCode,BrandName) "
        sql = sql & " values (@UserName, @Password, @LoginType,@FranchiseCode,@BrandName) "
        Dim cmd1 As New SqlCommand(sql, con)
        cmd1.Parameters.AddWithValue("@UserName", username)
        cmd1.Parameters.AddWithValue("@Password", Password)
        cmd1.Parameters.AddWithValue("@LoginType", LoginType)
        cmd1.Parameters.AddWithValue("@FranchiseCode", "TNK101")
        cmd1.Parameters.AddWithValue("@BrandName", "THINKNEXT TRAINING")
        cmd1.ExecuteNonQuery()
        cmd1.Dispose()
        con.Close()
    End Sub


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("myck") = "" Then
            Response.Redirect("~/default.aspx")
        End If
        If Page.IsPostBack = False Then
            ShowCourse()
        End If
    End Sub

    Protected Sub ddlCourses_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlCourses.SelectedIndexChanged

        'drplogintype.Items.Add("Select")
        'drplogintype.Items.Add("Admin")
        'drplogintype.Items.Add("Student")


        ' <asp:ListItem>Select</asp:ListItem>
        '<asp:ListItem>Admin</asp:ListItem>
        '<asp:ListItem>Student</asp:ListItem>
    End Sub


    Sub ShowCourse()
        Dim varIP As String
        varIP = Request.ServerVariables("SERVER_NAME").ToString
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()
        Dim da As SqlDataAdapter
        Dim ds As DataSet
        Dim sql As String
        ddlCourses.Items.Clear()
        ddlCourses.Items.Insert(0, "Select")
        ' sql = "select Distinct Training from Admissions where Training is not Null"
        sql = "select Distinct courses from masterCourses  where FranchiseCode='TNK101'"
        da = New SqlDataAdapter(sql, Con)
        ds = New DataSet
        da.Fill(ds, "mastersession")
        For i = 0 To ds.Tables("mastersession").Rows.Count - 1
            If IsDBNull(ds.Tables("mastersession").Rows(i).Item("courses")) = False Then
                ddlCourses.Items.Add(ds.Tables("mastersession").Rows(i).Item("courses"))
            End If
        Next
        Con.Close()
    End Sub
End Class
