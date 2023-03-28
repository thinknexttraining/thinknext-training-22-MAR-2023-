using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;
public partial class AdminUpload : System.Web.UI.Page
{

    string varname = "";
    SqlConnection con = new SqlConnection();
    Class1 varclass = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = varclass.GetConnectionString("constr");
        if (Session["myck"] == "")
        {
            Response.Redirect("~/default.aspx");

        }
        //Session.Timeout = 1440;
        PersonalDetail();
        varname = Session["myck"].ToString();

        if (Page.IsPostBack == false)
        {
            display();
        }
    }

    public void PersonalDetail()
    {
        string sql = null;
        SqlDataAdapter da = default(SqlDataAdapter);
        DataSet ds = default(DataSet);
        SqlConnection Con = default(SqlConnection);
        Class1 varClass1 = new Class1();
        Con = new SqlConnection(varClass1.GetConnectionString(""));
        Con.Open();

        if (Session["myck"].ToString() != "")
        //if (Session["myck"] != "")
        {
            // End If

            //If Request.Cookies("Myck").Value.ToString() <> "" Then
            //sql = " select *  from Staff where IDNo=" & Request.Cookies("Myck").Value.ToString()
            sql = " select *  from Staff where IDNo=" + Session["myck"].ToString();

            ds = new DataSet();
            SqlCommand cmd = new SqlCommand(sql, Con);
            cmd.CommandTimeout = 0;
            da = new SqlDataAdapter(cmd);

            da.Fill(ds, "Staff");
            if (ds.Tables["Staff"].Rows.Count == 0)
            {
                //lblmsg.Visible = true;
                //lblmsg.Text = "No records found";
                //return;
            }
            //lblmsg.Visible = true;
            //lblmsg.Text = "Welcome : " + ds.Tables["Staff"].Rows[0]["Name"] + " " + Session["myck"].ToString() + " ";
        }
    }

    public void display()
    {
        // string sql = "select * from TNTAdminUpload where Category='NewsEvents'";
        string sql = "select * from TNTAdminUpload where Category in ('NewsEvents','Placement News')";
        SqlDataAdapter adp = new SqlDataAdapter(sql, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridInfo.DataSource = ds;
            GridInfo.DataBind();
        }

        else
        {
            GridInfo.DataSource = null;
            GridInfo.DataBind();
        }
    }
    public void newsinsert()
    {
        con.Open();

        string neinsert = "insert  into TNTAdminUpload(filename,filepath,Category,FranchiseCode,BrandName)values(@filename,@filepath,@Category,@FranchiseCode,@BrandName)";
        SqlCommand cmd = new SqlCommand(neinsert, con);
        cmd.Parameters.AddWithValue("@filename", txtNews.Text);
        cmd.Parameters.AddWithValue("@Category", "NewsEvents");

        if (flpNews.HasFile)
        {
            cmd.Parameters.AddWithValue("@filepath", flpNews.FileName);

            string fname = flpNews.PostedFile.FileName;
            //FileUpload2.SaveAs(Server.MapPath("ftp://thinknext.co.in/bachpan/Ebooks/" + fname));
            string PTPpath = "ftp://202.143.99.95/httpdocs/Ebooks/";
            varclass.UploadImageFTP(PTPpath + fname, flpNews);
            //flpNews.SaveAs(Server.MapPath("~/Ebooks/" + fname));
        }
        else
        {
            cmd.Parameters.AddWithValue("FilePath", DBNull.Value);
        }
        cmd.Parameters.AddWithValue("@FranchiseCode", "TNK101");
        cmd.Parameters.AddWithValue("@BrandName", "THINKNEXT TRAINING");
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
        lblnewsmssg.Text = "News & Events Inserted Sucessfully";
        txtNews.Text = string.Empty;
        
    }

    public void newsinsert1()
    {
        con.Open();

        string neinsert = "insert  into TNTAdminUpload(filename,filepath,Category,FranchiseCode,BrandName)values(@filename,@filepath,@Category,@FranchiseCode,@BrandName)";
        SqlCommand cmd = new SqlCommand(neinsert, con);
        cmd.Parameters.AddWithValue("@filename", txtNews.Text);
        cmd.Parameters.AddWithValue("@Category", DropDownList1.Text);

        if (flpNews.HasFile)
        {
            cmd.Parameters.AddWithValue("@filepath", flpNews.FileName);

            string fname = flpNews.PostedFile.FileName;
            //FileUpload2.SaveAs(Server.MapPath("ftp://thinknext.co.in/bachpan/Ebooks/" + fname));
            string PTPpath = "ftp://202.143.99.95/httpdocs/Ebooks/";
            varclass.UploadImageFTP(PTPpath + fname, flpNews);
            //flpNews.SaveAs(Server.MapPath("~/Ebooks/" + fname));
        }
        else
        {
            cmd.Parameters.AddWithValue("FilePath", DBNull.Value);
        }
        cmd.Parameters.AddWithValue("@FranchiseCode", "TNK101");
        cmd.Parameters.AddWithValue("@BrandName", "THINKNEXT TRAINING");
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
        lblnewsmssg.Text = "News & Events Inserted Sucessfully";
        txtNews.Text = string.Empty;
    }


    // ------------------------------------------------------------------------------------------------------------------
    public void infoinsert()
    {
        con.Open();
        string neinsert = "insert  into TNTAdminUpload(FileName,Category)values(@FileName,@Category)";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = neinsert;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@FileName", txtdate.Text);
        cmd.Parameters.AddWithValue("@Category", "Info");
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
        lblnewsmssg.Visible = true;
        lblinfo.Text = "Data Inserted Sucessfully";

    }
    public void vacancyinsert()
    {
        con.Open();
        string neinsert = "insert  into TNTAdminUpload(FileName,FilePath,Category)values(@FileName,@FilePath,@Category)";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = neinsert;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("FileName", txtVacancy.Text);
        cmd.Parameters.AddWithValue("Category", "Vacancy");
        if (flpVacancy.HasFile)
        {
            cmd.Parameters.AddWithValue("FilePath", flpVacancy.FileName);
            string fname = flpVacancy.PostedFile.FileName;
            flpVacancy.SaveAs(Server.MapPath("~/Ebooks/" + fname));
            //  FileUpload2.SaveAs(Server.MapPath("ftp://thinknext.co.in/bachpan/Ebooks/" + fname));

        }
        else
        {
            cmd.Parameters.AddWithValue("FilePath", DBNull.Value);
        }
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
        lblnewsmssg.Visible = true;
        lblnewsmssg.Text = "vaccancies Inserted Sucessfully";

    }

    //-----------------------------------------------------------------------------------------------------------------------
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        grd1();
        news();
        news1();
    }

    private void news()
    {
        newsandeventspnl.Visible = true;
        vacanciespnl.Visible = false;
        infopnl.Visible = false;
        Panel1.Visible = false;
        string sql = "select  * from TNTAdminUpload where Category='NewsEvents' order by srno desc";
        // string sql = "select top 10 * from TNTAdminUpload where Category in('NewsEvents','LatestNewsEvents') order by srno desc";
        //string sql = "select * from TNTAdminUpload where Category='NewsEvents'";
        SqlDataAdapter adp = new SqlDataAdapter(sql, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridInfo.DataSource = ds;
            GridInfo.DataBind();
        }

        else
        {
            GridInfo.DataSource = null;
            GridInfo.DataBind();
        }
    }
    private void news1()
    {
        newsandeventspnl.Visible = true;
        vacanciespnl.Visible = false;
        infopnl.Visible = false;
        Panel1.Visible = false;
        string sql = "select  * from TNTAdminUpload where Category='Placement News' order by srno desc";
        //string sql = "select * from TNTAdminUpload where Category='NewsEvents'";
        SqlDataAdapter adp = new SqlDataAdapter(sql, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridInfo.DataSource = ds;
            GridInfo.DataBind();
        }

        else
        {
            GridInfo.DataSource = null;
            GridInfo.DataBind();
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        grd1();
        newsandeventspnl.Visible = false;
        vacanciespnl.Visible = true;
        infopnl.Visible = false;
        Panel1.Visible = false;
        //string sql = "select * from TNTAdminUpload where Category='Vacancy'";
        //SqlDataAdapter adp = new SqlDataAdapter(sql, con);
        //DataSet ds = new DataSet();
        //adp.Fill(ds);
        //if (ds.Tables[0].Rows.Count > 0)
        //{
        //    GridInfo.DataSource = ds;
        //    GridInfo.DataBind();
        //}
        //else {
        //    GridInfo.DataSource = null;
        //    GridInfo.DataBind();
        //}
        vacanciesgrd();
    }

    public void vacanciesgrd()
    {
        string sql = "select * from TNTAdminUpload where Category='Vacancy'";
        SqlDataAdapter adp = new SqlDataAdapter(sql, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridInfo.DataSource = ds;
            GridInfo.DataBind();
        }
        else
        {
            GridInfo.DataSource = null;
            GridInfo.DataBind();
        }
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        grd1();
        newsandeventspnl.Visible = false;
        vacanciespnl.Visible = false;
        infopnl.Visible = true;
        Panel1.Visible = false;
        GridInfo.DataSource = null;
        GridInfo.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (DropDownList1.Text == "Select")
        {
            lblnewsmssg.Text = "Please Select Category";
            return;
        }
        if (DropDownList1.Text == "NewsEvents")
        {
            newsinsert();
            news();
        }
        if (DropDownList1.Text == "Placement News")
        {
            newsinsert1();
            news1();
        }


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        vacancyinsert();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        infoinsert();
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        con.Open();
        string sql = "update TNTAdminUpload set FileName=@FileName,FranchiseCode=@FranchiseCode,BrandName=@BrandName where Category='Info'";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sql;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@FileName", txtdate.Text);
        cmd.Parameters.AddWithValue("@FranchiseCode", "TNK101");
        cmd.Parameters.AddWithValue("@BrandName", "THINKNEXT TRAINING");
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
        lblnewsmssg.Visible = true;
        lblnewsmssg.Text = "Date updated Sucessfully";
    }
    protected void lnkdel_Click(object sender, EventArgs e)
    {
        LinkButton lnk = (LinkButton)sender;
        GridViewRow gv = (GridViewRow)lnk.NamingContainer;
        CheckBox chk = (CheckBox)gv.FindControl("chkSelect");
        Label lblfname = (Label)gv.FindControl("lblFileName");
        Label Label1 = (Label)gv.FindControl("Label1");
        //if (chk.Checked == true)
        //{
        con.Open();
        string sql = "delete from TNTAdminUpload where FileName='" + lblfname.Text + "' and Srno='" + Label1.Text + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sql;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
        lblnewsmssg.Text = "Deleted successfully";
        display();
        //}
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Session.Abandon();

        Response.Redirect("~/default.aspx");
    }

    protected void GridInfo_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        //int id = Convert.ToInt32(GridInfo.DataKeys[e.RowIndex].Value.ToString());
        GridViewRow row = (GridViewRow)GridInfo.Rows[e.RowIndex];
        Label lblID = (Label)row.FindControl("Label4");
        TextBox textfilnam = (TextBox)row.FindControl("TextBox2");
        Label lblcat = (Label)row.FindControl("Lblcateg1");
        //TextBox textc = (TextBox)row.Cells[2].Controls[0];
        con.Open();
        SqlCommand cmd = new SqlCommand("update TNTAdminUpload set FileName='" + textfilnam.Text + "' , Category='" + lblcat.Text + "' where Srno='" + lblID.Text.Trim() + "'", con);
        cmd.ExecuteNonQuery();
        GridInfo.EditIndex = -1;
        con.Close();

        if (newsandeventspnl.Visible == true)
        {
            display();
        }
        else if (vacanciespnl.Visible == true)
        {
            vacanciesgrd();

        }
        else if (infopnl.Visible == true)
        {


        }


    }

    protected void GridInfo_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridInfo.EditIndex = e.NewEditIndex;


        if (newsandeventspnl.Visible == true)
        {
            display();
        }
        else if (vacanciespnl.Visible == true)
        {
            vacanciesgrd();

        }
        else if (infopnl.Visible == true)
        {


        }
    }



    protected void GridInfo_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridInfo.EditIndex = -1;
        if (newsandeventspnl.Visible == true)
        {
            display();
        }
        else if (vacanciespnl.Visible == true)
        {
            vacanciesgrd();

        }
        else if (infopnl.Visible == true)
        {


        }

    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {

        GridInfo.DataSource = null;
        GridInfo.DataBind();
        newsandeventspnl.Visible = false;
        vacanciespnl.Visible = false;
        infopnl.Visible = false;
        Panel1.Visible = true;
        grdhotjobsbind();

    }

    public void grd1()
    {
        Gridhotjobs.DataSource = null;
        Gridhotjobs.DataBind();
    }


    protected void Gridhotjobs_RowEditing(object sender, GridViewEditEventArgs e)
    {
        Gridhotjobs.EditIndex = e.NewEditIndex;
        grdhotjobsbind();
    }
    public void grdhotjobsbind()
    {
        string sql = "select  SNo,Job_Title,Company_Name,Job_Description,Job_Type  ,Date_posted  from tbl_hotjobs  order by sno desc";
        // string sql = "select top 10 * from TNTAdminUpload where Category in('NewsEvents','LatestNewsEvents') order by srno desc";
        //string sql = "select * from TNTAdminUpload where Category='NewsEvents'";
        SqlDataAdapter adp = new SqlDataAdapter(sql, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Gridhotjobs.DataSource = ds;
            Gridhotjobs.DataBind();
        }

        else
        {
            Gridhotjobs.DataSource = null;
            Gridhotjobs.DataBind();
        }


    }

    protected void Gridhotjobs_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        Gridhotjobs.EditIndex = -1;
        grdhotjobsbind();
    }

    protected void Gridhotjobs_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = (GridViewRow)Gridhotjobs.Rows[e.RowIndex];
        Label lblsno = (Label)row.FindControl("Lblsno");
        TextBox txtjobtit = (TextBox)row.FindControl("txtjobtit");
        TextBox txtcompnam = (TextBox)row.FindControl("txtcompnam");
        TextBox txtjobdesc = (TextBox)row.FindControl("txtjobdesc");
        TextBox txtjobty = (TextBox)row.FindControl("txtjobty");
        TextBox txtdatepos = (TextBox)row.FindControl("txtdatpos");
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        SqlCommand cmd = new SqlCommand("update tbl_hotjobs set Job_Title=@jobtit, Company_Name=@compnam, Job_Description=@jobdesc, Job_Type=@jobtype, Date_posted=@datepost where SNo='" + lblsno.Text + "'", con);
        cmd.Parameters.AddWithValue("@jobtit", txtjobtit.Text);
        cmd.Parameters.AddWithValue("@compnam", txtcompnam.Text);
        cmd.Parameters.AddWithValue("@jobdesc", txtjobdesc.Text);
        cmd.Parameters.AddWithValue("@jobtype", txtjobty.Text);
        cmd.Parameters.AddWithValue("@datepost", Convert.ToDateTime(DateTime.Now.ToString("MM/dd/yyyy")));
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        Gridhotjobs.EditIndex = -1;
        grdhotjobsbind();


    }



    protected void Button6_Click(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }

      
        DateTime dt;
        dt = DateTime.ParseExact(txtedatpost.Text,"dd/MM/yyyy",null);

        SqlCommand cmd = new SqlCommand("insert into tbl_hotjobs(Job_Title, Company_Name, Job_Description, Job_Type, Date_posted) values(@jobtite, @compname, @jobdesce, @jobtypee, @dateposte)", con);
        cmd.Parameters.AddWithValue("@jobtite", txtejobtit.Text);
        cmd.Parameters.AddWithValue("@compname", txtecompnam.Text);
        cmd.Parameters.AddWithValue("@jobdesce", txtejobdesc.Text);
        cmd.Parameters.AddWithValue("@jobtypee", txtejobtyp.Text);
        cmd.Parameters.AddWithValue("@dateposte", dt);
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        grdhotjobsbind();
        Label19.Visible = true;
        Label19.Text = "hotJobs inserted succesfully";
        txtejobtit.Text = string.Empty;
        txtecompnam.Text = string.Empty;
        txtejobdesc.Text = string.Empty;
        txtejobtyp.Text = string.Empty;
        txtedatpost.Text = string.Empty;
    }

    //protected void Gridhotjobs_RowDeleting(object sender, GridViewDeleteEventArgs e)
    //{
    //    //GridViewRow row = (GridViewRow)Gridhotjobs.Rows[e.RowIndex];
    //    //Label lblsno = (Label)row.FindControl("Lblsno");
    //    int Id = Convert.ToInt32(Gridhotjobs.DataKeys[e.RowIndex].Value);
    //    if (con.State == ConnectionState.Closed)
    //    {
    //        con.Open();
    //    }

    //    SqlCommand cmd = new SqlCommand("delete from tbl_hotjobs where SNo=@Id", con);
    //    cmd.Parameters.AddWithValue("@Id", Id);
    //    cmd.ExecuteNonQuery();
    //    cmd.Dispose();
    //    grdhotjobsbind();


    //}



    protected void Gridhotjobs_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = (GridViewRow)Gridhotjobs.Rows[e.RowIndex];
        Label lblsno = (Label)row.FindControl("Lblsno1");
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        SqlCommand cmd = new SqlCommand("delete from tbl_hotjobs  where SNo='" + lblsno.Text + "'", con);
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        grdhotjobsbind();

    }

   
}

    
