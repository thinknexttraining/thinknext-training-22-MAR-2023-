using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class Staff_AddQuestionPaper : System.Web.UI.Page
{
    SqlConnection Con = default(SqlConnection);
    Class1 varClass1 = new Class1();
    string varIP = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        Con = new SqlConnection(varClass1.GetConnectionString(varIP));
        Con.Open();
        if (!IsPostBack)
        {
            ShowCourse();
            session();
        }


    }
    protected void btnShow_Click(object sender, EventArgs e)
    {
        Show();
    }


    public void ShowCourse()
    {
        if (Con.State == ConnectionState.Closed)
        {
            Con.Open();
        }


        SqlDataAdapter da = default(SqlDataAdapter);
        DataSet ds = default(DataSet);
        string sql = null;
        ddlCourse.Items.Clear();
        ddlCourse.Items.Insert(0, "Select");
        sql = "select Distinct Courses from MasterCourses  where FranchiseCode='" + txtfranchise.Text + "' order by Courses ";

        //sql = "select Distinct Session from mastersession  where FranchiseCode='" + txtfranchise.Text + "' and BrandName='THINKNEXT TRAINING'";

        da = new SqlDataAdapter(sql, Con);
        ds = new DataSet();
        da.Fill(ds, "mastersession");
        for (int i = 0; i <= ds.Tables["mastersession"].Rows.Count - 1; i++)
        {
            if (ds.Tables["mastersession"].Rows[i]["Courses"] != "")
            {
                ddlCourse.Items.Add(ds.Tables["mastersession"].Rows[i]["Courses"].ToString());
            }
        }
        Con.Close();
    }

    public void session()
    {
        if (Con.State == ConnectionState.Closed)
        {
            Con.Open();
        }

        SqlDataAdapter da = default(SqlDataAdapter);
        DataSet ds = default(DataSet);
        string sql = null;
        ddlsession.Items.Clear();
        ddlsession.Items.Insert(0, "Select");
        //sql = "select Distinct Courses from MasterCourses  where FranchiseCode='" + txtfranchise.Text + "' order by Courses ";

        sql = "select Distinct Session from mastersession  where FranchiseCode='" + txtfranchise.Text + "' and BrandName='THINKNEXT TRAINING'";

        da = new SqlDataAdapter(sql, Con);
        ds = new DataSet();
        da.Fill(ds, "mastersession");
        foreach (DataRow row in ds.Tables["mastersession"].Rows)
        {
            ddlsession.Items.Add(row["Session"].ToString());
        }
        //for (int i = 0; i <= ds.Tables["mastersession"].Rows.Count - 1; i++)
        //{
        //    if (ds.Tables["mastersession"].Rows[i]["Session"] != "")
        //    {
        //        ddlsession.Items.Add(ds.Tables["mastersession"].Rows[i]["Session"].ToString());
        //    }
        //}
        Con.Close();
    }




    protected void btnupload_Click(object sender, EventArgs e)
    {
        if (Con.State == ConnectionState.Closed)
        {
            Con.Open();
        }

        if (ddlCourse.Text == "Select")
        {
            lblMsg.Visible = true;
            lblMsg.Text = "Invalid Courses";
            return;
        }

        if (ddlsession.Text == "Select")
        {
            lblMsg.Visible = true;
            lblMsg.Text = "Invalid Session";
            return;
        }

        if (string.IsNullOrEmpty(txtbatch.Text))
        {
            lblMsg.Visible = true;
            lblMsg.Text = "Invalid Batch";
            return;
        }

        if (UploadFile.HasFile)
        {
            if ((UploadFile.HasFile))
            {
                string filename = UploadFile.PostedFile.FileName;
                // UploadFile.PostedFile.Conten()
                string PTPpath = "ftp://202.143.99.95/httpdocs/AddQuestionPaper/";
                varClass1.UploadImageFTP(PTPpath + filename, UploadFile);
                lblMsg.Text = UploadFile.FileName;

                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertmessage", "javascript:alert('Your file uploaded succesfully.')", true);

            }
            else
            {

                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertmessage", "javascript:alert(' Invalid File Format.')", true);
            }
            string str = System.DateTime.Now.ToString();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Insert into QuestionPaper (Course,Batch,Session,UserID,DateEntry,FileName,FranchieCode,BrandName) values(@Course,@Batch,@Session,@UserID,@DateEntry,@FileName,@FranchieCode,@BrandName)";
            cmd.Connection = Con;
            cmd.Parameters.AddWithValue("@Course", ddlCourse.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Batch", txtbatch.Text);
            cmd.Parameters.AddWithValue("@Session", ddlsession.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@UserID", Session["myck"]);
            cmd.Parameters.AddWithValue("@DateEntry", str);
            cmd.Parameters.AddWithValue("@FileName", UploadFile.FileName);
            cmd.Parameters.AddWithValue("@FranchieCode", txtfranchise.Text);
            cmd.Parameters.AddWithValue("@BrandName", "THINKNEXT TRAINING");
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            Con.Close();
            Show();
            lblMsg.Visible = true;
            lblMsg.Text = "Data uploaded successfully";
        }
    }


    public void Show()
    {
        lblmsg1.Text = "";

        if (Con.State == ConnectionState.Closed)
        {
            Con.Open();
        }
        string sql = null;
        SqlDataAdapter da = default(SqlDataAdapter);
        DataSet ds = default(DataSet);
        DataTable objtable = new DataTable();
        if (ddlCourse.Text != "Select")
        {
            sql = "Select Course,Batch,Session,UserID,DateEntry,FileName from QuestionPaper where Course='" + ddlCourse.Text + "' AND Batch='" + txtbatch.Text +"'  AND Session='" + ddlsession.Text + "' AND FranchieCode='" + txtfranchise.Text + "'";
            da = new SqlDataAdapter(sql, Con);
            ds = new DataSet();
            da.Fill(ds, "QuestionPaper");
            if (ds.Tables["QuestionPaper"].Rows.Count == 0)
            {
                lblMsg.Text = ("No records found");
                gdShow.Visible = false;
                lblRecords.Text = "";
                return;
            }
            lblMsg.Text = "";
            gdShow.Visible = true;
            gdShow.DataSource = ds.Tables["QuestionPaper"];
            gdShow.DataBind();
            int rowctr = 0;
            Label vardate = new Label();
            System.DateTime vardateentry = default(System.DateTime);

            while (rowctr < gdShow.Rows.Count)
            {
                vardate = ((Label)gdShow.Rows[rowctr].FindControl("lblDateEntry"));
                vardateentry = Convert.ToDateTime(vardate.Text);
                rowctr = rowctr + 1;
            }

            objtable = ds.Tables["QuestionPaper"];
            lblRecords.Text = "Total records : " + gdShow.Rows.Count;
        }
        Con.Close();

    }

    protected void gdShow_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gdShow.EditIndex = e.NewEditIndex;
        Show();

    }
    protected void gdShow_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        lblmsg1.Text = "";
        if (ddlCourse.Text == "Select")
        {
            lblMsg.Visible = true;
            lblMsg.Text = "Select Course";
            return;
        }
        lblMsg.Text = "";

        SqlCommand delcmd = new SqlCommand();
        SqlConnection Con = default(SqlConnection);
        Class1 varClass1 = new Class1();
        Con = new SqlConnection(varClass1.GetConnectionString(varIP));
        Con.Open();
        Label varQuestionPaperID = new Label();
        varQuestionPaperID = ((Label)gdShow.Rows[e.RowIndex].FindControl("lblQuestionPaperID"));

        delcmd = new SqlCommand("delete from QuestionPaper where Course='" + ddlCourse.Text + "'");
        delcmd.ExecuteNonQuery();
        delcmd.Dispose();
        Con.Close();

        Show();
        lblMsg.Visible = true;
        lblMsg.Text = "questionpapaer has been deleted successfully";

    }
    protected void gdShow_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gdShow.EditIndex = -1;
        Show();
    }
    protected void gdShow_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
        
    lblmsg1.Text = "";
    if (ddlCourse.Text == "Select") {
        lblMsg.Visible = true;
        lblMsg.Text = "Select Course";
        return;
    }
    lblMsg.Visible = false;

    SqlConnection Con = default(SqlConnection);
    Class1 varClass1 = new Class1();
    Con = new SqlConnection(varClass1.GetConnectionString(varIP));
    Con.Open();

    SqlCommand updcmd = new SqlCommand();
    TextBox varBatch = new TextBox();
    TextBox varCourse = new TextBox();
    TextBox varfilename = new TextBox();

    updcmd = new SqlCommand("update QuestionPaper set Course=@Course,Batch=@Batch where Course='" + ddlCourse.Text +"' ", Con);
    updcmd.Connection = Con;

    if (gdShow.Rows[e.RowIndex].FindControl("TextBox2").ToString() != "")
    {
        varCourse = ((TextBox)gdShow.Rows[e.RowIndex].FindControl("TextBox2"));
        updcmd.Parameters.AddWithValue("@Course", varCourse.Text);
    }
    else
    {
        updcmd.Parameters.AddWithValue("@Course", DBNull.Value);
    }
    if (gdShow.Rows[e.RowIndex].FindControl("TextBox1").ToString() != "")
    {
        varBatch = ((TextBox)gdShow.Rows[e.RowIndex].FindControl("TextBox1"));
        updcmd.Parameters.AddWithValue("@Batch", varBatch.Text);
    } 
    else 
    {
        updcmd.Parameters.AddWithValue("@Batch", DBNull.Value);
    }

    updcmd.ExecuteNonQuery();
    updcmd.Dispose();

    Con.Close();
    gdShow.EditIndex = -1;
    Show();
    lblMsg.Visible = true;
    lblMsg.Text = "Data updated successfully";

        }

    public bool CheckFileType(string FileName)
    {
        string Ext = Path.GetExtension(FileName);
        switch (Ext.ToLower())
        {
            case ".doc":

                return true;
            case ".docx":
                return true;
            case ".pdf":
                return true;
            case ".ppts":
                return true;
            case ".pptx":
                return true;
            case ".txt":
                return true;
            case ".xls":
                return true;
            default:
                return false;
        }

    }

}
