<%@ WebHandler Language="C#" Class="StudentHandler" %>

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Script.Serialization;

public class StudentHandler : IHttpHandler {
    string VarIp;
    Class1 datahelper = new Class1();
    public void ProcessRequest (HttpContext context) {
         string term = context.Request["term"] ?? "";
            List <string> listStudentNames = new List< string>();

            string cs = datahelper.GetConnectionString(VarIp);
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("spGetStudentEmailID", con);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter parameter = new SqlParameter()
                {
                    ParameterName = "@term",
                    Value = term
                };

                cmd.Parameters.Add(parameter);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    listStudentNames.Add(rdr["EmailId"].ToString());
                }
            }

            JavaScriptSerializer js = new JavaScriptSerializer();
            context.Response.Write(js.Serialize(listStudentNames));
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}