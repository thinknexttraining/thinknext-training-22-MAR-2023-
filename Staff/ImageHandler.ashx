<%@ WebHandler Language="C#" Class="ImageHandler" %>
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;

using System.Web;
using System.Web.Services;


public class ImageHandler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context)
    {
        string imageid = context.Request.QueryString["ImID"];
        SqlConnection connection = new SqlConnection("Data Source=dbthinknextcard.db.11478413.hostedresource.com;Initial Catalog=dbthinknextcard;Persist Security Info=True;User ID=dbthinknextcard;Password=smartBSS123!@#");
        connection.Open();
        SqlCommand command = new SqlCommand("select Snap from staff where IDNo=" + imageid, connection);
        SqlDataReader dr = command.ExecuteReader();
        dr.Read();
        context.Response.BinaryWrite((Byte[])dr[0]);
        connection.Close();
        context.Response.End();
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}