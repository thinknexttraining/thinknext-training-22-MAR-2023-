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
Partial Class online_Management_internship
    Inherits System.Web.UI.Page
    Dim varIP As String
    Dim varclass As New Class1()
    Protected Sub SubmitButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles SubmitButton.Click
        varclass.SendLeads1(MobileNo.Text, PersonName.Text, PersonEmail.Text, "none", "none", "https://thinknexttraining.com/lp/online-management-internship-training.aspx")
        MobileNo.Text = String.Empty
        PersonName.Text = String.Empty
        PersonEmail.Text = String.Empty
        Response.Redirect("mba-bba-internship-training.html")


    End Sub

End Class
