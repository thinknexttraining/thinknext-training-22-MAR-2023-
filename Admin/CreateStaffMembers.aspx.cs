using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Admin_CreateStaffMembers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetIdNO();
        }

    }
    public void saveprofile()
    {
        SqlConnection con = default(SqlConnection);
        string sql = null;
        SqlCommand cmd = default(SqlCommand);
        Class1 varClass1 = new Class1();
        con = new SqlConnection(varClass1.GetConnectionString(""));
        con.Open();
        if (txtName.Text.Contains("'"))
        {
            lblMsg.Visible = true;
            lblMsg.Text = "Enter Name in Correct Format";
            return;
        }
        if (string.IsNullOrEmpty(txtFatherName.Text))
        {
            lblMsg.Visible = true;
            lblMsg.Text = "Enter Father Name";
            return;
        }
        if (string.IsNullOrEmpty(txtpermanentaddress.Text))
        {
            lblMsg.Visible = true;
            lblMsg.Text = "Enter Permanent Address";
            return;
        }
        if (txtMotherName.Text.Contains("'"))
        {
            lblMsg.Visible = true;
            lblMsg.Text = "Enter Mother Name in Correct Format";
            return;
        }
        if (txtFatherName.Text.Contains("'"))
        {
            lblMsg.Visible = true;
            lblMsg.Text = "Enter Father Name in Correct Format";
            return;
        }
        if (string.IsNullOrEmpty(txtmobileno.Text))
        {
            lblMsg.Visible = true;
            lblMsg.Text = "Specify mobile no.";
            return;
        }
        else
        {
            if ((System.Text.RegularExpressions.Regex.IsMatch(txtmobileno.Text, "^[0-9-,]+$")) == false)
            {
                lblMsg.Visible = true;
                lblMsg.Text = "Specify mobile no. in correct format";
                return;
            }
        }

        if (!string.IsNullOrEmpty(txtemailid.Text))
        {
            if ((System.Text.RegularExpressions.Regex.IsMatch(txtemailid.Text, "^[a-zA-Z0-9.@\\-_]+$")) == false)
            {
                lblMsg.Visible = true;
                lblMsg.Text = "Specify email id in correct format";
                return;
            }
        }
        sql = "Insert into Staff (IDNo,Name,FatherName,MotherName,Designation,Type,Gender,CorrespondanceAddress,PermanentAddress,ContactNo,MobileNo,EmailID,DateOfBirth,BloodGroup,SalaryAtPresent,Qualification,PreviousExperience,FranchiseCode,BrandName) values (@IDNo1,@Name,@FatherName,@MotherName,@Designation,@Type,@Gender,@CorrespondanceAddress,@PermanentAddress,@ContactNo,@MobileNo,@EmailID,@DateOfBirth,@BloodGroup,@SalaryAtPresent,@Qualification,@PreviousExperience,@FranchiseCode,@BrandName)";
        cmd = new SqlCommand(sql, con);

        cmd.Parameters.AddWithValue("@FranchiseCode", "TNK101");

        cmd.Parameters.AddWithValue("@BrandName", "THINKNEXT TRAINING");

        cmd.Parameters.AddWithValue("@IDNo1", txtIDNo.Text);
        if (!string.IsNullOrEmpty(txtName.Text))
        {
            cmd.Parameters.AddWithValue("@Name", txtName.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@Name", DBNull.Value);
        }
        if (!string.IsNullOrEmpty(txtFatherName.Text))
        {
            cmd.Parameters.AddWithValue("@FatherName", txtFatherName.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@FatherName", DBNull.Value);
        }
        if (!string.IsNullOrEmpty(txtMotherName.Text))
        {
            cmd.Parameters.AddWithValue("@MotherName", txtMotherName.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@MotherName", DBNull.Value);
        }
        if (!string.IsNullOrEmpty(txtDesignation.Text))
        {
            cmd.Parameters.AddWithValue("@Designation", txtDesignation.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@Designation", DBNull.Value);
        }
        if (!string.IsNullOrEmpty(txttype.Text))
        {
            cmd.Parameters.AddWithValue("@Type", txttype.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@Type", DBNull.Value);
        }
        if (!string.IsNullOrEmpty(txtContactNo.Text))
        {
            cmd.Parameters.AddWithValue("@ContactNo", txtContactNo.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@ContactNo", DBNull.Value);
        }
        if (!string.IsNullOrEmpty(txtmobileno.Text))
        {
            cmd.Parameters.AddWithValue("@MobileNo", txtmobileno.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@MobileNo", DBNull.Value);
        }
        if (!string.IsNullOrEmpty(txtemailid.Text))
        {
            cmd.Parameters.AddWithValue("@EmailID", txtemailid.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@EmailID", DBNull.Value);
        }
        if (txtDOB.Text!="")
        {
            DateTime Temp;


            if (DateTime.TryParse(txtDOB.Text, out Temp) == false)
            {
                lblMsg.Visible = true;
                lblMsg.Text = "Invalid Date";
                return;
           
            }
            lblMsg.Visible = false;
            //System.DateTime varDOB = default(System.DateTime);
            //varDOB = Convert.ToDateTime(txtdob.Text);
            cmd.Parameters.AddWithValue("@DateOfBirth", txtDOB.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@DateOfBirth", DBNull.Value);
        }
        if (!string.IsNullOrEmpty(ddlBloodGroup.Text))
        {
            cmd.Parameters.AddWithValue("@BloodGroup", ddlBloodGroup.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@BloodGroup", DBNull.Value);
        }
        if (!string.IsNullOrEmpty(ddlgender.Text))
        {
            cmd.Parameters.AddWithValue("@Gender", ddlgender.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@Gender", DBNull.Value);
        }
        if (!string.IsNullOrEmpty(txtpresentsalary.Text))
        {
            cmd.Parameters.AddWithValue("@SalaryAtPresent", txtpresentsalary.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@SalaryAtPresent", DBNull.Value);
        }
        if (!string.IsNullOrEmpty(txtqualification.Text))
        {
            cmd.Parameters.AddWithValue("@Qualification", txtqualification.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@Qualification", DBNull.Value);
        }
        if (!string.IsNullOrEmpty(txtexperience.Text))
        {
            cmd.Parameters.AddWithValue("@PreviousExperience", txtexperience.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@PreviousExperience", DBNull.Value);
        }
        if (!string.IsNullOrEmpty(txtCorrspondanceAddress.Text))
        {
            cmd.Parameters.AddWithValue("@CorrespondanceAddress", txtCorrspondanceAddress.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@CorrespondanceAddress", DBNull.Value);
        }
        if (!string.IsNullOrEmpty(txtpermanentaddress.Text))
        {
            cmd.Parameters.AddWithValue("@PermanentAddress", txtpermanentaddress.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@PermanentAddress", DBNull.Value);
        }


        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        lblMsg.Visible = true;
        lblMsg.Text = "Create Profile successfully";
        con.Close();
    }
    public void GetIdNO()
    {
        SqlConnection con =new SqlConnection();
        string sql = null;
        SqlCommand cmd = new SqlCommand();
        Class1 varClass1 = new Class1();
        con = new SqlConnection(varClass1.GetConnectionString(""));
        con.Open();
        sql = "select max(IDNo)+1 as IDNo from Staff where Franchisecode='TNK101' and BrandName='THINKNEXT TRAINING'";
        cmd = new SqlCommand(sql, con);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds= new DataSet();
        adp.Fill(ds, "Staff");
        if (ds.Tables["Staff"].Rows.Count > 0)
        {
            txtIDNo.Text = ds.Tables["Staff"].Rows[0]["IDNo"].ToString();
           
        }
        else 
        {
            lblMsg.Text = "IDNo Not exists";
        }
    }





    protected void btnAddProfile_Click(object sender, EventArgs e)
    {
        saveprofile();
    }
}
