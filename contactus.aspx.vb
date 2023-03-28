Imports System.Data.SqlClient
Imports System.Data
Imports System.Net
Imports System.IO
Imports System.Data.Sql
Imports System.Text
Imports System.Net.Mime
Imports System.Net.Mail
Imports System.Net.Mail.Attachment
Imports System.Globalization
Imports System.Threading
Imports System.Web.UI.WebControls
Imports System.Web.UI
Imports System.Drawing
Imports System.Text.RegularExpressions
Partial Class contactus
    Inherits System.Web.UI.Page
    Dim varIP As String
    Dim sess As String

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If txtName.Text = "" Then
            lblmsg.Visible = True
            lblmsg.ForeColor = Drawing.Color.Red
            lblmsg.Text = "Name field cannot be blank."
            Exit Sub
        End If
        If txtEmail.Text = "" Then
            lblmsg.Visible = True
            lblmsg.ForeColor = Drawing.Color.Red
            lblmsg.Text = "Email ID field cannot be blank."
            Exit Sub
        End If
        If txtMobile.Text = "" Then
            lblmsg.Visible = True
            lblmsg.ForeColor = Drawing.Color.Red
            lblmsg.Text = "Mobile Number field cannot be blank."
            Exit Sub
        End If

        If txtComments.Text = "" Then
            lblmsg.Visible = True
            lblmsg.ForeColor = Drawing.Color.Red
            lblmsg.Text = "Massage field cannot be blank."
            Exit Sub
        End If


        Dim varclass As New Class1
        Dim con As SqlConnection
        con = New SqlConnection(varclass.GetConnectionString(varIP))
        con.Open()
        Dim sql As String
        sql = "insert into Admissions( Session,EnquiryNo, Admissiondate,StudentName,StudentMobileNo,EmailID,Comment,ModeOfEnquiry,StatusCode,FranchiseCode,BrandName,EnquiryStatus)values(@Session,@EnquiryNo,@Admissiondate,@StudentName,@StudentMobileNo,@EmailID,@Comment,@ModeOfEnquiry,@StatusCode,@FranchiseCode,@BrandName,@EnquiryStatus)"
        Dim cmd As New SqlCommand(sql, con)
        Dim enquiryno As String
        enquiryno = GenEnquirytNo()
        Session("Admisn") = enquiryno
        Dim ses As String
        ses = varclass.Session12(sess)
        cmd.Parameters.AddWithValue("@EnquiryNo", enquiryno)
        cmd.Parameters.AddWithValue("@Admissiondate", Format(Now, "MM/dd/yyyy"))
        cmd.Parameters.AddWithValue("@StudentName", txtName.Text)
        cmd.Parameters.AddWithValue("@StudentMobileNo", txtMobile.Text)
        cmd.Parameters.AddWithValue("@ModeOfEnquiry", "Feedback")
        cmd.Parameters.AddWithValue("@EmailID", txtEmail.Text)

        cmd.Parameters.AddWithValue("@Comment", txtComments.Text)
        cmd.Parameters.AddWithValue("@StatusCode", "Enquiry")
        cmd.Parameters.AddWithValue("@FranchiseCode", "TNK101")
        cmd.Parameters.AddWithValue("@BrandName", "THINKNEXT TRAINING")
        cmd.Parameters.AddWithValue("@Session", ses)
        cmd.Parameters.AddWithValue("@EnquiryStatus", "Open")
        cmd.ExecuteNonQuery()
        cmd.Dispose()
        con.Close()
        Clear()
        varclass.SendLeads(txtMobile.Text, txtName.Text, txtEmail.Text, "None", "Arrange a Call Back", "https://www.thinknexttraining.com/contactus.aspx")
        lblmsg.ForeColor = Drawing.Color.Red
        lblmsg.Text = "Thanks for your Feedback at ThinkNEXT Technologies Pvt. Ltd."

    End Sub

    Sub Clear()
        txtName.Text = ""
        txtMobile.Text = ""
        ' ddlTrainingType.SelectedIndex = 0
        txtComments.Text = ""
        txtEmail.Text = ""

    End Sub

    Function GenEnquirytNo() As String
        Dim con As SqlConnection
        Dim sql As String
        Dim EnquiryNo As Integer
        Dim varClass1 As New Class1
        con = New SqlConnection(varClass1.GetConnectionString(varIP))
        con.Open()
        sql = "SELECT MAX(EnquiryNo) AS EnquiryNo FROM  Admissions where FranchiseCode='TNK101' AND BrandName='THINKNEXT TRAINING' "
        Dim cmd As New SqlCommand(sql, con)
        Dim adp As New SqlDataAdapter(cmd)
        Dim ds As New DataSet
        adp.Fill(ds, "Admissions")
        If ds.Tables("Admissions").Rows.Count > 0 Then
            If IsDBNull(ds.Tables("Admissions").Rows(0).Item("EnquiryNo")) = False Then
                EnquiryNo = Convert.ToInt32(ds.Tables("Admissions").Rows(0).Item("EnquiryNo"))
                EnquiryNo = EnquiryNo + 1
            Else
                EnquiryNo = 1
            End If
        End If
        Return EnquiryNo
    End Function


End Class
