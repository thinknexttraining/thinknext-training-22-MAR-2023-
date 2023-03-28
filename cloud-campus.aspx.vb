Imports System.Data.SqlClient
Imports System.Data
Partial Class cloud_campus1
    Inherits System.Web.UI.Page
    Dim varIP As String
    Protected Sub btnlogin_Click(sender As Object, e As EventArgs) Handles btnlogin.Click
        ' Add Fake Delay to simulate long running process.
        System.Threading.Thread.Sleep(0)
        If txtusername.Text = "" Then
            lblmessgaelogin.Visible = True
            lblmessgaelogin.ForeColor = Drawing.Color.Red
            lblmessgaelogin.Text = "Username field cannot be blank."
            Exit Sub
        End If
        If txtpassword.Text = "" Then
            lblmessgaelogin.Visible = True
            lblmessgaelogin.ForeColor = Drawing.Color.Red
            lblmessgaelogin.Text = "Password field cannot be blank."
            Exit Sub
        End If
        If checkuser(txtusername.Text, txtpassword.Text) = False Then
            lblmessgaelogin.Text = "Invalid Username or Password"
            'Response.Write("<script language='javascript'>window.alert('Invalid Username|Password');</script>")
        Else


            Session("myck") = txtusername.Text
            Session("mck") = txtpassword.Text
            'Session.Timeout = 525600
            'Session("Master") = txtusername.Text
            'Dim ses As String = Session("Master").ToString

            'Dim ck As HttpCookie
            'ck = New HttpCookie("myck")
            'ck.Value = txtusername.Text
            'ck.Expires = DateTime.Now.AddHours(5)




            'Response.Cookies.Add(ck)


            'Dim ps As HttpCookie
            'ps = New HttpCookie("mck")
            'ps.Value = txtpassword.Text
            'ps.Expires = DateTime.Now.AddHours(5)
            'Response.Cookies.Add(ps)



            'Session("Master") = txtusername.Text

            'Dim ck As HttpCookie
            'ck = New HttpCookie("myck")
            'ck.Value = txtusername.Text
            'Response.Cookies.Add(ck)
            'Dim ps As HttpCookie
            'ps = New HttpCookie("mck")
            'ps.Value = txtpassword.Text
            'Response.Cookies.Add(ps)
            'Response.Cookies("myck").Expires = DateTime.Now.AddDays(1)
            'Response.Cookies("mck").Expires = DateTime.Now.AddDays(1)


            '  Request.Cookies("Myck").Value = txtusername.Text
            ' Session("Password") = txtpassword.Text
            If checkuserLogintype(txtusername.Text, txtpassword.Text) = "Admin" Then
                Response.Redirect("~/Admin/AdminPersonalProfile.aspx?adidno=" & txtusername.Text)
                'Server.Transfer("~/Admin/AdminPersonalProfile.aspx?adidno=" & txtusername.Text)
                'Response.Redirect("http://203.134.192.14/Admin/AdminPersonalProfile.aspx?adidno=" & txtusername.Text)
            ElseIf checkuserLogintype(txtusername.Text, txtpassword.Text) = "Staff" Then
                Response.Redirect("~/Staff/AdminPersonalProfile.aspx?stidno=" & txtusername.Text)

            ElseIf checkuserLogintype(txtusername.Text, txtpassword.Text) = "Student" Then
                Response.Redirect("~/Students/PersonalProfile.aspx?stidno=" & txtusername.Text)
                'Response.Redirect("http://203.134.192.14/Students/PersonalProfile.aspx?stidno=" & txtusername.Text)
            ElseIf checkuserLogintype(txtusername.Text, txtpassword.Text) = "Consultant" Then
            End If
            'lblloginMSG.Text = "Successfully Login"
        End If
    End Sub
    Function checkuserLogintype(ByVal username As String, ByVal password As String) As String
        Dim varclass As New Class1
        Dim Logintype As String
        Dim con As SqlConnection
        con = New SqlConnection(varclass.GetConnectionString(varIP))
        con.Open()
        Dim sql As String
        sql = " select * from UserLogin where username=@u and password=@p and password=@p and FranchiseCode=@FranchiseCode and BrandName=@BrandName"
        Dim cmd As New SqlCommand(sql, con)
        cmd.Parameters.AddWithValue("@u", username)
        cmd.Parameters.AddWithValue("@p", password)
        cmd.Parameters.AddWithValue("@FranchiseCode", "TNK101")
        cmd.Parameters.AddWithValue("@BrandName", "THINKNEXT TRAINING")
        Dim ds As New DataSet
        Dim adp As New SqlDataAdapter(cmd)
        adp.Fill(ds, "Login")
        If ds.Tables("Login").Rows.Count > 0 Then
            Logintype = ds.Tables("Login").Rows(0).Item("LoginType")
        Else
            Logintype = ""
        End If
        Return Logintype
    End Function

    Function checkuser(ByVal username As String, ByVal password As String) As Boolean
        Dim varclass As New Class1
        Dim ret As Boolean
        Dim con As SqlConnection
        con = New SqlConnection(varclass.GetConnectionString(varIP))
        con.Open()
        Dim sql As String
        'sql = " select * from thinknext.UserLogin where username=@u and password=@p and FranchiseCode=@FranchiseCode and BrandName=@BrandName"
        sql = " select * from UserLogin where username=@u and password=@p and FranchiseCode=@FranchiseCode and BrandName=@BrandName"
        Dim cmd As New SqlCommand(sql, con)
        cmd.Parameters.AddWithValue("@u", username)
        cmd.Parameters.AddWithValue("@p", password)
        cmd.Parameters.AddWithValue("@FranchiseCode", "TNK101")
        cmd.Parameters.AddWithValue("@BrandName", "THINKNEXT TRAINING")

        Dim ds As New DataSet
        Dim adp As New SqlDataAdapter(cmd)
        adp.Fill(ds, "Login")
        If ds.Tables("Login").Rows.Count > 0 Then
            ret = True
        Else
            ret = False
        End If
        Return ret
    End Function
End Class
