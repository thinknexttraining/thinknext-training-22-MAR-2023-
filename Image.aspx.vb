Imports System.Data
Imports System.Data.SqlClient
Partial Class Images
    Inherits System.Web.UI.Page
    Dim varIP As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim sql As String
        varIP = Request.ServerVariables("SERVER_NAME").ToString
        Dim Con As SqlConnection
        Dim varClass1 As New Class1
        Con = New SqlConnection(varClass1.GetConnectionString(varIP))
        Con.Open()
        If Session("myck").ToString() <> "" Then
            If Len(Session("myck").ToString()) = 5 Or Len(Session("myck").ToString()) = 4 Then
                Dim tempid1 As String
                tempid1 = Request.QueryString("ImageID")
                If tempid1 <> "" Then
                    sql = "Select Snap from Staff where IDNo=" & tempid1
                    Dim da As New SqlDataAdapter(sql, Con)
                    Dim ds As New DataSet
                    da.Fill(ds, "Snap")
                    If ds.Tables("Snap").Rows.Count > 0 Then
                        If IsDBNull(ds.Tables("Snap").Rows(0).Item("Snap")) = False Then
                            Dim bytes() As Byte = CType(ds.Tables("Snap").Rows(0).Item("Snap"), Byte())
                            Response.Buffer = True
                            Response.Charset = ""
                            Response.Cache.SetCacheability(HttpCacheability.NoCache)
                            Response.ContentType = "image/jpeg"
                            Response.AddHeader("content-disposition", "filename=" & tempid1 & ".jpg")
                            Response.BinaryWrite(bytes)
                            Response.Flush()
                            Response.End()
                        End If
                    End If
                End If
            End If
            Dim tempid As String
            tempid = Request.QueryString("ImageID")
            If tempid <> "" Then
                sql = "Select Snap from Admissions where"
                sql = sql & " IDNo = " & tempid
                Dim da As New SqlDataAdapter(sql, Con)
                Dim ds As New DataSet
                da.Fill(ds, "Snap")
                If ds.Tables("Snap").Rows.Count > 0 Then
                    If IsDBNull(ds.Tables("Snap").Rows(0).Item("Snap")) = False Then
                        Dim bytes() As Byte = CType(ds.Tables("Snap").Rows(0).Item("Snap"), Byte())
                        Response.Buffer = True
                        Response.Charset = ""
                        Response.Cache.SetCacheability(HttpCacheability.NoCache)
                        Response.ContentType = "image/jpeg"
                        Response.AddHeader("content-disposition", "filename=" & tempid & ".jpg")
                        Response.BinaryWrite(bytes)
                        Response.Flush()
                        Response.End()
                    End If
                End If
            End If
        End If
        Con.Close()
    End Sub
End Class
