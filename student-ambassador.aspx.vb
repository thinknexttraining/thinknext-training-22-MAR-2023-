Imports System.Linq
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.HtmlControls
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Xml.Linq
Imports System.Data.SqlClient
Imports System.Net.Mail
Imports System.IO
Imports System.Net.Mime
Imports System.Net
Imports System.Data
Imports System.Threading
Imports System.Net.Mail.Attachment
Imports System.Globalization
Partial Class pdms_training_institutes_in_chandigarh
    Inherits System.Web.UI.Page
    Dim varIP As String
    Dim sess As String

    Protected Sub btnsubmit_Click(sender As Object, e As EventArgs) Handles Button1.Click
        System.Threading.Thread.Sleep(0)
        If txttbaname.Text = "" Then
            Label2.Visible = True
            Label2.ForeColor = Drawing.Color.Red
            Label2.Text = "Name field cannot be blank."
            Exit Sub
        End If
        If txttbamobileno.Text = "" Then
            Label2.Visible = True
            Label2.ForeColor = Drawing.Color.Red
            Label2.Text = "Mobile Number field cannot be blank."
            Exit Sub
        End If
        If txttbaemailid.Text = "" Then
            Label2.Visible = True
            Label2.ForeColor = Drawing.Color.Red
            Label2.Text = "Email ID field cannot be blank."
            Exit Sub
        End If
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
        sql = ("insert into Admissions (EnquiryNo,StudentName,EmailID,ContactNo,CollegeName,Course,Batch,ModeOfEnquiry,StatusCode,Session,FranchiseCode,BrandName,Admissiondate) values('" + enquiryno + "','" + txttbaname.Text + "','" + txttbaemailid.Text + "','" + txttbamobileno.Text + "','" + txttbacollege.Text + "','" + txttbacourse.Text + "','" + txttbabatch.Text + "','" + "TBA" + "','" + "Apply" + "','" + ses + "','" + "TNK101" + "','" + "THINKNEXT TRAINING" + "',@Admissiondate)")
        Dim cmd As New SqlCommand(sql, con)
        cmd.Parameters.AddWithValue("@Admissiondate", Format(Now, "MM/dd/yyyy"))
        cmd.ExecuteNonQuery()
        cmd.Dispose()
        con.Close()
        SendEmailTBA()
        Dim SMS2nd As String
        SMS2nd = "Congratulations !!! " & txttbaname.Text & ", You have successfully applied for TBA (ThinkNEXT Brand Ambassador ) at ThinkNEXT Technologies Private Limited. We shall get back to you soon. Call :- 0172-4656197,7837401000,7837402000. www.thinknexttraining.com  www.thinknext.co.in. To know more about ThinkNEXT and get regular updates on your facebook account regarding placements and other activities, please like us at www.facebook.com/thinknexttechnologies"
        varclass.SendSMS(txttbamobileno.Text, SMS2nd, "Route9")
        ' Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Dear ' " + txtName.Text + "' You have been registered succssfully ');", true);
        Label2.Visible = True
        Label2.ForeColor = Drawing.Color.Red
        Label2.Text = "Thanks for apply TBA at ThinkNEXT Technologies Pvt. Ltd."
        ScriptManager.RegisterStartupScript(Me, Me.[GetType](), "alertmessage", "javascript:alert('Submit Successfully')", True)
        clear()

    End Sub



    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        If Not IsPostBack = True Then

        End If
    End Sub


    Public Function GenEnquirytNo() As String
        Dim con As SqlConnection = Nothing
        Dim sql As String = Nothing
        Dim EnquiryNo As Integer = 0
        Dim varClass1 As New Class1()
        con = New SqlConnection(varClass1.GetConnectionString(varIP))
        con.Open()
        sql = "SELECT MAX(EnquiryNo) AS EnquiryNo FROM  Admissions where FranchiseCode='TNK101' AND BrandName='THINKNEXT TRAINING' "
        Dim cmd As New SqlCommand(sql, con)
        Dim adp As New SqlDataAdapter(cmd)
        Dim ds As New DataSet()
        adp.Fill(ds, "Admissions")
        If ds.Tables("Admissions").Rows.Count > 0 Then
            If ds.Tables("Admissions").Rows(0)("EnquiryNo").ToString() <> "" Then
                EnquiryNo = Convert.ToInt32(ds.Tables("Admissions").Rows(0)("EnquiryNo"))
                EnquiryNo = EnquiryNo + 1
            Else
                EnquiryNo = 1
            End If
        End If
        Return EnquiryNo.ToString()

    End Function

    Public Sub SendEmailTBA()

        Dim var As New Class1()
        Dim msg As New MailMessage()
        msg.From = New MailAddress("training@thinknext.co.in", "ThinkNext Technologies Pvt. Ltd")
        msg.[To].Add(New MailAddress(txttbaemailid.Text))
        msg.Subject = "Applied For TBA (ThinkNEXT Brand Ambassador)"
        msg.Body = "Congratulations !!! " & txttbaname.Text & ", You have successfully applied for TBA (ThinkNEXT Brand Ambassador ) at ThinkNEXT Technologies Private Limited. We shall get back to you soon. Call :- 0172-4656197,7837401000,7837402000. www.thinknexttraining.com  www.thinknext.co.in"
        msg.IsBodyHtml = True
        Dim obj As New SmtpClient()
        obj.Host = "relay-hosting.secureserver.net"
        obj.DeliveryMethod = SmtpDeliveryMethod.Network
        msg.Priority = MailPriority.High
        obj.UseDefaultCredentials = False
        obj.Credentials = New NetworkCredential("training@thinknext.co.in", "SmartIndia345#$%")
        obj.Timeout = 9999999
        Try
            obj.Send(msg)
            Return
        Catch ex As Exception
            Response.Write(ex.Message)
        End Try
    End Sub

    Public Sub clear()
        txttbaname.Text = ""
        txttbaemailid.Text = ""
        txttbamobileno.Text = ""
        txttbabatch.Text = ""
        txttbacollege.Text = ""
        txttbacourse.Text = ""
        Label2.Text = ""
    End Sub

End Class
