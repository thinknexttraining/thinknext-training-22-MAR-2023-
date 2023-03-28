using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VerifyCertificate : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    Class1 VarClass = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = VarClass.GetConnectionString("constr");
    }

    protected void btnsearch_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        Class1 VarClass = new Class1();
        con.ConnectionString = VarClass.GetConnectionString("constr");
        con.Open();
        // string sql = "select * from Certificate where CertificateId ='" + txtsearch.Text + "'";
        SqlDataAdapter adp = new SqlDataAdapter("select CertificateId,StudentName,ProjectName,Course,CONVERT(varchar,TrainingFrom,101) AS TrainingFrom,CONVERT(varchar,TrainingTo,101) AS TrainingTo,CONVERT(varchar,DateOfIssue,101) AS DateOfIssue,ModeOFTraining from CertificateNew where CertificateId ='" + txtsearch.Text + "'", con);
        DataTable ds = new DataTable();
        adp.Fill(ds);
        if (ds.Rows.Count > 0)
        {
            Label1.Visible = true;
            Label1.Text = "Total Records: " + ds.Rows.Count.ToString();
            foreach (DataRow row in ds.Rows)
            {
                if (Convert.ToString(row["ModeOFTraining"]) == "Offline")
                {
                    txtCertificateId.Text = Convert.ToString(row["CertificateId"]);
                    txtStudentName.Text = Convert.ToString(row["StudentName"]);
                    txtProjectName.Text = Convert.ToString(row["ProjectName"]);
                    txtCourse.Text = Convert.ToString(row["Course"]);
                    txtTrainingFrom.Text = Convert.ToString(row["TrainingFrom"]);
                    txtTrainingTo.Text = Convert.ToString(row["TrainingTo"]);
                    divOffline.Visible = true;
                    divOnlline.Visible = false;
                }
                else if (Convert.ToString(row["ModeOFTraining"]) == "Online")
                {
                    txtOnlineCertificateId.Text = Convert.ToString(row["CertificateId"]);
                    txtOnlineStudentName.Text = Convert.ToString(row["StudentName"]);
                    txtOnlineProjectName.Text = Convert.ToString(row["ProjectName"]);
                    txtOnlineCourse.Text = Convert.ToString(row["Course"]);
                    txtDateOfIssue.Text = Convert.ToString(row["DateOfIssue"]);
                    divOffline.Visible = false;
                    divOnlline.Visible = true;
                }
            }

        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "No Record";
        }

    }
}