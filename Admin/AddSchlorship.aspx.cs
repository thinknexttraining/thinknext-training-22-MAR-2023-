using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.Data.Common;
public partial class AddSchlorship : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    Class1 varclass = new Class1();
    DataTable Dt;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Timeout = 300;
        if (Session["myck"] == "")
        {
            Response.Redirect("~/default.aspx");
        }


        con.ConnectionString = varclass.GetConnectionString("");
    }
    private void InsertData()
    {
        for (int i = 0; i < Dt.Rows.Count; i++)
        {
            DataRow row = Dt.Rows[i];
            int columnCount = Dt.Columns.Count;
            string[] columns = new string[columnCount];
            for (int j = 0; j < columnCount; j++)
            {
                columns[j] = row[j].ToString();
            }
            con.Open();
            string sql = "Insert into MasterSchlorship(StudentName,CollegeName,Qualification,PercantageOff,TestDate,DateEntry)";
            sql += "VALUES('" + columns[0] + "','" + columns[1] + "','" + columns[2] + "','" + columns[3] + "','" + columns[4] + "','"+columns[5]+"')";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            con.Close();
            lblmsg.Text = "Data Successfully Inserted ";
        }

    }
    private void ImporttoDatatable()
    {
        try
        {
            if (FileUploadExcelFile.HasFile)
            {
                string FileName = FileUploadExcelFile.FileName;
                string path = string.Concat(Server.MapPath(FileUploadExcelFile.FileName));
                FileUploadExcelFile.PostedFile.SaveAs(path);
                OleDbConnection OleDbcon = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + path + ";Extended Properties=Excel 12.0;");
                OleDbCommand cmd = new OleDbCommand("SELECT * FROM [Sheet1$]", OleDbcon);
                OleDbDataAdapter objAdapter1 = new OleDbDataAdapter(cmd);
                ds = new DataSet();
                objAdapter1.Fill(ds);
                Dt = ds.Tables[0];
            }
        }
        catch (Exception ex)
        {
            //throw ex;
        }
    }
    protected void btnaddschloership_Click(object sender, EventArgs e)
    {
        if (txtname.Text == string.Empty)
        {
            lblmsg.Text = "Please Enter the Student Name";
            return;
        }
        if (txtcollegename.Text == string.Empty)
        {
            lblmsg.Text = "Please Enter the Colleg Name";
            return;
        }
        if (txtcourse.Text == string.Empty)
        {
            lblmsg.Text = "Please Enter the Course";
            return;
        }
        if (txtpercantageoff.Text == string.Empty)
        {
            lblmsg.Text = "Please Enter the Percatage Off";
            return;
        }
        if (txttestdate.Text == string.Empty)
        {
            lblmsg.Text = "Please Enter the Test Date";
            return;
        }
        if (txtdateentry.Text == string.Empty)
        {
            lblmsg.Text = "Please Enter the Date Entry";
            return;
        }
        string query = "Insert into MasterSchlorship(StudentName,CollegeName,Qualification,PercantageOff,TestDate,DateEntry)values(@StudentName,@CollegeName,@Qualification,@PercantageOff,@TestDate,@DateEntry)";
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();
        cmd.Parameters.AddWithValue("@StudentName", txtname.Text);
        cmd.Parameters.AddWithValue("@CollegeName", txtcollegename.Text);
        cmd.Parameters.AddWithValue("@Qualification", txtcourse.Text);
        cmd.Parameters.AddWithValue("@PercantageOff", txtpercantageoff.Text + "%");
        cmd.Parameters.AddWithValue("@TestDate", txttestdate.Text);
        cmd.Parameters.AddWithValue("@DateEntry", txtdateentry.Text);
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
        lblmsg.Text = "Schlorship Successfully Added";
        CleartextBoxes(this);
    }
    public void CleartextBoxes(Control parent)
    {

        foreach (Control c in parent.Controls)
        {
            if ((c.GetType() == typeof(TextBox)))
            {

                ((TextBox)(c)).Text = "";
            }

            if (c.HasControls())
            {
                CleartextBoxes(c);
            }
        }
    }
    protected void chkexcel_CheckedChanged(object sender, EventArgs e)
    {
        if (chkexcel.Checked == true)
        {
            lblfirstmessage.Visible = true;
            lblsecondmsg.Visible = true;
            lblthirdmsg.Visible = true;
            FileUploadExcelFile.Visible = true;
            btnimport.Visible = true;
            lblselect.Visible = true;
        }
        else
        {
            lblfirstmessage.Visible = false ;
            lblsecondmsg.Visible = false ;
            lblthirdmsg.Visible = false ;
            FileUploadExcelFile.Visible = false ;
            btnimport.Visible = false ;
            lblselect.Visible = false;
        }
    }
    protected void btnimport_Click(object sender, EventArgs e)
    {
        ImporttoDatatable();
        InsertData();
    }
}