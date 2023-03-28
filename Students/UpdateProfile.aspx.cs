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
using System.Globalization;
public partial class Students_UpdateProfile : System.Web.UI.Page
{
    string a = "";
    string varIP;
    static Int32 dat = 0;
    protected void Page_Load(object sender, EventArgs e)
    {


        if (Session["myck"] == null)
        {
            Response.Redirect("~/Default.aspx");
        
        }
       
        if (!IsPostBack)
        {
           
            
            if (Session["Update"].ToString() != "")
            {
             
                PersonalDetail();
            }
            else
            {
                Response.Redirect("~/Student/PersonalProfile.aspx");
            }
            
        }

    }

    public void PersonalDetail()
    {
        string sql = null;
        SqlDataAdapter da = default(SqlDataAdapter);
        DataSet ds = new DataSet();
        varIP = Request.ServerVariables["SERVER_NAME"].ToString();
        SqlConnection Con = default(SqlConnection);
        Class1 varClass1 = new Class1();
        Con = new SqlConnection(varClass1.GetConnectionString(varIP));
        Con.Open();
        if (!string.IsNullOrEmpty(Session["myck"].ToString()))
        {
            sql = " select *  from Admissions where IDNo=" + Session["myck"].ToString();
            //sql = "select StudentName,FatherName,Course,CollegeName,BatchTiming,ContactNo,UniRollNo,BatchGroup,AdmissionDate,FatherMobileNo,EmailID,Convert(varchar(10),DOB,103) as DOB,TrainingBatch,Sex,MotherName,FatherOccupation,CorrespondanceAddress,PermanentAddress,Training,IDNo from Admissions where IDNo=" + Request.Cookies["Myck"].Value.ToString();
            da = new SqlDataAdapter(sql, Con);
            //ds = new DataSet();
            da.Fill(ds, "Admissions");
            if (ds.Tables["Admissions"].Rows.Count == 0)
            {
                lblMsg.Visible = true;
                lblMsg.Text = "No records found";
                return;
            }
            lblMsg.Visible = false;
            txtIDNo.Text = Session["myck"].ToString();
            //if(ds.Tables["tablename"].Rows[0].Item["Columnname"] blabla==null)
            if (ds.Tables["Admissions"].Rows[0]["IDNo"].ToString()!= "")
            {
                txtIDNo.Text = ds.Tables["Admissions"].Rows[0]["IDNo"].ToString();
            }
            else
            {
                txtIDNo.Text = "";
            }

            if (ds.Tables["Admissions"].Rows[0]["StudentName"].ToString()!= "")
            {
                txtName.Text = ds.Tables["Admissions"].Rows[0]["StudentName"].ToString();
            }
            else
            {
                txtName.Text = "";
            }

            if (ds.Tables["Admissions"].Rows[0]["UniRollNo"].ToString()!= "")
            {
                txtUnirollno.Text = ds.Tables["Admissions"].Rows[0]["UniRollNo"].ToString();
            }
            else
            {
                txtUnirollno.Text = "";
            }

            if (ds.Tables["Admissions"].Rows[0]["Qualification"].ToString()!= "")
            {
                txtCourse.Text = ds.Tables["Admissions"].Rows[0]["Qualification"].ToString();
            }
            else
            {
                txtCourse.Text = "";
            }
            if (ds.Tables["Admissions"].Rows[0]["CollegeName"].ToString()!= "")
            {
                txtCollegeName.Text = ds.Tables["Admissions"].Rows[0]["CollegeName"].ToString();
            }
            else
            {
                txtCollegeName.Text = "";
            }
            if (ds.Tables["Admissions"].Rows[0]["ContactNo"].ToString()!= "")
            {
                txtMobileNo.Text = ds.Tables["Admissions"].Rows[0]["ContactNo"].ToString();
            }
            else
            {
                txtMobileNo.Text = "";
            }
            if (ds.Tables["Admissions"].Rows[0]["Course"].ToString()!= "")
            {
                txtTraining.Text = ds.Tables["Admissions"].Rows[0]["Course"].ToString();
            }
            else
            {
                txtTraining.Text = "";
            }
            if (ds.Tables["Admissions"].Rows[0]["FatherMobileNo"].ToString() != "")
            {
                txtFathermobileno.Text = ds.Tables["Admissions"].Rows[0]["FatherMobileNo"].ToString();
            }
            else
            {
                txtFathermobileno.Text = "";
            }

            if (ds.Tables["Admissions"].Rows[0]["EmailID"].ToString() != "")
            {
                txtemailid.Text = ds.Tables["Admissions"].Rows[0]["EmailID"].ToString();
            }
            else
            {
                txtemailid.Text = "";
            }
            if (ds.Tables["Admissions"].Rows[0]["Duration"].ToString() != "")
            {
                txtTrainingType.Text = ds.Tables["Admissions"].Rows[0]["Duration"].ToString();
            }
            else
            {
                txtTrainingType.Text = "";
            }

            //if (ds.Tables["Admissions"].Rows[0]["Batch"] == "")
            //{
            //    txtBatch.Text = ds.Tables["Admissions"].Rows[0]["Batch"].ToString();
            //}
            //else
            //{
            //    txtBatch.Text = "";
            //}
            if (ds.Tables["Admissions"].Rows[0]["Sex"].ToString() != "")
            {
                ddlgender.Text = ds.Tables["Admissions"].Rows[0]["Sex"].ToString();
            }
            else
            {
                ddlgender.Text = "";
            }

            //if (ds.Tables["Admissions"].Rows[0]["BatchTiming"]!= "")
            //{
            //    txtBatchTime.Text = ds.Tables["Admissions"].Rows[0]["BatchTiming"].ToString();
            //}
            //else
            //{
            //    txtBatchTime.Text = "";
            //}

            if (ds.Tables["Admissions"].Rows[0]["MotherName"].ToString() != "")
            {
                txtMotherName.Text = ds.Tables["Admissions"].Rows[0]["MotherName"].ToString();
            }
            else
            {
                txtMotherName.Text = "";
            }

            if (ds.Tables["Admissions"].Rows[0]["AdmissionDate"].ToString() != "")
            {


                txtAdmissionDate.Text = ds.Tables["Admissions"].Rows[0]["AdmissionDate"].ToString();
                //string b = "";
                //for (int i = 0; i <= txtAdmissionDate.Text.Length; i++)
                //{
                //    b = b + txtAdmissionDate.Text[i];
                //    if (i == 10)
                //    {
                //        break;
                //    }
                //}
                //txtAdmissionDate.Text = b;
            }
            else
            {
                txtAdmissionDate.Text = "";
            }
            if (ds.Tables["Admissions"].Rows[0]["FatherName"].ToString() != "")
            {
                txtFatherName.Text = ds.Tables["Admissions"].Rows[0]["FatherName"].ToString();
            }
            else
            {
                txtFatherName.Text = "";
            }
            if (ds.Tables["Admissions"].Rows[0]["FatherOccupation"].ToString() != "")
            {
                txtFatherOccupation.Text = ds.Tables["Admissions"].Rows[0]["FatherOccupation"].ToString();

            }
            else
            {
                txtFatherOccupation.Text = "";
            }
            if (ds.Tables["Admissions"].Rows[0]["BatchGroup"].ToString() != "")
            {
                txtBatch.Text = ds.Tables["Admissions"].Rows[0]["BatchGroup"].ToString();
            }
            else
            {
                txtBatch.Text = "";
            }
            if (ds.Tables["Admissions"].Rows[0]["CorrespondanceAddress"].ToString() != "")
            {
                txtCorrspondanceAddress.Text = ds.Tables["Admissions"].Rows[0]["CorrespondanceAddress"].ToString();
            }
            else
            {
                txtCorrspondanceAddress.Text = "";
            }
            if (ds.Tables["Admissions"].Rows[0]["PermanentAddress"].ToString() != "")
            {
                txtpermanentaddress.Text = ds.Tables["Admissions"].Rows[0]["PermanentAddress"].ToString();
            }
            else
            {
                txtpermanentaddress.Text = "";
            }
            //if (ds.Tables["Admissions"].Rows[0]["DOB"]!= "")
            //{

              
                
            //    txtdob.Text = ds.Tables["Admissions"].Rows[0]["DOB"].ToString();

            //    //DateTime date = Convert.ToDateTime(txtdob.Text);
            //    //String yourdate = txtdob.Text;
            //    //System.Globalization.CultureInfo provider = System.Globalization.CultureInfo.InvariantCulture;
            //    //DateTime formatted = DateTime.ParseExact(yourdate, "MM/dd/yyyy", provider);
            //    //string DOB = formatted.ToString();

            //    //txtdob.Text = txtdob.Text.Substring(txtdob.Text.LastIndexOf('/'), 6);
            //    string[] b = txtdob.Text.Split('/');
            //    txtdob.Text = b[1] + "/" + b[0] + "/" + b[2];
            //    for (int i = 0; i <= txtdob.Text.Length; i++)
            //    {
            //        a = a + txtdob.Text[i];
            //        if (i == 10)
            //        {
            //            break;
            //        }
            //    }

            //    txtdob.Text = a;
            //    //DateTime formatted = DateTime.ParseExact(txtdob.Text, "MM/dd/yyyy", provider);
           
            //}
            //else
            //{
            //    txtdob.Text = "";
            //}

        }
        else
        {
            Response.Redirect("Home.aspx");
        }
        //If Page.IsPostBack = False Then
        Con.Close();
        //If Request.Cookies("Myck").Value <> "" Then
        //    Session["StudentID"] = Request.Cookies("Myck").Value.ToString
        //    Image1.ImageUrl = "~/Image.aspx?ImageID=" & Session["StudentID"].ToString
        //End If
    }

