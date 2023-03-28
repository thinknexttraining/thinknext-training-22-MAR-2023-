Imports System
Imports System.Web.UI.WebControls
Imports System.Net
Imports System.IO
Imports System.Net.WebPermission
Imports System.Xml
Imports System.Text
Imports System.Security.Cryptography
Imports System.Net.Mail
Imports System.Threading
Imports System.Net.Mail.Attachment
Imports System.Globalization
Imports System.Web
Imports System.Net.Mime
Imports System.Data
Imports System.Data.SqlClient
Partial Class offers_online_courses
    Inherits System.Web.UI.Page
    Dim varIP As String
    Dim varclass As New Class1()
    Protected Sub SubmitButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles SubmitButton.Click

        Dim con As SqlConnection
        con = New SqlConnection(varclass.GetConnectionString(varIP))
        con.Open()
        Dim sql As String
        sql = "insert into Admissions(Admissiondate,StudentName,StudentMobileNo,EmailID,ModeOfEnquiry)values(@Admissiondate,@StudentName,@StudentMobileNo,@EmailID,@ModeOfEnquiry)"
        Dim cmd As New SqlCommand(sql, con)
        cmd.Parameters.AddWithValue("@Admissiondate", Format(Now, "MM/dd/yyyy"))
        cmd.Parameters.AddWithValue("@StudentName", PersonName.Text)
        cmd.Parameters.AddWithValue("@StudentMobileNo", MobileNo.Text)
        cmd.Parameters.AddWithValue("@EmailID", PersonEmail.Text)
        cmd.Parameters.AddWithValue("@ModeOfEnquiry", "Get Top Deals")

        cmd.ExecuteNonQuery()
        cmd.Dispose()
        con.Close()

        varclass.SendLeads3(MobileNo.Text, PersonName.Text, PersonEmail.Text, "none", "none", "https://thinknexttraining.com/offers-online-courses.aspx")

        MobileNo.Text = String.Empty
        PersonName.Text = String.Empty
        PersonEmail.Text = String.Empty
        Response.Redirect("view-offers-online-courses.aspx")

    End Sub
End Class
