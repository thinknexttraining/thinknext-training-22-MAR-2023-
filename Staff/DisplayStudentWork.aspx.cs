using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_DisplayStudentWork : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    Class1 varclass = new Class1();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["myck"] == null)
        {
            Response.Redirect("~/default.aspx");
        }
        con.ConnectionString = varclass.GetConnectionString("");
        if (Page.IsPostBack == false)
        {
            DisplayStudentWork();
        }
    }
    private void DisplayStudentWork()
    {
        string query = "Select * from MasterStudentWork order by DateEntry Desc";
        SqlDataAdapter adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            gvdisplay.DataSource = ds;
            gvdisplay.DataBind();
            lblmessage.Text = "";
        }
        else
        {
            gvdisplay.DataSource = ds;
            gvdisplay.DataBind();
            lblmessage.Text = "No Match Found !";
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label Scholarshipid;
        Scholarshipid = (Label)gvdisplay.Rows[e.RowIndex].FindControl("lblid");
        string query = "delete from MasterStudentWork where id=@id";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        con.Open();
        cmd.Parameters.AddWithValue("id", Scholarshipid.Text);
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
        DisplayStudentWork();
    }
    protected void gvdisplay_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gvdisplay.EditIndex = e.NewEditIndex;
        DisplayStudentWork();
    }
    protected void gvdisplay_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gvdisplay.EditIndex = -1;
        DisplayStudentWork();
    }
    protected void gvdisplay_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox id, DateEntry,  CollegeName, StudentName, EmailId, ProjectName,PageUrl;
        id = (TextBox)gvdisplay.Rows[e.RowIndex].FindControl("txtid");
        DateEntry = (TextBox)gvdisplay.Rows[e.RowIndex].FindControl("txtDateEntry");
        CollegeName = (TextBox)gvdisplay.Rows[e.RowIndex].FindControl("txtCollegeName");
        StudentName = (TextBox)gvdisplay.Rows[e.RowIndex].FindControl("txtStudentName");
        EmailId = (TextBox)gvdisplay.Rows[e.RowIndex].FindControl("txtEmailId");
        ProjectName  = (TextBox)gvdisplay.Rows[e.RowIndex].FindControl("txtProjectName");
        PageUrl  = (TextBox)gvdisplay.Rows[e.RowIndex].FindControl("txtpageurl");

        string query = "Update MasterStudentWork set DateEntry=@DateEntry,CollegeName=@CollegeName,StudentName=@StudentName,EmailId=@EmailId,ProjectName=@ProjectName,PageURL=@PageURL where id=@Id";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        con.Open();
        cmd.Parameters.AddWithValue("@Id", id.Text);
        cmd.Parameters.AddWithValue("@DateEntry", DateEntry.Text);
        cmd.Parameters.AddWithValue("@CollegeName", CollegeName.Text);
        cmd.Parameters.AddWithValue("@StudentName", StudentName.Text);
        cmd.Parameters.AddWithValue("@EmailId", EmailId.Text);
        cmd.Parameters.AddWithValue("@ProjectName", ProjectName.Text);
        cmd.Parameters.AddWithValue("@PageURL", PageUrl .Text);


        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
        gvdisplay.EditIndex = -1;
        DisplayStudentWork();
    }
    //protected void lnkprojectname_Click(object sender, EventArgs e)
    //{
    //    LinkButton lnk = (LinkButton)sender;
    //    GridViewRow gv = (GridViewRow)lnk.NamingContainer;
    //    Label PageURL = (Label)gv.FindControl("lblpageurl");
    //    Label Id = (Label)gv.FindControl("lblid");

    //    string query = "Select PageURL from MasterStudentWork where id=@id";
    //    SqlCommand cmd = new SqlCommand(query, con);
    //    cmd.Parameters.AddWithValue("@id", Id.Text);
    //    SqlDataAdapter adp = new SqlDataAdapter(cmd);
    //    DataSet ds = new DataSet();
    //    adp.Fill(ds);
    //    if (ds.Tables[0].Rows.Count > 0)
    //    {
    //        string WebUrl =ds.Tables[0].Rows[0]["PageURL"].ToString();
    //        Response.Redirect(WebUrl);
    //    }

    //}
}
