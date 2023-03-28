using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

public partial class Admin_studentinfo : System.Web.UI.Page
{
    

    SqlConnection con = new SqlConnection();
    Class1 VarClass1 = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Timeout = 300;
        if ((Session["myck"].ToString() == "") || (Session["myck"].ToString() == null))
        {
            Response.Redirect("~/default.aspx");
        }
        //txtRandomid.Visible = false;
        con.ConnectionString = VarClass1.GetConnectionString("constr");
        //string randomid = GenerateID();
        //con.Open();
        //string qry = "select * from certificate where CertificateId= '" + randomid.ToString() + "'";
        //SqlCommand cmd = new SqlCommand(qry, con);
        ////SqlDataAdapter adp = new SqlDataAdapter();
        //SqlDataReader sdr = cmd.ExecuteReader();
        //// Response.Redirect("Default.aspx");
        //if (sdr.HasRows)
        //{
        //    GenerateID();
        //}
        //else
        //{
        //    txtcertificate.Text = randomid.ToString();

        //}
        }

    public string GenerateID()
    {
        string IDLengthI = "6";
        string NewID = "";

        string allowedChars = "";
        allowedChars = "1,2,3,4,5,6,7,8,9,0";
        //allowedChars += "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,";
        //allowedChars += "a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,";


        char[] sep = {
            ','
        };
        string[] arr = allowedChars.Split(sep);


        string IDString = "";
        string temp = "";

        Random rand = new Random();

        for (int i = 0; i < Convert.ToInt32(IDLengthI); i++)
        {
            temp = arr[rand.Next(0, arr.Length)];
            IDString += temp;
            NewID = IDString;

        }
        return NewID;
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        if(ddlModeOfTraining.Text =="Select"){
            validlabel.Visible = true;
            validlabel.Text = "Please Mode Of Training";
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
            btnSubmit.Enabled = true; 
        }
       else  if (txtcertificate.Text == string.Empty || txtstudent.Text == string.Empty ){
            validlabel.Visible = true;
            validlabel.Text = "Please Enter CertificateID OR Student Name";
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
            btnSubmit.Enabled = true;
        }
        else if (txtcoursename.Text == string.Empty){
            validlabel.Visible = true;
            validlabel.Text = "Please Enter CourseName";
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
            btnSubmit.Enabled = true;
        }
        else if(ddlModeOfTraining.Text == "Offline"){
            if (txttrainingfrom.Text == string.Empty || txttrainingto.Text == string.Empty){
                validlabel.Visible = true;
                validlabel.Text = "Please Select Date";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
                btnSubmit.Enabled = true;
            }
            else if (txtFatherName.Text == string.Empty)
            {
                validlabel.Visible = true;
                validlabel.Text = "Please Enter FatherName";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
                btnSubmit.Enabled = true;
            }
            else
            {
                InsertData();
                btnSubmit.Enabled = true;
            }
            
        }
        else if (ddlModeOfTraining.Text == "Online"){
            if (txttrainingto.Text == string.Empty){
                validlabel.Visible = true;
                validlabel.Text = "Please Select Date";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
                btnSubmit.Enabled = true;
            }
            else{
                InsertData();
                btnSubmit.Enabled = true;
            }
        }
    }
    public void InsertData(){
        btnGenerate.Visible = true;
        SqlConnection con = new SqlConnection();
        Class1 VarClass = new Class1();
        con.ConnectionString = VarClass1.GetConnectionString("constr");
        con.Open();
        string sql = "insert into CertificateNew (CertificateId,StudentName,FatherName,ProjectName,TrainingFrom,TrainingTo,DateOfIssue,Course,ModeOFTraining,DateEntry) values (@CertificateId,@StudentName,@FatherName,@ProjectName,@TrainingFrom,@TrainingTo,@DateOfIssue,@Course,@ModeOFTraining,@DateEntry)";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@CertificateId", Convert.ToInt32(txtcertificate.Text));
        cmd.Parameters.AddWithValue("@StudentName", txtstudent.Text);
        cmd.Parameters.AddWithValue("@ProjectName", txtprojectname.Text);
        if (ddlModeOfTraining.Text == "Offline")
        {
            var dt = txttrainingfrom.Text;
            var dt1 = txttrainingto.Text;
            cmd.Parameters.AddWithValue("@TrainingFrom", dt);
            cmd.Parameters.AddWithValue("@TrainingTo", dt1);
            cmd.Parameters.AddWithValue("@DateOfIssue", DBNull.Value);
            cmd.Parameters.AddWithValue("@FatherName", txtFatherName.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@TrainingFrom", DBNull.Value);
            cmd.Parameters.AddWithValue("@TrainingTo", DBNull.Value);
            cmd.Parameters.AddWithValue("@DateOfIssue", Convert.ToDateTime(txttrainingto.Text));
            cmd.Parameters.AddWithValue("@FatherName", DBNull.Value);

        }
        cmd.Parameters.AddWithValue("@Course", txtcoursename.Text);
        cmd.Parameters.AddWithValue("@ModeOFTraining", ddlModeOfTraining.Text);
        cmd.Parameters.AddWithValue("@DateEntry", VarClass.dnow());
        cmd.ExecuteNonQuery();
        con.Close();
        cmd.Dispose();
        validlabel.Visible = true;
        validlabel.Text = "Data Saved Successfully";
        clear();
        ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
    }
    public void clear()
    {
        txtcertificate.Text = "";
        txtstudent.Text = "";
        txtprojectname.Text = "";
        txttrainingfrom.Text = "";
        txttrainingto.Text = "";
        txtcoursename.Text = "";
        txtFatherName.Text = "";
        ddlModeOfTraining.Text = "Select";
    }

    public void checkAlreadyExist()
    {
        con.Open();
        string qry = "select * from certificate where CertificateId= '" + txtcertificate.Text + "'";
        SqlCommand cmd = new SqlCommand(qry, con);


        //SqlDataAdapter adp = new SqlDataAdapter();
        SqlDataReader sdr = cmd.ExecuteReader();
        // Response.Redirect("Default.aspx");
        if (sdr.HasRows)
        {
            validlabel.Text = "Certificate ID Already Exist";
            validlabel.Visible = true;
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);

        }
        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //btnGenerate.Visible = false;
        //txtRandomid.Visible = true;
        validlabel.Visible = false;
        string randomid = GenerateID();
        con.Open();
        string qry = "select * from certificate where CertificateId= '" + randomid.ToString() + "'";
        SqlCommand cmd = new SqlCommand(qry, con);


        //SqlDataAdapter adp = new SqlDataAdapter();
        SqlDataReader sdr = cmd.ExecuteReader();
        // Response.Redirect("Default.aspx");
        if (sdr.HasRows)
        {
            GenerateID();

        }
        else
        {
            txtRandomid.Text = "";
            txtcertificate.Text = randomid.ToString();
            txtRandomid.Text = randomid.ToString();

        }
    }

    protected void ddlModeOfTraining_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlModeOfTraining.Text == "Online")
        {
            lblTrainingFrom.Visible = false;
            txttrainingfrom.Visible = false;
            lblTrainingTo.Text = "DATE OF ISSUE";
            validlabel.Visible = true;
            validlabel.Text = "";
            trngfromrow.Style["display"] = "none";
           fatherNamerow.Style["display"] = "none";
        }
        else
        {
            lblTrainingFrom.Visible = true;
            txttrainingfrom.Visible = true;
            lblTrainingTo.Text = "TRAINING  TO";
            validlabel.Visible = true;
            validlabel.Text = "";
            trngfromrow.Style["display"] = "table-row";
            fatherNamerow.Style["display"] = "table-row";
        }
    }
}