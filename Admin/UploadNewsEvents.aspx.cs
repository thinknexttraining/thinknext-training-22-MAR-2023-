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
public partial class Admin_UploadNewsEvents : System.Web.UI.Page
{
      SqlConnection con = new SqlConnection();
      Class1 varclass = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Timeout = 300;
        if ((Session["myck"] == "") || (Session["myck"] == null))
        {
            Response.Redirect("~/default.aspx");
        }
        con.ConnectionString = varclass.GetConnectionString("constr");
        if (Page.IsPostBack == false)
        {
            display();
        }

    }
    public void display()
    {
        string sql = "select * from TNTAdminUpload where Category='NewsEvents'";
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
    }
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
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        news();
    }

    private void news()
    {
        newsandeventspnl.Visible = true;
        vacanciespnl.Visible = false;
        infopnl.Visible = false;
        Home_news_events.Visible = false;
        string sql = "select * from TNTAdminUpload where Category='NewsEvents'";
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
        newsandeventspnl.Visible = false;
        vacanciespnl.Visible = true;
        infopnl.Visible = false;
        Home_news_events.Visible = false;
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
        newsandeventspnl.Visible = false;
        vacanciespnl.Visible = false;
        infopnl.Visible = true;
        GridInfo.DataSource = null;
        GridInfo.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        newsinsert();
        news();

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
        if (chk.Checked == true)
        {
            con.Open();
            string sql = "delete from TNTAdminUpload where FileName='" + lblfname.Text + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sql;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
            lblnewsmssg.Text = "Deleted successfully";
            display();
        }
    }
    protected void GridInfo_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void btn_submit_Click(object sender, EventArgs e)
    {
        con.Open();
        string neinsert = "insert  into TNTAdminUpload(filename,filepath,Category,FranchiseCode,BrandName)values(@filename,@filepath,@Category,@FranchiseCode,@BrandName)";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = neinsert;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@fileName", txt_Detail.Text);
        cmd.Parameters.AddWithValue("@Category", "H_news&events");
        cmd.Parameters.AddWithValue("@FranchiseCode", "TNK101");
        cmd.Parameters.AddWithValue("@BrandName", "THINKNEXT TRAINING");
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
        lbl_Home_news.Visible = true;
        lbl_Home_news.Text = "News and Events inserted Sucessfully";
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        newsandeventspnl.Visible = false;
        vacanciespnl.Visible = false;
        infopnl.Visible = false;
        Home_news_events.Visible = true;
        string sql = "select * from TNTAdminUpload where Category='H_news&events'";
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
}
