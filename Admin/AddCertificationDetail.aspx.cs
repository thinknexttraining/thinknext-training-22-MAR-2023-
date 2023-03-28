using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_AddCertificationDetail : System.Web.UI.Page
{
    Class1 varclass = new Class1();
    SqlConnection con = new SqlConnection();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Timeout = 300;
        if (Session["myck"] == "")
        {
            Response.Redirect("~/default.aspx");
        }
        con.ConnectionString = varclass.GetConnectionString("");
        con.Open();
        txtTFrom.Text = DateTime.Today.ToString();
        txtTTO.Text = DateTime.Today.ToString();
        if (!IsPostBack)
        {
            GetAllData();
        }
    }
    public void GetAllData()//convert(varchar(10),AddDate,103)
    {
        string query = "select SrNo,RefPreNo,RefNo,StudentName,FatherName,convert(varchar(10),TFrom,101) as TFrom,convert(varchar(10),TTo,101) as TTo,ProjectName,Course,Grade from certificateverification where BrandName='THINKNEXT TRAINING' and FranchiseCode='TNK101'";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "certificateverification ");
        if (ds.Tables["certificateverification "].Rows.Count > 0)
        {
            GridCerti.DataSource = ds;
            GridCerti.DataBind();
            lblmsg.Visible = true;
            lblmsg.Text = "Total Records are:" + ds.Tables["certificateverification "].Rows.Count.ToString();

        }
        else
        {
            lblmsg.Visible = true;
            lblmsg.Text = "No Record Found.";
        }
 
    }



    protected void btnSave_Click(object sender, EventArgs e)
    {

        if(txtrefpreno.Text=="")
        {
            lblerror.Visible = true;
            lblerror.Text = "Please Enter RefPreno!!";
            return;
        }
        else if(txtrefno.Text=="")
        {
            lblerror.Visible = true;
            lblerror.Text = "Please Enter RefNo!!";
            return;
        }
        else if (txtStudentName.Text == "")
        {
            lblerror.Visible = true;
            lblerror.Text = "Please Enter Student Name!!";
            return;
        }

        else if (txtFathername.Text == "")
        {
            lblerror.Visible = true;
            lblerror.Text = "Please Enter Father Name!!";
            return;
        }
        else if (txtCourse.Text == "")
        {
            lblerror.Visible = true;
            lblerror.Text = "Please Enter Course!!";
            return;
        }
        else if (txtprojectName.Text == "")
        {
            lblerror.Visible = true;
            lblerror.Text = "Please Enter Project Name!!";
            return;
        }
        else if (txtTFrom.Text == "")
        {
            lblerror.Visible = true;
            lblerror.Text = "Please Enter Training From!!";
            return;
        }
        else if (txtTTO.Text == "")
        {
            lblerror.Visible = true;
            lblerror.Text = "Please Enter Training To!!";
            return;
        }
        else if (ddlGrade.Text == "Select Grade")
        {
            lblerror.Visible = true;
            lblerror.Text = "Please Select Grade!!";
            return;
        }
        else
        {
           
            string query = "Insert into certificateverification(RefPreNo,RefNo,StudentName,FatherName,TFrom,TTo,ProjectName,Course,Grade,FranchiseCode,BrandName)";
            query = query + " Values(@RefPreNo,@RefNo,@StudentName,@FatherName,@TFrom,@TTo,@ProjectName,@Course,@Grade,@FranchiseCode,@BrandName)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@RefPreNo",txtrefpreno.Text);
            cmd.Parameters.AddWithValue("@RefNo",txtrefno.Text);
            cmd.Parameters.AddWithValue("@StudentName",txtStudentName.Text);
            cmd.Parameters.AddWithValue("@FatherName",txtFathername.Text);
            cmd.Parameters.AddWithValue("@TFrom",txtTFrom.Text);
            cmd.Parameters.AddWithValue("@TTo",txtTTO.Text);
            cmd.Parameters.AddWithValue("@ProjectName",txtprojectName.Text);
            cmd.Parameters.AddWithValue("@Course",txtCourse.Text);
            cmd.Parameters.AddWithValue("@Grade",ddlGrade.Text);
            cmd.Parameters.AddWithValue("@FranchiseCode", "TNK101");
            cmd.Parameters.AddWithValue("@BrandName", "THINKNEXT TRAINING");
            //cmd.Parameters.AddWithValue("@",);
            cmd.ExecuteNonQuery();
            con.Close();
            Clear();
            lblerror.Visible = true;
            lblerror.Text = "DATA SAVE SUCCESSFULLY..";
            GetAllData();
        }
    }
    public void Clear()
    {
        txtrefpreno.Text = "";
        txtrefno.Text = "";
        txtStudentName.Text = "";
        txtFathername.Text = "";
        txtCourse.Text = "";
        txtprojectName.Text = "";
        txtprojectName.Text = "";
        txtTFrom.Text = "";
        txtTTO.Text = "";
        ddlGrade.SelectedIndex = 0;
    }

    protected void GridCerti_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridCerti.EditIndex = e.NewEditIndex;
        GetAllData();
    }
    protected void GridCerti_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label lblID = (Label)GridCerti.Rows[e.RowIndex].FindControl("lblID");
        string query = "Delete From certificateverification where SrNo='"+lblID.Text+"' And BrandName='THINKNEXT TRAINING' and FranchiseCode='TNK101'";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        GridCerti.EditIndex = -1;
        GetAllData();
    }
    protected void GridCerti_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridCerti.EditIndex = -1;
        GetAllData();
    }
    protected void GridCerti_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Label lblID = (Label)GridCerti.Rows[e.RowIndex].FindControl("lblID2");
        TextBox txtrefpno = (TextBox)GridCerti.Rows[e.RowIndex].FindControl("txtrefpno");
        TextBox txtRefno = (TextBox)GridCerti.Rows[e.RowIndex].FindControl("txtRefno");
        TextBox txtstuname = (TextBox)GridCerti.Rows[e.RowIndex].FindControl("txtstuname");
        TextBox txtfname = (TextBox)GridCerti.Rows[e.RowIndex].FindControl("txtfname");
        TextBox txtTF = (TextBox)GridCerti.Rows[e.RowIndex].FindControl("txtTF");
        TextBox txtTo = (TextBox)GridCerti.Rows[e.RowIndex].FindControl("txtTo");
        TextBox txtpname = (TextBox)GridCerti.Rows[e.RowIndex].FindControl("txtpname");
        TextBox txtc = (TextBox)GridCerti.Rows[e.RowIndex].FindControl("txtc");
        DropDownList ddlG = (DropDownList)GridCerti.Rows[e.RowIndex].FindControl("ddlG");
        //string datefrom = txtTF.Text.ToString();
        //string dateto = txtTo.Text.ToString();
        //TextBox lblID = (TextBox)GridCerti.Rows[e.RowIndex].FindControl("lblID2");
        string query = "update certificateverification set RefPreNo='" + txtrefpno.Text + "',RefNo='" + txtRefno.Text + "',StudentName='" + txtstuname.Text + "',FatherName='" + txtfname.Text + "',TFrom='" + txtTF.Text + "',";
        query = query + "TTo='" + txtTo.Text + "',ProjectName='" + txtpname.Text + "',Course='" + txtc.Text + "',Grade='" + ddlG.Text + "' where SrNo='" + lblID.Text + "' and FranchiseCode='TNK101' and BrandName='THINKNEXT TRAINING'";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        GridCerti.EditIndex = -1;
        GetAllData();
    }
}