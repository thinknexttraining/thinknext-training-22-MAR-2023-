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

public partial class Admin_AdminPersonalProfile : System.Web.UI.Page
{

    string varIP = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        //Session.Timeout = 300;
        //if (Session["myck"] == null)
        //{
        //    Response.Redirect("~/default.aspx");
        //}
        Session.Timeout = 300;
if ((Session["myck"] == "") || (Session["myck"] == null))
        {
            Response.Redirect("~/default.aspx");
        }

        string Idno = null;
        Idno = Session["myck"].ToString();
        varIP = Request.ServerVariables["SERVER_NAME"].ToString();
        PersonalDetail();

    }


    public void PersonalDetail()
    {
        Image1.ImageUrl = "~/Image.aspx?ImageID=" + Session["myck"].ToString() + "";
        string sql = null;
        SqlDataAdapter da = default(SqlDataAdapter);
        DataSet ds = default(DataSet);

        //varIP == Request.ServerVariables["SERVER_NAME"].ToString();
        SqlConnection Con = default(SqlConnection);
        Class1 varClass1 = new Class1();
        Con = new SqlConnection(varClass1.GetConnectionString(varIP));
        Con.Open();
        if (Session["myck"].ToString() !="")
        {
            sql = " select *  from Staff where IDNo=" + Session["myck"].ToString() + " and FranchiseCode='TNK101' and BrandName='THINKNEXT TRAINING'";
            da = new SqlDataAdapter(sql, Con);
            ds = new DataSet();
            da.Fill(ds, "Staff");
            if (ds.Tables["Staff"].Rows.Count == 0)
            {
                lblMsg.Visible = true;
                lblMsg.Text = "No records found";
                return;
            }
            lblMsg.Visible = false;
            txtIDNo.Text = Session["myck"].ToString();
            if (ds.Tables["Staff"].Rows[0]["ContactNo"].ToString() !="")
            {
                txtContactNo.Text = ds.Tables["Staff"].Rows[0]["ContactNo"].ToString();
            }
            else
            {
                txtContactNo.Text = "";
            }
            if (ds.Tables["Staff"].Rows[0]["CorrespondanceAddress"].ToString() != "")
            {
                txtCorrspondanceAddress.Text = ds.Tables["Staff"].Rows[0]["CorrespondanceAddress"].ToString();
            }
            else
            {
                txtCorrspondanceAddress.Text = "";
            }
            if (ds.Tables["Staff"].Rows[0]["Designation"].ToString() != "")
            {
                txtDesignation.Text = ds.Tables["Staff"].Rows[0]["Designation"].ToString();
            }
            else
            {
                txtDesignation.Text = "";
            }
            if (ds.Tables["Staff"].Rows[0]["EMailID"].ToString() != "")
            {
                txtEMailID.Text = ds.Tables["Staff"].Rows[0]["EMailID"].ToString();
            }
            else
            {
                txtEMailID.Text = "";
            }
            if (ds.Tables["Staff"].Rows[0]["FatherName"].ToString() != "")
            {
                txtFatherName.Text = ds.Tables["Staff"].Rows[0]["FatherName"].ToString();
            }
            else
            {
                txtFatherName.Text = "";
            }
            if (ds.Tables["Staff"].Rows[0]["Gender"].ToString() != "")
            {
                txtGender.Text = ds.Tables["Staff"].Rows[0]["Gender"].ToString();
            }

                //====================================================================================
            else
            {
                txtGender.Text = "";
            }
            if (ds.Tables["Staff"].Rows[0]["Locked"].ToString() != "")
            {
                txtLocked.Text = ds.Tables["Staff"].Rows[0]["Locked"].ToString();
            }
            else
            {
                txtLocked.Text = "";
            }
            if (ds.Tables["Staff"].Rows[0]["MobileNo"].ToString() != "")
            {
                txtMobileNo.Text = ds.Tables["Staff"].Rows[0]["MobileNo"].ToString();
            }
            else
            {
                txtMobileNo.Text = "";
            }
            if (ds.Tables["Staff"].Rows[0]["Name"].ToString() != "")
            {
                txtName.Text = ds.Tables["Staff"].Rows[0]["Name"].ToString();
            }
            else
            {
                txtName.Text = "";
            }
            if (ds.Tables["Staff"].Rows[0]["PermanentAddress"].ToString() != "")
            {
                txtPermanentAddress.Text = ds.Tables["Staff"].Rows[0]["PermanentAddress"].ToString();
            }
            else
            {
                txtPermanentAddress.Text = "";
            }
            if (ds.Tables["Staff"].Rows[0]["PreviousExperience"].ToString() != "")
            {
                txtPreviousExperience.Text = ds.Tables["Staff"].Rows[0]["PreviousExperience"].ToString();
            }
            else
            {
                txtPreviousExperience.Text = "";
            }
            if (ds.Tables["Staff"].Rows[0]["Qualification"].ToString() != "")
            {
                txtQualification.Text = ds.Tables["Staff"].Rows[0]["Qualification"].ToString();
            }
            else
            {
                txtQualification.Text = "";
            }
            if (ds.Tables["Staff"].Rows[0]["Type"].ToString() != "")
            {
                txtType.Text = ds.Tables["Staff"].Rows[0]["Type"].ToString();
            }
            else
            {
                txtType.Text = "";
            }
            if (ds.Tables["Staff"].Rows[0]["BloodGroup"].ToString() != "")
            {
                txtBloodGroup1.Text = ds.Tables["Staff"].Rows[0]["BloodGroup"].ToString();
            }
            else
            {
                txtBloodGroup1.Text = "";
            }
            if (ds.Tables["Staff"].Rows[0]["DateOfBirth"].ToString() != "")
            {
                string VAL;
                txtDob1.Text = ds.Tables["Staff"].Rows[0]["DateOfBirth"].ToString();
                VAL = ds.Tables["Staff"].Rows[0]["DateOfBirth"].ToString();
            }
            else
            {
                txtDob1.Text = "";
            }
        }
        else
        {
            Response.Redirect("~/Default.aspx");
        }
        Con.Close();
    }



    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/CreateProfile.aspx");
    }


    protected void btnUpload_Click(object sender, System.EventArgs e)
    {
        selectemails.Style.Add("display", "block");
        if (imguploder.HasFile)
        {
            int length = imguploder.PostedFile.ContentLength;
            byte[] imgbyte = new byte[length];
            HttpPostedFile img = imguploder.PostedFile;
            img.InputStream.Read(imgbyte, 0, length);
            //Dim connection As New SqlConnection("Data Source=dbthinknextcard.db.11478413.hostedresource.com;Initial Catalog=dbthinknextcard;Persist Security Info=True;User ID=dbthinknextcard;Password=smartBSS123!@#")
            SqlConnection connection = new SqlConnection("Data Source=103.21.58.193;Initial Catalog=dbthinknex;Persist Security Info=True;User ID=thinknex;Password=techsmart?;");
            //SqlConnection connection = new SqlConnection("Data Source=192.168.137.113;Initial Catalog=ThinkNext;Persist Security Info=True;User ID=sa;Password=b2y3rt78374&*#&$;");
            connection.Open();
            SqlCommand cmd = new SqlCommand("update Staff set Snap=@Snap where IDNo=" + Session["myck"].ToString() + "and FranchiseCode='TNK101' and BrandName='THINKNEXT TRAINING'", connection);
            cmd.Parameters.AddWithValue("@Snap", imgbyte);
            int count = cmd.ExecuteNonQuery();
            connection.Close();
            if (count == 1)
            {
                lblMsg.Text = "Image has been uploaded successfully";
                selectemails.Style.Add("display", "none");
                PersonalDetail();
            }
        }
    }

}
