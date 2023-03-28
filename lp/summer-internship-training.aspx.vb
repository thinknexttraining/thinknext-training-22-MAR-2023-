Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Data
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
Partial Class summer_internship_training
    Inherits System.Web.UI.Page
    Dim sess As String
    Dim varIP As String
    Dim varclass As New Class1()
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
    Protected Sub SubmitButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles SubmitButton.Click
        System.Threading.Thread.Sleep(0)
        SyllabusDownload()

    End Sub
    Public Sub SyllabusDownload()

        Dim varclass As New Class1()
        Dim con As New SqlConnection()

        con.ConnectionString = varclass.GetConnectionString("constr")
        Dim ses As String
        Dim sql As String
        ses = varclass.Session12(sess)
        Dim enquiryno As String
        enquiryno = GenEnquirytNo()
        If con.State = ConnectionState.Closed Then
            con.Open()
        End If
        If PersonName.Text <> "" Then
            If PersonEmail.Text <> "" Then
                If MobileNo.Text <> "" Then
                    sql = ("insert into Admissions (EnquiryNo,StudentName,EmailID,StudentMobileNo,Course,ModeOfEnquiry,StatusCode,Session,FranchiseCode,BrandName,Admissiondate) values('" + enquiryno + "','" + PersonName.Text + "','" + PersonEmail.Text + "','" + MobileNo.Text + "','" + PersonCourse.Text + "','" + "Stipend based/free Summer internship 2022" + "','" + "Enquiry" + "','" + ses + "','" + "TNK101" + "','" + "THINKNEXT TRAINING" + "',@Admissiondate)")
                    Dim cmd As New SqlCommand(sql, con)
                    cmd.Parameters.AddWithValue("@Admissiondate", Format(Now, "MM/dd/yyyy"))
                    cmd.ExecuteNonQuery()
                    cmd.Dispose()
                    con.Close()
                    varclass.SendLeads(MobileNo.Text, PersonName.Text, PersonEmail.Text, PersonCourse.Text, "Stipend based/free Summer internship 2022", "https://thinknexttraining.com/lp/summer-internship-training.aspx")
                    PersonName.Text = ""
                    PersonEmail.Text = ""
                    MobileNo.Text = ""
                    PersonCourse.Text = ""
                    Response.Redirect("https://www.thinknexttraining.com/thanks.html")



                End If
            End If
        End If
    End Sub
End Class