    //============Update Student Profile===========

    public void Updateprofile()
    {
        SqlConnection con = default(SqlConnection);
        string sql = null;
        SqlCommand cmd = default(SqlCommand);
        Class1 varClass1 = new Class1();
        con = new SqlConnection(varClass1.GetConnectionString(varIP));
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
        if (string.IsNullOrEmpty(txtMobileNo.Text))
        {
            lblMsg.Visible = true;
            lblMsg.Text = "Specify mobile no.";
            return;
        }
        else
        {
            if ((System.Text.RegularExpressions.Regex.IsMatch(txtMobileNo.Text, "^[0-9-,]+$")) == false)
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
        sql = "Update Admissions set StudentName=@StudentName,FatherName=@FatherName,Course=@Course,Batch=@Batch,UniRollNo=@UniRollNo,CollegeName=@CollegeName,ContactNo=@ContactNo,FatherMobileNo=@FatherMobileNo,EmailID=@EmailID,Duration=@Duration,Sex=@Sex,MotherName=@MotherName,FatherOccupation=@FatherOccupation,CorrespondanceAddress=@CorrespondanceAddress,PermanentAddress=@PermanentAddress ,FranchiseCode='" + txtfranchise.Text + "',BrandName='" + txtbrand.Text + "' where IDNo=@IDNo";
        cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@IDNo", txtIDNo.Text);
        if (!string.IsNullOrEmpty(txtName.Text))
        {
            cmd.Parameters.AddWithValue("@StudentName", txtName.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@StudentName", DBNull.Value);
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
        if (!string.IsNullOrEmpty(txtCourse.Text))
        {
            cmd.Parameters.AddWithValue("@Course", txtCourse.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@Course", DBNull.Value);
        }
        if (!string.IsNullOrEmpty(txtBatch.Text))
        {
            cmd.Parameters.AddWithValue("@Batch", txtBatch.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@Batch", DBNull.Value);
        }
        //=========================================
        if (!string.IsNullOrEmpty(txtUnirollno.Text))
        {
            cmd.Parameters.AddWithValue("@UniRollNo", txtUnirollno.Text);
        }
        else 
        {
            cmd.Parameters.AddWithValue("@UniRollNo", DBNull.Value);
        }
        //=================================================
        if (!string.IsNullOrEmpty(txtCollegeName.Text))
        {
            cmd.Parameters.AddWithValue("@CollegeName", txtCollegeName.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@CollegeName", DBNull.Value);
        }
        if (!string.IsNullOrEmpty(txtMobileNo.Text))
        {
            cmd.Parameters.AddWithValue("@ContactNo", txtMobileNo.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@ContactNo", DBNull.Value);
        }
        if (!string.IsNullOrEmpty(txtFathermobileno.Text))
        {
            cmd.Parameters.AddWithValue("@FatherMobileNo", txtFathermobileno.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@FatherMobileNo", DBNull.Value);
        }
        if (!string.IsNullOrEmpty(txtemailid.Text))
        {
            cmd.Parameters.AddWithValue("@EmailID", txtemailid.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@EmailID", DBNull.Value);
        }
        //if (!string.IsNullOrEmpty(txtdob.Text))
        //{
        //        System.Globalization.CultureInfo provider1 = System.Globalization.CultureInfo.InvariantCulture;

        //        DateTime ds1 = DateTime.ParseExact(txtdob.Text, "MM/dd/yyyy", provider1);

        //        cmd.Parameters.AddWithValue("@DOB",  ds1);
    
        //}
        //else
        //{
        //    cmd.Parameters.AddWithValue("@DOB", DBNull.Value);
        //}
        if (!string.IsNullOrEmpty(txtTrainingType.Text))
        {
            cmd.Parameters.AddWithValue("@Duration", txtTrainingType.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@Duration", DBNull.Value);
        }
        if (!string.IsNullOrEmpty(ddlgender.Text))
        {
            cmd.Parameters.AddWithValue("@Sex", ddlgender.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@Sex", DBNull.Value);
        }
       
        if (!string.IsNullOrEmpty(txtFatherOccupation.Text))
        {
            cmd.Parameters.AddWithValue("@FatherOccupation", txtFatherOccupation.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@FatherOccupation", DBNull.Value);
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
        lblMsg.Text = "Data updated successfully";
        con.Close();
    }


    protected void btnSaveUpdate_Click(object sender, EventArgs e)
    {
        Updateprofile();
    }

} 

