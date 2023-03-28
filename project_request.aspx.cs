using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Globalization;

public partial class project_request : System.Web.UI.Page
{
    string varIP;
    Class1 varClass1 = new Class1();
    string title, tech,s;
    DateTime date;
    protected void Page_Load(object sender, EventArgs e)
    {
        title = Request.QueryString["title"];
        tech = Request.QueryString["tech"];

        if (string.IsNullOrEmpty(title) || string.IsNullOrEmpty(tech))
        {
            Response.Redirect("project_list.aspx");
        }
        SqlConnection con = new SqlConnection(varClass1.GetConnectionString(varIP));
        SqlCommand cmd = new SqlCommand("select getdate()",con);
        con.Open();
        object dtype = cmd.ExecuteScalar();

        if (dtype.ToString() != "")
        {
            date = Convert.ToDateTime(dtype);
            s = string.Format("{0:MM/dd/yyyy}", date);
            
   
        }
        

    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string source = "";

        SqlConnection con = new SqlConnection(varClass1.GetConnectionString(varIP));
        SqlCommand cmd = new SqlCommand("insert into admissions (EnquiryNo,StudentName,StudentMobileNo,EmailID,Course,Comment,ModeOfEnquiry,EnquiryStatus,AdmissionDate)values(@enquiryno,@studentname,@studentMno,@emailid,@course,@comment,@modeofenquiry,@status,@admissiondate)",con);
        int enquiryno = getEnquiryno();
        con.Open();
        foreach (ListItem li in chk_source.Items)
        {
            if (li.Selected)
            {
                source = source + li.Text + ",";
            }
        }
        string Mobile = txtphone.Text;
        cmd.Parameters.AddWithValue("@enquiryno", enquiryno);
        cmd.Parameters.AddWithValue("@studentname", txtname.Text);
        cmd.Parameters.AddWithValue("@studentMno", Mobile);
        cmd.Parameters.AddWithValue("@emailid", txtemail.Text);
        cmd.Parameters.AddWithValue("@course", title+"/"+tech);
        cmd.Parameters.AddWithValue("@comment", txtmessage.Text);
        cmd.Parameters.AddWithValue("@modeofenquiry", source);
        cmd.Parameters.AddWithValue("@status", "Open");
        cmd.Parameters.AddWithValue("@admissiondate", Convert.ToDateTime(s, CultureInfo.InvariantCulture));
        cmd.ExecuteNonQuery();

        con.Close();

    }

    protected int getEnquiryno()
    {
        int enquiryno;
        SqlConnection con1 = new SqlConnection(varClass1.GetConnectionString(varIP));
        SqlCommand cmd1 = new SqlCommand("select max(enquiryno) from admissions",con1);
        con1.Open();
        object enquiry = cmd1.ExecuteScalar();
        if (enquiry != null)
        {
            enquiryno = Convert.ToInt32(enquiry) + 1;
            return enquiryno;

        }
        else
        {
            return 1;
        }
    }
}